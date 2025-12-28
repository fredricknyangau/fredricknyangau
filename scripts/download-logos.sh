#!/usr/bin/env bash
set -euo pipefail

mkdir -p assets/logos

# Download SVGs from Simple Icons CDN
curl -L -o assets/logos/python.svg "https://cdn.simpleicons.org/python"
curl -L -o assets/logos/javascript.svg "https://cdn.simpleicons.org/javascript"
curl -L -o assets/logos/typescript.svg "https://cdn.simpleicons.org/typescript"
curl -L -o assets/logos/django.svg "https://cdn.simpleicons.org/django"
curl -L -o assets/logos/fastapi.svg "https://cdn.simpleicons.org/fastapi"
curl -L -o assets/logos/mysql.svg "https://cdn.simpleicons.org/mysql"
curl -L -o assets/logos/postgresql.svg "https://cdn.simpleicons.org/postgresql"
curl -L -o assets/logos/mongodb.svg "https://cdn.simpleicons.org/mongodb"
curl -L -o assets/logos/redis.svg "https://cdn.simpleicons.org/redis"
curl -L -o assets/logos/docker.svg "https://cdn.simpleicons.org/docker"
curl -L -o assets/logos/nginx.svg "https://cdn.simpleicons.org/nginx"
curl -L -o assets/logos/vercel.svg "https://cdn.simpleicons.org/vercel"
curl -L -o assets/logos/linkedin.svg "https://cdn.simpleicons.org/linkedin"
curl -L -o assets/logos/gmail.svg "https://cdn.simpleicons.org/gmail"
# PWA icon (progressive-web-apps)
curl -L -o assets/logos/pwa.svg "https://cdn.simpleicons.org/progressive-web-apps"

# Make downloads idempotent and readable
for f in assets/logos/*.svg; do
  if command -v svgo >/dev/null 2>&1; then
    svgo "$f" -q
  fi
done

echo "Downloaded SVGs to assets/logos/"
