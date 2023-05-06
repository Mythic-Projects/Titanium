# Titanium ![Titanium CI](https://github.com/TitanVale/Titanium/actions/workflows/build_titanium.yml/badge.svg) [![Discord Shield](https://discordapp.com/api/guilds/982930890780966922/widget.png?style=shield)](https://discord.gg/VYTTRFYJE7)

Titanium is 1.8.8 [Paper](https://github.com/PaperMC/Paper) fork which aims to improve performance, fix exploits and bugs, improve API and provide better configuration for server administrators. 

*Titanium officially supports JDK **8**, **11** & **17*** - but we recommend to use *Java 17*.

## Download

Latest version of Titanium - [Releases page](https://github.com/TitanVale/Titanium/releases). <br>
Dev versions (less stable, but with newer patches) - [Jenkins](https://jenkins.titanvale.net/job/Titanium/job/dev)

## Building

#### Requirements

If you want to build Titanium you will need these things to be installed and available from your shell:
* [JDK 17](https://www.oracle.com/java/technologies/downloads/#java17)
* [Git](https://git-scm.com/)
* [Maven](https://maven.apache.org/)

#### How to
To patching, compiling and building Titanium you will use `titanium` script.

To just build Titanium clone this repository and run `./titanium build paperclip` in the root directory. Then you will find your server jar in `Titanium-Server/build/libs`, it should be named `titanium.jar`.

## API

### JavaDocs

API - [Link](https://repo.titanvale.net/javadoc/snapshots/net/titanvale/titanium-api/1.8.8-R0.1-SNAPSHOT) <br>
Server - [Link](https://repo.titanvale.net/javadoc/snapshots/net/titanvale/titanium-server/1.8.8-R0.1-SNAPSHOT) <br>

### Maven

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
  <artifactId>titanium-server</artifactId>
  <version>1.8.8-R0.1-SNAPSHOT</version>
  <scope>provided</scope>
</dependency>
```

## Patches

Titanium implements patches from other engines as well. **All credits go to the people who created them.**
```
[Spigot-0138] Branchless NibbleArray by md5
[Spigot-2380] Hitting in the air will always load the chunk at 0,0 by md_5
[Spigot-5294] Cancelled EntityPickupItemEvent and PlayerPickupItemEvent alter on-ground stacks by md_5
[Spigot-5428] Better handling of some ItemMeta by Mathias

[Paper-0009] Version Command 2.0 by Zach Brown
[Paper-0008/0013] Add command line option to load extra plugin jars not in the plugins folder by Jason Penilla
[Paper-0019] Implement Paper VersionChecker by Zach Brown
[Paper-0022] Further improve server tick loop by Aikar
[Paper-0044] Use UserCache for player heads
[Paper-0072] Fix Furnace cook time bug when lagging by Aikar
[Paper-0072] Only process BlockPhysicsEvent if a plugin has a listener by Aikar
[Paper-0029/0075] EntityPathfindEvent by Aikar
[Paper-0076] Optimized light level comaprsions by Aikar
[Paper-0077] Add World Util Methods by Aikar
[Paper-0085] Use a Shared Random for Entities
[Paper-0090] Improve Maps (in item frames) performance and bug fixes by Aikar
[Paper-0101] Do not load chunks for light check by Aikar
[Paper-0116] Fix Bugs with Spigot Mob Spawn Logic by Aikar
[Paper-0118] Prevent Fire from loading chunks by Aikar
[Paper-0121] Reduce IO ops opening a new region
[Paper-0127] Do not load chunks for pathfinding by Aikar
[Paper-0135] Avoid blocking on Network Manager creation by Aikar
[Paper-0137] Faster redstone torch rapid clock removal by Martin Panzer
[Paper-0144] Improve Minecraft Hopper Performance
[Paper-0153] Fix AIOOBE in inventory handling by Brokkonaut
[Paper-0156] Auto Save Improvements by Aikar
[Paper-0161] Disable Vanilla Chunk GC by Aikar
[Paper-0168] Disable ticking of snow blocks
[Paper-0168] Cache user authenticator threads by vemacs
[Paper-0173] Optimize World.isLoaded(BlockPosition)
[Paper-0175] Don't let fishinghooks use portals by Zach Brown
[Paper-0180] Server Tick Events
[Paper-0186] Prevent Pathfinding out of World Border by Aikar
[Paper-0192] Make legacy ping handler more reliable by Minecrell
[Paper-0201] Remove CraftScheduler Async Task Debugger by Aikar
[Paper-0202] Shame on you Mojang moves chunk loading off https thread
[Paper-0210] Use TerminalConsoleAppender for console improvements by Minecrell
[Paper-0232] Fix MC-117075: TE Unload Lag Spike by mezz
[Paper-0276] Improved Async Task Scheduler by Aikar
[Paper-0088/0277] Ability to change PlayerProfile in AsyncPreLoginEvent by Aikar
[Paper-0146/0281] Mob Pathfinding API by Aikar
[Paper-0287] MC-124833 by Zach Brown
[Paper-0302] Don't load chunks for villager door check by Aikar
[Paper-0313] Optimized world time updates by Aikar
[Paper-0321] Cleanup allocated favicon ByteBuf
[Paper-0328] Optimize Network Manager and add advanced packet support by Aikar
[Paper-0332] Add More information to Entity.toString() by Aikar
[Paper-0342] Always process chunk removal in removeEntity by Aikar 2018
[Paper-0344] [MC-111480] Start Entity ID's at 1
[Paper-0346] [MC-135506] Experience should save as Integers
[Paper-0347] Don't go below 0 for pickupDelay, breaks picking up items by Aikar
[Paper-0348] Prevent chunk loading from Fluid Flowing by Aikar
[Paper-0350] Use a Queue for Queueing Commands
[Paper-0352] Optimize BlockPosition helper methods by Spottedleaf
[Paper-0353] Send nearby packets from world player list not server by Mystiflow
[Paper-0361] Async Chunk Loading and Generation by Aikar
[Paper-0362] Prevent mob spawning from loading/generating chunks by Shane Freeder
[Paper-0363] Optimize Light Recalculations by Aikar
[Paper-0369] Prevent rayTrace from loading chunks by Aikar
[Paper-0374] Add Stricter Client Sign limits by Aikar
[Paper-0378] Performance improvement for Chunk.getEntities by wea_ondara
[Paper-0387] Reduce memory footprint of NBTTagCompound by Spottedleaf
[Paper-0206/0432] Add Raw Byte ItemStack Serialization by Mariell Hoversholm
[Paper-0451] Load Chunks for Login Asynchronously by Aikar
[Paper-0268/0567] Add getMainThreadExecutor to BukkitScheduler by TheMolkaPL
[Paper-0242/0614] Player Chunk Load/Unload Events by ysl3000
[Paper-0268/0664] EntityMoveEvent by William Blake Galbreath
[Paper-0740] Add Unix domain socket support by Andrew Steinborn
[Paper-0797] Use Velocity compression and cipher natives by Elier

[Taco-0006] Fix hopper lag by making entities look for hoppers by Techcable
[Taco-0010] Optimize armor stands by Techcable
[Taco-0011] Add a flag to disable InventoryMoveItemEvent by Techcable
[Taco-0013] Option to disable Scoreboard for non players by Aikar
[Taco-0014] Add an option for grass to ignore light by Techcable
[Taco-0017] Add option to stop redstone firing BlockPhysicsEvent by frash23
[Taco-0006/0022] Implement SpawnerPreSpawnEvent by vemacs
[Taco-0024] Optimize tnt entity and falling block movement
[Taco-0025] Fix east west cannoning

[SportPaper-0027] Fix head rotation packet spam
[SportPaper-0031/0058] Potion effect events by cswhite2000
[SportPaper-0162] Fix PlayerInteractEvent not cancelling properly by cswhite2000
[SportPaper-0176] Use fast util collections
[SportPaper-0185] Speed up chunk unloading
[SportPaper-0099/0189] Add WaterSourceFormEvent by ShinyDialga
[SportPaper-0190] Add option to remove randomness in arrow damage by Indicado
[SportPaper-0198] Optimize head rotation patch
[SportPaper-0204] Fix Teleport Invisibility
[SportPaper-0207] Optimize toLegacyData removing sanity checks by Pablete1234
[SportPaper-0219] Make critical hits configurable by halfmaster1

[FlamePaper-0003] Fix chunk memory leak
[FlamePaper-0005] Fix multiple memory leaks
[FlamePaper-0010] Fix NullPointerException exploits for invalid logins
[FlamePaper-0013] Check channel before reading
[FlamePaper-0015] Fix Book Exploits
[FlamePaper-0017] Pearl through blocks
[FlamePaper-0024] Disable Unloaded Chunk Movement
[FlamePaper-0030] Adaptive chunk GC
[FlamePaper-0032] Dont load chunks for chests
[FlamePaper-0033] Dont check occluding hoppers by LinsaFTW
[FlamePaper-0034] Hopper item lookup optimization by LinsaFTW

[Nacho-0009] Remove an extra file io call within world credit bob7l
[Nacho-0010] Use jchambers' FAST UUID methods
[Nacho-0012] Don't load chunks for physics
[Nacho-0013] Use less resources for collisions
[Nacho-0023] Optimize EntityTracker for the chunk updater
[Nacho-0024] Do not create new BlockPosition when loading chunk
[Nacho-0025] Disable random tickSpeed being modified
[Nacho-0027] Netty IP_TOS 0x18 by Health Logan Campbell
[Nacho-0050] Custom knockback
[Nacho-????] Prevent most NBT related overflow exploits
[Nacho-????] Async TNT by Sculas
[Nacho-????] Async Entity Tracker by Rastrian
[Nacho-????] Async knockback and hit detection packets by Rastrian
[Nacho-????] Use fastutil in HandshakeListener

[WindSpigot-0014] Async entity path searching by windcolor-dev
[WindSpigot-0017] Async entity tracking by windcolor-dev
[WindSpigot-0054] Modern tick loop by windcolor-dev

[PandaSpigot-0003/0004] Setup Gradle project by hpfxd
[PandaSpigot-0005] Add internal setMaxStackSize method for materials by hpfxd
[PandaSpigot-0004/0005] Backport PlayerHandshakeEvent from Paper by hpfxd
[PandaSpigot-0006] Update to Netty 4.1.x by hpfxd 
[PandaSpigot-0008] Remove hacky stackable buckets code by hpfxd
[PandaSpigot-0009] Improved plugins command by hpfxd
[PandaSpigot-0033] Configurable arrow trajectory by hpfxd
[PandaSpigot-0010/0036] Backport PlayerProfile API by hpfxd
[PandaSpigot-0011/0037] Sound events by hpfxd
[PandaSpigot-0039] Optimize VarInt reading and writing by hpfxd
[PandaSpigot-0040] Various micro-optimizations for PacketDataSerializer by hpfxd
[PandaSpigpt-0049] Add setting for proxy online mode status by hpfxd
[PandaSpigot-0050] Metrics by hpfxd
[PandaSpigot-0054] Disconnect for payload errors by uRyanxD
[PandaSpigot-0060] Optimise removeQueue by hpfxd
[PandaSpigot-0087] Fix Entity Tracker Rounding by necrozma
[PandaSpigot-0092] Backport ArrowDMG fix by Aviana Cruz

[IonSpigot-0003] Explosion Improvements by SuicidalKids
[IonSpigot-0006] Fix Chunk Loading by SuicidalKids
[IonSpigot-0008] Reduce Chunk Hashing by SuicidalKids 
[IonSpigot-0009] Reduce Unload Queue Complexity by SuicidalKids
[IonSpigot-0013] Implement PandaWire by SuicidalKids
[IonSpigot-0014] Faster Chunk Entity List by SuicidalKids
[IonSpigot-0020] Faster EntityTracker Collections by SuicidalKids
[IonSpigot-0037] Fast Cannon Entity Tracker by SuicidalKids

[Migot-0005] Fix Occasional Client Side Unloading of Chunk 0 0
[Migot-0007] Optimize Idle Furnaces by Poweruser
[Migot-0009] Prevent creature spawning in unloaded chunks
[Migot-0016] Fix Nether Portal Lag by Poweruser
[Migot-0027] Enable Concurrent Chunk Decoration
[Migot-0032] Thread Local IntCache
[Migot-0036] Check for lava only once per tick

[KigPaper-0108] Fix CraftPlayer setFlying not working by RoccoDev
[KigPaper-0110] Backport from Spigot: Enforce cooldowns on book edits by RoccoDev
[KigPaper-0112] Only trigger PlayerConnection#disconnect once by RoccoDev
[KigPaper-0024/0113] Allow disabling of namespaced commands by RoccoDev
[KigPaper-0138] Fix some more memory leaks by RoccoDev
[KigPaper-0161] Fix CraftingManager memory leak by RoccoDev
[KigPaper-0170] Kick after receiving invalid creative action packet by RoccoDev

[Purpur-0150] Tick fluids config
[Purpur-0046/0280] Spark Profiler by BillyGalbreath
[Purpur-0049/0290] Remove Timings by BillyGalbreath
[Purpur-0291] Remove Mojang Profiler by BillyGalbreath

[Tuinity-0008] Allow controlled flushing for network manager by Spottedleaf
[Tuinity-0046] Consolidate flush calls for entity tracker packets by Spottedleaf
[Tuinity-0051] Optimise non-flush packet sending by Spottedleaf

[Yatopia-0030] Don't save Fireworks and Arrows by tr7zw
[Yatopia-0047] Smarter statistics ticking

[Akarin-0007] Avoid double I/O operation on load player file

[InsanePaper-269] Cache Chunk Coordinations
[InsanePaper-390] Heavily optimize Tuinity controlled flush patch

[Lithium-ai/pathing/ChunkCache] Micro optimization for ChunkCache

[PaperBin-????] Optimise WorldServer#everyoneDeeplySleeping
[PaperBin-????] Faster Game Rules Lookup
```

## Contributing

* To start contributing to Titanium, make sure you meet the [Requirements](https://github.com/TitanVale/Titanium#requirements). Then you can run `./titanium build` to prepare upstream and apply patches.
* To add patches to Titanium simply make your changes in `Titanium-API` and `Titanium-Server`, then just commit them. Then run `./titanium rebuild`.
* After modifying code to for eg. test it, run `./titanium jar`.
