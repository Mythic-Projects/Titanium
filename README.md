# Titanium ![Titanium CI](https://github.com/TitanVale/Titanium/actions/workflows/build_titanium.yml/badge.svg) [![Discord Shield](https://discordapp.com/api/guilds/982930890780966922/widget.png?style=shield)](https://discord.gg/VYTTRFYJE7)

Titanium is 1.8.8 [Paper](https://github.com/PaperMC/Paper) fork which aims to improve performance, fix exploits and bugs, improve API, and provide better configuration for server administrators. 

*Titanium officially supports JDK **8**, **11** & **17*** - but we recommend to use *Java 17*.

## Getting Titanium

You can download the latest version of Titanium from [Releases](https://github.com/TitanVale/Titanium/releases).

But also you can build it yourself. See [How To Build](https://github.com/TitanVale/Titanium#how-to-build).

### Requirements

If you want to build Titanium you will need these things to be installed and available from your shell:
* [JDK 17](https://www.oracle.com/java/technologies/downloads/#java17)
* [Git](https://git-scm.com/)

### How to build

To patching, compiling and building Titanium you will use `titanium` script.

To just build Titanium clone this repository and run `./titanium build paperclip` in the root directory. Then you will find your server jar in `Titanium-Server/build/libs`, it should be named `titanium.jar`.

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

Titanium implements patches from other engines as well. **All credits go to the people who created them.**
```
[Spigot-0138] Branchless NibbleArray by md5
[Spigot-2380] Hitting in the air will always load the chunk at 0,0 by md_5

[Paper-0022] Further improve server tick loop by Aikar
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
[Paper-0353] Send nearby packets from world player list not server by Mystiflow
[Paper-0797] Use Velocity compression and cipher natives by Elier"

[Taco-0024] Optimize tnt entity and falling block movement
[Taco-0025] Fix east west cannoning

[SportPaper-0027] Fix head rotation packet spam
[SportPaper-0134] Improved Async Task Scheduler by cswhite2000
[SportPaper-0176] Use fast util collections
[SportPaper-0185] Speed up chunk unloading
[SportPaper-0198] Optimize head rotation patch
[SportPaper-0204] Fix Teleport Invisibility

[FlamePaper-0003] Fix chunk memory leak
[FlamePaper-0005] Fix multiple memory leaks
[FlamePaper-0008] Do not load chunks for light check by Aikar
[FlamePaper-0010] Fix NullPointerException exploits for invalid logins
[FlamePaper-0013] Check channel before reading
[FlamePaper-0015] Fix Book Exploits
[FlamePaper-0017] Pearl through blocks
[FlamePaper-0024] Disable Unloaded Chunk Movement
[FlamePaper-0030] Adaptive chunk GC
[FlamePaper-0034] Hopper item lookup optimization by LinsaFTW

[Nacho-0009] Remove an extra file io call within world credit bob7l"
[Nacho-0010] Use jchambers' FAST UUID methods
[Nacho-0012] Don't load chunks for physics
[Nacho-0019] Avoid lock every packet send
[Nacho-0023] Optimize EntityTracker for the chunk updater
[Nacho-0024] Do not create new BlockPosition when loading chunk
[Nacho-0025] Disable random tickSpeed being modified
[Nacho-0050] Custom knockback
[Nacho-????] Prevent most NBT related overflow exploits
[Nacho-????] Async TNT by Sculas

[WindSpigot-0001] Thread affinity by windcolor-dev
[WindSpigot-0054] Modern tick loop by windcolor-dev

[PandaSpigot-0003/0004] Setup Gradle project by hpfxd
[PandaSpigot-0005] Add internal setMaxStackSize method for materials by hpfxd
[PandaSpigot-0004/0005] Backport PlayerHandshakeEvent from Paper by hpfxd
[PandaSpigot-0006] Update to Netty 4.1.x by hpfxd 
[PandaSpigot-0007] Add Unix domain socket support by hpfxd
[PandaSpigot-0008] Remove hacky stackable buckets code by hpfxd
[PandaSpigot-0009] Improved plugins command by hpfxd
[PandaSpigot-0010] Optimize Network Manager and add advanced packet support by hpfxd
[PandaSpigot-0011] Allow controlled flushing for network manager by hpfxd
[PandaSpigot-0012] Consolidate flush calls for entity tracker packets by hpfxd
[PandaSpigot-0013] Optimise non-flush packet sending by hpfxd
[PandaSpigot-0028] Avoid blocking on Network Manager creation by hpfxd
[PandaSpigot-0033] Configurable arrow trajectory by hpfxd
[PandaSpigot-0034] Prevent fishing hooks from using portals by hpfxd
[PandaSpigot-0035] Cache user authenticator threads by hpfxd
[PandaSpigot-0010/0037] Backport PlayerProfile API by hpfxd
[PandaSpigot-0039] Optimize VarInt reading and writing by hpfxd
[PandaSpigot-0040] Various micro-optimizations for PacketDataSerializer by hpfxd
[PandaSpigot-0041] Use TerminalConsoleAppender for console improvements by hpfxd
[PandaSpigot-0012/0045] Ability to change PlayerProfile in AsyncPreLoginEvent by Aikar
[PandaSpigot-0046] Performance improvement for Chunk.getEntities by hpfxd
[PandaSpigot-0013/0047] Add Raw Byte ItemStack Serialization
[PandaSpigot-0048] Only process BlockPhysicsEvent if a plugin has a listener by Aikar
[PandaSpigpt-0049] Add setting for proxy online mode status by hpfxd
[PandaSpigot-0050] Metrics by hpfxd
[PandaSpigot-0054] Disconnect for payload errors by uRyanxD
[PandaSpigot-0056] Faster redstone torch rapid clock removal by uRyanxD
[PandaSpigot-0060] Optimise removeQueue by hpfxd

[IonSpigot-0006] Fix Chunk Loading by SuicidalKids
[IonSpigot-0008] Reduce Chunk Hashing by SuicidalKids 
[IonSpigot-0009] Reduce Unload Queue Complexity by SuicidalKids
[IonSpigot-0011] Async Spawn Chunks by SuicidalKids
[IonSpigot-0012] Movement Cache by SuicidalKids
[IonSpigot-0014] Faster Chunk Entity List by SuicidalKids
[IonSpigot-0020] Faster EntityTracker Collections by SuicidalKids
[IonSpigot-0023] Implement PandaWire by SuicidalKids
[IonSpigot-0037] Fast Cannon Entity Tracker by SuicidalKids

[Migot-0005] Fix Occasional Client Side Unloading of Chunk 0 0
[Migot-0009] Prevent creature spawning in unloaded chunks
[Migot-0027] Enable Concurrent Chunk Decoration
[Migot-0032] Thread Local IntCache
[Migot-0036] Check for lava only once per tick

[MineTick-0011] Optimize Idle Furnaces
[MineTick-0017] Fix insane nether portal lag
[MineTick-0023] Fix chunk coordinates miscalculations

[KigPaper-0233/0070] Prevent billion laughs attacks

[Tuinity-????] Skip updating entity tracker without players

[Akarin-0007] Avoid double I/O operation on load player file

[Purpur-0150] Tick fluids config

[Yatopia-0047] Smarter statistics ticking

[InsanePaper-269] Cache Chunk Coordinations
```

## Contributing

* To start contributing to Titanium, make sure you meet the [Requirements](https://github.com/TitanVale/Titanium#requirements). Then you can run `./titanium build` to prepare upstream and apply patches.
* To add patches to Titanium simply make your changes in `Titanium-API` and `Titanium-Server`, then just commit them. Then run `./titanium rebuild`.
* After modifing code to for eg. test it run `./titanium jar`.
