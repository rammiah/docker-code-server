package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func Hello(ctx *gin.Context) {
	ctx.String(http.StatusOK, "hello world")
}

func main() {
	engine := gin.Default()

	engine.GET("/", Hello)

	if err := engine.Run(":6789"); err != nil {
		panic(err)
	}
}

