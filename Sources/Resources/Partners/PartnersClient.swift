import Foundation

public final class PartnersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1PartnersAddressesCreate(request: Requests.PostV1PartnersAddressesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersAddressesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/addresses/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersAddressesCreateResponse.self
        )
    }

    public func postV1PartnersAddressesUpdate(request: Requests.PostV1PartnersAddressesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersAddressesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/addresses/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersAddressesUpdateResponse.self
        )
    }

    public func postV1PartnersAddressesDelete(request: Requests.PostV1PartnersAddressesDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersAddressesDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/addresses/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersAddressesDeleteResponse.self
        )
    }

    public func postV1PartnersAddressesList(request: Requests.PostV1PartnersAddressesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersAddressesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/addresses/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersAddressesListResponse.self
        )
    }

    public func postV1PartnersContactsCreate(request: Requests.PostV1PartnersContactsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersContactsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/contacts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersContactsCreateResponse.self
        )
    }

    public func postV1PartnersContactsUpdate(request: Requests.PostV1PartnersContactsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersContactsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/contacts/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersContactsUpdateResponse.self
        )
    }

    public func postV1PartnersContactsDelete(request: Requests.PostV1PartnersContactsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersContactsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/contacts/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersContactsDeleteResponse.self
        )
    }

    public func postV1PartnersContactsList(request: Requests.PostV1PartnersContactsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersContactsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/contacts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersContactsListResponse.self
        )
    }

    public func postV1PartnersBankAccountsCreate(request: Requests.PostV1PartnersBankAccountsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersBankAccountsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/bank-accounts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersBankAccountsCreateResponse.self
        )
    }

    public func postV1PartnersBankAccountsUpdate(request: Requests.PostV1PartnersBankAccountsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersBankAccountsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/bank-accounts/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersBankAccountsUpdateResponse.self
        )
    }

    public func postV1PartnersBankAccountsDelete(request: Requests.PostV1PartnersBankAccountsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersBankAccountsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/bank-accounts/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersBankAccountsDeleteResponse.self
        )
    }

    public func postV1PartnersBankAccountsList(request: Requests.PostV1PartnersBankAccountsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersBankAccountsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/bank-accounts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersBankAccountsListResponse.self
        )
    }

    public func postV1PartnersValidateVat(request: Requests.PostV1PartnersValidateVatRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersValidateVatResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/validate-vat",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersValidateVatResponse.self
        )
    }

    public func postV1PartnersCreate(request: Requests.PostV1PartnersCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersCreateResponse.self
        )
    }

    public func postV1PartnersFindOrCreate(request: Requests.PostV1PartnersFindOrCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersFindOrCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/find-or-create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersFindOrCreateResponse.self
        )
    }

    public func postV1PartnersGet(request: Requests.PostV1PartnersGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersGetResponse.self
        )
    }

    public func postV1PartnersUpdate(request: Requests.PostV1PartnersUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersUpdateResponse.self
        )
    }

    public func postV1PartnersDelete(request: Requests.PostV1PartnersDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersDeleteResponse.self
        )
    }

    public func postV1PartnersList(request: Requests.PostV1PartnersListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersListResponse.self
        )
    }

    public func postV1PartnersGroupsCreate(request: Requests.PostV1PartnersGroupsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersGroupsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/groups/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersGroupsCreateResponse.self
        )
    }

    public func postV1PartnersGroupsUpdate(request: Requests.PostV1PartnersGroupsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersGroupsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/groups/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersGroupsUpdateResponse.self
        )
    }

    public func postV1PartnersGroupsDelete(request: Requests.PostV1PartnersGroupsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersGroupsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/groups/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersGroupsDeleteResponse.self
        )
    }

    public func postV1PartnersGroupsList(request: Requests.PostV1PartnersGroupsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersGroupsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/groups/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersGroupsListResponse.self
        )
    }

    public func postV1PartnersStatusesCreate(request: Requests.PostV1PartnersStatusesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersStatusesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/statuses/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersStatusesCreateResponse.self
        )
    }

    public func postV1PartnersStatusesUpdate(request: Requests.PostV1PartnersStatusesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersStatusesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/statuses/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersStatusesUpdateResponse.self
        )
    }

    public func postV1PartnersStatusesDelete(request: Requests.PostV1PartnersStatusesDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersStatusesDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/statuses/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersStatusesDeleteResponse.self
        )
    }

    public func postV1PartnersStatusesList(request: Requests.PostV1PartnersStatusesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersStatusesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/statuses/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersStatusesListResponse.self
        )
    }

    public func postV1PartnersInquiriesCreate(request: Requests.PostV1PartnersInquiriesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersInquiriesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/inquiries/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersInquiriesCreateResponse.self
        )
    }

    public func postV1PartnersInquiriesUpdate(request: Requests.PostV1PartnersInquiriesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersInquiriesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/inquiries/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersInquiriesUpdateResponse.self
        )
    }

    public func postV1PartnersInquiriesGet(request: Requests.PostV1PartnersInquiriesGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersInquiriesGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/inquiries/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersInquiriesGetResponse.self
        )
    }

    public func postV1PartnersInquiriesList(request: Requests.PostV1PartnersInquiriesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersInquiriesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/inquiries/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersInquiriesListResponse.self
        )
    }

    public func postV1PartnersCreditCheck(request: Requests.PostV1PartnersCreditCheckRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PartnersCreditCheckResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/credit-check",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PartnersCreditCheckResponse.self
        )
    }
}