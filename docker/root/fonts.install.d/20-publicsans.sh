# -*- mode: sh; coding: utf-8-unix; -*-
# Name: Public Sans
# License: SIL OFL 1.1
# License URL: https://github.com/uswds/public-sans/blob/master/ofl.txt
curl -L -O https://github.com/uswds/public-sans/archive/master.zip
unzip -q master.zip
mv public-sans-master/fonts/otf /usr/share/fonts/opentype/publicsans
mv public-sans-master/ofl.txt /usr/share/fonts/opentype/publicsans
