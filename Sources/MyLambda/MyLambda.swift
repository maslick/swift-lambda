// Import the module
import AWSLambdaRuntime

// Request, uses Codable for transparent JSON encoding
struct Request: Codable {
  let name: String
}

// Response, uses Codable for transparent JSON encoding
struct Response: Codable {
  let message: String
}

@main
struct MyLambda: SimpleLambdaHandler {
    // In this example we are receiving and responding with `Codable`.
    func handle(_ request: Request, context: LambdaContext) async throws -> Response {
        Response(message: "Hello, \(request.name)")
    }
}