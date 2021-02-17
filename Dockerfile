FROM sfbaylaser/slf7-essentials:latest
LABEL Maintainer: Tracy Usher

# Start by getting the underlying code required for the base packages
RUN mkdir larsoft && \
    cd larsoft && \
    wget http://scisoft.fnal.gov/scisoft/bundles/tools/buildFW && \
    chmod +x buildFW && \
    mkdir products && \
    ./buildFW -b e19 -s s106 products/ debug larbase-v09_16_01 && \
    ./buildFW -b e19 -s s106 products/ prof larbase-v09_16_01

