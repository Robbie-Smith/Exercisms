package leap

const testVersion = 2

// It's good style to write a comment here documenting IsLeapYear.
func IsLeapYear(year int) bool {
	if year%4 == 0 && year%100 != 0 {
		return true
	} else if year%400 != 0 {
		return false
	}
	return true
}
