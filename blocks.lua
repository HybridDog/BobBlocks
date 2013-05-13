-- BobBlocks mod by RabbiBob
-- State Changes

local bobblock_colours = {"red", "orange", "yellow", "green", "blue", "indigo", "violet", "white"}

local update_bobblock = function(pos, node)
	local nodename=""
	local param2=""
	--Switch Block State
	for _, colour in ipairs(bobblock_colours) do
		--Blocks
		if node.name == 'bobblocks:'..colour..'block_off' then
			nodename = 'bobblocks:'..colour..'block'
			break
		elseif node.name == 'bobblocks:'..colour..'block' then
			nodename = 'bobblocks:'..colour..'block_off'
			break
		--Poles
		elseif node.name == 'bobblocks:'..colour..'pole_off' then
			nodename = 'bobblocks:'..colour..'pole'
			break
		elseif node.name == 'bobblocks:'..colour..'pole' then
			nodename = 'bobblocks:'..colour..'pole_off'
			break
		end
	end
	minetest.add_node(pos, {name = nodename})
	minetest.sound_play("bobblocks_glassblock",
	{pos = pos, gain = 1.0, max_hear_distance = 32,})
end


-- Punch Blocks
local on_bobblock_punched = function (pos, node, puncher)
	for _, colour in ipairs(bobblock_colours) do
		--Blocks
		if node.name == 'bobblocks:'..colour..'block_off'
		or node.name == 'bobblocks:'..colour..'block'
		--Poles
		or node.name == 'bobblocks:'..colour..'pole_off'
		or node.name == 'bobblocks:'..colour..'pole' then
			update_bobblock(pos, node)
		end
	end
end

minetest.register_on_punchnode(on_bobblock_punched)

-- Nodes
-- Misc Node

minetest.register_node("bobblocks:btm", {
	description = "Bobs TransMorgifier v5",
    tiles = {"bobblocks_btm_sides.png", "bobblocks_btm_sides.png", "bobblocks_btm_sides.png",
		"bobblocks_btm_sides.png", "bobblocks_btm_sides.png", "bobblocks_btm.png"},
	inventory_image = "bobblocks_btm.png",
	paramtype2 = "facedir",
	material = minetest.digprop_dirtlike(1.0),
	legacy_facedir_simple = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=1},

})



for _, colour in ipairs(bobblock_colours) do


--Blocks

minetest.register_node("bobblocks:"..colour.."block", {
	description = colour.." Block",
	drawtype = "glasslike",
	tiles = {"bobblocks_"..colour.."block.png"},
	inventory_image = minetest.inventorycube("bobblocks_"..colour.."block.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	sounds = default.node_sound_glass_defaults(),
	light_source = LIGHT_MAX-0,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	mesecons = {conductor={
			state = mesecon.state.on,
			offstate = "bobblocks:"..colour.."block_off"
		}}
})

minetest.register_node("bobblocks:"..colour.."block_off", {
	description = colour.." Block",
	tiles = {"bobblocks_"..colour.."block.png"},
	is_ground_content = true,
	alpha = WATER_ALPHA,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=1},
	drop = 'bobblocks:'..colour..'block',
	mesecons = {conductor={
			state = mesecon.state.off,
			onstate = "bobblocks:"..colour.."block"
		}}

})


--Poles

minetest.register_node("bobblocks:"..colour.."pole", {
	description = colour.." Pole",
	drawtype = "fencelike",
	tiles = {"bobblocks_"..colour.."block.png"},
	inventory_image = ("bobblocks_inv"..colour.."pole.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	sounds = default.node_sound_glass_defaults(),
	light_source = LIGHT_MAX-0,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	mesecons = {conductor={
			state = mesecon.state.on,
			offstate = "bobblocks:"..colour.."pole_off"
		}}
})

minetest.register_node("bobblocks:"..colour.."pole_off", {
	description = colour.." Pole",
	drawtype = "fencelike",
	tiles = {"bobblocks_"..colour.."block.png"},
	inventory_image = ("bobblocks_inv"..colour.."pole.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	sounds = default.node_sound_glass_defaults(),
	light_source = LIGHT_MAX-10,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=1},
	drop = 'bobblocks:'..colour..'pole',
	mesecons = {conductor={
			state = mesecon.state.off,
			onstate = "bobblocks:"..colour.."pole"
		}}

})


--Crafts

minetest.register_craft({
	output = "bobblocks:"..colour.."pole",
	recipe = {
		{"bobblocks:"..colour.."block", "default:stick"},

	},
})
end

minetest.register_node("bobblocks:greyblock", {
	description = "Grey Block",
	drawtype = "glasslike",
	tiles = {"bobblocks_greyblock.png"},
	inventory_image = minetest.inventorycube("bobblocks_greyblock.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	sounds = default.node_sound_glass_defaults(),
	light_source = LIGHT_MAX-0,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	mesecons = {conductor={
			state = mesecon.state.on,
			offstate = "bobblocks:greyblock_off"
		}}
})

minetest.register_node("bobblocks:greyblock_off", {
	description = "Grey Block",
	tiles = {"bobblocks_greyblock.png"},
	is_ground_content = true,
	alpha = WATER_ALPHA,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=1},
	drop = 'bobblocks:greyblock',
	mesecons = {conductor={
			state = mesecon.state.off,
			onstate = "bobblocks:greyblock"
		}}

})

minetest.register_node("bobblocks:greypole", {
	description = "Grey Pole",
	drawtype = "fencelike",
	tiles = {"bobblocks_greyblock.png"},
	inventory_image = ("bobblocks_invgreypole.png"),
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	sounds = default.node_sound_glass_defaults(),
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	--light_source = LIGHT_MAX-0,
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

-- Poles

minetest.register_craft({
	output = 'NodeItem "bobblocks:greypole" 1',
	recipe = {
		{'node "bobblocks:greyblock" 1', 'node "default:stick" 1'},

	},
})


-- MESECON
-- Add jeija to bobblocks\default.txt and paste the below in at the bottom of bobblocks\blocks.lua

