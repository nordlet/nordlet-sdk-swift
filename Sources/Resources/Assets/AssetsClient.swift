import Foundation

public final class AssetsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func settingsGet(request: Requests.SettingsGetAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsGetAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/settings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsGetAssetsResponse.self
        )
    }

    public func settingsUpdate(request: Requests.SettingsUpdateAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsUpdateAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/settings/update",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsUpdateAssetsResponse.self
        )
    }

    public func groupsCreate(request: Requests.GroupsCreateAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsCreateAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/groups/create",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsCreateAssetsResponse.self
        )
    }

    public func groupsList(request: Requests.GroupsListAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsListAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/groups/list",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsListAssetsResponse.self
        )
    }

    public func assetsCreate(request: Requests.AssetsCreateAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> AssetsCreateAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/assets/create",
            body: request,
            requestOptions: requestOptions,
            responseType: AssetsCreateAssetsResponse.self
        )
    }

    public func assetsUpdate(request: Requests.AssetsUpdateAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> AssetsUpdateAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/assets/update",
            body: request,
            requestOptions: requestOptions,
            responseType: AssetsUpdateAssetsResponse.self
        )
    }

    /// Record the input VAT facts of a capital good that the annual VAT return needs for the adjustment of the deduction over the adjustment period (Article 187 of the VAT Directive, § 15a UStG): the input VAT on the acquisition, the date of first use, the share of use for deductible turnover at first use, whether it is land or a building (ten-year period instead of five), and every later year in which the share changed or the good was sold or withdrawn. Allowed also after depreciation has been posted.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func assetsInputVat(request: Requests.AssetsInputVatAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> AssetsInputVatAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/assets/input-vat",
            body: request,
            requestOptions: requestOptions,
            responseType: AssetsInputVatAssetsResponse.self
        )
    }

    public func assetsGet(request: Requests.AssetsGetAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> AssetsGetAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/assets/get",
            body: request,
            requestOptions: requestOptions,
            responseType: AssetsGetAssetsResponse.self
        )
    }

    public func assetsList(request: Requests.AssetsListAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> AssetsListAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/assets/list",
            body: request,
            requestOptions: requestOptions,
            responseType: AssetsListAssetsResponse.self
        )
    }

    public func assetsModernize(request: Requests.AssetsModernizeAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> AssetsModernizeAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/assets/modernize",
            body: request,
            requestOptions: requestOptions,
            responseType: AssetsModernizeAssetsResponse.self
        )
    }

    /// Dispose of a fixed asset (sold, scrapped or written off). Removes its cost and accumulated depreciation, books the net book value as a disposal loss and the proceeds as a disposal gain (posting rules assets.disposalLoss, assets.disposalGain, assets.disposalProceeds), and stops its depreciation. Depreciation must be posted for every month before the disposal month.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func assetsDispose(request: Requests.AssetsDisposeAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> AssetsDisposeAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/assets/dispose",
            body: request,
            requestOptions: requestOptions,
            responseType: AssetsDisposeAssetsResponse.self
        )
    }

    public func depreciationPreview(request: Requests.DepreciationPreviewAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> DepreciationPreviewAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/depreciation/preview",
            body: request,
            requestOptions: requestOptions,
            responseType: DepreciationPreviewAssetsResponse.self
        )
    }

    public func depreciationPost(request: Requests.DepreciationPostAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> DepreciationPostAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/depreciation/post",
            body: request,
            requestOptions: requestOptions,
            responseType: DepreciationPostAssetsResponse.self
        )
    }
}