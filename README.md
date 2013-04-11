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

Installing
----------

It is recommended to create a virtual environment:

    $ virtualenv --prompt=calib_env deploy
    $ source deploy/bin/activate

This will make ``$VIRTUAL_ENV`` point to the base directory.

Now install all the python packages. You need to install them in this order.

    $ export calib_ROOT=$PWD
    $ cd $calib_ROOT/src/contracts; python setup.py develop
    $ cd $calib_ROOT/src/compmake; python setup.py develop
    $ cd $calib_ROOT/src/reprep; python setup.py develop
    $ cd $calib_ROOT/src/geometry; python setup.py develop
    $ cd $calib_ROOT/src/conf_tools; python setup.py develop
    $ cd $calib_ROOT/src/procgraph; python setup.py develop
    $ cd $calib_ROOT/src/latex_gen; python setup.py develop
    $ cd $calib_ROOT/src/cbc; python setup.py develop


Preparing the data
------------------

To write...



