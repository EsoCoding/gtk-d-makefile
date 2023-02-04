// D import file generated from 'src/gobject/ObjectG.d'
module gobject.ObjectG;
private import core.memory;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions : g_datalist_get_flags;
private import gobject.Binding;
private import gobject.Closure;
private import gobject.DClosure;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Signals;
private import gobject.TypeInterface;
private import gobject.Value;
private import gobject.c.functions;
public import gobject.c.types;
private import std.traits;
public class ObjectG
{
	protected GObject* gObject;
	protected bool ownedRef;
	public GObject* getObjectGStruct(bool transferOwnership = false);
	protected void* getStruct();
	protected bool isGcRoot;
	package DClosure[gulong] signals;
	public this(GObject* gObject, bool ownedRef = false)
	{
		this.gObject = gObject;
		if (gObject !is null)
		{
			setDataFull("GObject", cast(void*)this, cast(GDestroyNotify)&destroyNotify);
			addToggleRef(cast(GToggleNotify)&toggleNotify, cast(void*)this);
			if (gObject.refCount > 1 && !isGcRoot)
			{
				GC.addRoot(cast(void*)this);
				isGcRoot = true;
			}
			if (isFloating())
			{
				refSink();
				unref();
			}
			else if (ownedRef)
			{
				unref();
			}
		}
	}
	extern (C) 
	{
		static void destroyNotify(ObjectG obj);
		static void toggleNotify(ObjectG obj, GObject* object, int isLastRef);
	}
	~this();
	T opCast(T)()
	{
		if (!this)
			return null;
		static if (is(T : ObjectG) && !is(T == interface) && is(typeof(new T(cast(typeof(T.tupleof[0]))gObject, false))))
		{
			if (auto r = cast(T)super)
				return r;
			if (!g_type_is_a(gObject.gTypeInstance.gClass.gType, T.getType()))
				return null;
			g_object_steal_data(gObject, "GObject");
			if (isGcRoot)
			{
				GC.removeRoot(cast(void*)this);
				isGcRoot = false;
			}
			if (hasToggleRef())
			{
				g_object_ref(gObject);
				g_object_remove_toggle_ref(gObject, cast(GToggleNotify)&toggleNotify, cast(void*)this);
			}
			return new T(cast(typeof(T.tupleof[0]))gObject, false);
		}
		else
		{
			static if (is(T == interface) && hasStaticMember!(T, "getType") && is(ReturnType!(T.getType) == GType))
			{
				if (auto r = cast(T)super)
					return r;
				if (!g_type_is_a(gObject.gTypeInstance.gClass.gType, T.getType()))
					return null;
				return getInterfaceInstance!T(gObject);
			}
			else
			{
				return cast(T)super;
			}
		}
	}
	public static RT getDObject(T, RT = T, U)(U obj, bool ownedRef = false)
	{
		if (obj is null)
		{
			return null;
		}
		static if (is(T : ObjectG) && !is(RT == interface))
		{
			auto p = g_object_get_data(cast(GObject*)obj, Str.toStringz("GObject"));
			if (p !is null)
				return cast(RT)cast(ObjectG)p;
			else
				return new T(obj, ownedRef);
		}
		else
		{
			static if (is(RT == interface) && hasMember!(RT, "getType") && is(ReturnType!(RT.getType) == GType))
			{
				auto p = g_object_get_data(cast(GObject*)obj, Str.toStringz("GObject"));
				if (p !is null)
					return cast(RT)cast(ObjectG)p;
				else
					return getInterfaceInstance!RT(cast(GObject*)obj);
			}
			else
			{
				static if (is(typeof(new T(obj, ownedRef))))
				{
					return new T(obj, ownedRef);
				}
				else
				{
					return new T(obj);
				}
			}
		}
	}
	private static I getInterfaceInstance(I)(GObject* instance)
	{
		static class Impl : ObjectG, I
		{
			public this(GObject* gObject, bool ownedRef = false)
			{
				super(gObject, ownedRef);
			}
			protected override void* getStruct()
			{
				return cast(void*)gObject;
			}
			mixin("import " ~ moduleName!I[0..$ - 2] ~ "T;import " ~ moduleName!I ~ "; mixin " ~ __traits(identifier, I)[0..$ - 2] ~ "T!(" ~ __traits(identifier, Impl) ~ ");");
		}
		ClassInfo ci = Impl.classinfo;
		Impl iface;
		void* p;
		p = GC.malloc(ci.initializer.length, GC.BlkAttr.FINALIZE, ci);
		p[0..ci.initializer.length] = ci.initializer;
		iface = cast(Impl)p;
		iface.gObject = instance;
		iface.doref();
		return iface;
	}
	private bool hasToggleRef();
	public void removeGcRoot();
	public void setProperty(T)(string propertyName, T value)
	{
		setProperty(propertyName, new Value(value));
	}
	deprecated("Use the member function") deprecated public static void unref(ObjectG obj);
	deprecated("Use the member function") deprecated public static ObjectG doref(ObjectG obj);
	gulong addOnNotify(void delegate(ParamSpec, ObjectG) dlg, string property = "", ConnectFlags connectFlags = cast(ConnectFlags)0);
	public static GType getType();
	public this(GType objectType, string firstPropertyName, void* varArgs)
	{
		auto __p = g_object_new_valist(objectType, Str.toStringz(firstPropertyName), varArgs);
		if (__p is null)
		{
			throw new ConstructionException("null returned by new_valist");
		}
		this(cast(GObject*)__p, true);
	}
	public this(GType objectType, string[] names, Value[] values)
	{
		GValue[] valuesArray = new GValue[values.length];
		for (int i = 0;
		 i < values.length; i++)
		{
			{
				valuesArray[i] = *values[i].getValueStruct();
			}
		}
		auto __p = g_object_new_with_properties(objectType, cast(uint)values.length, Str.toStringzArray(names), valuesArray.ptr);
		if (__p is null)
		{
			throw new ConstructionException("null returned by new_with_properties");
		}
		this(cast(GObject*)__p, true);
	}
	public this(GType objectType, GParameter[] parameters)
	{
		auto __p = g_object_newv(objectType, cast(uint)parameters.length, parameters.ptr);
		if (__p is null)
		{
			throw new ConstructionException("null returned by newv");
		}
		this(cast(GObject*)__p, true);
	}
	public static size_t compatControl(size_t what, void* data);
	public static ParamSpec interfaceFindProperty(TypeInterface gIface, string propertyName);
	public static void interfaceInstallProperty(TypeInterface gIface, ParamSpec pspec);
	public static ParamSpec[] interfaceListProperties(TypeInterface gIface);
	public void addToggleRef(GToggleNotify notify, void* data);
	public void addWeakPointer(ref void* weakPointerLocation);
	public Binding bindProperty(string sourceProperty, ObjectG target, string targetProperty, GBindingFlags flags);
	public Binding bindPropertyFull(string sourceProperty, ObjectG target, string targetProperty, GBindingFlags flags, GBindingTransformFunc transformTo, GBindingTransformFunc transformFrom, void* userData, GDestroyNotify notify);
	public Binding bindPropertyWithClosures(string sourceProperty, ObjectG target, string targetProperty, GBindingFlags flags, Closure transformTo, Closure transformFrom);
	public void* dupData(string key, GDuplicateFunc dupFunc, void* userData);
	public void* dupQdata(GQuark quark, GDuplicateFunc dupFunc, void* userData);
	public void forceFloating();
	public void freezeNotify();
	public void* getData(string key);
	public void getProperty(string propertyName, Value value);
	public void* getQdata(GQuark quark);
	public void getValist(string firstPropertyName, void* varArgs);
	public void getv(string[] names, Value[] values);
	public bool isFloating();
	public void notify(string propertyName);
	public void notifyByPspec(ParamSpec pspec);
	alias doref = ref_;
	public ObjectG ref_();
	public ObjectG refSink();
	public void removeToggleRef(GToggleNotify notify, void* data);
	public void removeWeakPointer(ref void* weakPointerLocation);
	public bool replaceData(string key, void* oldval, void* newval, GDestroyNotify destroy, out GDestroyNotify oldDestroy);
	public bool replaceQdata(GQuark quark, void* oldval, void* newval, GDestroyNotify destroy, out GDestroyNotify oldDestroy);
	public void runDispose();
	public void setData(string key, void* data);
	public void setDataFull(string key, void* data, GDestroyNotify destroy);
	public void setProperty(string propertyName, Value value);
	public void setQdata(GQuark quark, void* data);
	public void setQdataFull(GQuark quark, void* data, GDestroyNotify destroy);
	public void setValist(string firstPropertyName, void* varArgs);
	public void setv(string[] names, Value[] values);
	public void* stealData(string key);
	public void* stealQdata(GQuark quark);
	public ObjectG takeRef();
	public void thawNotify();
	public void unref();
	public void watchClosure(Closure closure);
	public void weakRef(GWeakNotify notify, void* data);
	public void weakUnref(GWeakNotify notify, void* data);
	public static void clearObject(ref ObjectG objectPtr);
}
