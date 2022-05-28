# Titanium ![Titanium CI](https://github.com/TitanVale/Titanium/actions/workflows/build_titanium.yml/badge.svg)

Titanium is [Paper](https://github.com/PaperMC/Paper) fork which aims to improve performance, fix exploits and bugs, improve API, and provide better configuration for server administrators. 

*Titanium officially supports JDK **8**, **11** & **17*** - but we are recommending to use *Java 17*.

## Getting Titanium

Currently, you have to build Titanium by yourself. In the future Download option will be available.

### Requirements

If you want to build Titanium you will need these things to be installed and available from your shell:
* [JDK 17](https://www.oracle.com/java/technologies/downloads/#java17)
* [Git](https://git-scm.com/)
* [Maven](https://maven.apache.org/)

### How to build

To patching, compiling and building Titanium you will use `titanium` script.

To just build Titanium clone this repository and run `titanium build paperclip` in the root directory. Then you will find your server jar in `Titanium-Server/target`, it should be named `titanium-paperclip.jar`.

## Maven

Repository:
```xml
<repository>
  <id>titanvale-snapshots</id>
  <url>https://repo.titanvale.net/snapshots/</url>
</repository>
```
API:
```xml
<dependency>
  <groupId>net.titanvale</groupId>
  <artifactId>titanium-api</artifactId>
  <version>1.8.8-R0.1-SNAPSHOT</version>
  <scope>provided</scope>
</dependency>
```
Server:
```xml
<dependency>
  <groupId>net.titanvale</groupId>
  <artifactId>titanium</artifactId>
  <version>1.8.8-R0.1-SNAPSHOT</version>
  <scope>provided</scope>
</dependency>
```

## Patches

Titanium implements patches from other engines as well. **All credits go to the people which created them.**
```
[Spigot-0138] Branchless NibbleArray by md5
[Spigot-2380] Hitting in the air will always load the chunk at 0,0 by md_5

[Paper-0044] Use UserCache for player heads
[Paper-0072] Fix Furnace cook time bug when lagging by Aikar
[Paper-0076] Optimized light level comaprsions by Aikar
[Paper-0085] Use a Shared Random for Entities
[Paper-0121] Reduce IO ops opening a new region
[Paper-0144] Improve Minecraft Hopper Performance
[Paper-0168] Disable ticking of snow blocks
[Paper-0173] Optimize World.isLoaded(BlockPosition)
[Paper-0180] Server Tick Events
[Paper-0202] Shame on you Mojang moves chunk loading off https thread
[Paper-0302] Don't load chunks for villager door check by Aikar
[Paper-0313] Optimized world time updates by Aikar
[Paper-0321] Cleanup allocated favicon ByteBuf
[Paper-0342] Always process chunk removal in removeEntity by Aikar 2018
[Paper-0344] [MC-111480] Start Entity ID's at 1
[Paper-0346] [MC-135506] Experience should save as Integers
[Paper-0347] Don't go below 0 for pickupDelay, breaks picking up items by Aikar
[Paper-0350] Use a Queue for Queueing Commands
[Paper-0352] Optimize BlockPosition helper methods by Spottedleaf

[Taco-0024] Optimize tnt entity and falling block movement
[Taco-0025] Fix east west cannoning

[SportPaper-0027] Fix head rotation packet spam
[SportPaper-0176] Use fast util collections
[SportPaper-0185] Speed up chunk unloading
[SportPaper-0198] Optimize head rotation patch
[SportPaper-0204] Fix Teleport Invisibility

[FlamePaper-0003] Fix chunk memory leak
[FlamePaper-0005] Fix multiple memory leaks
[FlamePaper-0010] Fix NullPointerException exploits for invalid logins
[FlamePaper-0013] Check channel before reading
[FlamePaper-0015] Fix Book Exploits
[FlamePaper-0017] Pearl through blocks
[FlamePaper-0024] Disable Unloaded Chunk Movement
[FlamePaper-0030] Adaptive chunk GC

[Nacho-0009] Remove an extra file io call within world credit bob7l"
[Nacho-0010] Use jchambers' FAST UUID methods
[Nacho-0012] Don't load chunks for physics
[Nacho-0019] Avoid lock every packet send
[Nacho-0023] Optimize EntityTracker for the chunk updater
[Nacho-0024] Do not create new BlockPosition when loading chunk
[Nacho-0025] Disable random tickSpeed being modified
[Nacho-????] Prevent most NBT related overflow exploits

[PandaSpigot-0005] Add internal setMaxStackSize method for materials
[PandaSpigot-0006] Update to Netty 4.1.x
[PandaSpigot-0007] Add Unix domain socket support
[PandaSpigot-0008] Remove hacky stackable buckets code
[PandaSpigot-0010] Optimize Network Manager and add advanced packet support
[PandaSpigot-0011] Allow controlled flushing for network manager
[PandaSpigot-0012] Consolidate flush calls for entity tracker packets
[PandaSpigot-0013] Optimise non-flush packet sending
[PandaSpigot-0028] Avoid blocking on Network Manager creation
[PandaSpigot-0033] Configurable arrow trajectory
[PandaSpigot-0035] Cache user authenticator threads
[PandaSpigot-0041] Use TerminalConsoleAppender for console improvements

[IonSpigot-0006] Fix Chunk Loading
[IonSpigot-0008] Reduce Chunk Hashing
[IonSpigot-0009] Reduce Unload Queue Complexity
[IonSpigot-0011] Async Spawn Chunks
[IonSpigot-0012] Movement Cache
[IonSpigot-0014] Faster Chunk Entity List
[IonSpigot-0020] Faster EntityTracker Collections
[IonSpigot-0023] Implement PandaWire

[Migot-0005] Fix Occasional Client Side Unloading of Chunk 0 0
[Migot-0009] Prevent creature spawning in unloaded chunks
[Migot-0027] Enable Concurrent Chunk Decoration
[Migot-0032] Thread Local IntCache
[Migot-0036] Check for lava only once per tick

[MineTick-0011] Optimize Idle Furnaces
[MineTick-0017] Fix insane nether portal lag
[MineTick-0023] Fix chunk coordinates miscalculations

[Akarin-0007] Avoid double I/O operation on load player file

[Yatopia-0047] Smarter statistics ticking

[InsanePaper-269] Cache Chunk Coordinations
```

## Contributing

**This section came from [SportPaper](https://github.com/Electroid/SportPaper#contributing)**

* Before contributing to Titanium, make sure you have run `./titanium build` and that you have the latest version of git installed
* To add patches to Titanium simply make your changes in `Titanium-API` and `Titanium-Server` and commit them. Then run `./titanium rebuild`.
* To modify nms files not currently imported into Titanium, you must add an import for that file in `scripts/importmcdev.sh` and then run `./titanium build` for those files to show up in `Titanium-Server`
