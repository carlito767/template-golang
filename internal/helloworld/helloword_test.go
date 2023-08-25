package helloworld

import (
	"testing"
)

func TestGetHelloWorld(t *testing.T) {
	expected := "Hello, World!"
	result := GetMessage()

	if result != expected {
		t.Errorf("got: %v, expected: %v", result, expected)
	}
}
