// This package will determine valid leap years.
package leap

const testVersion = 2

// This function will determine valid leap years.
func IsLeapYear(year int) bool {
	if year%4 == 0 && year%100 != 0 {
		return true
	} else if year%400 != 0 {
		return false
	}
	return true
}
