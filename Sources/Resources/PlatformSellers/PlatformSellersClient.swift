import Foundation

public final class PlatformSellersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Individuals and entities that sell goods, rent out property or transport, or perform personal services through the platform the company operates. The yearly DAC7 report is built from them.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(request: Requests.ListPlatformSellersRequest, requestOptions: RequestOptions? = nil) async throws -> ListPlatformSellersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/platform-sellers/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ListPlatformSellersResponse.self
        )
    }

    public func get(request: Requests.GetPlatformSellersRequest, requestOptions: RequestOptions? = nil) async throws -> GetPlatformSellersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/platform-sellers/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GetPlatformSellersResponse.self
        )
    }

    public func create(request: Requests.CreatePlatformSellersRequest, requestOptions: RequestOptions? = nil) async throws -> CreatePlatformSellersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/platform-sellers/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreatePlatformSellersResponse.self
        )
    }

    public func update(request: Requests.UpdatePlatformSellersRequest, requestOptions: RequestOptions? = nil) async throws -> UpdatePlatformSellersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/platform-sellers/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdatePlatformSellersResponse.self
        )
    }

    public func delete(request: Requests.DeletePlatformSellersRequest, requestOptions: RequestOptions? = nil) async throws -> DeletePlatformSellersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/platform-sellers/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: DeletePlatformSellersResponse.self
        )
    }
}