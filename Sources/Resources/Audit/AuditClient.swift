import Foundation

public final class AuditClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// List the audit log of the company: who did what to which entity, with the recorded change in `diff`. Filterable by `action`, `entity`, `entityId`, `actorType` and `actorId`; sortable by `createdAt`, `id`, `actor` (the actor type, then the start of the actor id), `action`, `entity` (the entity, then the start of the entity id) and `diff` (the recorded change as text), newest first by default.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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