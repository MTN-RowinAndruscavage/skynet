# skynet
[Celestia](https://celestia.space) ssc generation script for LEO constellations

## Description

https://youtu.be/neLPRMrhy80

For all of the talk about SpaceX's 4000+-node satellite communications network, there wasn't a lot of visualizations to show what it might look like.

No affiliation with SpaceX, just researched some of the orbital parameters Elon Musk had publicly announced at the time (Sept. 2015), including approximate altitude range, 3 orbital inclinations, and estimated about 20 satellites per orbital plane based on their mass and the reusable payload capacity of the Falcon 9. This post seems to confirm my rough estimate:

https://space.stackexchange.com/questions/25525/how-many-spacex-starlink-internet-service-satellites-could-be-deployed-in-a-sing

Orbital planes were mainly chosen to concentrate most of the bandwidth over populated areas, figuring that the primary optical laser trunks would simply bounce along satellites in the same orbital plane, since they wouldn't have to do much high speed tracking. Also played with the parameters a bit to find patterns that didn't seem to bring satellites in close proximity to each other all that often (though it still certainly occurs, those would hopefully be offset at slightly different altitudes, which is easy enough to control)

## Usage
Install [Celestia](https://celestia.space/download.html) and copy the .ssc file into the extras directory.  Restart Celestia to reload the file.
You can optionally regenerate the .ssc with updated parameters using the bash script.

Hold down the ']' key until the satellites are visible.  Then hit 'l' a couple times to speed things up.


