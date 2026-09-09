import Foundation

public final class PublicClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1PublicIntegrationRequests(request: Requests.PostV1PublicIntegrationRequestsRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PublicIntegrationRequestsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/public/integration-requests",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PublicIntegrationRequestsResponse.self
        )
    }

    public func getV1PublicPayToken(token: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/public/pay/\(token)",
            requestOptions: requestOptions
        )
    }
}