# Titanium ![Titanium CI](https://github.com/TitanVale/Titanium/actions/workflows/build_titanium.yml/badge.svg)

Titanium is [SportPaper](https://github.com/Electroid/SportPaper) fork which aims to be fast, fix exploits and bugs, improve API, and provide better configuration for server administrators. 

*Titanium officially supports JDK **8**, **11** & **17**.*

## Getting Titanium

Currently, you have to build Titanium by yourself. In the future Download option will be available.

### Requirements

If you want to build Titanium you will need these things to be installed and available from your shell:
* [JDK 8](https://www.oracle.com/java/technologies/downloads/#java8)
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
[Paper-0076] Optimized light level comaprsions by Aikar
[Paper-0144] Improve Minecraft Hopper Performance
[Paper-0302] Don't load chunks for villager door check by Aikar
[Paper-0313] Optimized world time updates by Aikar
[Paper-0344] [MC-111480] Start Entity ID's at 1
[Paper-0346] [MC-135506] Experience should save as Integers
[Paper-0347] Don't go below 0 for pickupDelay, breaks picking up items by Aikar

[FlamePaper-0003] Fix chunk memory leak
[FlamePaper-0005] Fix multiple memory leaks
[FlamePaper-0010] Fix NullPointerException exploits for invalid logins
[FlamePaper-0013] Check channel before reading
[FlamePaper-0015] Fix Book Exploits
[FlamePaper-0017] Pearl through blocks
[FlamePaper-0024] Disable Unloaded Chunk Movement
[FlamePaper-0030] Adaptive chunk GC

[Nacho-0012] Don't load chunks for physics
[Nacho-0008] Update netty 4.1.50 (We updated it to 4.1.75)
[Nacho-????] Prevent most NBT related overflow exploits

[IonSpigot-0011] Async Spawn Chunks
[IonSpigot-0023] Implement PandaWire

[Migot-0005] Fix Occasional Client Side Unloading of Chunk 0 0
[Migot-0009] Prevent creature spawning in unloaded chunks
[Migot-0027] Enable Concurrent Chunk Decoration
[Migot-0032] Thread Local IntCache
[Migot-0036] Check for lava only once per tick

[MineTick-0017] Fix insane nether portal lag
[MineTick-0023] Fix chunk coordinates miscalculations

[Akarin-0007] Avoid double I/O operation on load player file
```

## Contributing

**This section came from [SportPaper](https://github.com/Electroid/SportPaper#contributing)**

* Before contributing to Titanium, make sure you have run `./titanium build` and that you have the latest version of git installed
* To add patches to Titanium simply make your changes in `Titanium-API` and `Titanium-Server` and commit them. Then run `./sportpaper rebuild`.
* To modify nms files not currently imported into Titanium, you must add an import for that file in `scripts/importmcdev.sh` and then run `./titanium build` for those files to show up in `Titanium-Server`