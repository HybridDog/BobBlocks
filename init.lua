-- BobBlocks v0.0.5
-- (Minetest 0.4 mod Compatible 20120122 thru v20120326)
-- http://c55.me/minetest/forum/viewtopic.php?id=1274
------------------------------------------------------------------
------------------------------------------------------------------
--          Requirements: Jeija or Mesecons                     --
--          c55.me/minetest/forum/viewtopic.php?id=628          --
--          You must edit depends.txt and add either jeija or   --
--          mesecons depending on whether or not you're using   --
--          jejia v.05 or mesecons pulled from GitHub           --
------------------------------------------------------------------
------------------------------------------------------------------
-- Colored Lit Blocks
---- Default state = Solid lit block
---- Secondary state (punch) = transparent unlit block
---- Mesecons activation 
-- Colored Lit Poles
---- Default state = Solid lit block
---- Secondary state (punch) = unlit block
---- Mesecons activation 
-- Health Kit
---- Default state = health kit inactive
---- Secondary state (punch) = health kit active +10HP when walked through
-- Trap
-- *** OFF IN THIS VERSION - TURN ON AT OWN RISK *** --
---- Default Grass (walkable off)
---- Spike Minor (1HP per hit)
---- Spike Major (100HP per hit)
-- Licenced under the GPLv2/later

dofile(minetest.get_modpath("bobblocks") .. "/blocks.lua")
dofile(minetest.get_modpath("bobblocks") .. "/health.lua")
--dofile(minetest.get_modpath("bobblocks") .. "/trap.lua")

