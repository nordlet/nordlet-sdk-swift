import Foundation

public final class AssetsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Return the company's fixed asset setting `autoDepreciation`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settingsGet(request: Requests.SettingsGetAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsGetAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/settings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsGetAssetsResponse.self
        )
    }

    /// Turn automatic depreciation on or off. When it is on, the scheduler posts the previous month's depreciation for the company once a day, as `assets/depreciation/post` does.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settingsUpdate(request: Requests.SettingsUpdateAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsUpdateAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/settings/update",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsUpdateAssetsResponse.self
        )
    }

    /// Create an asset group: the asset, accumulated depreciation and depreciation expense accounts its assets are posted to, and an optional default useful life in months. `expenseAccountCode` defaults to the chart's depreciation expense account; each account must exist and be postable (422). A duplicate code is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func groupsCreate(request: Requests.GroupsCreateAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsCreateAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/groups/create",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsCreateAssetsResponse.self
        )
    }

    /// List the asset groups; filterable and sortable by `code` and `name`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func groupsList(request: Requests.GroupsListAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsListAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/groups/list",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsListAssetsResponse.self
        )
    }

    /// Register a fixed asset in a group with its acquisition date and cost, salvage value, useful life in months (defaults to the group's default; 422 when neither is set) and depreciation start date (defaults to the acquisition date). The salvage value must be below the acquisition cost (422); a duplicate code is refused with 409. Depreciation is posted with `assets/depreciation/post`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func assetsCreate(request: Requests.AssetsCreateAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> AssetsCreateAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/assets/create",
            body: request,
            requestOptions: requestOptions,
            responseType: AssetsCreateAssetsResponse.self
        )
    }

    /// Change an asset that has no posted depreciation yet: group, code, name, dates, cost, salvage value, useful life, notes or documents. Refused with 409 once depreciation is posted or the asset is disposed, and with 422 when the salvage value would reach the acquisition cost; a duplicate code is 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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

    /// Return one fixed asset with its totals (cost including modernisations, accumulated depreciation, net book value, total life in months), its input VAT facts and its disposal.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func assetsGet(request: Requests.AssetsGetAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> AssetsGetAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/assets/get",
            body: request,
            requestOptions: requestOptions,
            responseType: AssetsGetAssetsResponse.self
        )
    }

    /// List the fixed assets; filterable by `code`, `name`, `groupId`, `status`, `acquisitionDate`, `acquisitionCost` and `accumulatedDepreciation`, sortable by `code`, `name`, `acquisitionDate` and `acquisitionCost`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func assetsList(request: Requests.AssetsListAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> AssetsListAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/assets/list",
            body: request,
            requestOptions: requestOptions,
            responseType: AssetsListAssetsResponse.self
        )
    }

    /// Record a modernisation of a fixed asset: `amount` is added to its cost and `addedLifeMonths` to its useful life from the month of `date` on, and the remaining depreciable value is spread over the months left. Refused with 422 when the asset is disposed or when no depreciation month would be left (give `addedLifeMonths` of at least 1); a fully depreciated asset becomes active again.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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

    /// Preview what `assets/depreciation/post` would post for a month: per active asset the amount and the months it covers, earlier unposted months included, and whether the month is already posted. Nothing is written.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func depreciationPreview(request: Requests.DepreciationPreviewAssetsRequest, requestOptions: RequestOptions? = nil) async throws -> DepreciationPreviewAssetsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/depreciation/preview",
            body: request,
            requestOptions: requestOptions,
            responseType: DepreciationPreviewAssetsResponse.self
        )
    }

    /// Post the depreciation of a month: one journal entry dated the last day of the month that debits each group's expense account and credits its accumulated depreciation account, for every active asset whose depreciation has started, covering that month and any earlier month not yet posted. Each month's amount is the remaining depreciable value (cost plus modernisations less salvage value less accumulated depreciation) divided by the months left; an asset whose life or value is used up becomes `fully_depreciated`. Answers 409 when the period is locked, and `journalTransactionId` null when nothing is due.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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