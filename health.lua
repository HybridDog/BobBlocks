-- Healing Node

minetest.register_node("bobblocks:health_off", {
	description = "Health Pack 1 Off",
	tiles = {"bobblocks_health_off.png"},
	inventory_image = "bobblocks_health_off.png",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	walkable = false,
	climbable = false,
	on_punch = function(pos, ...)
		minetest.add_node(pos, {name = "bobblocks:health_on"})
		return minetest.node_punch(pos, ...)
	end,
	mesecons = {conductor={
		state = mesecon.state.off,
		onstate = "bobblocks:health_on"
	}}
})

minetest.register_node("bobblocks:health_on", {
	description = "Health Pack 1 On",
	tiles = {"bobblocks_health_on.png"},
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	light_source = 14,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	walkable = false,
	climbable = false,
	drop = "bobblocks:health_off",
	on_punch = function(pos, ...)
		minetest.add_node(pos, {name = "bobblocks:health_off"})
		return minetest.node_punch(pos, ...)
	end,
	mesecons = {conductor={
		state = mesecon.state.on,
		offstate = "bobblocks:health_off"
	}}
})


minetest.register_abm({
	nodenames = {"bobblocks:health_on"},
	interval = 1.0,
	chance = 1,
	action = function(pos)
		for _, obj in pairs(minetest.get_objects_inside_radius(pos, 1)) do
			minetest.sound_play("bobblocks_health",
				{pos = pos, max_hear_distance = 32,})
			obj:set_hp(obj:get_hp() + 10)
			minetest.remove_node(pos)
		end
	end,

})

--- Health

minetest.register_craft({
	output = "bobblocks:health_off",
	recipe = {
		{"default:dirt", "default:paper", "default:apple"},
	},
})
