-- BobBlocks v0.0.4
-- (Minetest 0.4 mod Compatible 20120122 thru v20120320)
-- http://c55.me/minetest/forum/viewtopic.php?id=1274
-- 
-- Colored Lit Blocks
--- Default state = Solid lit block
--- Secondary state (punch) = transparent unlit block
-- Colored Lit Poles
-- Health Kit
--- Default state = health kit inactive
--- Secondary state (punch) = health kit active +10HP when walked through
-- Licenced under the GPLv2/later

dofile(minetest.get_modpath("bobblocks") .. "/blocks.lua")
dofile(minetest.get_modpath("bobblocks") .. "/poles.lua")
dofile(minetest.get_modpath("bobblocks") .. "/health.lua")

