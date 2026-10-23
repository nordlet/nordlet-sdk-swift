import Foundation

public final class AgreementsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Return whether automatic agreement billing is switched on for the company.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settingsGet(request: Requests.SettingsGetAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsGetAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/settings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsGetAgreementsResponse.self
        )
    }

    /// Switch automatic agreement billing on or off for the company. With it on, a scheduled job runs the same billing as `agreements/agreements/billing/run` for the company once a day.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settingsUpdate(request: Requests.SettingsUpdateAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsUpdateAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/settings/update",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsUpdateAgreementsResponse.self
        )
    }

    /// Create an agreement type with a `code` and a `name`. Answers 409 when the company already has a type with that code.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typesCreate(request: Requests.TypesCreateAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> TypesCreateAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/types/create",
            body: request,
            requestOptions: requestOptions,
            responseType: TypesCreateAgreementsResponse.self
        )
    }

    /// List the company's agreement types. Filterable and sortable by `code` and `name`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typesList(request: Requests.TypesListAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> TypesListAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/types/list",
            body: request,
            requestOptions: requestOptions,
            responseType: TypesListAgreementsResponse.self
        )
    }

    /// Create an agreement for exactly one party, a partner, an employee or a bank account, which must exist in the company (400 otherwise). Without `kind`, an employee agreement is `employment`, a bank account agreement is `bank` and a partner agreement is `other`; a `documentRef` (the `storageKey` of an uploaded file) attaches that file to the agreement. Answers 409 when the company already has an agreement with that `number`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func agreementsCreate(request: Requests.AgreementsCreateAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> AgreementsCreateAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/create",
            body: request,
            requestOptions: requestOptions,
            responseType: AgreementsCreateAgreementsResponse.self
        )
    }

    /// Return one agreement with its items.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func agreementsGet(request: Requests.AgreementsGetAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> AgreementsGetAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/get",
            body: request,
            requestOptions: requestOptions,
            responseType: AgreementsGetAgreementsResponse.self
        )
    }

    /// Change the given fields of an agreement and return it with its items. The party, `number`, `startDate`, `currency` and items are not changed by this call.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func agreementsUpdate(request: Requests.AgreementsUpdateAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> AgreementsUpdateAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/update",
            body: request,
            requestOptions: requestOptions,
            responseType: AgreementsUpdateAgreementsResponse.self
        )
    }

    /// Mark an agreement as deleted. It is no longer returned, changed or billed.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func agreementsDelete(request: Requests.AgreementsDeleteAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> AgreementsDeleteAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: AgreementsDeleteAgreementsResponse.self
        )
    }

    /// List the company's agreements without their items, each with `partnerName`. Filterable by `number`, `name`, `partnerId`, `employeeId`, `bankAccountId`, `kind`, `typeId`, `status`, `startDate`, `endDate` and `value`; sortable by `number`, `startDate` and `createdAt` (default `startDate` descending).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func agreementsList(request: Requests.AgreementsListAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> AgreementsListAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/list",
            body: request,
            requestOptions: requestOptions,
            responseType: AgreementsListAgreementsResponse.self
        )
    }

    /// Create a draft sale invoice for the next unbilled period of an active agreement that has a partner and a `billingPeriod`. The period follows the monthly, quarterly or annual grid from `startDate`, continues after the last period already invoiced for the agreement, and is prorated by days when it starts late or is cut by `endDate`; an `autoRenew` agreement has its `endDate` moved forward by whole terms instead (`renewedEndDate`). The lines come from the agreement items, else one line of `value`, with revenue recognised ratably over the period. Answers 422 when the agreement is not active, has no partner, billing period, items or value, carries VAT while the company is not a VAT payer, is fully billed through its end date, or when the next period starts after `asOfDate` (default today). Emits `agreement.invoice_generated`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func agreementsGenerateInvoice(request: Requests.AgreementsGenerateInvoiceAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> AgreementsGenerateInvoiceAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/generate-invoice",
            body: request,
            requestOptions: requestOptions,
            responseType: AgreementsGenerateInvoiceAgreementsResponse.self
        )
    }

    /// Generate the invoices due up to `asOfDate` (default today) for every active agreement of the company that has a partner and a billing period, one invoice per period and at most 60 per agreement in one run, in the same way as `agreements/agreements/generate-invoice`. An agreement that is fully billed and whose `endDate` has passed is set to `expired`. A failing agreement is listed in `errors` and does not stop the run. Each invoice emits `agreement.invoice_generated`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func agreementsBillingRun(request: Requests.AgreementsBillingRunAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> AgreementsBillingRunAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/billing/run",
            body: request,
            requestOptions: requestOptions,
            responseType: AgreementsBillingRunAgreementsResponse.self
        )
    }

    /// Create an insurance policy. Answers 422 when `toDate` is before `fromDate`, 400 when `insurerPartnerId` is not a partner of the company, and 409 when the company already has a policy with that `policyNumber`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func insurancePoliciesCreate(request: Requests.InsurancePoliciesCreateAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> InsurancePoliciesCreateAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/insurance-policies/create",
            body: request,
            requestOptions: requestOptions,
            responseType: InsurancePoliciesCreateAgreementsResponse.self
        )
    }

    /// List the company's insurance policies. Filterable by `policyNumber`, `insurerPartnerId` and `toDate`; sortable by `policyNumber` and `toDate` (default `toDate` descending).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func insurancePoliciesList(request: Requests.InsurancePoliciesListAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> InsurancePoliciesListAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/insurance-policies/list",
            body: request,
            requestOptions: requestOptions,
            responseType: InsurancePoliciesListAgreementsResponse.self
        )
    }

    /// Mark an insurance policy as deleted.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func insurancePoliciesDelete(request: Requests.InsurancePoliciesDeleteAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> InsurancePoliciesDeleteAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/insurance-policies/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: InsurancePoliciesDeleteAgreementsResponse.self
        )
    }
}