#!/bin/bash

# CONFIGURE: Tweak to suit your needs
# You might want to remove $PULL_REPOSITORY if you don't need to pull for any image
sudo -E luet build \
        --only-target-package \
        --pull-repository $PULL_REPOSITORY \
        --pull --push --image-repository $FINAL_REPO \
        --from-repositories --no-spinner --live-output --tree packages "$1"