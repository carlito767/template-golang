package helloworld

import (
	"testing"
)

func TestHelloWorld(t *testing.T) {
	want := "Hello, World!"
	got := HelloWorld()

	if got != want {
		t.Errorf("got: %v, want: %v", got, want)
	}
}
