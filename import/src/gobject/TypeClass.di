// D import file generated from 'src/gobject/TypeClass.d'
module gobject.TypeClass;
private import gobject.ObjectG;
private import gobject.c.functions;
public import gobject.c.types;
public class TypeClass
{
	protected GTypeClass* gTypeClass;
	protected bool ownedRef;
	public GTypeClass* getTypeClassStruct(bool transferOwnership = false);
	protected void* getStruct();
	public this(GTypeClass* gTypeClass, bool ownedRef = false)
	{
		this.gTypeClass = gTypeClass;
		this.ownedRef = ownedRef;
	}
	~this();
	public void addPrivate(size_t privateSize);
	public int getInstancePrivateOffset();
	public void* getPrivate(GType privateType);
	public TypeClass peekParent();
	public void unref();
	public void unrefUncached();
	public static void adjustPrivateOffset(void* gClass, int* privateSizeOrOffset);
	public static TypeClass peek(GType type);
	public static TypeClass peekStatic(GType type);
	alias doref = ref_;
	public static TypeClass ref_(GType type);
}
