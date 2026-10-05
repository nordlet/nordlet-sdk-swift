import Foundation

public final class ReferenceClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func exchangeRatesSync(request: Requests.ExchangeRatesSyncReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> ExchangeRatesSyncReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/exchange-rates/sync",
            body: request,
            requestOptions: requestOptions,
            responseType: ExchangeRatesSyncReferenceResponse.self
        )
    }

    public func exchangeRatesList(request: Requests.ExchangeRatesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> ExchangeRatesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/exchange-rates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ExchangeRatesListReferenceResponse.self
        )
    }

    public func exchangeRatesSet(request: Requests.ExchangeRatesSetReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> ExchangeRatesSetReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/exchange-rates/set",
            body: request,
            requestOptions: requestOptions,
            responseType: ExchangeRatesSetReferenceResponse.self
        )
    }

    public func exchangeRatesOverridesList(request: Requests.ExchangeRatesOverridesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> ExchangeRatesOverridesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/exchange-rates/overrides/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ExchangeRatesOverridesListReferenceResponse.self
        )
    }

    public func exchangeRatesOverridesDelete(request: Requests.ExchangeRatesOverridesDeleteReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> ExchangeRatesOverridesDeleteReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/exchange-rates/overrides/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: ExchangeRatesOverridesDeleteReferenceResponse.self
        )
    }

    public func countriesList(request: Requests.CountriesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> CountriesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/countries/list",
            body: request,
            requestOptions: requestOptions,
            responseType: CountriesListReferenceResponse.self
        )
    }

    public func ltCountiesList(request: Requests.LtCountiesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> LtCountiesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/lt/counties/list",
            body: request,
            requestOptions: requestOptions,
            responseType: LtCountiesListReferenceResponse.self
        )
    }

    public func ltMunicipalitiesList(request: Requests.LtMunicipalitiesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> LtMunicipalitiesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/lt/municipalities/list",
            body: request,
            requestOptions: requestOptions,
            responseType: LtMunicipalitiesListReferenceResponse.self
        )
    }

    public func ltCitiesList(request: Requests.LtCitiesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> LtCitiesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/lt/cities/list",
            body: request,
            requestOptions: requestOptions,
            responseType: LtCitiesListReferenceResponse.self
        )
    }

    public func banksList(request: Requests.BanksListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> BanksListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/banks/list",
            body: request,
            requestOptions: requestOptions,
            responseType: BanksListReferenceResponse.self
        )
    }

    public func banksUpsert(request: Requests.BanksUpsertReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> BanksUpsertReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/banks/upsert",
            body: request,
            requestOptions: requestOptions,
            responseType: BanksUpsertReferenceResponse.self
        )
    }

    public func ltRegionsList(request: Requests.LtRegionsListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> LtRegionsListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/lt/regions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: LtRegionsListReferenceResponse.self
        )
    }

    public func currenciesList(request: Requests.CurrenciesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> CurrenciesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/currencies/list",
            body: request,
            requestOptions: requestOptions,
            responseType: CurrenciesListReferenceResponse.self
        )
    }

    public func vatClassifiersList(request: Requests.VatClassifiersListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> VatClassifiersListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/vat-classifiers/list",
            body: request,
            requestOptions: requestOptions,
            responseType: VatClassifiersListReferenceResponse.self
        )
    }

    public func vatClassifiersUpsert(request: Requests.VatClassifiersUpsertReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> VatClassifiersUpsertReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/vat-classifiers/upsert",
            body: request,
            requestOptions: requestOptions,
            responseType: VatClassifiersUpsertReferenceResponse.self
        )
    }

    /// Effective EU VAT rate mapping for this company: EC TEDB defaults, replaced per country by any company overrides. Verify the mapping fits the goods and services you sell before relying on it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euVatRatesList(request: Requests.EuVatRatesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> EuVatRatesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/eu-vat-rates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: EuVatRatesListReferenceResponse.self
        )
    }

    /// Replace the VAT rate mapping this company uses for one EU country. Pass an empty rates array to drop the overrides and return to the TEDB defaults. Overrides feed rate suggestions (vat/resolve) and OSS/IOSS return rate classification.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euVatRatesSetOverrides(request: Requests.EuVatRatesSetOverridesReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> EuVatRatesSetOverridesReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/eu-vat-rates/set-overrides",
            body: request,
            requestOptions: requestOptions,
            responseType: EuVatRatesSetOverridesReferenceResponse.self
        )
    }

    public func vatResolve(request: Requests.VatResolveReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> VatResolveReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/vat/resolve",
            body: request,
            requestOptions: requestOptions,
            responseType: VatResolveReferenceResponse.self
        )
    }

    public func cnCodesList(request: Requests.CnCodesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> CnCodesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/cn-codes/list",
            body: request,
            requestOptions: requestOptions,
            responseType: CnCodesListReferenceResponse.self
        )
    }

    public func cnCodesUpsert(request: Requests.CnCodesUpsertReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> CnCodesUpsertReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/cn-codes/upsert",
            body: request,
            requestOptions: requestOptions,
            responseType: CnCodesUpsertReferenceResponse.self
        )
    }

    public func complianceVersionsList(request: Requests.ComplianceVersionsListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> ComplianceVersionsListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/compliance-versions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ComplianceVersionsListReferenceResponse.self
        )
    }

    public func intrastatThresholdsList(request: Requests.IntrastatThresholdsListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> IntrastatThresholdsListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/intrastat-thresholds/list",
            body: request,
            requestOptions: requestOptions,
            responseType: IntrastatThresholdsListReferenceResponse.self
        )
    }

    public func unitsList(request: Requests.UnitsListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> UnitsListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/units/list",
            body: request,
            requestOptions: requestOptions,
            responseType: UnitsListReferenceResponse.self
        )
    }

    public func seriesCreate(request: Requests.SeriesCreateReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> SeriesCreateReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/series/create",
            body: request,
            requestOptions: requestOptions,
            responseType: SeriesCreateReferenceResponse.self
        )
    }

    public func seriesList(request: Requests.SeriesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> SeriesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/series/list",
            body: request,
            requestOptions: requestOptions,
            responseType: SeriesListReferenceResponse.self
        )
    }
}