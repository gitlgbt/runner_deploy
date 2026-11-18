#!/bin/bash
set -e

echo "if you saw this yes it starting"

cd ~
RUNNER_DIR="gitlgbt_runner"
echo "Creating working directory at ~/$RUNNER_DIR..."
mkdir -p "$RUNNER_DIR"
cd "$RUNNER_DIR"

BASE_URL="https://git.lgbt/gitlgbt/runner_deploy/raw/branch/main"

curl -sL "$BASE_URL/docker-compose.yml" -o docker-compose.yml

curl -sL "$BASE_URL/.env.example" -o .env

curl -sL "$BASE_URL/update.sh" -o update.sh
chmod +x update.sh

# make folder and give perm
echo "setup runner data folder"
mkdir -p runner_data/runner_data_{1..5}
chmod -R 777 runner_data

echo "=== complete ==="
echo ""
echo "next"
echo "1. add your Forgejo instance URL and token"
echo "   nano ~/.gitlgbt_runner/.env"
echo ""
echo "2. run it up"
echo "   cd ~/.gitlgbt_runner && docker compose up -d"