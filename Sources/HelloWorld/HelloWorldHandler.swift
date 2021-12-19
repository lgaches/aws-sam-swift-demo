import AWSLambdaEvents
import AWSLambdaRuntime

@main
struct HelloWorldHandler: LambdaHandler {
    typealias Event = APIGatewayRequest
    typealias Output = APIGatewayResponse

    init(context: Lambda.InitializationContext) async throws {}

    func handle(_ event: APIGatewayRequest, context: LambdaContext) async throws -> APIGatewayResponse {
        APIGatewayResponse(statusCode: .ok, body: "Hello Swift!!!")
    }
}
