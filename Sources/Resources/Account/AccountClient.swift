import Foundation

public final class AccountClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1AccountLoginLinkRequest(request: Requests.PostV1AccountLoginLinkRequestRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountLoginLinkRequestResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/login-link/request",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountLoginLinkRequestResponse.self
        )
    }

    public func postV1AccountLoginLinkConsume(request: Requests.PostV1AccountLoginLinkConsumeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountLoginLinkConsumeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/login-link/consume",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountLoginLinkConsumeResponse.self
        )
    }

    public func postV1AccountLogout(request: Requests.PostV1AccountLogoutRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountLogoutResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/logout",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountLogoutResponse.self
        )
    }

    public func postV1AccountMe(request: Requests.PostV1AccountMeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountMeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/me",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountMeResponse.self
        )
    }

    public func postV1AccountMembersList(request: Requests.PostV1AccountMembersListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountMembersListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/members/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountMembersListResponse.self
        )
    }

    public func postV1AccountMembersSetRole(request: Requests.PostV1AccountMembersSetRoleRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountMembersSetRoleResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/members/set-role",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountMembersSetRoleResponse.self
        )
    }

    public func postV1AccountMembersRemove(request: Requests.PostV1AccountMembersRemoveRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountMembersRemoveResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/members/remove",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountMembersRemoveResponse.self
        )
    }

    public func postV1AccountInvitesCreate(request: Requests.PostV1AccountInvitesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountInvitesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/invites/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountInvitesCreateResponse.self
        )
    }

    public func postV1AccountInvitesList(request: Requests.PostV1AccountInvitesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountInvitesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/invites/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountInvitesListResponse.self
        )
    }

    public func postV1AccountInvitesRevoke(request: Requests.PostV1AccountInvitesRevokeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountInvitesRevokeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/invites/revoke",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountInvitesRevokeResponse.self
        )
    }

    public func postV1AccountInvitesGet(request: Requests.PostV1AccountInvitesGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountInvitesGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/invites/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountInvitesGetResponse.self
        )
    }

    public func postV1AccountInvitesAccept(request: Requests.PostV1AccountInvitesAcceptRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountInvitesAcceptResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/invites/accept",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountInvitesAcceptResponse.self
        )
    }

    public func postV1AccountLocaleSet(request: Requests.PostV1AccountLocaleSetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountLocaleSetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/locale/set",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountLocaleSetResponse.self
        )
    }

    public func postV1AccountCompaniesCreate(request: Requests.PostV1AccountCompaniesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountCompaniesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountCompaniesCreateResponse.self
        )
    }

    public func postV1AccountCompaniesSelect(request: Requests.PostV1AccountCompaniesSelectRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountCompaniesSelectResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/select",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountCompaniesSelectResponse.self
        )
    }

    public func postV1AccountCompaniesProfile(request: Requests.PostV1AccountCompaniesProfileRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountCompaniesProfileResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/profile",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountCompaniesProfileResponse.self
        )
    }

    public func postV1AccountCompaniesUpdate(request: Requests.PostV1AccountCompaniesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountCompaniesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountCompaniesUpdateResponse.self
        )
    }

    public func postV1AccountCompaniesArchive(request: Requests.PostV1AccountCompaniesArchiveRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountCompaniesArchiveResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/archive",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountCompaniesArchiveResponse.self
        )
    }

    public func postV1AccountCompaniesDelete(request: Requests.PostV1AccountCompaniesDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountCompaniesDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountCompaniesDeleteResponse.self
        )
    }

    public func postV1AccountCompaniesActivate(request: Requests.PostV1AccountCompaniesActivateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountCompaniesActivateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/activate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountCompaniesActivateResponse.self
        )
    }

    public func postV1AccountApiKeysCreate(request: Requests.PostV1AccountApiKeysCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountApiKeysCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/api-keys/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountApiKeysCreateResponse.self
        )
    }

    public func postV1AccountApiKeysList(request: Requests.PostV1AccountApiKeysListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountApiKeysListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/api-keys/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountApiKeysListResponse.self
        )
    }

    public func postV1AccountApiKeysRevoke(request: Requests.PostV1AccountApiKeysRevokeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AccountApiKeysRevokeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/api-keys/revoke",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AccountApiKeysRevokeResponse.self
        )
    }
}