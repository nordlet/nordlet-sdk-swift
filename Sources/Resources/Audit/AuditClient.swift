import Foundation

public final class AuditClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func list(request: Requests.ListAuditRequest, requestOptions: RequestOptions? = nil) async throws -> ListAuditResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/audit/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ListAuditResponse.self
        )
    }
}