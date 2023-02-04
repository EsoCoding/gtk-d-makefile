// D import file generated from 'src/gobject/ParamSpecPool.d'
module gobject.ParamSpecPool;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.c.functions;
public import gobject.c.types;
public class ParamSpecPool
{
	protected GParamSpecPool* gParamSpecPool;
	protected bool ownedRef;
	public GParamSpecPool* getParamSpecPoolStruct(bool transferOwnership = false);
	protected void* getStruct();
	public this(GParamSpecPool* gParamSpecPool, bool ownedRef = false)
	{
		this.gParamSpecPool = gParamSpecPool;
		this.ownedRef = ownedRef;
	}
	public void insert(ParamSpec pspec, GType ownerType);
	public ParamSpec[] list(GType ownerType);
	public ListG listOwned(GType ownerType);
	public ParamSpec lookup(string paramName, GType ownerType, bool walkAncestors);
	public void remove(ParamSpec pspec);
	public this(bool typePrefixing)
	{
		auto __p = g_param_spec_pool_new(typePrefixing);
		if (__p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		this(cast(GParamSpecPool*)__p);
	}
}
