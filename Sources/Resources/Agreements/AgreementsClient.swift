import Foundation

public final class AgreementsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func settingsGet(request: Requests.SettingsGetAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsGetAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/settings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsGetAgreementsResponse.self
        )
    }

    public func settingsUpdate(request: Requests.SettingsUpdateAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsUpdateAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/settings/update",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsUpdateAgreementsResponse.self
        )
    }

    public func typesCreate(request: Requests.TypesCreateAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> TypesCreateAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/types/create",
            body: request,
            requestOptions: requestOptions,
            responseType: TypesCreateAgreementsResponse.self
        )
    }

    public func typesList(request: Requests.TypesListAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> TypesListAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/types/list",
            body: request,
            requestOptions: requestOptions,
            responseType: TypesListAgreementsResponse.self
        )
    }

    public func agreementsCreate(request: Requests.AgreementsCreateAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> AgreementsCreateAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/create",
            body: request,
            requestOptions: requestOptions,
            responseType: AgreementsCreateAgreementsResponse.self
        )
    }

    public func agreementsGet(request: Requests.AgreementsGetAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> AgreementsGetAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/get",
            body: request,
            requestOptions: requestOptions,
            responseType: AgreementsGetAgreementsResponse.self
        )
    }

    public func agreementsUpdate(request: Requests.AgreementsUpdateAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> AgreementsUpdateAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/update",
            body: request,
            requestOptions: requestOptions,
            responseType: AgreementsUpdateAgreementsResponse.self
        )
    }

    public func agreementsDelete(request: Requests.AgreementsDeleteAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> AgreementsDeleteAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: AgreementsDeleteAgreementsResponse.self
        )
    }

    public func agreementsList(request: Requests.AgreementsListAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> AgreementsListAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/list",
            body: request,
            requestOptions: requestOptions,
            responseType: AgreementsListAgreementsResponse.self
        )
    }

    public func agreementsGenerateInvoice(request: Requests.AgreementsGenerateInvoiceAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> AgreementsGenerateInvoiceAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/generate-invoice",
            body: request,
            requestOptions: requestOptions,
            responseType: AgreementsGenerateInvoiceAgreementsResponse.self
        )
    }

    public func agreementsBillingRun(request: Requests.AgreementsBillingRunAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> AgreementsBillingRunAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/billing/run",
            body: request,
            requestOptions: requestOptions,
            responseType: AgreementsBillingRunAgreementsResponse.self
        )
    }

    public func insurancePoliciesCreate(request: Requests.InsurancePoliciesCreateAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> InsurancePoliciesCreateAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/insurance-policies/create",
            body: request,
            requestOptions: requestOptions,
            responseType: InsurancePoliciesCreateAgreementsResponse.self
        )
    }

    public func insurancePoliciesList(request: Requests.InsurancePoliciesListAgreementsRequest, requestOptions: RequestOptions? = nil) async throws -> InsurancePoliciesListAgreementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/insurance-policies/list",
            body: request,
            requestOptions: requestOptions,
            responseType: InsurancePoliciesListAgreementsResponse.self
        )
    }

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