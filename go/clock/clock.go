// Clock stub file

// To use the right term, this is the package *clause*.
// You can document general stuff about the package here if you like.
package clock

// import (
// 	"fmt"
// )

const testVersion = 4

// The value of testVersion here must match `targetTestVersion` in the file

// clock_test.go.

// Clock API as stub definitions.  No, it doesn't compile yet.
// More details and hints are in clock_test.go.

type Clock struct {
	min int
}

// Complete the type definition.  Pick a suitable data type.

func New(hour, minute int) Clock {
	c := Clock{(60*hour + minute) % 1440}
	_ = "breakpoint"
	if c.min < 0 {
		c.min += 1440
	}
	return c
}

func (Clock) String() string {
	p := "1"
	return p
}

func (Clock) Add(minutes int) Clock {
	return Clock{100}
}

// Remember to delete all of the stub comments.
// They are just noise, and reviewers will complain.
