package main

import (
	"bufio"
	"fmt"
	"os"

	"github.com/gosimple/slug"
)

func main() {

	var pipe_lines []string
	var args_lines []string

	if weAreInAPipe() {
		pipe_lines = readPipe()
	} else if len(os.Args[1:]) > 0 {
		args_lines = os.Args[1:]
	} else {
		var version = "2.0.0"
		fmt.Println("version ", version)
		fmt.Println("Usage: ", os.Args[0], " text")
		fmt.Println("       echo text | ", os.Args[0])
		os.Exit(1)
	}

	if len(pipe_lines) > len(args_lines) {
		slugify(pipe_lines)
	} else {
		slugify(args_lines)
	}
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
