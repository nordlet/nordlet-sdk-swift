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

    /// Add an officer to the company's register (`officers/list`); `signsAccounts` defaults to true. Refused with 422 when `resignedOn` is before `appointedOn`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreateOfficersRequest, requestOptions: RequestOptions? = nil) async throws -> CreateOfficersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/officers/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateOfficersResponse.self
        )
    }

    /// Replace the recorded data of an officer; every field is written as sent, so a field left out is cleared and `signsAccounts` falls back to true. Refused with 422 when `resignedOn` is before `appointedOn`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(request: Requests.UpdateOfficersRequest, requestOptions: RequestOptions? = nil) async throws -> UpdateOfficersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/officers/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateOfficersResponse.self
        )
    }

    /// Remove an officer from the company's register.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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