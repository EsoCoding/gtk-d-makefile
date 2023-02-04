// D import file generated from 'src/gobject/TypeInstance.d'
module gobject.TypeInstance;
private import gobject.c.functions;
public import gobject.c.types;
public class TypeInstance
{
	protected GTypeInstance* gTypeInstance;
	protected bool ownedRef;
	public GTypeInstance* getTypeInstanceStruct(bool transferOwnership = false);
	protected void* getStruct();
	public this(GTypeInstance* gTypeInstance, bool ownedRef = false)
	{
		this.gTypeInstance = gTypeInstance;
		this.ownedRef = ownedRef;
	}
	public void* getPrivate(GType privateType);
}
