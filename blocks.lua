-- BobBlocks mod by RabbiBob

-- Note that we handle grey separately since its pole differs from the other
-- colours
local bobblock_colours = {"red", "orange", "yellow", "green", "blue", "indigo",
	"violet", "white"}


-- State Changes

local update_bobblock = function (pos, node)
    local nodename=""
    local param2=""
    --Switch Block State
    if
    -- Start Blocks
        node.name == 'bobblocks:redblock_off' then nodename = 'bobblocks:redblock'
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
    -- Start Poles
    elseif node.name == 'bobblocks:redpole_off' then nodename = 'bobblocks:redpole'
    elseif node.name == 'bobblocks:redpole' then nodename = 'bobblocks:redpole_off'
    elseif node.name == 'bobblocks:orangepole_off' then nodename = 'bobblocks:orangepole'
    elseif node.name == 'bobblocks:orangepole' then nodename = 'bobblocks:orangepole_off'
    elseif node.name == 'bobblocks:yellowpole_off' then nodename = 'bobblocks:yellowpole'
    elseif node.name == 'bobblocks:yellowpole' then nodename = 'bobblocks:yellowpole_off'
    elseif node.name == 'bobblocks:greenpole_off' then nodename = 'bobblocks:greenpole'
    elseif node.name == 'bobblocks:greenpole' then nodename = 'bobblocks:greenpole_off'
    elseif node.name == 'bobblocks:bluepole_off' then nodename = 'bobblocks:bluepole'
    elseif node.name == 'bobblocks:bluepole' then nodename = 'bobblocks:bluepole_off'
    elseif node.name == 'bobblocks:indigopole_off' then nodename = 'bobblocks:indigopole'
    elseif node.name == 'bobblocks:indigopole' then nodename = 'bobblocks:indigopole_off'
    elseif node.name == 'bobblocks:violetpole_off' then nodename = 'bobblocks:violetpole'
    elseif node.name == 'bobblocks:violetpole' then nodename = 'bobblocks:violetpole_off'
    elseif node.name == 'bobblocks:whitepole_off' then nodename = 'bobblocks:whitepole'
    elseif node.name == 'bobblocks:whitepole' then nodename = 'bobblocks:whitepole_off'
    end
    minetest.add_node(pos, {name = nodename})
    minetest.sound_play("bobblocks_glassblock",
	{pos = pos, gain = 1.0, max_hear_distance = 32,})
end


-- Punch Blocks
local on_bobblock_punched = function (pos, node, puncher)
    if
       -- Start Blocks
       node.name == 'bobblocks:redblock_off' or node.name == 'bobblocks:redblock' or
       node.name == 'bobblocks:orangeblock_off' or node.name == 'bobblocks:orangeblock' or
       node.name == 'bobblocks:yellowblock_off' or node.name == 'bobblocks:yellowblock' or
       node.name == 'bobblocks:greenblock_off' or node.name == 'bobblocks:greenblock' or
       node.name == 'bobblocks:blueblock_off' or node.name == 'bobblocks:blueblock' or
       node.name == 'bobblocks:indigoblock_off' or node.name == 'bobblocks:indigoblock' or
       node.name == 'bobblocks:violetblock_off' or node.name == 'bobblocks:violetblock' or
       node.name == 'bobblocks:whiteblock_off' or node.name == 'bobblocks:whiteblock' or
       --Start Poles
       node.name == 'bobblocks:redpole_off' or node.name == 'bobblocks:redpole' or
       node.name == 'bobblocks:orangepole_off' or node.name == 'bobblocks:orangepole' or
       node.name == 'bobblocks:yellowpole_off' or node.name == 'bobblocks:yellowpole' or
       node.name == 'bobblocks:greenpole_off' or node.name == 'bobblocks:greenpole' or
       node.name == 'bobblocks:bluepole_off' or node.name == 'bobblocks:bluepole' or
       node.name == 'bobblocks:indigopole_off' or node.name == 'bobblocks:indigopole' or
       node.name == 'bobblocks:violetpole_off' or node.name == 'bobblocks:violetpole' or
       node.name == 'bobblocks:whitepole_off' or node.name == 'bobblocks:whitepole'
    then
        update_bobblock(pos, node)
    end
end

minetest.register_on_punchnode(on_bobblock_punched)


-- Nodes

minetest.register_node("bobblocks:btm", {
	description = "Bobs TransMorgifier v5",
    tiles = {"bobblocks_btm_sides.png", "bobblocks_btm_sides.png", "bobblocks_btm_sides.png",
		"bobblocks_btm_sides.png", "bobblocks_btm_sides.png", "bobblocks_btm.png"},
    inventory_image = "bobblocks_btm.png",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=1},

})

for i = 1, #bobblock_colours do
	local colour = bobblock_colours[i]
	local colour_capitalised = colour:sub(1,1):upper() .. colour:sub(2)

	minetest.register_node("bobblocks:" ..  colour .. "block", {
		description = colour_capitalised .. " Block",
		drawtype = "glasslike",
		tiles = {"bobblocks_" .. colour .. "block.png"},
		inventory_image = minetest.inventorycube("bobblocks_" .. colour ..
			"block.png"),
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		sounds = default.node_sound_glass_defaults(),
		light_source = LIGHT_MAX,
		groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3},
		mesecons = {conductor={
			state = mesecon.state.on,
			offstate = "bobblocks:" .. colour .. "block_off"
		}}
	})

	minetest.register_node("bobblocks:" ..  colour .. "block_off", {
		description = colour_capitalised .. " Block",
		tiles = {"bobblocks_" ..  colour .. "block.png"},
		is_ground_content = true,
		alpha = WATER_ALPHA,
		groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3,
			not_in_creative_inventory=1},
		drop = "bobblocks:" ..  colour .. "block",
		mesecons = {conductor={
			state = mesecon.state.off,
			onstate = "bobblocks:" ..  colour .. "block"
		}}
	})

	minetest.register_node("bobblocks:" .. colour .. "pole", {
		description = colour_capitalised .. " Pole",
		drawtype = "fencelike",
		tiles = {"bobblocks_" .. colour .. "block.png"},
		inventory_image = "bobblocks_inv" .. colour .. "pole.png",
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		sounds = default.node_sound_glass_defaults(),
		light_source = LIGHT_MAX,
		groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3},
		mesecons = {conductor={
			state = mesecon.state.on,
			offstate = "bobblocks:" .. colour .. "pole_off"
		}}
	})

	minetest.register_node("bobblocks:" .. colour .. "pole_off", {
		description = colour_capitalised .. " Pole",
		drawtype = "fencelike",
		tiles = {"bobblocks_" .. colour .. "block.png"},
		inventory_image = ("bobblocks_inv" .. colour .. "pole.png"),
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		sounds = default.node_sound_glass_defaults(),
		light_source = LIGHT_MAX-10,
		groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3,
			not_in_creative_inventory=1},
		drop = "bobblocks:" .. colour .. "pole",
		mesecons = {conductor={
			state = mesecon.state.off,
			onstate = "bobblocks:" .. colour .. "pole"
		}}
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
	light_source = LIGHT_MAX,
	groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3},
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
	groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3,
		not_in_creative_inventory=1},
	drop = "bobblocks:greyblock",
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

for i = 1, #bobblock_colours do
	local colour = bobblock_colours[i]
	minetest.register_craft({
		output = 'NodeItem "bobblocks:' .. colour .. 'pole" 1',
		recipe = {
			{'node "bobblocks:' .. colour .. 'block" 1', 'node "default:stick" 1'},
		},
	})
end

minetest.register_craft({
	output = 'NodeItem "bobblocks:greypole" 1',
	recipe = {
		{'node "bobblocks:greyblock" 1', 'node "default:stick" 1'},
	},
})


-- MESECON
-- Add jeija to bobblocks\default.txt and paste the below in at the bottom of bobblocks\blocks.lua

