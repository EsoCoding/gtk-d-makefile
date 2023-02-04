// D import file generated from 'src/gobject/Value.d'
module gobject.Value;
private import glib.Str;
private import glib.Variant;
private import glib.VariantType;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Type;
private import gobject.TypeInstance;
private import gobject.c.functions;
public import gobject.c.types;
private import std.traits;
public class Value
{
	protected GValue* gValue;
	protected bool ownedRef;
	public GValue* getValueStruct(bool transferOwnership = false);
	protected void* getStruct();
	public this(GValue* gValue, bool ownedRef = false)
	{
		this.gValue = gValue;
		this.ownedRef = ownedRef;
	}
	public this()
	{
		this(new GValue);
	}
	this(GOBJECT)(GOBJECT obj) if (is(GOBJECT == class) && hasMember!(GOBJECT, "getType"))
	{
		this();
		init(GOBJECT.getType());
		static if (is(GOBJECT : ObjectG))
		{
			setObject(obj);
		}
		else
		{
			if (Type.isA(gValue.gType, GType.BOXED))
				setBoxed(obj.tupleof[0]);
			else
				setPointer(obj.tupleof[0]);
		}
	}
	this(string value)
	{
		this();
		init(GType.STRING);
		setString(value);
	}
	this(BOOL)(BOOL value) if (isBoolean!BOOL)
	{
		this();
		init(GType.BOOLEAN);
		setBoolean(value);
	}
	this(CHAR)(CHAR value) if (is(CHAR == char))
	{
		this();
		init(GType.UCHAR);
		setUchar(value);
	}
	this(INT)(INT value) if (isIntegral!INT)
	{
		this();
		static if (is(OriginalType!INT == int))
		{
			init(GType.INT);
			setInt(value);
		}
		else
		{
			static if (is(OriginalType!INT == uint))
			{
				init(GType.UINT);
				setUint(value);
			}
			else
			{
				static if (is(OriginalType!INT == long))
				{
					init(GType.INT64);
					setInt64(value);
				}
				else
				{
					static if (is(OriginalType!INT == ulong))
					{
						init(GType.UINT64);
						setUint64(value);
					}
					else
					{
						init(GType.INT);
						setInt(value);
					}
				}
			}
		}
	}
	this(FLOAT)(FLOAT value) if (isFloatingPoint!FLOAT)
	{
		this();
		static if (is(FLOAT == float))
		{
			init(GType.FLOAT);
			setFloat(value);
		}
		else
		{
			init(GType.DOUBLE);
			setDouble(value);
		}
	}
	public @property GType gType();
	public TYPE get(TYPE)()
	{
		static if (is(TYPE == bool))
		{
			return getBoolean();
		}
		else
		{
			static if (is(TYPE == byte))
			{
				return getSchar();
			}
			else
			{
				static if (is(TYPE == ubyte) || is(TYPE == char))
				{
					return getUchar();
				}
				else
				{
					static if (is(TYPE == int))
					{
						return getInt();
					}
					else
					{
						static if (is(TYPE == uint))
						{
							return getUint();
						}
						else
						{
							static if (is(TYPE == long))
							{
								return getInt64();
							}
							else
							{
								static if (is(TYPE == ulong))
								{
									return getUint64();
								}
								else
								{
									static if (is(TYPE == float))
									{
										return getFloat();
									}
									else
									{
										static if (is(TYPE == double))
										{
											return getDouble();
										}
										else
										{
											static if (is(TYPE == string))
											{
												return getString();
											}
											else
											{
												static if (is(TYPE == string[]))
												{
													return Str.toStringArray(cast(const(char*)*)getPointer());
												}
												else
												{
													static if (is(TYPE == enum))
													{
														return cast(TYPE)(Type.isA(gValue.gType, GType.ENUM) ? getEnum() : getFlags());
													}
													else
													{
														static if (isPointer!TYPE)
														{
															return cast(TYPE)(Type.isA(gValue.gType, GType.POINTER) ? getPointer() : Type.isA(gValue.gType, GType.BOXED) ? getBoxed() : g_value_get_object(gValue));
														}
														else
														{
															static if (is(TYPE == interface))
															{
																return cast(TYPE)getObject();
															}
															else
															{
																static if (is(TYPE == class))
																{
																	static if (is(TYPE == Variant))
																	{
																		return getVariant();
																	}
																	else
																	{
																		static if (is(TYPE == ParamSpec))
																		{
																			return getParam();
																		}
																		else
																		{
																			static if (is(TYPE : ObjectG))
																			{
																				return cast(TYPE)getObject();
																			}
																			else
																			{
																				return ObjectG.getDObject!TYPE(cast(typeof(TYPE.tupleof[0]))(Type.isA(gValue.gType, GType.POINTER) ? getPointer() : Type.isA(gValue.gType, GType.BOXED) ? getBoxed() : g_value_get_object(gValue)));
																			}
																		}
																	}
																}

															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	public static GType getType();
	public void copy(Value destValue);
	public void* dupBoxed();
	public ObjectG dupObject();
	public ParamSpec dupParam();
	public string dupString();
	public Variant dupVariant();
	public bool fitsPointer();
	public bool getBoolean();
	public void* getBoxed();
	public char getChar();
	public double getDouble();
	public int getEnum();
	public uint getFlags();
	public float getFloat();
	public GType getGtype();
	public int getInt();
	public long getInt64();
	public glong getLong();
	public ObjectG getObject();
	public ParamSpec getParam();
	public void* getPointer();
	public byte getSchar();
	public string getString();
	public char getUchar();
	public uint getUint();
	public ulong getUint64();
	public gulong getUlong();
	public Variant getVariant();
	public Value init(GType gType);
	public void initFromInstance(TypeInstance instance_);
	public void* peekPointer();
	public Value reset();
	public void setBoolean(bool vBoolean);
	public void setBoxed(void* vBoxed);
	public void setBoxedTakeOwnership(void* vBoxed);
	public void setChar(char vChar);
	public void setDouble(double vDouble);
	public void setEnum(int vEnum);
	public void setFlags(uint vFlags);
	public void setFloat(float vFloat);
	public void setGtype(GType vGtype);
	public void setInstance(void* instance_);
	public void setInt(int vInt);
	public void setInt64(long vInt64);
	public void setInternedString(string vString);
	public void setLong(glong vLong);
	public void setObject(ObjectG vObject);
	public void setObjectTakeOwnership(void* vObject);
	public void setParam(ParamSpec param);
	public void setParamTakeOwnership(ParamSpec param);
	public void setPointer(void* vPointer);
	public void setSchar(byte vChar);
	public void setStaticBoxed(void* vBoxed);
	public void setStaticString(string vString);
	public void setString(string vString);
	public void setStringTakeOwnership(string vString);
	public void setUchar(char vUchar);
	public void setUint(uint vUint);
	public void setUint64(ulong vUint64);
	public void setUlong(gulong vUlong);
	public void setVariant(Variant variant);
	public void takeBoxed(void* vBoxed);
	public void takeObject(void* vObject);
	public void takeParam(ParamSpec param);
	public void takeString(string vString);
	public void takeVariant(Variant variant);
	public bool transform(Value destValue);
	public void unset();
	public static void registerTransformFunc(GType srcType, GType destType, GValueTransform transformFunc);
	public static bool typeCompatible(GType srcType, GType destType);
	public static bool typeTransformable(GType srcType, GType destType);
	public static ParamSpec paramSpecBoolean(string name, string nick, string blurb, bool defaultValue, GParamFlags flags);
	public static ParamSpec paramSpecBoxed(string name, string nick, string blurb, GType boxedType, GParamFlags flags);
	public static ParamSpec paramSpecChar(string name, string nick, string blurb, byte minimum, byte maximum, byte defaultValue, GParamFlags flags);
	public static ParamSpec paramSpecDouble(string name, string nick, string blurb, double minimum, double maximum, double defaultValue, GParamFlags flags);
	public static ParamSpec paramSpecEnum(string name, string nick, string blurb, GType enumType, int defaultValue, GParamFlags flags);
	public static ParamSpec paramSpecFlags(string name, string nick, string blurb, GType flagsType, uint defaultValue, GParamFlags flags);
	public static ParamSpec paramSpecFloat(string name, string nick, string blurb, float minimum, float maximum, float defaultValue, GParamFlags flags);
	public static ParamSpec paramSpecGtype(string name, string nick, string blurb, GType isAType, GParamFlags flags);
	public static ParamSpec paramSpecInt(string name, string nick, string blurb, int minimum, int maximum, int defaultValue, GParamFlags flags);
	public static ParamSpec paramSpecInt64(string name, string nick, string blurb, long minimum, long maximum, long defaultValue, GParamFlags flags);
	public static ParamSpec paramSpecLong(string name, string nick, string blurb, glong minimum, glong maximum, glong defaultValue, GParamFlags flags);
	public static ParamSpec paramSpecObject(string name, string nick, string blurb, GType objectType, GParamFlags flags);
	public static ParamSpec paramSpecOverride(string name, ParamSpec overridden);
	public static ParamSpec paramSpecParam(string name, string nick, string blurb, GType paramType, GParamFlags flags);
	public static ParamSpec paramSpecPointer(string name, string nick, string blurb, GParamFlags flags);
	public static ParamSpec paramSpecString(string name, string nick, string blurb, string defaultValue, GParamFlags flags);
	public static ParamSpec paramSpecUchar(string name, string nick, string blurb, ubyte minimum, ubyte maximum, ubyte defaultValue, GParamFlags flags);
	public static ParamSpec paramSpecUint(string name, string nick, string blurb, uint minimum, uint maximum, uint defaultValue, GParamFlags flags);
	public static ParamSpec paramSpecUint64(string name, string nick, string blurb, ulong minimum, ulong maximum, ulong defaultValue, GParamFlags flags);
	public static ParamSpec paramSpecUlong(string name, string nick, string blurb, gulong minimum, gulong maximum, gulong defaultValue, GParamFlags flags);
	public static ParamSpec paramSpecUnichar(string name, string nick, string blurb, dchar defaultValue, GParamFlags flags);
	public static ParamSpec paramSpecValueArray(string name, string nick, string blurb, ParamSpec elementSpec, GParamFlags flags);
	public static ParamSpec paramSpecVariant(string name, string nick, string blurb, VariantType type, Variant defaultValue, GParamFlags flags);
	public static string strdupValueContents(Value value);
}
