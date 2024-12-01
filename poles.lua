-- Poles
minetest.register_node("bobblocks:redpole", {
	description = "Red Pole",
	drawtype = "fencelike",
	tile_images = {"bobblocks_redblock.png"},
	inventory_image = ("bobblocks_invredpole.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    light_source = LIGHT_MAX-0,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("bobblocks:orangepole", {
	description = "Orange Pole",
	drawtype = "fencelike",
	tile_images = {"bobblocks_orangeblock.png"},
	inventory_image = ("bobblocks_invorangepole.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    light_source = LIGHT_MAX-0,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("bobblocks:yellowpole", {
	description = "Yellow Pole",
	drawtype = "fencelike",
	tile_images = {"bobblocks_yellowblock.png"},
	inventory_image = ("bobblocks_invyellowpole.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    light_source = LIGHT_MAX-0,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("bobblocks:greenpole", {
	description = "Green Pole",
	drawtype = "fencelike",
	tile_images = {"bobblocks_greenblock.png"},
	inventory_image = ("bobblocks_invgreenpole.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    light_source = LIGHT_MAX-0,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("bobblocks:bluepole", {
	description = "Blue Pole",
	drawtype = "fencelike",
	tile_images = {"bobblocks_blueblock.png"},
	inventory_image = ("bobblocks_invbluepole.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    light_source = LIGHT_MAX-0,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("bobblocks:indigopole", {
	description = "Indigo Pole",
	drawtype = "fencelike",
	tile_images = {"bobblocks_indigoblock.png"},
	inventory_image = ("bobblocks_invindigopole.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    light_source = LIGHT_MAX-0,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("bobblocks:violetpole", {
	description = "Violet Pole",
	drawtype = "fencelike",
	tile_images = {"bobblocks_violetblock.png"},
	inventory_image = ("bobblocks_invvioletpole.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    light_source = LIGHT_MAX-0,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("bobblocks:whitepole", {
	description = "White Pole",
	drawtype = "fencelike",
	tile_images = {"bobblocks_whiteblock.png"},
	inventory_image = ("bobblocks_invwhitepole.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    light_source = LIGHT_MAX-0,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("bobblocks:greypole", {
	description = "Grey Pole",
	drawtype = "fencelike",
	tile_images = {"bobblocks_greyblock.png"},
	inventory_image = ("bobblocks_invgreypole.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
    --light_source = LIGHT_MAX-0,
})

-- Crafts

-- Poles

minetest.register_craft({
	output = 'NodeItem "bobblocks:redpole" 1',
	recipe = {
		{'node "bobblocks:redblock" 1', 'node "default:stick" 1'},

	},
})

minetest.register_craft({
	output = 'NodeItem "bobblocks:yellowpole" 1',
	recipe = {
		{'node "bobblocks:yellowblock" 1', 'node "default:stick" 1'},

	},
})

minetest.register_craft({
	output = 'NodeItem "bobblocks:bluepole" 1',
	recipe = {
		{'node "bobblocks:blueblock" 1', 'node "default:stick" 1'},

	},
})

minetest.register_craft({
	output = 'NodeItem "bobblocks:whitepole" 1',
	recipe = {
		{'node "bobblocks:whiteblock" 1', 'node "default:stick" 1'},

	},
})

minetest.register_craft({
	output = 'NodeItem "bobblocks:orangepole" 1',
	recipe = {
		{'node "bobblocks:orangeblock" 1', 'node "default:stick" 1'},

	},
})

minetest.register_craft({
	output = 'NodeItem "bobblocks:violetpole" 1',
	recipe = {
		{'node "bobblocks:violetblock" 1', 'node "default:stick" 1'},

	},
})

minetest.register_craft({
	output = 'NodeItem "bobblocks:greenpole" 1',
	recipe = {
		{'node "bobblocks:greenblock" 1', 'node "default:stick" 1'},

	},
})

minetest.register_craft({
	output = 'NodeItem "bobblocks:indigopole" 1',
	recipe = {
		{'node "bobblocks:indigoblock" 1', 'node "default:stick" 1'},

	},
})

minetest.register_craft({
	output = 'NodeItem "bobblocks:greypole" 1',
	recipe = {
		{'node "bobblocks:greyblock" 1', 'node "default:stick" 1'},

	},
})


