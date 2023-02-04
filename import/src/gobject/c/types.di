// D import file generated from 'src/gobject/c/types.d'
module gobject.c.types;
public import glib.c.types;
public alias GSignalCMarshaller = GClosureMarshal;
public alias GSignalCVaMarshaller = GVaClosureMarshal;
enum GType : size_t
{
	INVALID = 0 << 2,
	NONE = 1 << 2,
	INTERFACE = 2 << 2,
	CHAR = 3 << 2,
	UCHAR = 4 << 2,
	BOOLEAN = 5 << 2,
	INT = 6 << 2,
	UINT = 7 << 2,
	LONG = 8 << 2,
	ULONG = 9 << 2,
	INT64 = 10 << 2,
	UINT64 = 11 << 2,
	ENUM = 12 << 2,
	FLAGS = 13 << 2,
	FLOAT = 14 << 2,
	DOUBLE = 15 << 2,
	STRING = 16 << 2,
	POINTER = 17 << 2,
	BOXED = 18 << 2,
	PARAM = 19 << 2,
	OBJECT = 20 << 2,
	VARIANT = 21 << 2,
}
public enum GBindingFlags
{
	DEFAULT = 0,
	BIDIRECTIONAL = 1,
	SYNC_CREATE = 2,
	INVERT_BOOLEAN = 4,
}
alias BindingFlags = GBindingFlags;
public enum GConnectFlags
{
	DEFAULT = 0,
	AFTER = 1,
	SWAPPED = 2,
}
alias ConnectFlags = GConnectFlags;
public enum GParamFlags : uint
{
	READABLE = 1,
	WRITABLE = 2,
	READWRITE = 3,
	CONSTRUCT = 4,
	CONSTRUCT_ONLY = 8,
	LAX_VALIDATION = 16,
	STATIC_NAME = 32,
	PRIVATE = 32,
	STATIC_NICK = 64,
	STATIC_BLURB = 128,
	EXPLICIT_NOTIFY = 1073741824,
	DEPRECATED = 2147483648L,
}
alias ParamFlags = GParamFlags;
public enum GSignalFlags
{
	RUN_FIRST = 1,
	RUN_LAST = 2,
	RUN_CLEANUP = 4,
	NO_RECURSE = 8,
	DETAILED = 16,
	ACTION = 32,
	NO_HOOKS = 64,
	MUST_COLLECT = 128,
	DEPRECATED = 256,
	ACCUMULATOR_FIRST_RUN = 131072,
}
alias SignalFlags = GSignalFlags;
public enum GSignalMatchType
{
	ID = 1,
	DETAIL = 2,
	CLOSURE = 4,
	FUNC = 8,
	DATA = 16,
	UNBLOCKED = 32,
}
alias SignalMatchType = GSignalMatchType;
public enum GTypeDebugFlags
{
	NONE = 0,
	OBJECTS = 1,
	SIGNALS = 2,
	INSTANCE_COUNT = 4,
	MASK = 7,
}
alias TypeDebugFlags = GTypeDebugFlags;
public enum GTypeFlags
{
	NONE = 0,
	ABSTRACT = 16,
	VALUE_ABSTRACT = 32,
	FINAL = 64,
}
alias TypeFlags = GTypeFlags;
public enum GTypeFundamentalFlags
{
	CLASSED = 1,
	INSTANTIATABLE = 2,
	DERIVABLE = 4,
	DEEP_DERIVABLE = 8,
}
alias TypeFundamentalFlags = GTypeFundamentalFlags;
struct GBinding;
struct GBindingGroup;
struct GCClosure
{
	GClosure closure;
	void* callback;
}
struct GClosure
{
	import std.bitmanip : bitfields;
	mixin(bitfields!(uint, "refCount", 15, uint, "metaMarshalNouse", 1, uint, "nGuards", 1, uint, "nFnotifiers", 2, uint, "nInotifiers", 8, uint, "inInotify", 1, uint, "floating", 1, uint, "derivativeFlag", 1, uint, "inMarshal", 1, uint, "isInvalid", 1));
	extern (C) void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* marshalData) marshal;
	void* data;
	GClosureNotifyData* notifiers;
}
struct GClosureNotifyData
{
	void* data;
	GClosureNotify notify;
}
struct GEnumClass
{
	GTypeClass gTypeClass;
	int minimum;
	int maximum;
	uint nValues;
	GEnumValue* values;
}
struct GEnumValue
{
	int value;
	const(char)* valueName;
	const(char)* valueNick;
}
struct GFlagsClass
{
	GTypeClass gTypeClass;
	uint mask;
	uint nValues;
	GFlagsValue* values;
}
struct GFlagsValue
{
	uint value;
	const(char)* valueName;
	const(char)* valueNick;
}
struct GInterfaceInfo
{
	GInterfaceInitFunc interfaceInit;
	GInterfaceFinalizeFunc interfaceFinalize;
	void* interfaceData;
}
struct GObject
{
	GTypeInstance gTypeInstance;
	uint refCount;
	GData* qdata;
}
struct GObjectClass
{
	GTypeClass gTypeClass;
	GSList* constructProperties;
	extern (C) GObject* function(GType type, uint nConstructProperties, GObjectConstructParam* constructProperties) constructor;
	extern (C) void function(GObject* object, uint propertyId, GValue* value, GParamSpec* pspec) setProperty;
	extern (C) void function(GObject* object, uint propertyId, GValue* value, GParamSpec* pspec) getProperty;
	extern (C) void function(GObject* object) dispose;
	extern (C) void function(GObject* object) finalize;
	extern (C) void function(GObject* object, uint nPspecs, GParamSpec** pspecs) dispatchPropertiesChanged;
	extern (C) void function(GObject* object, GParamSpec* pspec) notify;
	extern (C) void function(GObject* object) constructed;
	size_t flags;
	size_t nConstructProperties;
	void* pspecs;
	size_t nPspecs;
	void*[3] pdummy;
}
struct GObjectConstructParam
{
	GParamSpec* pspec;
	GValue* value;
}
struct GParamSpec
{
	GTypeInstance gTypeInstance;
	const(char)* name;
	GParamFlags flags;
	GType valueType;
	GType ownerType;
	char* Nick;
	char* Blurb;
	GData* qdata;
	uint refCount;
	uint paramId;
}
struct GParamSpecBoolean
{
	GParamSpec parentInstance;
	bool defaultValue;
}
struct GParamSpecBoxed
{
	GParamSpec parentInstance;
}
struct GParamSpecChar
{
	GParamSpec parentInstance;
	byte minimum;
	byte maximum;
	byte defaultValue;
}
struct GParamSpecClass
{
	GTypeClass gTypeClass;
	GType valueType;
	extern (C) void function(GParamSpec* pspec) finalize;
	extern (C) void function(GParamSpec* pspec, GValue* value) valueSetDefault;
	extern (C) int function(GParamSpec* pspec, GValue* value) valueValidate;
	extern (C) int function(GParamSpec* pspec, GValue* value1, GValue* value2) valuesCmp;
	extern (C) int function(GParamSpec* pspec, GValue* value) valueIsValid;
	void*[3] dummy;
}
struct GParamSpecDouble
{
	GParamSpec parentInstance;
	double minimum;
	double maximum;
	double defaultValue;
	double epsilon;
}
struct GParamSpecEnum
{
	GParamSpec parentInstance;
	GEnumClass* enumClass;
	int defaultValue;
}
struct GParamSpecFlags
{
	GParamSpec parentInstance;
	GFlagsClass* flagsClass;
	uint defaultValue;
}
struct GParamSpecFloat
{
	GParamSpec parentInstance;
	float minimum;
	float maximum;
	float defaultValue;
	float epsilon;
}
struct GParamSpecGType
{
	GParamSpec parentInstance;
	GType isAType;
}
struct GParamSpecInt
{
	GParamSpec parentInstance;
	int minimum;
	int maximum;
	int defaultValue;
}
struct GParamSpecInt64
{
	GParamSpec parentInstance;
	long minimum;
	long maximum;
	long defaultValue;
}
struct GParamSpecLong
{
	GParamSpec parentInstance;
	glong minimum;
	glong maximum;
	glong defaultValue;
}
struct GParamSpecObject
{
	GParamSpec parentInstance;
}
struct GParamSpecOverride
{
	GParamSpec parentInstance;
	GParamSpec* overridden;
}
struct GParamSpecParam
{
	GParamSpec parentInstance;
}
struct GParamSpecPointer
{
	GParamSpec parentInstance;
}
struct GParamSpecPool;
struct GParamSpecString
{
	GParamSpec parentInstance;
	char* defaultValue;
	char* csetFirst;
	char* csetNth;
	char substitutor;
	import std.bitmanip : bitfields;
	mixin(bitfields!(uint, "nullFoldIfEmpty", 1, uint, "ensureNonNull", 1, uint, "", 30));
}
struct GParamSpecTypeInfo
{
	ushort instanceSize;
	ushort nPreallocs;
	extern (C) void function(GParamSpec* pspec) instanceInit;
	GType valueType;
	extern (C) void function(GParamSpec* pspec) finalize;
	extern (C) void function(GParamSpec* pspec, GValue* value) valueSetDefault;
	extern (C) int function(GParamSpec* pspec, GValue* value) valueValidate;
	extern (C) int function(GParamSpec* pspec, GValue* value1, GValue* value2) valuesCmp;
}
struct GParamSpecUChar
{
	GParamSpec parentInstance;
	ubyte minimum;
	ubyte maximum;
	ubyte defaultValue;
}
struct GParamSpecUInt
{
	GParamSpec parentInstance;
	uint minimum;
	uint maximum;
	uint defaultValue;
}
struct GParamSpecUInt64
{
	GParamSpec parentInstance;
	ulong minimum;
	ulong maximum;
	ulong defaultValue;
}
struct GParamSpecULong
{
	GParamSpec parentInstance;
	gulong minimum;
	gulong maximum;
	gulong defaultValue;
}
struct GParamSpecUnichar
{
	GParamSpec parentInstance;
	dchar defaultValue;
}
struct GParamSpecValueArray
{
	GParamSpec parentInstance;
	GParamSpec* elementSpec;
	uint fixedNElements;
}
struct GParamSpecVariant
{
	GParamSpec parentInstance;
	GVariantType* type;
	GVariant* defaultValue;
	void*[4] padding;
}
struct GParameter
{
	const(char)* name;
	GValue value;
}
struct GSignalGroup;
struct GSignalInvocationHint
{
	uint signalId;
	GQuark detail;
	GSignalFlags runType;
}
struct GSignalQuery
{
	uint signalId;
	const(char)* signalName;
	GType itype;
	GSignalFlags signalFlags;
	GType returnType;
	uint nParams;
	GType* paramTypes;
}
struct GTypeCValue
{
	union
	{
	}
}
struct GTypeClass
{
	GType gType;
}
struct GTypeFundamentalInfo
{
	GTypeFundamentalFlags typeFlags;
}
struct GTypeInfo
{
	ushort classSize;
	GBaseInitFunc baseInit;
	GBaseFinalizeFunc baseFinalize;
	GClassInitFunc classInit;
	GClassFinalizeFunc classFinalize;
	void* classData;
	ushort instanceSize;
	ushort nPreallocs;
	GInstanceInitFunc instanceInit;
	GTypeValueTable* valueTable;
}
struct GTypeInstance
{
	GTypeClass* gClass;
}
struct GTypeInterface
{
	GType gType;
	GType gInstanceType;
}
struct GTypeModule
{
	GObject parentInstance;
	uint useCount;
	GSList* typeInfos;
	GSList* interfaceInfos;
	char* name;
}
struct GTypeModuleClass
{
	GObjectClass parentClass;
	extern (C) int function(GTypeModule* module_) load;
	extern (C) void function(GTypeModule* module_) unload;
	extern (C) void function() reserved1;
	extern (C) void function() reserved2;
	extern (C) void function() reserved3;
	extern (C) void function() reserved4;
}
struct GTypePlugin;
struct GTypePluginClass
{
	GTypeInterface baseIface;
	GTypePluginUse usePlugin;
	GTypePluginUnuse unusePlugin;
	GTypePluginCompleteTypeInfo completeTypeInfo;
	GTypePluginCompleteInterfaceInfo completeInterfaceInfo;
}
struct GTypeQuery
{
	GType type;
	const(char)* typeName;
	uint classSize;
	uint instanceSize;
}
struct GTypeValueTable
{
	extern (C) void function(GValue* value) valueInit;
	extern (C) void function(GValue* value) valueFree;
	extern (C) void function(GValue* srcValue, GValue* destValue) valueCopy;
	extern (C) void* function(GValue* value) valuePeekPointer;
	const(char)* collectFormat;
	extern (C) char* function(GValue* value, uint nCollectValues, GTypeCValue* collectValues, uint collectFlags) collectValue;
	const(char)* lcopyFormat;
	extern (C) char* function(GValue* value, uint nCollectValues, GTypeCValue* collectValues, uint collectFlags) lcopyValue;
}
struct GValue
{
	GType gType;
	_Value__data__union[2] data;
}
struct GValueArray
{
	uint nValues;
	GValue* values;
	uint nPrealloced;
}
struct GWeakRef
{
	union Priv
	{
		void* p;
	}
	Priv priv;
}
struct _Value__data__union
{
	union
	{
		int vInt;
		uint vUint;
		glong vLong;
		gulong vUlong;
		long vInt64;
		ulong vUint64;
		float vFloat;
		double vDouble;
		void* vPointer;
	}
}
public extern (C) alias GBaseFinalizeFunc = void function(void* gClass);
public extern (C) alias GBaseInitFunc = void function(void* gClass);
public extern (C) alias GBindingTransformFunc = int function(GBinding* binding, GValue* fromValue, GValue* toValue, void* userData);
public extern (C) alias GBoxedCopyFunc = void* function(void* boxed);
public extern (C) alias GBoxedFreeFunc = void function(void* boxed);
public extern (C) alias GCallback = void function();
public extern (C) alias GClassFinalizeFunc = void function(void* gClass, void* classData);
public extern (C) alias GClassInitFunc = void function(void* gClass, void* classData);
public extern (C) alias GClosureMarshal = void function(GClosure* closure, GValue* returnValue, uint nParamValues, GValue* paramValues, void* invocationHint, void* userData);
public extern (C) alias GClosureNotify = void function(void* data, GClosure* closure);
public extern (C) alias GInstanceInitFunc = void function(GTypeInstance* instance_, void* gClass);
public extern (C) alias GInterfaceFinalizeFunc = void function(void* gIface, void* ifaceData);
public extern (C) alias GInterfaceInitFunc = void function(void* gIface, void* ifaceData);
public extern (C) alias GObjectFinalizeFunc = void function(GObject* object);
public extern (C) alias GObjectGetPropertyFunc = void function(GObject* object, uint propertyId, GValue* value, GParamSpec* pspec);
public extern (C) alias GObjectSetPropertyFunc = void function(GObject* object, uint propertyId, GValue* value, GParamSpec* pspec);
public extern (C) alias GSignalAccumulator = int function(GSignalInvocationHint* ihint, GValue* returnAccu, GValue* handlerReturn, void* userData);
public extern (C) alias GSignalEmissionHook = int function(GSignalInvocationHint* ihint, uint nParamValues, GValue* paramValues, void* userData);
public extern (C) alias GToggleNotify = void function(void* data, GObject* object, int isLastRef);
public extern (C) alias GTypeClassCacheFunc = int function(void* cacheData, GTypeClass* gClass);
public extern (C) alias GTypeInterfaceCheckFunc = void function(void* checkData, void* gIface);
public extern (C) alias GTypePluginCompleteInterfaceInfo = void function(GTypePlugin* plugin, GType instanceType, GType interfaceType, GInterfaceInfo* info);
public extern (C) alias GTypePluginCompleteTypeInfo = void function(GTypePlugin* plugin, GType gType, GTypeInfo* info, GTypeValueTable* valueTable);
public extern (C) alias GTypePluginUnuse = void function(GTypePlugin* plugin);
public extern (C) alias GTypePluginUse = void function(GTypePlugin* plugin);
public extern (C) alias GVaClosureMarshal = void function(GClosure* closure, GValue* returnValue, void* instance_, void* args, void* marshalData, int nParams, GType* paramTypes);
public extern (C) alias GValueTransform = void function(GValue* srcValue, GValue* destValue);
public extern (C) alias GWeakNotify = void function(void* data, GObject* whereTheObjectWas);
enum PARAM_MASK = 255;
alias G_PARAM_MASK = PARAM_MASK;
enum PARAM_STATIC_STRINGS = 224;
alias G_PARAM_STATIC_STRINGS = PARAM_STATIC_STRINGS;
enum PARAM_USER_SHIFT = 8;
alias G_PARAM_USER_SHIFT = PARAM_USER_SHIFT;
enum SIGNAL_FLAGS_MASK = 511;
alias G_SIGNAL_FLAGS_MASK = SIGNAL_FLAGS_MASK;
enum SIGNAL_MATCH_MASK = 63;
alias G_SIGNAL_MATCH_MASK = SIGNAL_MATCH_MASK;
enum TYPE_FLAG_RESERVED_ID_BIT = 1;
alias G_TYPE_FLAG_RESERVED_ID_BIT = TYPE_FLAG_RESERVED_ID_BIT;
enum TYPE_FUNDAMENTAL_MAX = 255;
alias G_TYPE_FUNDAMENTAL_MAX = TYPE_FUNDAMENTAL_MAX;
enum TYPE_FUNDAMENTAL_SHIFT = 2;
alias G_TYPE_FUNDAMENTAL_SHIFT = TYPE_FUNDAMENTAL_SHIFT;
enum TYPE_RESERVED_BSE_FIRST = 32;
alias G_TYPE_RESERVED_BSE_FIRST = TYPE_RESERVED_BSE_FIRST;
enum TYPE_RESERVED_BSE_LAST = 48;
alias G_TYPE_RESERVED_BSE_LAST = TYPE_RESERVED_BSE_LAST;
enum TYPE_RESERVED_GLIB_FIRST = 22;
alias G_TYPE_RESERVED_GLIB_FIRST = TYPE_RESERVED_GLIB_FIRST;
enum TYPE_RESERVED_GLIB_LAST = 31;
alias G_TYPE_RESERVED_GLIB_LAST = TYPE_RESERVED_GLIB_LAST;
enum TYPE_RESERVED_USER_FIRST = 49;
alias G_TYPE_RESERVED_USER_FIRST = TYPE_RESERVED_USER_FIRST;
enum VALUE_INTERNED_STRING = 268435456;
alias G_VALUE_INTERNED_STRING = VALUE_INTERNED_STRING;
enum VALUE_NOCOPY_CONTENTS = 134217728;
alias G_VALUE_NOCOPY_CONTENTS = VALUE_NOCOPY_CONTENTS;
