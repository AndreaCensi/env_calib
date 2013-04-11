Calibration-by-correlation software
=====================================


Downloading sources using wstool
--------------------------------

Clone this repo:

    git clone git@github.com:AndreaCensi/calib_env.git

Install ``wstool``:
    
    sudo apt-get install python-wstool

Use ``wstool`` to see the sources that are going to be downloaded:

    $ wstool info  # See what sources we need to install

    src/cbc        x git     git@github.com:AndreaCensi/cbc.git
    src/latex_gen  x git     git@github.com:AndreaCensi/latex_gen.git
    src/reprep     x git     git@github.com:AndreaCensi/reprep.git
    src/compmake   x git     git@github.com:AndreaCensi/compmake.git
    src/procgraph  x git     git@github.com:AndreaCensi/procgraph.git
    src/geometry   x git     git@github.com:AndreaCensi/geometry.git
    src/conf_tools x git     git@github.com:AndreaCensi/conf_tools.git
    src/contracts  x git     git@github.com:AndreaCensi/contracts.git

To download all these sources, use ``wstool update``:

    $ wstool update -v  # Checkout all repositories
