import Foundation

public final class ReferenceClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Fetches the euro exchange rates the Bank of Lithuania web service publishes for `date` (default: the company's current date) and stores them in the rate table shared by all companies, replacing the rates already stored for that date. Answers 404 when no rates are published for the date.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func exchangeRatesSync(request: Requests.ExchangeRatesSyncReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> ExchangeRatesSyncReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/exchange-rates/sync",
            body: request,
            requestOptions: requestOptions,
            responseType: ExchangeRatesSyncReferenceResponse.self
        )
    }

    /// Lists the stored euro exchange rates, which are shared by all companies. Filterable by `currencyCode` and `date`; sortable by `date` and `currencyCode`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func exchangeRatesList(request: Requests.ExchangeRatesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> ExchangeRatesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/exchange-rates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ExchangeRatesListReferenceResponse.self
        )
    }

    /// Stores a company exchange rate for `currency` on `date`, in units of the currency per one unit of the company's base currency, replacing the company rate stored for that currency and date. Rate lookups use the company rate when it is dated on or after the latest shared rate on or before the lookup date. Answers 422 when `rate` is not positive.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func exchangeRatesSet(request: Requests.ExchangeRatesSetReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> ExchangeRatesSetReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/exchange-rates/set",
            body: request,
            requestOptions: requestOptions,
            responseType: ExchangeRatesSetReferenceResponse.self
        )
    }

    /// Lists the company's own exchange rates set with `reference/exchange-rates/set`. Filterable by `currencyCode` and `date`; sortable by `date` and `currencyCode`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func exchangeRatesOverridesList(request: Requests.ExchangeRatesOverridesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> ExchangeRatesOverridesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/exchange-rates/overrides/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ExchangeRatesOverridesListReferenceResponse.self
        )
    }

    /// Removes the company's own exchange rate for `currency` on `date`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func exchangeRatesOverridesDelete(request: Requests.ExchangeRatesOverridesDeleteReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> ExchangeRatesOverridesDeleteReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/exchange-rates/overrides/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: ExchangeRatesOverridesDeleteReferenceResponse.self
        )
    }

    /// Lists every country code Nordlet knows with its EU and EEA membership and its name in each supported locale.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func countriesList(request: Requests.CountriesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> CountriesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/countries/list",
            body: request,
            requestOptions: requestOptions,
            responseType: CountriesListReferenceResponse.self
        )
    }

    /// Lists the ten Lithuanian counties (apskritys) with their code and ISO code.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltCountiesList(request: Requests.LtCountiesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> LtCountiesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/lt/counties/list",
            body: request,
            requestOptions: requestOptions,
            responseType: LtCountiesListReferenceResponse.self
        )
    }

    /// Lists the Lithuanian municipalities (savivaldybės) with the county each belongs to; `countyCode` limits the list to one county.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltMunicipalitiesList(request: Requests.LtMunicipalitiesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> LtMunicipalitiesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/lt/municipalities/list",
            body: request,
            requestOptions: requestOptions,
            responseType: LtMunicipalitiesListReferenceResponse.self
        )
    }

    /// Lists Lithuanian cities with their municipality; `municipalityCode` limits the list to one municipality and `q` to names that start with the given text (case-insensitive).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltCitiesList(request: Requests.LtCitiesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> LtCitiesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/lt/cities/list",
            body: request,
            requestOptions: requestOptions,
            responseType: LtCitiesListReferenceResponse.self
        )
    }

    /// Lists the banks of the bank directory shared by all companies. Filterable by `countryCode`, `name`, `bic` and `bankCode`; sortable by `name`, `bic` and `countryCode`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func banksList(request: Requests.BanksListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> BanksListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/banks/list",
            body: request,
            requestOptions: requestOptions,
            responseType: BanksListReferenceResponse.self
        )
    }

    /// Adds a bank to the shared bank directory or, when a bank with the same `countryCode` and `bic` exists, replaces its name, bank code and active flag. Platform administrators only.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func banksUpsert(request: Requests.BanksUpsertReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> BanksUpsertReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/banks/upsert",
            body: request,
            requestOptions: requestOptions,
            responseType: BanksUpsertReferenceResponse.self
        )
    }

    /// Lists the ten Lithuanian regions (apskritys) with their code and ISO code; the same list as `reference/lt/counties/list`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltRegionsList(request: Requests.LtRegionsListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> LtRegionsListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/lt/regions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: LtRegionsListReferenceResponse.self
        )
    }

    /// Lists the currencies known to Nordlet with their minor units. Filterable and sortable by `code` and `name`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func currenciesList(request: Requests.CurrenciesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> CurrenciesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/currencies/list",
            body: request,
            requestOptions: requestOptions,
            responseType: CurrenciesListReferenceResponse.self
        )
    }

    /// Lists the company's VAT classifiers (code, country, name and rate). A document line that names a classifier in `vatClassifierCode` takes its rate from it when neither the line nor the item has a rate. Filterable by `code`, `countryCode` and `ratePercent`; sortable by `code` and `ratePercent`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func vatClassifiersList(request: Requests.VatClassifiersListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> VatClassifiersListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/vat-classifiers/list",
            body: request,
            requestOptions: requestOptions,
            responseType: VatClassifiersListReferenceResponse.self
        )
    }

    /// Adds VAT classifiers to the company or replaces the country, name and rate of the ones whose `code` already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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

    /// Works out the VAT treatment of a supply by this company: the scheme (domestic, intra-EU B2B, reverse charge, OSS, IOSS, marketplace deemed supplier, export, out of scope or SME exempt), the country whose VAT applies, its rates with the company's overrides applied, and the legal basis. The customer comes from `partnerId` (country from the partner's address or VAT number, business status from the VAT number) or from `customerCountryCode` and `customerIsBusiness`; `date` defaults to the company's current date; when `belowDistanceSalesThreshold` is not given, the distance-sales threshold is tracked from the company's ledger. Answers 422 when the partner has neither an address country nor a VAT code.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func vatResolve(request: Requests.VatResolveReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> VatResolveReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/vat/resolve",
            body: request,
            requestOptions: requestOptions,
            responseType: VatResolveReferenceResponse.self
        )
    }

    /// Lists the Combined Nomenclature codes of the directory shared by all companies. Filterable by `code`, `name` and `nameLt`; sortable by `code`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cnCodesList(request: Requests.CnCodesListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> CnCodesListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/cn-codes/list",
            body: request,
            requestOptions: requestOptions,
            responseType: CnCodesListReferenceResponse.self
        )
    }

    /// Adds Combined Nomenclature codes to the shared directory or replaces the names and supplementary unit of the codes that exist. Platform administrators only.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cnCodesUpsert(request: Requests.CnCodesUpsertReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> CnCodesUpsertReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/cn-codes/upsert",
            body: request,
            requestOptions: requestOptions,
            responseType: CnCodesUpsertReferenceResponse.self
        )
    }

    /// Lists the versions of the filing systems, schemas and forms Nordlet's output was checked against, with the date of the check and the source; `country` limits the list to one country.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func complianceVersionsList(request: Requests.ComplianceVersionsListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> ComplianceVersionsListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/compliance-versions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ComplianceVersionsListReferenceResponse.self
        )
    }

    /// Lists the Intrastat thresholds stored per year: the reporting and the statistical-value threshold for arrivals and for dispatches.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func intrastatThresholdsList(request: Requests.IntrastatThresholdsListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> IntrastatThresholdsListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/intrastat-thresholds/list",
            body: request,
            requestOptions: requestOptions,
            responseType: IntrastatThresholdsListReferenceResponse.self
        )
    }

    /// Lists the measurement units of the directory shared by all companies, with Lithuanian and English names. Filterable by `code`, `nameLt` and `nameEn`; sortable by `code`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unitsList(request: Requests.UnitsListReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> UnitsListReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/units/list",
            body: request,
            requestOptions: requestOptions,
            responseType: UnitsListReferenceResponse.self
        )
    }

    /// Creates a numbering series for a document type, prefix and year; the first number the series hands out is at least `startAt`. Answers 409 when a series with the same document type, prefix and year exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func seriesCreate(request: Requests.SeriesCreateReferenceRequest, requestOptions: RequestOptions? = nil) async throws -> SeriesCreateReferenceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reference/series/create",
            body: request,
            requestOptions: requestOptions,
            responseType: SeriesCreateReferenceResponse.self
        )
    }

    /// Lists the company's numbering series with the next number of each. Filterable and sortable by `documentType`, `prefix` and `year`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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