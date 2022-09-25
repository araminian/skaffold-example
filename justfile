set export

build-pages:
  #!/usr/bin/env bash
  set -euxo pipefail
  cd website/cloud-guild
  hugo -D