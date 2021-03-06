#!/usr/bin/env bash
set -o errexit  # Exit script when a command exits with non-zero status
set -o pipefail # Return exit status of the last command in the pipe that failed

curl -O https://raw.githubusercontent.com/DealerDirect/php-qa-tools/master/bin/install.sh
sed -e'/prestissimo/d' -i install.sh
export COMPOSER_MEMORY_LIMIT=-1
bash install.sh
rm -f install.sh
