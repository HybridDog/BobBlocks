--ABM (Spring The Traps)

minetest.register_abm({
	nodenames = {"bobblocks:trap_spike_set"},
	interval = 1.0,
	chance = 1,
	action = function(pos)
		if next(minetest.get_objects_inside_radius(pos, 1)) then
			minetest.add_node(pos, {name = "bobblocks:trap_spike"})
		end
	end,
})

minetest.register_abm({
	nodenames = {"bobblocks:trap_spike_major_set"},
	interval = 1.0,
	chance = 1,
	action = function(pos)
		if next(minetest.get_objects_inside_radius(pos, 1)) then
			minetest.add_node(pos, {name = "bobblocks:trap_spike_major"})
		end
	end,
})


-- Nodes

minetest.register_node("bobblocks:trap_grass", {
	description = "Trap Grass",
	tiles = {"default_grass.png"},
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	is_ground_content = false,
	walkable = false,
	climbable = false,
})

minetest.register_node("bobblocks:trap_spike", {
	description = "Trap Spike Minor",
	drawtype = "plantlike",
	tiles = {"bobblocks_minorspike.png"},
	inventory_image = ("bobblocks_minorspike.png"),
	paramtype = "light",
	walkable = false,
	sunlight_propagates = true,
	groups = {cracky=3,melty=3},
	on_punch = function(pos, ...)
		minetest.add_node(pos, {name = "bobblocks:trap_spike_set"})
		return minetest.node_punch(pos, ...)
	end
})

minetest.register_node("bobblocks:trap_spike_set", {
	description = "Trap Spike Minor Set",
	drawtype = "raillike",
	tiles = {"bobblocks_trap_set.png"},
	paramtype = "light",
	walkable = false,
	sunlight_propagates = true,
	groups = {cracky=3,melty=3,not_in_creative_inventory=1},
	drop = 'bobblocks:trap_spike',
	on_punch = function(pos, ...)
		minetest.add_node(pos, {name = "bobblocks:trap_spike"})
		return minetest.node_punch(pos, ...)
	end
})


minetest.register_node("bobblocks:trap_spike_major", {
	description = "Trap Spike Major",
	drawtype = "plantlike",
	tiles = {"bobblocks_majorspike.png"},
	inventory_image = ("bobblocks_majorspike.png"),
	paramtype = "light",
	walkable = false,
	sunlight_propagates = true,
	groups = {cracky=2,melty=2},
	on_punch = function(pos, ...)
		minetest.add_node(pos, {name = "bobblocks:trap_spike_major_set"})
		return minetest.node_punch(pos, ...)
	end
})

minetest.register_node("bobblocks:trap_spike_major_set", {
	description = "Trap Spike Major Set",
	drawtype = "raillike",
	tiles = {"bobblocks_trap_set.png"},
	paramtype = "light",
	walkable = false,
	sunlight_propagates = true,
	groups = {cracky=3,melty=3,not_in_creative_inventory=1},
	drop = 'bobblocks:trap_spike_major',
	on_punch = function(pos, ...)
		minetest.add_node(pos, {name = "bobblocks:trap_spike_major"})
		return minetest.node_punch(pos, ...)
	end
})


-- Crafting

minetest.register_craft({
	output = 'bobblocks:trap_spike',
	recipe = {
		{'', '', ''},
		{'', 'default:cobble', ''},
		{'default:cobble', 'default:apple', 'default:cobble'},
	}
})

minetest.register_craft({
	output = 'bobblocks:trap_spike_major',
	recipe = {
		{'', 'default:cobble', ''},
		{'', 'default:apple', ''},
		{'default:cobble', 'default:apple', 'default:cobble'},
	}
})

minetest.register_craft({
	output = 'bobblocks:trap_grass',
	recipe = {
		{'', '', ''},
		{'', 'default:dirt', ''},
		{'', 'default:stick', ''},
	}
})


-- ABM

minetest.register_abm({
	nodenames = {"bobblocks:trap_spike"},
	interval = 1.0,
	chance = 1,
	action = function(pos)
		for _,obj in pairs(minetest.get_objects_inside_radius(pos, 1)) do
			obj:set_hp(obj:get_hp() - 1)
			minetest.sound_play("bobblocks_trap_fall",
				{pos = pos, max_hear_distance = 3,})
		end
	end,
})

minetest.register_abm({
	nodenames = {"bobblocks:trap_spike_major"},
	interval = 1.0,
	chance = 1,
	action = function(pos)
		for _,obj in pairs(minetest.get_objects_inside_radius(pos, 1)) do
			obj:set_hp(obj:get_hp() - 100)
			minetest.sound_play("bobblocks_trap_fall",
				{pos = pos, max_hear_distance = 3,})
		end
	end,
})
