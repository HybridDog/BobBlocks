minetest.register_node("bobblocks:trap_grass", {
	description = "Trap Grass",
    tile_images = {"default_grass.png"},
	paramtype2 = "facedir",
	material = minetest.digprop_dirtlike(1.0),
	legacy_facedir_simple = true,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
    is_ground_content = false,
        walkable = false,
    climbable = false,
})

minetest.register_node("bobblocks:trap_spike", {
	description = "Trap Spike Minor",
    drawtype = "plantlike",
    visual_scale = 1,
	tile_images = {"bobblocks_minorspike.png"},
	inventory_image = ("bobblocks_minorspike.png"),
    paramtype = "light",
    walkable = false,
	sunlight_propagates = true,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_abm(
	{nodenames = {"bobblocks:trap_spike"},
    interval = 1.0,
    chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
    local objs = minetest.env:get_objects_inside_radius(pos, 1)
        for k, obj in pairs(objs) do
        obj:set_hp(obj:get_hp()-1)
    end
    end,
})

minetest.register_node("bobblocks:trap_spike_major", {
	description = "Trap Spike Major",
    drawtype = "plantlike",
	tile_images = {"bobblocks_minorspike.png"},
	inventory_image = ("bobblocks_minorspike.png"),
	material = minetest.digprop_dirtlike(1.0),
	legacy_facedir_simple = true,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
    is_ground_content = false,
        walkable = false,
    climbable = false,
})

minetest.register_abm(
	{nodenames = {"bobblocks:trap_spike_major"},
    interval = 1.0,
    chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
    local objs = minetest.env:get_objects_inside_radius(pos, 1)
        for k, obj in pairs(objs) do
        obj:set_hp(obj:get_hp()-100)
    end
    end,
})