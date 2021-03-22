local water_inventory_image =
"[inventorycube{farlands_water_source_animated.png&[verticalframe:16:8"
.. "{farlands_water_source_animated.png&[verticalframe:16:8"
.. "{farlands_water_source_animated.png&[verticalframe:16:8"
local river_water_inventory_image =
"[inventorycube{farlands_river_water_source_animated.png&[verticalframe:16:8"
.. "{farlands_river_water_source_animated.png&[verticalframe:16:8"
.. "{farlands_river_water_source_animated.png&[verticalframe:16:8"
minetest.register_node("fl_terrain:water_source", {
	description = "Water Source",
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "farlands_water_source_animated.png^[opacity:103",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "farlands_water_source_animated.png^[opacity:103",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
    --below 2 are hacks to deal with alpha being set above
    inventory_image = water_inventory_image,
    wield_image = "farlands_water_source_animated.png^[verticalframe:16:8",
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "fl_terrain:water_flowing",
	liquid_alternative_source = "fl_terrain:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, cools_lava = 1},
	--sounds = farlands.node_sound_water_farlandss(),
})

minetest.register_node("fl_terrain:water_flowing", {
	description = "Flowing Water",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"farlands_water.png"},
	special_tiles = {
		{
			name = "farlands_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1.5,
			},
		},
		{
			name = "farlands_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1.5,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "fl_terrain:water_flowing",
	liquid_alternative_source = "fl_terrain:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	--sounds = farlands.node_sound_water_farlandss(),
})


minetest.register_node("fl_terrain:river_water_source", {
	description = "River Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "farlands_river_water_source_animated.png^[opacity:103",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "farlands_river_water_source_animated.png^[opacity:103",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
    --below 2 are hacks to deal with alpha being set above
    inventory_image = river_water_inventory_image,
    wield_image = "farlands_river_water_source_animated.png^[verticalframe:16:8",
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "fl_terrain:river_water_flowing",
	liquid_alternative_source = "fl_terrain:river_water_source",
	liquid_viscosity = 1,
	-- Not renewable to avoid horizontal spread of water sources in sloping
	-- rivers that can cause water to overflow riverbanks and cause floods.
	-- River water source is instead made renewable by the 'force renew'
	-- option used in the 'bucket' mod by the river water bucket.
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, cools_lava = 1},
	--sounds = farlands.node_sound_water_farlandss(),
})

minetest.register_node("fl_terrain:river_water_flowing", {
	description = "Flowing River Water",
	drawtype = "flowingliquid",
	tiles = {"farlands_river_water.png"},
	special_tiles = {
		{
			name = "farlands_river_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1.5,
			},
		},
		{
			name = "farlands_river_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1.5,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "fl_terrain:river_water_flowing",
	liquid_alternative_source = "fl_terrain:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
	--sounds = farlands.node_sound_water_farlandss(),
})