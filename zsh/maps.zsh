#Maps
alias rsync_geoservices='ppy rrsync /var/mobile/Library/Caches/GeoServices'
alias rsync_maps='python $SRC_DIR/tools/rsync_maps.py'

#zsh support
setopt shwordsplit

#path to your source folder
export SRC_DIR=~/src

#path to the MapsStack folder, which should be a top level folder in your src tree
export MAPS_STACK_DIR=$SRC_DIR/MapsStack/

#path to where SxS Xcodes should be installed
export SXS_XCODE_DIR=/Applications/Xcode/

#your OD username
OD_USERNAME=julien_grimault

#load our helper functions
source $SRC_DIR/MapsTools/MapsTools.bash
