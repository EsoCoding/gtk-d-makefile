// D import file generated from 'src/gobject/TypePluginIF.d'
module gobject.TypePluginIF;
private import gobject.c.functions;
public import gobject.c.types;
public interface TypePluginIF
{
	public GTypePlugin* getTypePluginStruct(bool transferOwnership = false);
	protected void* getStruct();
	public static GType getType();
	public void completeInterfaceInfo(GType instanceType, GType interfaceType, GInterfaceInfo* info);
	public void completeTypeInfo(GType gType, GTypeInfo* info, GTypeValueTable* valueTable);
	public void unuse();
	public void use();
}
