FROM sfbaylaser/slf7-essentials:latest
LABEL Maintainer: Tracy Usher

# Start by getting the underlying code required for the base packages
RUN mkdir larsoft && \
    cd larsoft && \
    mkdir products && |
    cd products && \
    wget http://scisoft.fnal.gov/scisoft/bundles/tools/buildFW && \
    chmod +x buildFW && \
    wget https://scisoft.fnal.gov/scisoft/bundles/larbase/v09_16_01/buildcfg/larbase-cfg-09.16.01 && \
    cp larbase-cfg-09.16.01 larbase-buildcfg-09.16.01 && \
    ./buildFW -b e19 -s s106 $PWD debug larbase-v09_16_01 && \
    ./buildFW -b e19 -s s106 $PWD prof larbase-v09_16_01

