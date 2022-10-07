set export

GIT_REV := `git rev-parse --short=8 HEAD`
hugo-init:
  git submodule update --init

hugo-server-start:
  #!/usr/bin/env bash
  set -euxo pipefail
  cd website/cloud-guild
  hugo server -D

build-pages:
  #!/usr/bin/env bash
  set -euxo pipefail
  cd website/cloud-guild
  hugo -D

start-dev:
  #!/usr/bin/env bash
  set -euxo pipefail
  ENV=dev skaffold dev

render $ENVIRONMENT:
  skaffold render --digest-source local