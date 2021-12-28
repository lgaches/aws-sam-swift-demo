import AWSLambdaEvents
import AWSLambdaRuntime
import Core

@main
struct HelloWorldHandler: LambdaHandler {
    typealias Event = APIGatewayRequest
    typealias Output = APIGatewayResponse

    init(context: Lambda.InitializationContext) async throws {}

    func handle(_ event: APIGatewayRequest, context: LambdaContext) async throws -> APIGatewayResponse {
        if let name = event.queryStringParameters?["name"], name.isNotEmpty {
            return APIGatewayResponse(statusCode: .ok, body: "Hello \(name)!!!")
        } else {
            return APIGatewayResponse(statusCode: .ok, body: "Hello Swift!!!")
        }
    }
}
