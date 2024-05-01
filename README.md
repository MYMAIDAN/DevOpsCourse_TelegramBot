# Telegram bot for the DevOps course from Prometheus
t.me/DevOpsCourseGoBot

# Important
You need to create 'TELE_TOKEN' env variable and set it. To get this variable please ask BotFather in telegram.

## Requirement
 - Go(https://go.dev/dl/)
 - Telegram Token(Bot Father)
 - Dep: github.com/spf13/cobra та gopkg.in/telebot.v3


 ## Build
 ```bash
 go get github.com/spf13/cobra 
 go get gopkg.in/telebot.v3
 go build
 ```

 ## Run
 ```bash
 source TELE_TOKEN <value>
 ./main start_bot
 ```

## Deployment by using Helm

Create secret
```bash
kubectl create secret generic mbot --from-literal=token=
```

Install bot
```bash
helm install mbot ./helm
```

Create helm package
```bash
helm package  <dir> 
```

Create GitHub Release
```bash
gh release create
```

Add Helm Chart to release
```bash
gh upload <tag>  <chart>.tgz
```



 