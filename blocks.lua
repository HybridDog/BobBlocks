-- BobBlocks mod by RabbiBob
-- State Changes

local is_bobblock = function(node)
    if node.name == 'bobblocks:redblock' or node.name == 'bobblocks:redblock_off' or
       node.name == 'bobblocks:orangeblock' or node.name == 'bobblocks:orangeblock_off' or
       node.name == 'bobblocks:yellowblock' or node.name == 'bobblocks:yellowblock_off' or
       node.name == 'bobblocks:greenblock' or node.name == 'bobblocks:greenblock_off' or
       node.name == 'bobblocks:blueblock' or node.name == 'bobblocks:blueblock_off' or
       node.name == 'bobblocks:indigoblock' or node.name == 'bobblocks:indigoblock_off' or
       node.name == 'bobblocks:violetblock' or node.name == 'bobblocks:violetblock_off' or
       node.name == 'bobblocks:whiteblock' or node.name == 'bobblocks:whiteblock_off' 
       then return true
    end
    return false
end

local update_bobblock = function (pos, node)
    local nodename=""
    local param2=""
    --Switch Block State
    if node.name == 'bobblocks:redblock_off' then nodename = 'bobblocks:redblock'
    elseif node.name == 'bobblocks:redblock' then nodename = 'bobblocks:redblock_off'
    elseif node.name == 'bobblocks:orangeblock_off' then nodename = 'bobblocks:orangeblock'
    elseif node.name == 'bobblocks:orangeblock' then nodename = 'bobblocks:orangeblock_off'
    elseif node.name == 'bobblocks:yellowblock_off' then nodename = 'bobblocks:yellowblock'
    elseif node.name == 'bobblocks:yellowblock' then nodename = 'bobblocks:yellowblock_off'
    elseif node.name == 'bobblocks:greenblock_off' then nodename = 'bobblocks:greenblock'
    elseif node.name == 'bobblocks:greenblock' then nodename = 'bobblocks:greenblock_off'        
    elseif node.name == 'bobblocks:blueblock_off' then nodename = 'bobblocks:blueblock'
    elseif node.name == 'bobblocks:blueblock' then nodename = 'bobblocks:blueblock_off'
    elseif node.name == 'bobblocks:indigoblock_off' then nodename = 'bobblocks:indigoblock'
    elseif node.name == 'bobblocks:indigoblock' then nodename = 'bobblocks:indigoblock_off'    
    elseif node.name == 'bobblocks:violetblock_off' then nodename = 'bobblocks:violetblock'
    elseif node.name == 'bobblocks:violetblock' then nodename = 'bobblocks:violetblock_off'
    elseif node.name == 'bobblocks:whiteblock_off' then nodename = 'bobblocks:whiteblock'
    elseif node.name == 'bobblocks:whiteblock' then nodename = 'bobblocks:whiteblock_off'    
    end
    minetest.env:add_node(pos, {name = nodename})
end

local toggle_bobblock = function (pos, node)
    if not is_bobblock(node) then return end
    update_bobblock (pos, node, state)
end
    
local on_bobblock_punched = function (pos, node, puncher)
    if node.name == 'bobblocks:redblock_off' or node.name == 'bobblocks:redblock' or 
       node.name == 'bobblocks:orangeblock_off' or node.name == 'bobblocks:orangeblock' or
       node.name == 'bobblocks:yellowblock_off' or node.name == 'bobblocks:yellowblock' or
       node.name == 'bobblocks:greenblock_off' or node.name == 'bobblocks:greenblock' or
       node.name == 'bobblocks:blueblock_off' or node.name == 'bobblocks:blueblock' or
       node.name == 'bobblocks:indigoblock_off' or node.name == 'bobblocks:indigoblock' or
       node.name == 'bobblocks:violetblock_off' or node.name == 'bobblocks:violetblock' or
       node.name == 'bobblocks:whiteblock_off' or node.name == 'bobblocks:whiteblock' 
    then
        update_bobblock(pos, node)
    end
end

minetest.register_on_punchnode(on_bobblock_punched)

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
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
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
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("bobblocks:redblock_off", {
	description = "Red Block",
    tile_images = {"bobblocks_redblock.png"},
    is_ground_content = true,
    alpha = WATER_ALPHA,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
    drop = 'bobblocks:redblock',
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
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("bobblocks:orangeblock_off", {
	description = "Orange Block",
    tile_images = {"bobblocks_orangeblock.png"},
    is_ground_content = true,
    alpha = WATER_ALPHA,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
    drop = 'bobblocks:orangeblock',
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
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("bobblocks:yellowblock_off", {
	description = "yellow Block",
    tile_images = {"bobblocks_yellowblock.png"},
    is_ground_content = true,
    alpha = WATER_ALPHA,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
    drop = 'bobblocks:yellowblock',
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
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("bobblocks:greenblock_off", {
	description = "green Block",
    tile_images = {"bobblocks_greenblock.png"},
    is_ground_content = true,
    alpha = WATER_ALPHA,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
    drop = 'bobblocks:greenblock',
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
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("bobblocks:blueblock_off", {
	description = "Blue Block",
    tile_images = {"bobblocks_blueblock.png"},
    is_ground_content = true,
    alpha = WATER_ALPHA,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
    drop = 'bobblocks:blueblock',
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
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("bobblocks:indigoblock_off", {
	description = "indigo Block",
    tile_images = {"bobblocks_indigoblock.png"},
    is_ground_content = true,
    alpha = WATER_ALPHA,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
    drop = 'bobblocks:indigoblock',
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
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("bobblocks:violetblock_off", {
	description = "violet Block",
    tile_images = {"bobblocks_violetblock.png"},
    is_ground_content = true,
    alpha = WATER_ALPHA,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
    drop = 'bobblocks:violetblock',
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
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
})

minetest.register_node("bobblocks:whiteblock_off", {
	description = "white Block",
    tile_images = {"bobblocks_whiteblock.png"},
    is_ground_content = true,
    alpha = WATER_ALPHA,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
    drop = 'bobblocks:whiteblock',
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
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
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

minetest.register_craft({
	output = 'NodeItem "bobblocks:greyblock" 2', 
	recipe = {
		{'node "default:glass" 1', 'node "default:torch" 1', 'node "default:cobble" 1'},
	},
})

-- Red / Yellow / Blue / White
-- Red / Yellow -> Orange
-- Red / Blue -> Violet
-- Blue / Yellow -> Green
-- Red / Yellow / White -> Indigo

minetest.register_craft({
	output = 'NodeItem "bobblocks:redblock" 2', 
	recipe = {
		{'node "default:glass" 1', 'node "default:torch" 1', 'node "default:brick" 1'},
	},
})
minetest.register_craft({
	output = 'NodeItem "bobblocks:yellowblock" 2', 
	recipe = {
		{'node "default:glass" 1', 'node "default:torch" 1', 'node "default:sand" 1'},
	},
})
minetest.register_craft({
	output = 'NodeItem "bobblocks:blueblock" 2', 
	recipe = {
		{'node "default:glass" 1', 'node "default:torch" 1', 'node "default:gravel" 1'},
	},
})

minetest.register_craft({
	output = 'NodeItem "bobblocks:whiteblock" 2', 
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
	output = 'NodeItem "bobblocks:indigoblock" 3',
	recipe = {
		{'node "bobblocks:redblock" 1', 'node "bobblocks:blueblock" 1', 'node "bobblocks:whiteblock" 1'},

	},
})


