// Import the module
import AWSLambdaRuntime
import AWSLambdaEvents

@main
struct MyLambda: SimpleLambdaHandler {
    func handle(_ request: APIGatewayV2Request, context: LambdaContext) async throws -> APIGatewayV2Response {
        return APIGatewayV2Response(statusCode: .ok, body: "hello world")
    }
}
