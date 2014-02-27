#!/bin/sh
PUPPET_ROOT=/etc/puppet
sudo puppet apply ${PUPPET_ROOT}/manifests/site.pp --modulepath=${PUPPET_ROOT}/modules/ $*
