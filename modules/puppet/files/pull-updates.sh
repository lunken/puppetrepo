#!/bin/sh

PUPPET_ROOT=/etc/puppet

cd ${PUPPET_ROOT}
git pull && /usr/local/bin/papply
