package main

import (
	"bufio"
	"fmt"
	"os"

	"github.com/gosimple/slug"
)

func main() {

	var lines []string

	if weAreInAPipe() {
		lines = readPipe()
	} else if len(os.Args[1:]) > 0 {
		lines = os.Args[1:]
	} else {
		var version = "2.0.0"
		fmt.Println("version ", version)
		fmt.Println("Usage: ", os.Args[0], " text")
		fmt.Println("       echo text | ", os.Args[0])
		os.Exit(1)
	}

	slugify(lines)
}

func slugify(lines []string) {
	for _, line := range lines {
		fmt.Println(slug.Make(line))
	}
}

func weAreInAPipe() bool {
	// Cargo culted from https://flaviocopes.com/go-shell-pipes/
	// Not sure how some part of that works, but don't care
	info, err := os.Stdin.Stat()
	if err != nil {
		panic(err)
	}

	if (info.Mode() & os.ModeCharDevice) == os.ModeCharDevice {
		return false
	}

	return true
}

func readPipe() []string {
	// Cargo culted from https://stackoverflow.com/questions/5884154/read-text-file-into-string-array-and-write
	reader := bufio.NewReader(os.Stdin)
	var lines []string
	scanner := bufio.NewScanner(reader)
	for scanner.Scan() {
		lines = append(lines, scanner.Text())
	}

	return lines
}
