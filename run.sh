# ************************************************************
#
# those are default envs that you can use them at any step.
#
# ************************************************************

echo '===============DEFAULT ENVS======================='

echo "\$FLOW_PROJECT_NAME = $FLOW_PROJECT_NAME"
echo "\$FLOW_USER_ID = $FLOW_USER_ID"
echo "\$FLOW_PROJECT_ID = $FLOW_PROJECT_ID"
echo "\$FLOW_PROJECT_GIT_URL = $FLOW_PROJECT_GIT_URL"
echo "\$FLOW_PROJECT_LANGUAGE = $FLOW_PROJECT_LANGUAGE"
echo "\$FLOW_GIT_HOST = $FLOW_GIT_HOST"
echo "\$FLOW_JOB_ID = $FLOW_JOB_ID"
echo "\$FLOW_EVENT_ID = $FLOW_EVENT_ID"
echo "\$FLOW_EVENT_NUMBER = $FLOW_EVENT_NUMBER"
echo "\$FLOW_PHP_OLD_VERSION = $FLOW_PHP_OLD_VERSION"

echo '=================================================='
# ************************************************************
#
# This step will init your project
#
#   Variables used:
#     $FLOW_VERSION
#
#   Outputs:
#     $FLOW_PYENV_VERSION
#     $FLOW_PYTHON_VERSION
#
# ************************************************************

source $HOME/.nvm/nvm.sh
source $HOME/.rvm/scripts/rvm
source $HOME/.pyenv/pyenv.sh

flow_cmd "pyenv -v" --echo
flow_cmd "pyenv global $FLOW_VERSION" --echo
flow_cmd "python -V" --echo
flow_cmd "pip -V" --echo

export FLOW_PYENV_VERSION="${FLOW_VERSION}"
export FLOW_PYTHON_VERSION="$(python -V 2>&1)"
