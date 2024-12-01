-- BobBlocks mod by RabbiBob

-- Note that we handle grey separately since its pole differs from the other
-- colours
local bobblock_colours = {"red", "orange", "yellow", "green", "blue", "indigo",
	"violet", "white"}


-- Helper functions

local function switch_block_state(pos, new_node_name)
	minetest.add_node(pos, {name = new_node_name})
	minetest.sound_play("bobblocks_glassblock", {
		pos = pos,
		gain = 1.0,
		max_hear_distance = 32,
	})
end


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
		light_source = 14,
		groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3},
		on_punch = function(pos, ...)
			switch_block_state(pos, "bobblocks:" ..  colour .. "block_off")
			return minetest.node_punch(pos, ...)
		end,
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
		on_punch = function(pos, ...)
			switch_block_state(pos, "bobblocks:" ..  colour .. "block")
			return minetest.node_punch(pos, ...)
		end,
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
		light_source = 14,
		groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3},
		on_punch = function(pos, ...)
			switch_block_state(pos, "bobblocks:" ..  colour .. "pole_off")
			return minetest.node_punch(pos, ...)
		end,
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
		light_source = 4,
		groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3,
			not_in_creative_inventory=1},
		drop = "bobblocks:" .. colour .. "pole",
		on_punch = function(pos, ...)
			switch_block_state(pos, "bobblocks:" ..  colour .. "pole")
			return minetest.node_punch(pos, ...)
		end,
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
	light_source = 14,
	groups = {snappy=2, cracky=3, oddly_breakable_by_hand=3},
	on_punch = function(pos, ...)
		switch_block_state(pos, "bobblocks:greyblock_off")
		return minetest.node_punch(pos, ...)
	end,
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
	on_punch = function(pos, ...)
		switch_block_state(pos, "bobblocks:greyblock")
		return minetest.node_punch(pos, ...)
	end,
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
	output = "bobblocks:btm",
	recipe = {
		{"default:glass", "default:torch", "default:leaves",
		"default:mese","default:rat"},
	},
})

minetest.register_craft({
	output = "bobblocks:greyblock 2",
	recipe = {
		{"default:glass", "default:torch", "default:cobble"},
	},
})

-- Red / Yellow / Blue / White
-- Red / Yellow -> Orange
-- Red / Blue -> Violet
-- Blue / Yellow -> Green
-- Red / Yellow / White -> Indigo

minetest.register_craft({
	output = "bobblocks:redblock 2",
	recipe = {
		{"default:glass", "default:torch", "default:brick"},
	},
})
minetest.register_craft({
	output = "bobblocks:yellowblock 2",
	recipe = {
		{"default:glass", "default:torch", "default:sand"},
	},
})
minetest.register_craft({
	output = "bobblocks:blueblock 2",
	recipe = {
		{"default:glass", "default:torch", "default:gravel"},
	},
})

minetest.register_craft({
	output = "bobblocks:whiteblock 2",
	recipe = {
		{"default:glass", "default:torch", "default:dirt"},
	},
})


minetest.register_craft({
	output = "bobblocks:orangeblock 2",
	recipe = {
		{"bobblocks:redblock", "bobblocks:yellowblock"},
	},
})


minetest.register_craft({
	output = "bobblocks:violetblock 2",
	recipe = {
		{"bobblocks:redblock", "bobblocks:blueblock"},
	},
})

minetest.register_craft({
	output = "bobblocks:greenblock 2",
	recipe = {
		{"bobblocks:blueblock", "bobblocks:yellowblock"},
	},
})


minetest.register_craft({
	output = "bobblocks:indigoblock 3",
	recipe = {
		{"bobblocks:redblock", "bobblocks:blueblock", "bobblocks:whiteblock"},
	},
})

-- Poles

for i = 1, #bobblock_colours do
	local colour = bobblock_colours[i]
	minetest.register_craft({
		output = "bobblocks:" .. colour .. "pole",
		recipe = {
			{"bobblocks:" .. colour .. "block", "default:stick"},
		},
	})
end

minetest.register_craft({
	output = "bobblocks:greypole",
	recipe = {
		{"bobblocks:greyblock", "default:stick"},
	},
})


-- MESECON
-- Add jeija to bobblocks\default.txt and paste the below in at the bottom of bobblocks\blocks.lua

