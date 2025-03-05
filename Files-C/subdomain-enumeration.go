package main

import (
	"bufio"
	"fmt"
	"net/http"
	"os"
	"strings"
	"time"
)

// Function to check if a subdomain is alive
func checkSubdomain(subdomain string) {
	url := "http://" + subdomain
	client := &http.Client{
		Timeout: 5 * time.Second,
	}

	resp, err := client.Get(url)
	if err != nil {
		fmt.Printf("[-] %s is not reachable\n", url)
		return
	}
	defer resp.Body.Close()

	fmt.Printf("[+] %s is reachable - Status Code: %d\n", url, resp.StatusCode)
}

func main() {
	if len(os.Args) != 3 {
		fmt.Println("Usage: go run subfinder.go <domain> <wordlist>")
		return
	}

	domain := os.Args[1]
	wordlist := os.Args[2]

	file, err := os.Open(wordlist)
	if err != nil {
		fmt.Println("Error opening wordlist file:", err)
		return
	}
	defer file.Close()

	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		subdomain := scanner.Text() + "." + domain
		checkSubdomain(subdomain)
	}

	if err := scanner.Err(); err != nil {
		fmt.Println("Error reading wordlist file:", err)
	}
}
