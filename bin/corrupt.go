package main

import (
	"os"
	"log"
	"flag"
	"io/ioutil"
	"path/filepath"
)

func usage() {
	log.Printf("Usage: go run corrupt.go some-file.7z")
}

func main() {
	flag.Parse()
	
	if flag.NArg() != 1 {
		usage()
		os.Exit(1)
	}
	
	fn := flag.Arg(0)
	data, err := ioutil.ReadFile(fn)
	if err != nil {
		log.Fatal(err)
	}
	
	log.Printf("Loaded %.1f MB", float64(len(data)) / (1024.0 * 1024.0))
	
	ext := filepath.Ext(fn)
	ofn := fn[:len(fn)-len(ext)] + ".bad" + ext
	
	output := make([]byte, len(data) * 3)
	o := 0
	c := 1
	
	for _, b := range data {
		output[o] = b
		o++
		c++
		
		if b == 13 {
			output[o] = 10
			o++
			c = 1
		} else if c >= 80 {
			output[o] = 13
			o++
			output[o] = 10
			o++
			c = 1
		}
	}
	
	output = output[:o]

	err = ioutil.WriteFile(ofn, output, 0644)
	if err != nil {
		log.Fatal(err)
	}

	log.Printf("✓ %v", filepath.Base(ofn))
}