package bot

import (
	"fmt"
	"log"
	"time"

	tele "gopkg.in/telebot.v3"
)

func CreateBot(token string) {
	pref := tele.Settings{
		Token:  token,
		Poller: &tele.LongPoller{Timeout: 10 * time.Second},
	}

	b, err := tele.NewBot(pref)
	if err != nil {
		log.Fatal("Bot is not created")
		return
	}

	fmt.Println("bot has been created")

	b.Handle("/hello", func(c tele.Context) error {
		return c.Send("Hello")
	})

	b.Start()

}
