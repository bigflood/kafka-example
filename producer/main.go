package main

import (
	"fmt"
	"time"
)

func main() {
	now := time.Now().Unix()
	fmt.Printf(`{"start":%d, "i":-1, "x":INF}`+"\n", now)

	for i := 0; ; i++ {
		time.Sleep(time.Second)
		fmt.Printf(`{"start":%d, "i":%d}`+"\n", now, i)
	}
}
