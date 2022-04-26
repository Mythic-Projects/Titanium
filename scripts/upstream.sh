#!/bin/bash
# get base dir regardless of execution location
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
    DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
    SOURCE="$(readlink "$SOURCE")"
    [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
initScript=$(dirname "$SOURCE")/init.sh
. "$initScript"


cd "$basedir/base/SportPaper/"
git fetch && git reset --hard origin/master
cd ../
git add SportPaper

basedir

log_info "Setting up build environment"
git submodule update --init --recursive
log_info "Preparing upstream..."

sportpaperVer=$(gethead base/SportPaper)

basedir

cp -f scripts/sportpaper/baseimportmcdev.sh base/SportPaper/scripts/importmcdev.sh

cd "$basedir/base/SportPaper/"

git submodule update --init && ./scripts/upstream.sh && ./scripts/apply.sh

cd "SportPaper-Server"
mcVer=$(mvn -o org.apache.maven.plugins:maven-help-plugin:2.1.1:evaluate -Dexpression=minecraft_version | sed -n -e '/^\[.*\]/ !{ /^[0-9]/ { p; q } }')

basedir

cd "$basedir/base/SportPaper/"

version=$(echo -e "SportPaper: $sportpaperVer\nmc-dev:$importedmcdev")
tag="-${mcVer}-$(echo -e $version | shasum | awk '{print $1}')"

function tag {
(
    cd "$1"
    if [ "$2" == "1" ]; then
        git tag -d "$tag" 2>/dev/null
    fi
    echo -e "$(date)\n\n$version" | git tag -a "$tag" -F - 2>/dev/null
)
}

forcetag=0
upstreamState=$(cat "$basedir/base/.upstream-state")
if [ "$upstreamState" != "$tag" ]; then
    forcetag=1
fi

tag SportPaper-API $forcetag
tag SportPaper-Server $forcetag

echo "$tag" > "$basedir/base/.upstream-state"

log_info "Build environment prepared. Run './titanium apply' to apply patches."
