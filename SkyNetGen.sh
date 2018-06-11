#!/bin/sh
# SkyNetGen

PERIOD=6435.78  # seconds

echo "# SkyNet generated SSC" > skynet.ssc

N=0
for D in {0..359..10}; do

for L in {0..359..10}; do
EPOCH=$(echo "scale=12; 2454097.32404117000 - $PERIOD * $D / 2.4 - $PERIOD * $L / 4.8" | bc )

for I in 32 48 79; do
((N++))
  cat << EOF >> skynet.ssc

  "µS-$I-$L-$D" "Sol/Earth"
{
	Class "spacecraft"
	Mesh "satellite.3ds"
	Radius 0.005

	EllipticalOrbit
	{
		Period		0.0744882  # days
		SemiMajorAxis	7478.1
		Eccentricity	0.0001
		Inclination	${I}.0
		AscendingNode	$(( $L + $I ))
		ArgOfPericenter	314.15
		Epoch	$EPOCH
	}
	Albedo	1.0
}
EOF

done
done
done
echo "$N Satellites"