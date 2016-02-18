-- State Changes

local states = {
	["bobblocks:trap_spike"] = "bobblocks:trap_spike_set",
	["bobblocks:trap_spike_major"] = "bobblocks:trap_spike_major_set"
}

for i,v in pairs(states) do
	states[v] = i
end

local function on_bobtrap_punched(pos, node, ...)
	node.name = states[node.name]
	minetest.add_node(pos, node)
	return minetest.node_punch(pos, node, ...)
end


--ABMs

--(Spring The Traps)
minetest.register_abm({
	nodenames = {"bobblocks:trap_spike_set", "bobblocks:trap_spike_major_set"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		if next(minetest.get_objects_inside_radius(pos, 1)) then
			node.name = states[node.name]
			minetest.add_node(pos, node)
		end
	end,
})

minetest.register_abm({
	nodenames = {"bobblocks:trap_spike"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		for _,obj in pairs(minetest.get_objects_inside_radius(pos, 1)) do
			obj:set_hp(obj:get_hp()-1)
			minetest.sound_play("bobblocks_trap_fall",
				{pos = pos, max_hear_distance = 3,})
		end
	end,
})

minetest.register_abm({
	nodenames = {"bobblocks:trap_spike_major"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		for _,obj in pairs(minetest.get_objects_inside_radius(pos, 1)) do
			obj:set_hp(obj:get_hp()-100)
			minetest.sound_play("bobblocks_trap_fall",
				{pos = pos, max_hear_distance = 3,})
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

local function spikenode(name, desc, texture, drop, groups, drawtype)
	minetest.register_node("bobblocks:trap_"..name, {
		description = desc,
		drawtype = drawtype,
		tiles = {"bobblocks_"..texture..".png"},
		inventory_image = ("bobblocks_"..texture..".png"),
		paramtype = "light",
		walkable = false,
		sunlight_propagates = true,
		groups = groups,
		drop = drop,
		on_punch = on_bobtrap_punched,
	})
end

local function spike1(name, desc, texture)
	spikenode(name, desc, texture, "bobblocks:trap_"..name, {cracky=3,melty=3}, "plantlike")
end

local function spike2(name, desc, texture, drop)
	spikenode(name, desc, texture, drop, {cracky=3,melty=3,not_in_creative_inventory=1}, "raillike")
end

spike1("spike", "Trap Spike Minor", "minorspike")
spike2("spike_set", "Trap Spike Minor Set", "trap_set", "bobblocks:trap_spike")
spike1("spike_major", "Trap Spike Major", "majorspike")
spike2("spike_major_set", "Trap Spike Major Set", "trap_set", "bobblocks:trap_spike_major")


-- Crafting

minetest.register_craft({
	output = "bobblocks:trap_spike",
	recipe = {
		{"", "", ""},
		{"", "default:cobble", ""},
		{"default:cobble", "default:apple", "default:cobble"},
	}
})

minetest.register_craft({
	output = "bobblocks:trap_spike_major",
	recipe = {
		{"", "default:cobble", ""},
		{"", "default:apple", ""},
		{"default:cobble", "default:apple", "default:cobble"},
	}
})

minetest.register_craft({
	output = "bobblocks:trap_grass",
	recipe = {
		{"", "", ""},
		{"", "default:dirt", ""},
		{"", "default:stick", ""},
	}
})
