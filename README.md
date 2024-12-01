# BobBlocks modified after v0.0.8

This mod adds nodes which are decorative and have additional functionality.

## Coloured Lit Blocks

The "Block" nodes have an On and Off state.
In the On state, they glow and are opaque, whereas in the Off state,
they don't glow and are semi-transparent.
The state can be switched by punching the nodes or sending a mesecons signal to
them.

The nodes are available in the following colours: red, orange, yellow, green,
blue, indigo, violet, white and grey.


## Poles

There is a decorative Pole node associated with each Block with the exception
of the grey Block, wherer no Pole in the Off state exists.
The Poles can be switched between On and Off state like the Blocks.
Compared to the Blocks, Poles in the Off state are opaque.


## Trap Spikes

The Trap Spike Minor and Trap Spike Major can be used for traps which hurt
players or other objects which touch them.
It is possible change the spikes into a camouflaged state by punching them.
A spike looses its camouflage when attacking an object.
Every second, Trap Spike Minor hurts 1 HP and Trap Spike Major hurts 100 HP.


## Trap Grass

The Trap Grass node looks like Dirt with Grass from minetest_game.
However, it does not collide with objects, so players can use it to hide traps
made with Trap Spikes.


## Health Pack

The Health Pack nodes have an On and Off state, which can be switched in the
same way as the Block nodes.
In the On state, it glows and objects get 10 health when walking through it.


## Bobs TransMorgifier v5

This node exists but cannot be crafted. Its existence is questionable.


# Further information

This version of the BobBlocks mod is incompatible with the official version
0.0.9, which depends on Unified Dyes.

For more information about this mod, please refer to RabbiBob's forum topic:
https://forum.luanti.org/viewtopic.php?t=1274.
