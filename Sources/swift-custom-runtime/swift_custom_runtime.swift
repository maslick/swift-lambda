@main
public struct swift_custom_runtime {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(swift_custom_runtime().text)
    }
}


