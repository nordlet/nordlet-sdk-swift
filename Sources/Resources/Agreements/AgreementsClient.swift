import Foundation

public final class AgreementsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1AgreementsTypesCreate(request: Requests.PostV1AgreementsTypesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AgreementsTypesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/types/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AgreementsTypesCreateResponse.self
        )
    }

    public func postV1AgreementsTypesList(request: Requests.PostV1AgreementsTypesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AgreementsTypesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/types/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AgreementsTypesListResponse.self
        )
    }

    public func postV1AgreementsAgreementsCreate(request: Requests.PostV1AgreementsAgreementsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AgreementsAgreementsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AgreementsAgreementsCreateResponse.self
        )
    }

    public func postV1AgreementsAgreementsGet(request: Requests.PostV1AgreementsAgreementsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AgreementsAgreementsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AgreementsAgreementsGetResponse.self
        )
    }

    public func postV1AgreementsAgreementsUpdate(request: Requests.PostV1AgreementsAgreementsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AgreementsAgreementsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AgreementsAgreementsUpdateResponse.self
        )
    }

    public func postV1AgreementsAgreementsDelete(request: Requests.PostV1AgreementsAgreementsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AgreementsAgreementsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AgreementsAgreementsDeleteResponse.self
        )
    }

    public func postV1AgreementsAgreementsList(request: Requests.PostV1AgreementsAgreementsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AgreementsAgreementsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AgreementsAgreementsListResponse.self
        )
    }

    public func postV1AgreementsAgreementsGenerateInvoice(request: Requests.PostV1AgreementsAgreementsGenerateInvoiceRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AgreementsAgreementsGenerateInvoiceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/generate-invoice",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AgreementsAgreementsGenerateInvoiceResponse.self
        )
    }

    public func postV1AgreementsAgreementsBillingRun(request: Requests.PostV1AgreementsAgreementsBillingRunRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AgreementsAgreementsBillingRunResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/agreements/billing/run",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AgreementsAgreementsBillingRunResponse.self
        )
    }

    public func postV1AgreementsInsurancePoliciesCreate(request: Requests.PostV1AgreementsInsurancePoliciesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AgreementsInsurancePoliciesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/insurance-policies/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AgreementsInsurancePoliciesCreateResponse.self
        )
    }

    public func postV1AgreementsInsurancePoliciesList(request: Requests.PostV1AgreementsInsurancePoliciesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AgreementsInsurancePoliciesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/insurance-policies/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AgreementsInsurancePoliciesListResponse.self
        )
    }

    public func postV1AgreementsInsurancePoliciesDelete(request: Requests.PostV1AgreementsInsurancePoliciesDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AgreementsInsurancePoliciesDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/agreements/insurance-policies/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AgreementsInsurancePoliciesDeleteResponse.self
        )
    }
}