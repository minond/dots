package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
	"sort"
	"strings"
)

var clean = regexp.MustCompile(`\W`)

func cleanName(n string) string {
	return clean.ReplaceAllString(strings.ToLower(n), "")
}

func sortMap(m map[string]int) pairSlice {
	ps := make(pairSlice, len(m))
	i := 0
	for k, v := range m {
		ps[i] = pair{k, v}
		i++
	}
	sort.Sort(sort.Reverse(ps))
	return ps
}

type pair struct {
	key   string
	value int
}

type pairSlice []pair

func (ps pairSlice) Len() int           { return len(ps) }
func (ps pairSlice) Less(i, j int) bool { return ps[i].value < ps[j].value }
func (ps pairSlice) Swap(i, j int)      { ps[i], ps[j] = ps[j], ps[i] }

func main() {
	counter := make(map[string]int)
	scanner := bufio.NewScanner(os.Stdin)

	for scanner.Scan() {
		counter[cleanName(scanner.Text())]++
	}

	if scanner.Err() != nil {
		fmt.Printf("error reading from stdin: %v", scanner.Err())
		return
	}

	byScore := sortMap(counter)
	for _, entry := range byScore {
		fmt.Printf("%-5d %s\n", entry.value, entry.key)
	}
}
