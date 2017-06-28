# Load our shell agnostic profile
source /Volumes/Data/Users/$(who am i | awk '{print $1}')/.mapstools_profile

# Load SxS Scripts
source "${SRC_DIR}"MapsTools/MapsTools.bash
