import Foundation

public final class PartnersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func addressesCreate(request: Requests.AddressesCreatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> AddressesCreatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/addresses/create",
            body: request,
            requestOptions: requestOptions,
            responseType: AddressesCreatePartnersResponse.self
        )
    }

    public func addressesUpdate(request: Requests.AddressesUpdatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> AddressesUpdatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/addresses/update",
            body: request,
            requestOptions: requestOptions,
            responseType: AddressesUpdatePartnersResponse.self
        )
    }

    public func addressesDelete(request: Requests.AddressesDeletePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> AddressesDeletePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/addresses/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: AddressesDeletePartnersResponse.self
        )
    }

    public func addressesList(request: Requests.AddressesListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> AddressesListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/addresses/list",
            body: request,
            requestOptions: requestOptions,
            responseType: AddressesListPartnersResponse.self
        )
    }

    public func contactsCreate(request: Requests.ContactsCreatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> ContactsCreatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/contacts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ContactsCreatePartnersResponse.self
        )
    }

    public func contactsUpdate(request: Requests.ContactsUpdatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> ContactsUpdatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/contacts/update",
            body: request,
            requestOptions: requestOptions,
            responseType: ContactsUpdatePartnersResponse.self
        )
    }

    public func contactsDelete(request: Requests.ContactsDeletePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> ContactsDeletePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/contacts/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: ContactsDeletePartnersResponse.self
        )
    }

    public func contactsList(request: Requests.ContactsListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> ContactsListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/contacts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ContactsListPartnersResponse.self
        )
    }

    public func bankAccountsCreate(request: Requests.BankAccountsCreatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> BankAccountsCreatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/bank-accounts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: BankAccountsCreatePartnersResponse.self
        )
    }

    public func bankAccountsUpdate(request: Requests.BankAccountsUpdatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> BankAccountsUpdatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/bank-accounts/update",
            body: request,
            requestOptions: requestOptions,
            responseType: BankAccountsUpdatePartnersResponse.self
        )
    }

    public func bankAccountsDelete(request: Requests.BankAccountsDeletePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> BankAccountsDeletePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/bank-accounts/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: BankAccountsDeletePartnersResponse.self
        )
    }

    public func bankAccountsList(request: Requests.BankAccountsListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> BankAccountsListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/bank-accounts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: BankAccountsListPartnersResponse.self
        )
    }

    public func filesList(request: Requests.FilesListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> FilesListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/files/list",
            body: request,
            requestOptions: requestOptions,
            responseType: FilesListPartnersResponse.self
        )
    }

    public func debtRemindersPreview(request: Requests.DebtRemindersPreviewPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> DebtRemindersPreviewPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/debt-reminders/preview",
            body: request,
            requestOptions: requestOptions,
            responseType: DebtRemindersPreviewPartnersResponse.self
        )
    }

    public func debtRemindersList(request: Requests.DebtRemindersListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> DebtRemindersListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/debt-reminders/list",
            body: request,
            requestOptions: requestOptions,
            responseType: DebtRemindersListPartnersResponse.self
        )
    }

    public func validateVat(request: Requests.ValidateVatPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> ValidateVatPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/validate-vat",
            body: request,
            requestOptions: requestOptions,
            responseType: ValidateVatPartnersResponse.self
        )
    }

    public func vatReviewsList(request: Requests.VatReviewsListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> VatReviewsListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/vat-reviews/list",
            body: request,
            requestOptions: requestOptions,
            responseType: VatReviewsListPartnersResponse.self
        )
    }

    public func vatReviewsResolve(request: Requests.VatReviewsResolvePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> VatReviewsResolvePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/vat-reviews/resolve",
            body: request,
            requestOptions: requestOptions,
            responseType: VatReviewsResolvePartnersResponse.self
        )
    }

    public func create(request: Requests.CreatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> CreatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreatePartnersResponse.self
        )
    }

    public func findOrCreate(request: Requests.FindOrCreatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> FindOrCreatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/find-or-create",
            body: request,
            requestOptions: requestOptions,
            responseType: FindOrCreatePartnersResponse.self
        )
    }

    public func get(request: Requests.GetPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> GetPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GetPartnersResponse.self
        )
    }

    public func update(request: Requests.UpdatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> UpdatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdatePartnersResponse.self
        )
    }

    public func delete(request: Requests.DeletePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> DeletePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: DeletePartnersResponse.self
        )
    }

    /// Removes birth date, self-employment certificate number, email, phone, address, notes, contacts, addresses and bank accounts, then hides the partner. The name, code and VAT number stay because issued invoices must keep identifying the counterparty for the statutory retention period.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func anonymize(request: Requests.AnonymizePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> AnonymizePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/anonymize",
            body: request,
            requestOptions: requestOptions,
            responseType: AnonymizePartnersResponse.self
        )
    }

    public func list(request: Requests.ListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> ListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ListPartnersResponse.self
        )
    }

    public func groupsCreate(request: Requests.GroupsCreatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsCreatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/groups/create",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsCreatePartnersResponse.self
        )
    }

    public func groupsUpdate(request: Requests.GroupsUpdatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsUpdatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/groups/update",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsUpdatePartnersResponse.self
        )
    }

    public func groupsDelete(request: Requests.GroupsDeletePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsDeletePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/groups/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsDeletePartnersResponse.self
        )
    }

    public func groupsList(request: Requests.GroupsListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/groups/list",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsListPartnersResponse.self
        )
    }

    public func statusesCreate(request: Requests.StatusesCreatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> StatusesCreatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/statuses/create",
            body: request,
            requestOptions: requestOptions,
            responseType: StatusesCreatePartnersResponse.self
        )
    }

    public func statusesUpdate(request: Requests.StatusesUpdatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> StatusesUpdatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/statuses/update",
            body: request,
            requestOptions: requestOptions,
            responseType: StatusesUpdatePartnersResponse.self
        )
    }

    public func statusesDelete(request: Requests.StatusesDeletePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> StatusesDeletePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/statuses/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: StatusesDeletePartnersResponse.self
        )
    }

    public func statusesList(request: Requests.StatusesListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> StatusesListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/statuses/list",
            body: request,
            requestOptions: requestOptions,
            responseType: StatusesListPartnersResponse.self
        )
    }

    public func inquiriesCreate(request: Requests.InquiriesCreatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> InquiriesCreatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/inquiries/create",
            body: request,
            requestOptions: requestOptions,
            responseType: InquiriesCreatePartnersResponse.self
        )
    }

    public func inquiriesUpdate(request: Requests.InquiriesUpdatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> InquiriesUpdatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/inquiries/update",
            body: request,
            requestOptions: requestOptions,
            responseType: InquiriesUpdatePartnersResponse.self
        )
    }

    public func inquiriesGet(request: Requests.InquiriesGetPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> InquiriesGetPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/inquiries/get",
            body: request,
            requestOptions: requestOptions,
            responseType: InquiriesGetPartnersResponse.self
        )
    }

    public func inquiriesList(request: Requests.InquiriesListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> InquiriesListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/inquiries/list",
            body: request,
            requestOptions: requestOptions,
            responseType: InquiriesListPartnersResponse.self
        )
    }

    public func creditCheck(request: Requests.CreditCheckPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> CreditCheckPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/credit-check",
            body: request,
            requestOptions: requestOptions,
            responseType: CreditCheckPartnersResponse.self
        )
    }
}