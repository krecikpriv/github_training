# Dodanie agenta self-hosted github actions

```bash
mkdir actions-runner && cd actions-runner
curl -o actions-runner-linux-x64-2.332.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.332.0/actions-runner-linux-x64-2.332.0.tar.gz
tar xzf ./actions-runner-linux-x64-2.332.0.tar.gz
./config.sh --url https://github.com/TheRealMamuth/work-jsystems-github-actions-examples-public --token <YOUR-TOKEN> --name "<YOUR-NAME>" --labels "<YOUR-LABEL>"
sudo ./svc.sh install
sudo ./svc.sh start
```
