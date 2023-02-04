// D import file generated from 'src/gobject/WeakRef.d'
module gobject.WeakRef;
private import gobject.ObjectG;
private import gobject.c.functions;
public import gobject.c.types;
public class WeakRef
{
	protected GWeakRef* gWeakRef;
	protected bool ownedRef;
	public GWeakRef* getWeakRefStruct(bool transferOwnership = false);
	protected void* getStruct();
	public this(GWeakRef* gWeakRef, bool ownedRef = false)
	{
		this.gWeakRef = gWeakRef;
		this.ownedRef = ownedRef;
	}
	this(void* object)
	{
		g_weak_ref_init(gWeakRef, object);
	}
	public void clear();
	public ObjectG get();
	public void init(ObjectG object);
	public void set(ObjectG object);
}
