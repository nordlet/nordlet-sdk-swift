import Foundation

public final class AccountClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Create a sign-in link for the e-mail address and send it; the link is valid for 15 minutes and is consumed with `account/login-link/consume`. When an unused link was requested for the same address within the last minute, the call answers `sent` without sending another; after five links for the address within an hour it answers 429; otherwise the earlier unused sign-in links for the address stop working. `locale` sets the language of the e-mail and of the link; `app` set to `invoice` makes the link open the invoice app instead of the Nordlet app; `acceptTerms`, `acceptDpa` and `referralCode` are stored with the link and used when the address has no account yet.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func loginLinkRequest(request: Requests.LoginLinkRequestAccountRequest, requestOptions: RequestOptions? = nil) async throws -> LoginLinkRequestAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/login-link/request",
            body: request,
            requestOptions: requestOptions,
            responseType: LoginLinkRequestAccountResponse.self
        )
    }

    /// Exchange a sign-in link token for a session; an unknown, used or expired token is refused with 401. When no account has the address, one is created (`isNewUser`), which is refused with 422 unless the link was requested with `acceptTerms` and `acceptDpa`; a `referralCode` on the link records who referred the new user. The link `account/email/change-request` sends to the current address signs that user in and sends a confirmation link to the new address; that second link changes the address, deletes the user's other sessions and sends the previous address a link, valid for 24 hours, that changes the address back and deletes every session of the user. No link goes to the new address when another account has it, and the change and the change back are refused with 409 when another account has the address. When the user has two-factor authentication on, `twoFactorRequired` is true and the session can make no call other than `account/two-factor/verify` and `account/logout` until a code is entered.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func loginLinkConsume(request: Requests.LoginLinkConsumeAccountRequest, requestOptions: RequestOptions? = nil) async throws -> LoginLinkConsumeAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/login-link/consume",
            body: request,
            requestOptions: requestOptions,
            responseType: LoginLinkConsumeAccountResponse.self
        )
    }

    /// Delete the session the call was made with.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func logout(request: Requests.LogoutAccountRequest, requestOptions: RequestOptions? = nil) async throws -> LogoutAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/logout",
            body: request,
            requestOptions: requestOptions,
            responseType: LogoutAccountResponse.self
        )
    }

    /// Return the signed-in user, their active company and role in it, the companies they belong to and their consent state. `billing` is the billing account of the request's site (the `x-nordlet-site` header, `app` when absent) that pays for the active company (its payer, or the user when there is none or no company), with `isPayer` saying whether that is the user; `referralPoints` is the user's current points balance. An API key may call it too: the active company is then the one named in the `x-nordlet-company` header, and `companies` lists every company the key works in.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func me(request: Requests.MeAccountRequest, requestOptions: RequestOptions? = nil) async throws -> MeAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/me",
            body: request,
            requestOptions: requestOptions,
            responseType: MeAccountResponse.self
        )
    }

    /// List the members of the active company with their role.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func membersList(request: Requests.MembersListAccountRequest, requestOptions: RequestOptions? = nil) async throws -> MembersListAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/members/list",
            body: request,
            requestOptions: requestOptions,
            responseType: MembersListAccountResponse.self
        )
    }

    /// Change the role of a member of the active company; owners and admins may call it. Refused with 422 for the caller's own role and with 403 for the owner's, which only `account/members/transfer-ownership` changes.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func membersSetRole(request: Requests.MembersSetRoleAccountRequest, requestOptions: RequestOptions? = nil) async throws -> MembersSetRoleAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/members/set-role",
            body: request,
            requestOptions: requestOptions,
            responseType: MembersSetRoleAccountResponse.self
        )
    }

    /// Make another member the owner of the active company; the caller must be its owner and becomes an admin. Refused with 422 when `userId` is the caller. With `movePayer` the company's billing also moves to the new owner, which only the member currently paying for it may do (403).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func membersTransferOwnership(request: Requests.MembersTransferOwnershipAccountRequest, requestOptions: RequestOptions? = nil) async throws -> MembersTransferOwnershipAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/members/transfer-ownership",
            body: request,
            requestOptions: requestOptions,
            responseType: MembersTransferOwnershipAccountResponse.self
        )
    }

    /// Remove a member from the active company; owners and admins may call it. Their sessions lose this company as the active one and their API keys stop working in it. Refused with 422 for the caller themself and with 403 for the owner.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func membersRemove(request: Requests.MembersRemoveAccountRequest, requestOptions: RequestOptions? = nil) async throws -> MembersRemoveAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/members/remove",
            body: request,
            requestOptions: requestOptions,
            responseType: MembersRemoveAccountResponse.self
        )
    }

    /// Create an invitation to the active company for an e-mail address with the given role and send it by e-mail in `locale`; owners and admins may call it. The invitation is valid for 7 days and replaces an earlier pending one for the same address. Refused with 409 when the address already belongs to a member and with 429 (`rate_limited`) after 50 invitations by the user, in all their companies, within 24 hours.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invitesCreate(request: Requests.InvitesCreateAccountRequest, requestOptions: RequestOptions? = nil) async throws -> InvitesCreateAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/invites/create",
            body: request,
            requestOptions: requestOptions,
            responseType: InvitesCreateAccountResponse.self
        )
    }

    /// List the pending invitations of the active company; `expired` marks those past their expiry.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invitesList(request: Requests.InvitesListAccountRequest, requestOptions: RequestOptions? = nil) async throws -> InvitesListAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/invites/list",
            body: request,
            requestOptions: requestOptions,
            responseType: InvitesListAccountResponse.self
        )
    }

    /// Delete a pending invitation of the active company.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invitesRevoke(request: Requests.InvitesRevokeAccountRequest, requestOptions: RequestOptions? = nil) async throws -> InvitesRevokeAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/invites/revoke",
            body: request,
            requestOptions: requestOptions,
            responseType: InvitesRevokeAccountResponse.self
        )
    }

    /// Read a pending invitation by its token: the invited address, role and company name, whether it has expired and whether an account with that address already exists (`userExists`), in which case `account/invites/accept` must be called signed in as that account.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invitesGet(request: Requests.InvitesGetAccountRequest, requestOptions: RequestOptions? = nil) async throws -> InvitesGetAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/invites/get",
            body: request,
            requestOptions: requestOptions,
            responseType: InvitesGetAccountResponse.self
        )
    }

    /// Accept an invitation and return a session with the invited company active. When the address has no account, one is created with `name` and `locale`, which is refused with 422 unless `acceptTerms` and `acceptDpa` are true; when it has one, the call must be made signed in as that account (401 otherwise). An expired invitation is refused with 422.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invitesAccept(request: Requests.InvitesAcceptAccountRequest, requestOptions: RequestOptions? = nil) async throws -> InvitesAcceptAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/invites/accept",
            body: request,
            requestOptions: requestOptions,
            responseType: InvitesAcceptAccountResponse.self
        )
    }

    /// Set the user's language: with an active company it is stored on their membership of that company (`scope` = `membership`), otherwise on the user (`scope` = `user`).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func localeSet(request: Requests.LocaleSetAccountRequest, requestOptions: RequestOptions? = nil) async throws -> LocaleSetAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/locale/set",
            body: request,
            requestOptions: requestOptions,
            responseType: LocaleSetAccountResponse.self
        )
    }

    /// Create a company with the caller as its owner and payer, seed its chart of accounts from the template of `countryCode`, and make it the active company of the session. `timeZone` defaults to the country's, `isVatPayer` to true and `defaultInvoiceCurrency` to the base currency. Without a paid plan the caller may create only one sandbox company, which starts the free sandbox plan; a live company, a second sandbox company, or a sandbox company after the free sandbox has ended is refused with 402. Refused with 422 when `baseCurrency` is not a supported currency.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func companiesCreate(request: Requests.CompaniesCreateAccountRequest, requestOptions: RequestOptions? = nil) async throws -> CompaniesCreateAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CompaniesCreateAccountResponse.self
        )
    }

    /// Make one of the caller's companies the active company of the session. Refused with 403 when the caller is not a member, with 422 when the company is archived or deleted, and with 422 for an API key, which names the company in the `x-nordlet-company` header of each call instead.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func companiesSelect(request: Requests.CompaniesSelectAccountRequest, requestOptions: RequestOptions? = nil) async throws -> CompaniesSelectAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/select",
            body: request,
            requestOptions: requestOptions,
            responseType: CompaniesSelectAccountResponse.self
        )
    }

    /// Return the profile of the active company.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func companiesProfile(request: Requests.CompaniesProfileAccountRequest, requestOptions: RequestOptions? = nil) async throws -> CompaniesProfileAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/profile",
            body: request,
            requestOptions: requestOptions,
            responseType: CompaniesProfileAccountResponse.self
        )
    }

    /// Change the profile of the active company; owners and admins may call it. Only the fields sent are changed, and the nullable ones can be sent as null to clear them. `logo` stores a base64-encoded image as a file of the company and sets `logoFileId`. The country, base currency, sandbox flag and cash-basis flag are fixed at creation.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func companiesUpdate(request: Requests.CompaniesUpdateAccountRequest, requestOptions: RequestOptions? = nil) async throws -> CompaniesUpdateAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/update",
            body: request,
            requestOptions: requestOptions,
            responseType: CompaniesUpdateAccountResponse.self
        )
    }

    /// Set the company named by `companyId` to `archived`; the caller must be its owner. Every session that had it active loses it. Refused with 409 unless the company is active; `account/companies/activate` reverses it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func companiesArchive(request: Requests.CompaniesArchiveAccountRequest, requestOptions: RequestOptions? = nil) async throws -> CompaniesArchiveAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/archive",
            body: request,
            requestOptions: requestOptions,
            responseType: CompaniesArchiveAccountResponse.self
        )
    }

    /// Set the company named by `companyId` to `deleted`; the caller must be its owner, and every session that had it active loses it. A sandbox company is purged at once; any other is purged by the scheduled purge after `purgeAfter` (10 days) and can be restored until then with `account/companies/activate`. Refused with 409 when it is already deleted.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func companiesDelete(request: Requests.CompaniesDeleteAccountRequest, requestOptions: RequestOptions? = nil) async throws -> CompaniesDeleteAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: CompaniesDeleteAccountResponse.self
        )
    }

    /// Turn the sandbox company `companyId` into a live company and keep all of its data: from then on its filings go to the authorities' production systems and a delete is no longer purged at once. The caller must be the company's owner and payer and have a paid plan (a flat-rate subscription or per-request billing). Refused with 403 when the caller is not the owner or not the payer, 409 when the company is not a sandbox company and 402 when the caller has no paid plan.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func companiesConvertToLive(request: Requests.CompaniesConvertToLiveAccountRequest, requestOptions: RequestOptions? = nil) async throws -> CompaniesConvertToLiveAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/convert-to-live",
            body: request,
            requestOptions: requestOptions,
            responseType: CompaniesConvertToLiveAccountResponse.self
        )
    }

    /// Set an archived or deleted company named by `companyId` back to `active`; the caller must be its owner. Refused with 409 when it is already active.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func companiesActivate(request: Requests.CompaniesActivateAccountRequest, requestOptions: RequestOptions? = nil) async throws -> CompaniesActivateAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/companies/activate",
            body: request,
            requestOptions: requestOptions,
            responseType: CompaniesActivateAccountResponse.self
        )
    }

    /// Create an API key for the signed-in person and return the key itself once. Owners, admins and developers of the active company may call it. The key works in every company the person is a member of, with the rights of their role in each; every call names the company in the `x-nordlet-company` header. `scopes` defaults to the caller's scopes in the active company and may not exceed them (403); in each company the key's scopes are further limited to the person's role there. `expiresInDays` defaults to 90. The list shows the key's last four characters as `lastFour`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func apiKeysCreate(request: Requests.ApiKeysCreateAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ApiKeysCreateAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/api-keys/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ApiKeysCreateAccountResponse.self
        )
    }

    /// List the signed-in person's API keys, including expired and revoked ones. `lastFour` is the last four characters of the key (null for keys created before it was recorded); for an app connected through OAuth it is those of the current access token.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func apiKeysList(request: Requests.ApiKeysListAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ApiKeysListAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/api-keys/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ApiKeysListAccountResponse.self
        )
    }

    /// Create a new key with the name and scopes of the signed-in person's key `id` and return it once; the old key keeps working for `overlapHours` and then expires, and its `replacedByKeyId` points to the new one. `expiresInDays` applies to the new key and defaults to 90. Refused with 409 when the old key is revoked or belongs to an app connected through OAuth, which renews its own access.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func apiKeysRotate(request: Requests.ApiKeysRotateAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ApiKeysRotateAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/api-keys/rotate",
            body: request,
            requestOptions: requestOptions,
            responseType: ApiKeysRotateAccountResponse.self
        )
    }

    /// Revoke one of the signed-in person's API keys at once.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func apiKeysRevoke(request: Requests.ApiKeysRevokeAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ApiKeysRevokeAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/api-keys/revoke",
            body: request,
            requestOptions: requestOptions,
            responseType: ApiKeysRevokeAccountResponse.self
        )
    }

    /// Record the signed-in user's acceptance of the current Terms of Service and Data Processing Agreement versions and return the consent state.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func consentAccept(request: Requests.ConsentAcceptAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ConsentAcceptAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/consent/accept",
            body: request,
            requestOptions: requestOptions,
            responseType: ConsentAcceptAccountResponse.self
        )
    }

    /// Set the signed-in user's name; null or a blank string clears it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func profileUpdate(request: Requests.ProfileUpdateAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ProfileUpdateAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/profile/update",
            body: request,
            requestOptions: requestOptions,
            responseType: ProfileUpdateAccountResponse.self
        )
    }

    /// Send a confirmation link for the change to `newEmail` to the user's current address. When it is consumed with `account/login-link/consume`, a second link goes to `newEmail`, and the address changes when that one is consumed. When an unused link for `newEmail` was created within the last minute, the call answers `sent` without sending another. Refused with 422 when it is already the user's address and with 429 (`rate_limited`) after five requests by the user within 24 hours. When another account has `newEmail`, the call answers the same, the confirmation link signs the user in and no link goes to `newEmail`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func emailChangeRequest(request: Requests.EmailChangeRequestAccountRequest, requestOptions: RequestOptions? = nil) async throws -> EmailChangeRequestAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/email/change-request",
            body: request,
            requestOptions: requestOptions,
            responseType: EmailChangeRequestAccountResponse.self
        )
    }

    /// List the signed-in user's sessions that have not expired: a session ends 30 days after sign-in or after 7 days without a call. `current` marks the one the call was made with.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func sessionsList(request: Requests.SessionsListAccountRequest, requestOptions: RequestOptions? = nil) async throws -> SessionsListAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/sessions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: SessionsListAccountResponse.self
        )
    }

    /// Delete one of the signed-in user's sessions.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func sessionsRevoke(request: Requests.SessionsRevokeAccountRequest, requestOptions: RequestOptions? = nil) async throws -> SessionsRevokeAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/sessions/revoke",
            body: request,
            requestOptions: requestOptions,
            responseType: SessionsRevokeAccountResponse.self
        )
    }

    /// Delete every session of the signed-in user except the one the call was made with, and return how many were deleted.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func sessionsRevokeOthers(request: Requests.SessionsRevokeOthersAccountRequest, requestOptions: RequestOptions? = nil) async throws -> SessionsRevokeOthersAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/sessions/revoke-others",
            body: request,
            requestOptions: requestOptions,
            responseType: SessionsRevokeOthersAccountResponse.self
        )
    }

    /// Return the user's profile, consent state, memberships, unexpired sessions, sign-in events, API keys (without the keys), connected OAuth apps, referral points, billing accounts (`billing` is the `app` site's, `billingAccounts` has one per site), credit transactions and every audit entry they made in their companies.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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

    /// Return the user's referral code (allocated on first call) and sign-up link, their points balance, the number of accounts they referred and the last 50 points entries. `rates.perEur` is the points the referrer earns per euro a referred user tops up, `rates.pointCents` the credit one point converts to with `account/referral/convert`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func referralGet(request: Requests.ReferralGetAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ReferralGetAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/referral/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ReferralGetAccountResponse.self
        )
    }

    /// Convert `points` of the user's referral points into credit on their billing account at `rates.pointCents` per point, booked as an `adjustment` credit transaction; a billing account past its trial is set to active when the new balance allows. Refused with 422 when the user has fewer points than requested.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func referralConvert(request: Requests.ReferralConvertAccountRequest, requestOptions: RequestOptions? = nil) async throws -> ReferralConvertAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/referral/convert",
            body: request,
            requestOptions: requestOptions,
            responseType: ReferralConvertAccountResponse.self
        )
    }

    /// Return the signed-in user's saved column list and page size for the table `tableKey`; both are null when nothing is saved.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func tableSettingsGet(request: Requests.TableSettingsGetAccountRequest, requestOptions: RequestOptions? = nil) async throws -> TableSettingsGetAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/table-settings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: TableSettingsGetAccountResponse.self
        )
    }

    /// Save the signed-in user's column list and page size for the table `tableKey`; only the fields sent are changed, and null clears one.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func tableSettingsSet(request: Requests.TableSettingsSetAccountRequest, requestOptions: RequestOptions? = nil) async throws -> TableSettingsSetAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/table-settings/set",
            body: request,
            requestOptions: requestOptions,
            responseType: TableSettingsSetAccountResponse.self
        )
    }

    /// List the signed-in user's saved table settings.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func tableSettingsList(request: Requests.TableSettingsListAccountRequest, requestOptions: RequestOptions? = nil) async throws -> TableSettingsListAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/table-settings/list",
            body: request,
            requestOptions: requestOptions,
            responseType: TableSettingsListAccountResponse.self
        )
    }

    /// Check an OAuth authorization request of an app that wants to connect to Nordlet (such as Claude) and return the name the app registered, the address the signed-in person is sent back to and the scopes asked for. Refused with 422 when the request is invalid: unknown app, redirect address not registered for it, no PKCE (S256), unknown scope or a resource other than the MCP server.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func oauthAuthorizeDescribe(request: Requests.OauthAuthorizeDescribeAccountRequest, requestOptions: RequestOptions? = nil) async throws -> OauthAuthorizeDescribeAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/oauth/authorize/describe",
            body: request,
            requestOptions: requestOptions,
            responseType: OauthAuthorizeDescribeAccountResponse.self
        )
    }

    /// Allow the app of an OAuth authorization request to act for the signed-in person and return the app's redirect address with a one-time authorization code (valid for 5 minutes). The app exchanges the code at `/oauth/token` for an access token that works like an API key of the person: in every company they are a member of, with the rights of their role there. The connection is listed among the person's API keys under the app's name and is revoked there. Refused with 422 like `account/oauth/authorize/describe`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func oauthAuthorizeApprove(request: Requests.OauthAuthorizeApproveAccountRequest, requestOptions: RequestOptions? = nil) async throws -> OauthAuthorizeApproveAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/oauth/authorize/approve",
            body: request,
            requestOptions: requestOptions,
            responseType: OauthAuthorizeApproveAccountResponse.self
        )
    }

    /// Refuse an OAuth authorization request and return the app's redirect address with the error `access_denied`. Refused with 422 like `account/oauth/authorize/describe`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func oauthAuthorizeDeny(request: Requests.OauthAuthorizeDenyAccountRequest, requestOptions: RequestOptions? = nil) async throws -> OauthAuthorizeDenyAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/oauth/authorize/deny",
            body: request,
            requestOptions: requestOptions,
            responseType: OauthAuthorizeDenyAccountResponse.self
        )
    }

    /// Return the signed-in user's two-factor authentication state: `enabled`, `required` (true for platform administrators, who cannot use platform administration without it), the number of unused recovery codes and, while a setup started with `two-factor/setup` is not finished, the key to add to an authenticator app as `setup`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func twoFactorGet(request: Requests.TwoFactorGetAccountRequest, requestOptions: RequestOptions? = nil) async throws -> TwoFactorGetAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/two-factor/get",
            body: request,
            requestOptions: requestOptions,
            responseType: TwoFactorGetAccountResponse.self
        )
    }

    /// Start setting up two-factor authentication: create a new key for an authenticator app (time-based codes, RFC 6238: SHA-1, 6 digits, 30 seconds) and return it with its `otpauth://` address. Nothing changes at sign-in until `two-factor/enable` is called with a code from the app. Refused with 409 when two-factor authentication is already on.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func twoFactorSetup(request: Requests.TwoFactorSetupAccountRequest, requestOptions: RequestOptions? = nil) async throws -> TwoFactorSetupAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/two-factor/setup",
            body: request,
            requestOptions: requestOptions,
            responseType: TwoFactorSetupAccountResponse.self
        )
    }

    /// Turn on two-factor authentication with a current code from the authenticator app set up by `two-factor/setup`. Returns 10 recovery codes, shown only this once; each one works once in place of a code. The user's other sessions are deleted. From then on a session created by a sign-in link can make no call other than `two-factor/verify` and `account/logout` until a code is entered. A wrong code answers 422; after 5 wrong codes the session is deleted (401).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func twoFactorEnable(request: Requests.TwoFactorEnableAccountRequest, requestOptions: RequestOptions? = nil) async throws -> TwoFactorEnableAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/two-factor/enable",
            body: request,
            requestOptions: requestOptions,
            responseType: TwoFactorEnableAccountResponse.self
        )
    }

    /// Finish signing in when `account/login-link/consume` answered `twoFactorRequired`: send a current code from the authenticator app or an unused recovery code. A wrong code answers 422; after 5 wrong codes the session is deleted (401) and the user signs in again with a new link.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func twoFactorVerify(request: Requests.TwoFactorVerifyAccountRequest, requestOptions: RequestOptions? = nil) async throws -> TwoFactorVerifyAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/two-factor/verify",
            body: request,
            requestOptions: requestOptions,
            responseType: TwoFactorVerifyAccountResponse.self
        )
    }

    /// Replace the recovery codes with 10 new ones, shown only this once, after a current code from the authenticator app. The earlier codes stop working.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func twoFactorRecoveryCodesRegenerate(request: Requests.TwoFactorRecoveryCodesRegenerateAccountRequest, requestOptions: RequestOptions? = nil) async throws -> TwoFactorRecoveryCodesRegenerateAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/two-factor/recovery-codes/regenerate",
            body: request,
            requestOptions: requestOptions,
            responseType: TwoFactorRecoveryCodesRegenerateAccountResponse.self
        )
    }

    /// Turn off two-factor authentication after a current code from the authenticator app or an unused recovery code; the key and the recovery codes are deleted. Refused with 422 for a platform administrator, for whom it is required.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func twoFactorDisable(request: Requests.TwoFactorDisableAccountRequest, requestOptions: RequestOptions? = nil) async throws -> TwoFactorDisableAccountResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/account/two-factor/disable",
            body: request,
            requestOptions: requestOptions,
            responseType: TwoFactorDisableAccountResponse.self
        )
    }
}