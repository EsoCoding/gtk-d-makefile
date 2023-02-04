// D import file generated from 'src/gobject/CClosure.d'
module gobject.CClosure;
private import glib.ConstructionException;
private import gobject.Closure;
private import gobject.ObjectG;
private import gobject.TypeInstance;
private import gobject.Value;
private import gobject.c.functions;
public import gobject.c.types;
public class CClosure
{
	protected GCClosure* gCClosure;
	protected bool ownedRef;
	public GCClosure* getCClosureStruct(bool transferOwnership = false);
	protected void* getStruct();
	public this(GCClosure* gCClosure, bool ownedRef = false)
	{
		this.gCClosure = gCClosure;
		this.ownedRef = ownedRef;
	}
	public this(GCallback callbackFunc, void* userData, GClosureNotify destroyData, bool swap)
	{
		GClosure* p;
		if (swap)
			p = g_cclosure_new_swap(callbackFunc, userData, destroyData);
		else
			p = g_cclosure_new(callbackFunc, userData, destroyData);
		if (p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		this(cast(GCClosure*)p);
	}
	public this(GCallback callbackFunc, ObjectG object, bool swap)
	{
		GClosure* p;
		if (swap)
			p = g_cclosure_new_object_swap(callbackFunc, object is null ? null : object.getObjectGStruct());
		else
			p = g_cclosure_new_object(callbackFunc, object is null ? null : object.getObjectGStruct());
		if (p is null)
		{
			throw new ConstructionException("null returned by new_object");
		}
		this(cast(GCClosure*)p);
	}
	public static void marshalBOOLEANBOXEDBOXED(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalBOOLEANBOXEDBOXEDv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalBOOLEANFLAGS(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalBOOLEANFLAGSv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalSTRINGOBJECTPOINTER(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalSTRINGOBJECTPOINTERv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDBOOLEAN(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDBOOLEANv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDBOXED(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDBOXEDv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDCHAR(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDCHARv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDDOUBLE(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDDOUBLEv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDENUM(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDENUMv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDFLAGS(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDFLAGSv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDFLOAT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDFLOATv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDINT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDINTv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDLONG(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDLONGv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDOBJECT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDOBJECTv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDPARAM(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDPARAMv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDPOINTER(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDPOINTERv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDSTRING(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDSTRINGv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDUCHAR(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDUCHARv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDUINT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDUINTPOINTER(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDUINTPOINTERv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDUINTv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDULONG(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDULONGv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDVARIANT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDVARIANTv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalVOIDVOID(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalVOIDVOIDv(Closure closure, Value returnValue, TypeInstance instance_, void* args, void* marshalData, GType[] paramTypes);
	public static void marshalGeneric(Closure closure, Value returnGvalue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData);
	public static void marshalGenericVa(Closure closure, Value returnValue, TypeInstance instance_, void* argsList, void* marshalData, GType[] paramTypes);
}
