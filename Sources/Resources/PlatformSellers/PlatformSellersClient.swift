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

    /// Read one platform seller with its activities, ordered by year.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(request: Requests.GetPlatformSellersRequest, requestOptions: RequestOptions? = nil) async throws -> GetPlatformSellersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/platform-sellers/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GetPlatformSellersResponse.self
        )
    }

    /// Record a seller on the company's platform for the DAC7 report: an `individual` (first and last name required) or an `entity` (`entityName` required), with its `activities` per year and quarter. An `immovable_property` activity needs `propertyAddress`; property address, type and rented days on any other kind of activity are refused. These checks answer 422; a `partnerId` that does not exist answers 404. The report is built from the sellers with `declarations/eu/dac7/preview` and `declarations/eu/dac7/xml`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreatePlatformSellersRequest, requestOptions: RequestOptions? = nil) async throws -> CreatePlatformSellersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/platform-sellers/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreatePlatformSellersResponse.self
        )
    }

    /// Replace a platform seller's details and all of its activities with the ones given, under the same checks as `platform-sellers/create`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(request: Requests.UpdatePlatformSellersRequest, requestOptions: RequestOptions? = nil) async throws -> UpdatePlatformSellersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/platform-sellers/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdatePlatformSellersResponse.self
        )
    }

    /// Mark a platform seller as deleted. It leaves the lists and the DAC7 report.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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