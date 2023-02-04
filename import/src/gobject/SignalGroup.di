// D import file generated from 'src/gobject/SignalGroup.d'
module gobject.SignalGroup;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.Closure;
private import gobject.ObjectG;
private import gobject.Signals;
private import gobject.c.functions;
public import gobject.c.types;
private import std.algorithm;
public class SignalGroup : ObjectG
{
	protected GSignalGroup* gSignalGroup;
	public GSignalGroup* getSignalGroupStruct(bool transferOwnership = false);
	protected override void* getStruct();
	public this(GSignalGroup* gSignalGroup, bool ownedRef = false)
	{
		this.gSignalGroup = gSignalGroup;
		super(cast(GObject*)gSignalGroup, ownedRef);
	}
	public static GType getType();
	public this(GType targetType)
	{
		auto __p = g_signal_group_new(targetType);
		if (__p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		this(cast(GSignalGroup*)__p, true);
	}
	public void block();
	public void connect(string detailedSignal, GCallback cHandler, void* data);
	public void connectAfter(string detailedSignal, GCallback cHandler, void* data);
	public void connectClosure(string detailedSignal, Closure closure, bool after);
	public void connectData(string detailedSignal, GCallback cHandler, void* data, GClosureNotify notify, GConnectFlags flags);
	public void connectObject(string detailedSignal, GCallback cHandler, void* object, GConnectFlags flags);
	public void connectSwapped(string detailedSignal, GCallback cHandler, void* data);
	public ObjectG dupTarget();
	public void setTarget(ObjectG target);
	public void unblock();
	gulong addOnBind(void delegate(ObjectG, SignalGroup) dlg, ConnectFlags connectFlags = cast(ConnectFlags)0);
	gulong addOnUnbind(void delegate(SignalGroup) dlg, ConnectFlags connectFlags = cast(ConnectFlags)0);
}
