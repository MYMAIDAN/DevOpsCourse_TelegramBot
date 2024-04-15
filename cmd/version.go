package cmd

import (
	"fmt"

	"github.com/spf13/cobra"
)

var Version = "1.0.0"

var versionCmd = &cobra.Command{
	Use:   "version [string to print]",
	Short: "Version of the application",
	Long:  "Version of the application",
	Run: func(cmd *cobra.Command, args []string) {
		fmt.Printf("Telegram Bot. Version: %s\n", Version)
	},
}
