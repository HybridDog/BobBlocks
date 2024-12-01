-- BobBlocks mod by RabbiBob

-- Nodes
-- Block Nodes
minetest.register_node("bobblocks:btm", {
	description = "Bobs TransMorgifier",
    tile_images = {"bobblocks_btm_sides.png", "bobblocks_btm_sides.png", "bobblocks_btm_sides.png",
		"bobblocks_btm_sides.png", "bobblocks_btm_sides.png", "bobblocks_btm.png"},
    inventory_image = "bobblocks_btm.png",
	paramtype2 = "facedir",
	material = minetest.digprop_dirtlike(1.0),
	legacy_facedir_simple = true,
})

default.register_falling_node("bobblocks:btm", "bobblocks_btm_sides.png")

minetest.register_node("bobblocks:redblock", {
	description = "Red Block",
	drawtype = "glasslike",
	tile_images = {"bobblocks_redblock.png"},
	inventory_image = minetest.inventorycube("bobblocks_redblock.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    light_source = LIGHT_MAX-0,
})

minetest.register_node("bobblocks:orangeblock", {
	description = "Orange Block",
	drawtype = "glasslike",
	tile_images = {"bobblocks_orangeblock.png"},
	inventory_image = minetest.inventorycube("bobblocks_orangeblock.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    light_source = LIGHT_MAX-0,
})

minetest.register_node("bobblocks:yellowblock", {
	description = "Yellow Block",
	drawtype = "glasslike",
	tile_images = {"bobblocks_yellowblock.png"},
	inventory_image = minetest.inventorycube("bobblocks_yellowblock.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    light_source = LIGHT_MAX-0,
})

minetest.register_node("bobblocks:greenblock", {
	description = "Green Block",
	drawtype = "glasslike",
	tile_images = {"bobblocks_greenblock.png"},
	inventory_image = minetest.inventorycube("bobblocks_greenblock.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    light_source = LIGHT_MAX-0,
})

minetest.register_node("bobblocks:blueblock", {
	description = "Blue Block",
	drawtype = "glasslike",
	tile_images = {"bobblocks_blueblock.png"},
	inventory_image = minetest.inventorycube("bobblocks_blueblock.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    light_source = LIGHT_MAX-0,
})

minetest.register_node("bobblocks:indigoblock", {
	description = "Indigo Block",
	drawtype = "glasslike",
	tile_images = {"bobblocks_indigoblock.png"},
	inventory_image = minetest.inventorycube("bobblocks_indigoblock.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    light_source = LIGHT_MAX-0,
})

minetest.register_node("bobblocks:violetblock", {
	description = "Violet Block",
	drawtype = "glasslike",
	tile_images = {"bobblocks_violetblock.png"},
	inventory_image = minetest.inventorycube("bobblocks_violetblock.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    light_source = LIGHT_MAX-0,
})

minetest.register_node("bobblocks:whiteblock", {
	description = "White Block",
	drawtype = "glasslike",
	tile_images = {"bobblocks_whiteblock.png"},
	inventory_image = minetest.inventorycube("bobblocks_whiteblock.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
    light_source = LIGHT_MAX-0,
})

minetest.register_node("bobblocks:greyblock", {
	description = "Grey Block",
	drawtype = "glasslike",
	tile_images = {"bobblocks_greyblock.png"},
	inventory_image = minetest.inventorycube("bobblocks_greyblock.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	material = minetest.digprop_glasslike(1.0),
})

-- Crafts
-- BTM
minetest.register_craft({
	output = 'NodeItem "bobblocks:btm" 1',
	recipe = {
		{'node "default:glass" 1', 'node "default:torch" 1', 'node "default:leaves" 1',
        'node "default:mese" 1','node "default:rat" 1'},

	},
})

-- Red / Yellow / Blue / White
-- Red / Yellow -> Orange
-- Red / Blue -> Violet
-- Blue / Yellow -> Green
-- Red / Yellow / White -> Indigo

minetest.register_craft({
	output = 'NodeItem "bobblocks:redblock" 20', 
	recipe = {
		{'node "default:glass" 1', 'node "default:torch" 1', 'node "default:brick" 1'},
	},
})
minetest.register_craft({
	output = 'NodeItem "bobblocks:yellowblock" 20', 
	recipe = {
		{'node "default:glass" 1', 'node "default:torch" 1', 'node "default:sand" 1'},
	},
})
minetest.register_craft({
	output = 'NodeItem "bobblocks:blueblock" 20', 
	recipe = {
		{'node "default:glass" 1', 'node "default:torch" 1', 'node "default:cobble" 1'},
	},
})

minetest.register_craft({
	output = 'NodeItem "bobblocks:whiteblock" 20', 
	recipe = {
		{'node "default:glass" 1', 'node "default:torch" 1', 'node "default:dirt" 1'},
	},
})


minetest.register_craft({
	output = 'NodeItem "bobblocks:orangeblock" 2',
	recipe = {
		{'node "bobblocks:redblock" 1', 'node "bobblocks:yellowblock" 1'},

	},
})


minetest.register_craft({
	output = 'NodeItem "bobblocks:violetblock" 2',
	recipe = {
		{'node "bobblocks:redblock" 1', 'node "bobblocks:blueblock" 1'},

	},
})


minetest.register_craft({
	output = 'NodeItem "bobblocks:greenblock" 2',
	recipe = {
		{'node "bobblocks:blueblock" 1', 'node "bobblocks:yellowblock" 1'},

	},
})


minetest.register_craft({
	output = 'NodeItem "bobblocks:indigoblock" 2',
	recipe = {
		{'node "bobblocks:redblock" 1', 'node "bobblocks:blueblock" 1', 'node "bobblocks:whiteblock" 1'},

	},
})

