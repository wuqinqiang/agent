#!/usr/bin/env bash
set +e

DIRNAME=$(dirname $0)

pushd ${DIRNAME}
# Make sure dependencies are up to date
jb install
tk show --dangerous-allow-redirect ./templates/base > ${PWD}/../agent.yaml
tk show --dangerous-allow-redirect ./templates/bare > ${PWD}/../agent-bare.yaml
tk show --dangerous-allow-redirect ./templates/loki > ${PWD}/../agent-loki.yaml
tk show --dangerous-allow-redirect ./templates/tempo > ${PWD}/../agent-tempo.yaml
popd
