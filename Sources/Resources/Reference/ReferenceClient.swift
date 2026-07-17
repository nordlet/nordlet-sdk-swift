import Foundation

public final class ReferenceClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1ReferenceExchangeRatesSync(request: Requests.PostV1ReferenceExchangeRatesSyncRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceExchangeRatesSyncResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/exchange-rates/sync",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceExchangeRatesSyncResponse.self
        )
    }

    public func postV1ReferenceExchangeRatesList(request: Requests.PostV1ReferenceExchangeRatesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceExchangeRatesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/exchange-rates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceExchangeRatesListResponse.self
        )
    }

    public func postV1ReferenceExchangeRatesSet(request: Requests.PostV1ReferenceExchangeRatesSetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceExchangeRatesSetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/exchange-rates/set",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceExchangeRatesSetResponse.self
        )
    }

    public func postV1ReferenceExchangeRatesOverridesList(request: Requests.PostV1ReferenceExchangeRatesOverridesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceExchangeRatesOverridesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/exchange-rates/overrides/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceExchangeRatesOverridesListResponse.self
        )
    }

    public func postV1ReferenceExchangeRatesOverridesDelete(request: Requests.PostV1ReferenceExchangeRatesOverridesDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceExchangeRatesOverridesDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/exchange-rates/overrides/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceExchangeRatesOverridesDeleteResponse.self
        )
    }

    public func postV1ReferenceCountriesList(request: Requests.PostV1ReferenceCountriesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceCountriesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/countries/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceCountriesListResponse.self
        )
    }

    public func postV1ReferenceBanksList(request: Requests.PostV1ReferenceBanksListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceBanksListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/banks/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceBanksListResponse.self
        )
    }

    public func postV1ReferenceBanksUpsert(request: Requests.PostV1ReferenceBanksUpsertRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceBanksUpsertResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/banks/upsert",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceBanksUpsertResponse.self
        )
    }

    public func postV1ReferenceLtRegionsList(request: Requests.PostV1ReferenceLtRegionsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceLtRegionsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/lt/regions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceLtRegionsListResponse.self
        )
    }

    public func postV1ReferenceCurrenciesList(request: Requests.PostV1ReferenceCurrenciesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceCurrenciesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/currencies/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceCurrenciesListResponse.self
        )
    }

    public func postV1ReferenceVatClassifiersList(request: Requests.PostV1ReferenceVatClassifiersListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceVatClassifiersListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/vat-classifiers/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceVatClassifiersListResponse.self
        )
    }

    public func postV1ReferenceVatClassifiersUpsert(request: Requests.PostV1ReferenceVatClassifiersUpsertRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceVatClassifiersUpsertResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/vat-classifiers/upsert",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceVatClassifiersUpsertResponse.self
        )
    }

    public func postV1ReferenceEuVatRatesList(request: Requests.PostV1ReferenceEuVatRatesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceEuVatRatesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/eu-vat-rates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceEuVatRatesListResponse.self
        )
    }

    public func postV1ReferenceVatResolve(request: Requests.PostV1ReferenceVatResolveRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceVatResolveResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/vat/resolve",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceVatResolveResponse.self
        )
    }

    public func postV1ReferenceCnCodesList(request: Requests.PostV1ReferenceCnCodesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceCnCodesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/cn-codes/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceCnCodesListResponse.self
        )
    }

    public func postV1ReferenceCnCodesUpsert(request: Requests.PostV1ReferenceCnCodesUpsertRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceCnCodesUpsertResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/cn-codes/upsert",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceCnCodesUpsertResponse.self
        )
    }

    public func postV1ReferenceComplianceVersionsList(request: Requests.PostV1ReferenceComplianceVersionsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceComplianceVersionsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/compliance-versions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceComplianceVersionsListResponse.self
        )
    }

    public func postV1ReferenceIntrastatThresholdsList(request: Requests.PostV1ReferenceIntrastatThresholdsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceIntrastatThresholdsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/intrastat-thresholds/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceIntrastatThresholdsListResponse.self
        )
    }

    public func postV1ReferenceUnitsList(request: Requests.PostV1ReferenceUnitsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceUnitsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/units/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceUnitsListResponse.self
        )
    }

    public func postV1ReferenceSeriesCreate(request: Requests.PostV1ReferenceSeriesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceSeriesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/series/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceSeriesCreateResponse.self
        )
    }

    public func postV1ReferenceSeriesList(request: Requests.PostV1ReferenceSeriesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReferenceSeriesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/series/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReferenceSeriesListResponse.self
        )
    }
}