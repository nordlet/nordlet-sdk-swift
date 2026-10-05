import Foundation

public final class PublicClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func integrationRequests(request: Requests.IntegrationRequestsPublicRequest, requestOptions: RequestOptions? = nil) async throws -> IntegrationRequestsPublicResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/public/integration-requests",
            body: request,
            requestOptions: requestOptions,
            responseType: IntegrationRequestsPublicResponse.self
        )
    }

    public func pay(token: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/public/pay/\(token)",
            requestOptions: requestOptions
        )
    }
}