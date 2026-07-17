import Foundation

public final class AuditClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1AuditList(request: Requests.PostV1AuditListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AuditListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/audit/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AuditListResponse.self
        )
    }
}