import Foundation

public final class OfficersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Directors, board members, the company secretary, representatives and liquidators, with their personal identifier, appointment and resignation dates and whether they sign the annual accounts. Annual returns and registry deposits are built from this register.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(request: Requests.ListOfficersRequest, requestOptions: RequestOptions? = nil) async throws -> ListOfficersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/officers/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ListOfficersResponse.self
        )
    }

    public func create(request: Requests.CreateOfficersRequest, requestOptions: RequestOptions? = nil) async throws -> CreateOfficersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/officers/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateOfficersResponse.self
        )
    }

    public func update(request: Requests.UpdateOfficersRequest, requestOptions: RequestOptions? = nil) async throws -> UpdateOfficersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/officers/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateOfficersResponse.self
        )
    }

    public func delete(request: Requests.DeleteOfficersRequest, requestOptions: RequestOptions? = nil) async throws -> DeleteOfficersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/officers/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: DeleteOfficersResponse.self
        )
    }
}