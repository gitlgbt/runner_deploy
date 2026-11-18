<div align="center">
  <img src="https://git.lgbt/gitlgbt/branding/raw/branch/main/svg/gitlgbtinfra.svg" alt="gitlgbt infra Logo" width="192" />
  <h1>gitlgbt/runner_deploy</h1>
  <p><strong>this repo is docker compose for deploying git runner for  <a href="https://git.lgbt">git.lgbt</a></strong></p>
</div>

# gitlgbt runner

copy `.env.example` rename to `.env` and fill your token


### run it up
```bash
mkdir -p runner_data/runner_data_{1..5}
chmod -R 777 runner_data
docker compose up -d
```

bash
```bash
bash <(curl -sL https://git.lgbt/gitlgbt/runner_deploy/raw/branch/main/install.sh)
```

all runner is tag `ubuntu-latest`