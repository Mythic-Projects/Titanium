# Titanium

[SportPaper](https://github.com/Electroid/SportPaper) fork which aims to be fast, fix exploits and bugs, improve API, and provide better configuration for server administrators. 

## Download

TODO

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

## Contributing

TODO