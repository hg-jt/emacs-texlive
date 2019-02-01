# -*- mode: sh; coding: utf-8-unix; -*-
# Name: Jost
# License: SIL OFL 1.1
# License URL: https://github.com/indestructible-type/Jost/blob/master/LICENSE.md
curl -L -O -J https://indestructibletype.com/Jost.zip
unzip -q -d Jost Jost.zip
mv Jost/OpenType /usr/share/fonts/opentype/jost
mv Jost/LICENSE.md /usr/share/fonts/opentype/jost
