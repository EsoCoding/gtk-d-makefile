// D import file generated from 'src/gobject/Enums.d'
module gobject.Enums;
private import glib.Str;
private import glib.c.functions;
private import gobject.c.functions;
public import gobject.c.types;
public struct Enums
{
	public static void completeTypeInfo(GType gEnumType, out GTypeInfo info, GEnumValue* constValues);
	public static GEnumValue* getValue(GEnumClass* enumClass, int value);
	public static GEnumValue* getValueByName(GEnumClass* enumClass, string name);
	public static GEnumValue* getValueByNick(GEnumClass* enumClass, string nick);
	public static GType registerStatic(string name, GEnumValue* constStaticValues);
	public static string enumToString(GType gEnumType, int value);
	public static string flagsToString(GType flagsType, uint value);
}
