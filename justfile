set export

build-pages:
  #!/usr/bin/env bash
  set -euxo pipefail
  cd website/cloud-guild
  hugo -D

start-dev:
  #!/usr/bin/env bash
  set -euxo pipefail
  ENV=dev skaffold dev