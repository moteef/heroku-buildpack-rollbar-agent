#!/usr/bin/env bash
echo ${BUILDPACK_TEST_RUNNER_HOME}

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testCompile() {
  compile
  cat ${STD_OUT}
  assertCapturedSuccess
}
