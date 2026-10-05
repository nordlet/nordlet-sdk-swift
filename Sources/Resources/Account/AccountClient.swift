import Foundation

public final class AccountClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func loginLinkRequest(request: Requests.LoginLinkRequestAccountRequest, requestOptions: RequestOptions? = nil) async throws -> LoginLinkRequestAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/login-link/request",
            body: request,
            requestOptions: requestOptions,
            responseType: LoginLinkRequestAccountResponse.self
        )
    }

    public func loginLinkConsume(request: Requests.LoginLinkConsumeAccountRequest, requestOptions: RequestOptions? = nil) async throws -> LoginLinkConsumeAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/login-link/consume",
            body: request,
            requestOptions: requestOptions,
            responseType: LoginLinkConsumeAccountResponse.self
        )
    }

    public func logout(request: Requests.LogoutAccountRequest, requestOptions: RequestOptions? = nil) async throws -> LogoutAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/logout",
            body: request,
            requestOptions: requestOptions,
            responseType: LogoutAccountResponse.self
        )
    }

    public func me(request: Requests.MeAccountRequest, requestOptions: RequestOptions? = nil) async throws -> MeAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/me",
            body: request,
            requestOptions: requestOptions,
            responseType: MeAccountResponse.self
        )
    }

    public func membersList(request: Requests.MembersListAccountRequest, requestOptions: RequestOptions? = nil) async throws -> MembersListAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/members/list",
            body: request,
            requestOptions: requestOptions,
            responseType: MembersListAccountResponse.self
        )
    }

    public func membersSetRole(request: Requests.MembersSetRoleAccountRequest, requestOptions: RequestOptions? = nil) async throws -> MembersSetRoleAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/members/set-role",
            body: request,
            requestOptions: requestOptions,
            responseType: MembersSetRoleAccountResponse.self
        )
    }

    public func membersTransferOwnership(request: Requests.MembersTransferOwnershipAccountRequest, requestOptions: RequestOptions? = nil) async throws -> MembersTransferOwnershipAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/members/transfer-ownership",
            body: request,
            requestOptions: requestOptions,
            responseType: MembersTransferOwnershipAccountResponse.self
        )
    }

    public func membersRemove(request: Requests.MembersRemoveAccountRequest, requestOptions: RequestOptions? = nil) async throws -> MembersRemoveAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/members/remove",
            body: request,
            requestOptions: requestOptions,
            responseType: MembersRemoveAccountResponse.self
        )
    }

    public func invitesCreate(request: Requests.InvitesCreateAccountRequest, requestOptions: RequestOptions? = nil) async throws -> InvitesCreateAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/invites/create",
            body: request,
            requestOptions: requestOptions,
            responseType: InvitesCreateAccountResponse.self
        )
    }

    public func invitesList(request: Requests.InvitesListAccountRequest, requestOptions: RequestOptions? = nil) async throws -> InvitesListAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/invites/list",
            body: request,
            requestOptions: requestOptions,
            responseType: InvitesListAccountResponse.self
        )
    }

    public func invitesRevoke(request: Requests.InvitesRevokeAccountRequest, requestOptions: RequestOptions? = nil) async throws -> InvitesRevokeAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/invites/revoke",
            body: request,
            requestOptions: requestOptions,
            responseType: InvitesRevokeAccountResponse.self
        )
    }

    public func invitesGet(request: Requests.InvitesGetAccountRequest, requestOptions: RequestOptions? = nil) async throws -> InvitesGetAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/invites/get",
            body: request,
            requestOptions: requestOptions,
            responseType: InvitesGetAccountResponse.self
        )
    }

    public func invitesAccept(request: Requests.InvitesAcceptAccountRequest, requestOptions: RequestOptions? = nil) async throws -> InvitesAcceptAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/invites/accept",
            body: request,
            requestOptions: requestOptions,
            responseType: InvitesAcceptAccountResponse.self
        )
    }

    public func localeSet(request: Requests.LocaleSetAccountRequest, requestOptions: RequestOptions? = nil) async throws -> LocaleSetAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/locale/set",
            body: request,
            requestOptions: requestOptions,
            responseType: LocaleSetAccountResponse.self
        )
    }

    public func companiesCreate(request: Requests.CompaniesCreateAccountRequest, requestOptions: RequestOptions? = nil) async throws -> CompaniesCreateAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CompaniesCreateAccountResponse.self
        )
    }

    public func companiesSelect(request: Requests.CompaniesSelectAccountRequest, requestOptions: RequestOptions? = nil) async throws -> CompaniesSelectAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/select",
            body: request,
            requestOptions: requestOptions,
            responseType: CompaniesSelectAccountResponse.self
        )
    }

    public func companiesProfile(request: Requests.CompaniesProfileAccountRequest, requestOptions: RequestOptions? = nil) async throws -> CompaniesProfileAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/profile",
            body: request,
            requestOptions: requestOptions,
            responseType: CompaniesProfileAccountResponse.self
        )
    }

    public func companiesUpdate(request: Requests.CompaniesUpdateAccountRequest, requestOptions: RequestOptions? = nil) async throws -> CompaniesUpdateAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/update",
            body: request,
            requestOptions: requestOptions,
            responseType: CompaniesUpdateAccountResponse.self
        )
    }

    public func companiesArchive(request: Requests.CompaniesArchiveAccountRequest, requestOptions: RequestOptions? = nil) async throws -> CompaniesArchiveAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/archive",
            body: request,
            requestOptions: requestOptions,
            responseType: CompaniesArchiveAccountResponse.self
        )
    }

    public func companiesDelete(request: Requests.CompaniesDeleteAccountRequest, requestOptions: RequestOptions? = nil) async throws -> CompaniesDeleteAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: CompaniesDeleteAccountResponse.self
        )
    }

    public func companiesActivate(request: Requests.CompaniesActivateAccountRequest, requestOptions: RequestOptions? = nil) async throws -> CompaniesActivateAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/activate",
            body: request,
            requestOptions: requestOptions,
            responseType: CompaniesActivateAccountResponse.self
        )
    }

    public func apiKeysCreate(request: Requests.ApiKeysCreateAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ApiKeysCreateAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/api-keys/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ApiKeysCreateAccountResponse.self
        )
    }

    public func apiKeysList(request: Requests.ApiKeysListAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ApiKeysListAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/api-keys/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ApiKeysListAccountResponse.self
        )
    }

    public func apiKeysRotate(request: Requests.ApiKeysRotateAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ApiKeysRotateAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/api-keys/rotate",
            body: request,
            requestOptions: requestOptions,
            responseType: ApiKeysRotateAccountResponse.self
        )
    }

    public func apiKeysRevoke(request: Requests.ApiKeysRevokeAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ApiKeysRevokeAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/api-keys/revoke",
            body: request,
            requestOptions: requestOptions,
            responseType: ApiKeysRevokeAccountResponse.self
        )
    }

    public func consentAccept(request: Requests.ConsentAcceptAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ConsentAcceptAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/consent/accept",
            body: request,
            requestOptions: requestOptions,
            responseType: ConsentAcceptAccountResponse.self
        )
    }

    public func profileUpdate(request: Requests.ProfileUpdateAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ProfileUpdateAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/profile/update",
            body: request,
            requestOptions: requestOptions,
            responseType: ProfileUpdateAccountResponse.self
        )
    }

    public func emailChangeRequest(request: Requests.EmailChangeRequestAccountRequest, requestOptions: RequestOptions? = nil) async throws -> EmailChangeRequestAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/email/change-request",
            body: request,
            requestOptions: requestOptions,
            responseType: EmailChangeRequestAccountResponse.self
        )
    }

    public func sessionsList(request: Requests.SessionsListAccountRequest, requestOptions: RequestOptions? = nil) async throws -> SessionsListAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/sessions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: SessionsListAccountResponse.self
        )
    }

    public func sessionsRevoke(request: Requests.SessionsRevokeAccountRequest, requestOptions: RequestOptions? = nil) async throws -> SessionsRevokeAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/sessions/revoke",
            body: request,
            requestOptions: requestOptions,
            responseType: SessionsRevokeAccountResponse.self
        )
    }

    public func sessionsRevokeOthers(request: Requests.SessionsRevokeOthersAccountRequest, requestOptions: RequestOptions? = nil) async throws -> SessionsRevokeOthersAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/sessions/revoke-others",
            body: request,
            requestOptions: requestOptions,
            responseType: SessionsRevokeOthersAccountResponse.self
        )
    }

    public func export(request: Requests.ExportAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ExportAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/export",
            body: request,
            requestOptions: requestOptions,
            responseType: ExportAccountResponse.self
        )
    }

    /// Removes the user: sessions, sign-in links, memberships and pending invitations are deleted at once; the email and name are replaced by an anonymous placeholder immediately and the remaining row is removed after 30 days. Refused while the user still owns or pays for a company that is not deleted.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(request: Requests.DeleteAccountRequest, requestOptions: RequestOptions? = nil) async throws -> DeleteAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: DeleteAccountResponse.self
        )
    }

    public func referralGet(request: Requests.ReferralGetAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ReferralGetAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/referral/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ReferralGetAccountResponse.self
        )
    }

    public func referralConvert(request: Requests.ReferralConvertAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ReferralConvertAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/referral/convert",
            body: request,
            requestOptions: requestOptions,
            responseType: ReferralConvertAccountResponse.self
        )
    }

    public func tableSettingsGet(request: Requests.TableSettingsGetAccountRequest, requestOptions: RequestOptions? = nil) async throws -> TableSettingsGetAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/table-settings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: TableSettingsGetAccountResponse.self
        )
    }

    public func tableSettingsSet(request: Requests.TableSettingsSetAccountRequest, requestOptions: RequestOptions? = nil) async throws -> TableSettingsSetAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/table-settings/set",
            body: request,
            requestOptions: requestOptions,
            responseType: TableSettingsSetAccountResponse.self
        )
    }

    public func tableSettingsList(request: Requests.TableSettingsListAccountRequest, requestOptions: RequestOptions? = nil) async throws -> TableSettingsListAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/table-settings/list",
            body: request,
            requestOptions: requestOptions,
            responseType: TableSettingsListAccountResponse.self
        )
    }
}