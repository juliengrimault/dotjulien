#Maps
alias rsync_geoservices='ppy rrsync /var/mobile/Library/Caches/GeoServices'
alias rsync_maps='python $SRC_DIR/tools/rsync_maps.py'

#zsh support
setopt shwordsplit


source /Volumes/Data/Users/$(who am i | awk '{print $1}')/.mapstools_profile
source "${SRC_DIR}"/MapsTools/MapsTools.bash
