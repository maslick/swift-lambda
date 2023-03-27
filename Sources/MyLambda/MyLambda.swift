// Import the module
import AWSLambdaRuntime
import AWSLambdaEvents

@main
struct MyLambda: SimpleLambdaHandler {
    // In this example we are receiving and responding with `Codable`.
    func handle(_ request: APIGatewayV2Request, context: LambdaContext) async throws -> APIGatewayV2Response {
        return APIGatewayV2Response(statusCode: .ok, body: "hello world")
    }
}
