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

 



 