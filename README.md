# Pokémon Plum
Pokémon Plum is disassembly hack of Pokémon Crystal, using the [**nomaps**][nomaps] branch
of pokecrystal. This project is still fairly early in development, 
but here's a rundown of its scope:

## Features
These features are in varying states of implementation:

- New Region, Story, Characters, etc...
- Curated Dex of 253 mons spanning all generations
- A handful of exciting fakemon, some original concepts but mostly regional variants or new evolutions
- Fairy Type and Physical/Special Split
- Visual overhaul: new and modified tilesets, new sprites
- Some new moves and many old ones modified to accomodate newer gen changes
- NO HM SLAVES: HMs can be used without being taught, as long as you have the appropriate badge
- QOL features like reusable TMs, exp from catching, survive poisoning outside of battle, and many more
- Replacing stat experience with the EV system
- Add-on to the party menu to view EVs and DVs
- Improving the game's pace wherever possible

## Dream Features
These are features that would likely require heavier lifting
or do not have a lot of tutorial coverage. I will try to tackle
them at some point, but they may be beyond me

-Three difficulty modes with togglable options for level caps/item usage (would entail a complete AI overhaul)

## Credits
There are countless artists to whom I am deeply indebted.
With so many sprites from so many different talents
on display in this game, this list is going to be an effort to
compile. I want to make sure that no one is getting left out
and that I can include artists' socials/websites wherever possible

(the readme for pokecrystal is below)
# Pokecrystal
This is a disassembly of Pokémon Crystal.

It builds the following ROMs:

- Pokemon - Crystal Version (UE) (V1.0) [C][!].gbc `sha1: f4cd194bdee0d04ca4eac29e09b8e4e9d818c133`
- Pokemon - Crystal Version (UE) (V1.1) [C][!].gbc `sha1: f2f52230b536214ef7c9924f483392993e226cfb`
- Pokemon - Crystal Version (A) [C][!].gbc `sha1: a0fc810f1d4e124434f7be2c989ab5b5892ddf36`
- CRYSTAL_ps3_010328d.bin `sha1: c60d57a24bbe8ecf7cba54ab3f90669f97bd330d`
- CRYSTAL_ps3_us_revise_010710d.bin `sha1: 391ae86b1d5a26db712ffe6c28bbf2a1f804c3c4`
- CGBBYTE1.784.patch `sha1: a25517f60ca0e887d39ec698aa56a0040532a4b3`

To set up the repository, see [INSTALL.md](INSTALL.md).


## See also

- [**FAQ**](FAQ.md)
- [**Documentation**][docs]
- [**Wiki**][wiki] (includes [tutorials][tutorials])
- [**Symbols**][symbols]
- **Discord:** [pret][discord]
- **IRC:** [libera#pret][irc]

Other disassembly projects:

- [**Pokémon Red/Blue**][pokered]
- [**Pokémon Yellow**][pokeyellow]
- [**Pokémon Gold/Silver**][pokegold]
- [**Pokémon Pinball**][pokepinball]
- [**Pokémon TCG**][poketcg]
- [**Pokémon Ruby**][pokeruby]
- [**Pokémon FireRed**][pokefirered]
- [**Pokémon Emerald**][pokeemerald]

[pokered]: https://github.com/pret/pokered
[pokeyellow]: https://github.com/pret/pokeyellow
[pokegold]: https://github.com/pret/pokegold
[pokepinball]: https://github.com/pret/pokepinball
[poketcg]: https://github.com/pret/poketcg
[pokeruby]: https://github.com/pret/pokeruby
[pokefirered]: https://github.com/pret/pokefirered
[pokeemerald]: https://github.com/pret/pokeemerald
[docs]: https://pret.github.io/pokecrystal/
[wiki]: https://github.com/pret/pokecrystal/wiki
[tutorials]: https://github.com/pret/pokecrystal/wiki/Tutorials
[symbols]: https://github.com/pret/pokecrystal/tree/symbols
[discord]: https://discord.gg/d5dubZ3
[irc]: https://web.libera.chat/?#pret
[ci]: https://github.com/pret/pokecrystal/actions
[ci-badge]: https://github.com/pret/pokecrystal/actions/workflows/main.yml/badge.svg
[nomaps]: https://github.com/Rangi42/pokecrystal/tree/no-maps#pok%C3%A9mon-crystal-