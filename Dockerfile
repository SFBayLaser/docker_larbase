FROM sfbaylaser/slf7-essentials:latest
LABEL Maintainer: Tracy Usher

# Start by getting the underlying code required for the base packages
RUN mkdir larsoft && \
    cd larsoft && \
    mkdir products && |
    cd products && \
    wget http://scisoft.fnal.gov/scisoft/bundles/tools/pullProducts && \
    chmod +x pullProducts && \
    ./pullProducts $PWD slf7 larbase-v09_16_01 s106-e19 debug && \
    ./pullProducts $PWD slf7 larbase-v09_16_01 s106-e19 prof

