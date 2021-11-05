package app

import (
	"github.com/astaxie/beego/validation"

	"golang-gin-app/resources/logging"
)

func MarkErrors(errors []*validation.Error) {
	for _, err := range errors {
		logging.Info(err.Key, err.Message)
	}

	return
}
