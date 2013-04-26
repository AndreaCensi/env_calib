#!/bin/bash
set -e
config=environment.sh
tag=CALIB

echo \#\!/bin/bash > ${config}
echo "# load this using   source ${config}" >> ${config}
echo export ${tag}_ROOT=`pwd` >>${config}
echo export ${tag}_PREFIX=\${${tag}_ROOT}/deploy >>${config}
echo export ${tag}_SRC=\${${tag}_ROOT}/src >>${config}
echo export ${tag}_DATA=\${${tag}_ROOT}/data >>${config}
echo export ${tag}_OUT=\${${tag}_ROOT}/results >>${config}
echo export PATH=\${${tag}_PREFIX}/bin:\$PATH >>${config}
echo export PYTHONPATH=\${${tag}_PREFIX}/lib/python2.6/site-packages:\$PYTHONPATH >>${config}
echo export PYTHONPATH=\${${tag}_PREFIX}/lib/python2.7/site-packages:\$PYTHONPATH >>${config}
echo export PKG_CONFIG_PATH=\${${tag}_PREFIX}/lib/pkgconfig:\${PKG_CONFIG_PATH} >>${config}
echo export DYLD_LIBRARY_PATH=\${DYLD_LIBRARY_PATH}:\${CALIB_PREFIX}/lib
#echo export PROCGRAPH_PATH=\${PBENV_SRC}/procgraph/examples >>${config}
source ${config}
cat ${config}

echo "Now creating virtual environment (press enter)"
read
echo Create a new virtual env for python
virtualenv --prompt=${tag} `pwd`/deploy
echo source $\{${tag}_PREFIX\}/bin/activate >> ${config}
source ${config}

# pip install --upgrade ipython
# pip install --upgrade nose
# pip install --upgrade rudolf # nose colored output
# pip install --upgrade nose-progressive

#echo "Install patience"
#pip install -e "git+git@github.com:AndreaCensi/patience.git#egg=Patience"


