/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage


module adw.PropertyAnimationTarget;

private import adw.AnimationTarget;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.ParamSpec;


/**
 * An [class@AnimationTarget] changing the value of a property of a
 * [class@GObject.Object] instance.
 *
 * Since: 1.2
 */
public class PropertyAnimationTarget : AnimationTarget
{
	/** the main Gtk struct */
	protected AdwPropertyAnimationTarget* adwPropertyAnimationTarget;

	/** Get the main Gtk struct */
	public AdwPropertyAnimationTarget* getPropertyAnimationTargetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwPropertyAnimationTarget;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwPropertyAnimationTarget;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwPropertyAnimationTarget* adwPropertyAnimationTarget, bool ownedRef = false)
	{
		this.adwPropertyAnimationTarget = adwPropertyAnimationTarget;
		super(cast(AdwAnimationTarget*)adwPropertyAnimationTarget, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_property_animation_target_get_type();
	}

	/**
	 * Creates a new `AdwPropertyAnimationTarget` for the @property_name property on
	 * @object.
	 *
	 * Params:
	 *     object = an object to be animated
	 *     propertyName = the name of the property on @object to animate
	 *
	 * Returns: the newly created `AdwPropertyAnimationTarget`
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectG object, string propertyName)
	{
		auto __p = adw_property_animation_target_new((object is null) ? null : object.getObjectGStruct(), Str.toStringz(propertyName));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwPropertyAnimationTarget*) __p, true);
	}

	/**
	 * Creates a new `AdwPropertyAnimationTarget` for the @pspec property on
	 * @object.
	 *
	 * Params:
	 *     object = an object to be animated
	 *     pspec = the param spec of the property on @object to animate
	 *
	 * Returns: new newly created `AdwPropertyAnimationTarget`
	 *
	 * Since: 1.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectG object, ParamSpec pspec)
	{
		auto __p = adw_property_animation_target_new_for_pspec((object is null) ? null : object.getObjectGStruct(), (pspec is null) ? null : pspec.getParamSpecStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_pspec");
		}

		this(cast(AdwPropertyAnimationTarget*) __p, true);
	}

	/**
	 * Gets the object animated by @self.
	 *
	 * The `AdwPropertyAnimationTarget` instance does not hold a strong reference on
	 * the object; make sure the object is kept alive throughout the target's
	 * lifetime.
	 *
	 * Returns: the animated object
	 *
	 * Since: 1.2
	 */
	public ObjectG getObject()
	{
		auto __p = adw_property_animation_target_get_object(adwPropertyAnimationTarget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}

	/**
	 * Gets the `GParamSpec` of the property animated by @self.
	 *
	 * Returns: the animated property's `GParamSpec`
	 *
	 * Since: 1.2
	 */
	public ParamSpec getPspec()
	{
		auto __p = adw_property_animation_target_get_pspec(adwPropertyAnimationTarget);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ParamSpec)(cast(GParamSpec*) __p);
	}
}
