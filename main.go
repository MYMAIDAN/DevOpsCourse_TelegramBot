package main

import (
	"fmt"
	"main/bot"
	"main/cmd"
	"os"
)

func main() {
	fmt.Println("Hello World!")
	cmd.Execute()
	bot.CreateBot(os.Getenv("TOKEN"))
}
