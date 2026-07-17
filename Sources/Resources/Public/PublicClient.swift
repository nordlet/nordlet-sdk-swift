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
}