package greeting

const testVersion = 3

func HelloWorld(name string) string {
	if name == "" {
		name = "World"
	}
	return "Hello, " + name + "!"
}
