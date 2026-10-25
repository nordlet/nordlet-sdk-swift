import Foundation

public final class PartnersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Adds an address of type billing, shipping, registered or other to the partner in `partnerId`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addressesCreate(request: Requests.AddressesCreatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> AddressesCreatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/addresses/create",
            body: request,
            requestOptions: requestOptions,
            responseType: AddressesCreatePartnersResponse.self
        )
    }

    /// Changes the given fields of a partner address.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addressesUpdate(request: Requests.AddressesUpdatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> AddressesUpdatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/addresses/update",
            body: request,
            requestOptions: requestOptions,
            responseType: AddressesUpdatePartnersResponse.self
        )
    }

    /// Deletes a partner address.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addressesDelete(request: Requests.AddressesDeletePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> AddressesDeletePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/addresses/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: AddressesDeletePartnersResponse.self
        )
    }

    /// Lists partner addresses; filterable by `partnerId`, `type` and `city`, sortable by `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func addressesList(request: Requests.AddressesListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> AddressesListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/addresses/list",
            body: request,
            requestOptions: requestOptions,
            responseType: AddressesListPartnersResponse.self
        )
    }

    /// Adds a contact person to the partner in `partnerId`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func contactsCreate(request: Requests.ContactsCreatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> ContactsCreatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/contacts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ContactsCreatePartnersResponse.self
        )
    }

    /// Changes the given fields of a partner contact.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func contactsUpdate(request: Requests.ContactsUpdatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> ContactsUpdatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/contacts/update",
            body: request,
            requestOptions: requestOptions,
            responseType: ContactsUpdatePartnersResponse.self
        )
    }

    /// Deletes a partner contact.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func contactsDelete(request: Requests.ContactsDeletePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> ContactsDeletePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/contacts/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: ContactsDeletePartnersResponse.self
        )
    }

    /// Lists partner contacts; filterable by `partnerId`, `name` and `email`, sortable by `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func contactsList(request: Requests.ContactsListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> ContactsListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/contacts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ContactsListPartnersResponse.self
        )
    }

    /// Adds a bank account to the partner in `partnerId`. The IBAN is stored without spaces in upper case; an IBAN the partner already has is refused with 409. With `isDefault` true the partner's other accounts lose their default mark.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func bankAccountsCreate(request: Requests.BankAccountsCreatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> BankAccountsCreatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/bank-accounts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: BankAccountsCreatePartnersResponse.self
        )
    }

    /// Changes the given fields of a partner bank account. A new IBAN is stored without spaces in upper case and is refused with 409 when the partner already has it; when the account is the default after the change, the partner's other accounts lose their default mark.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func bankAccountsUpdate(request: Requests.BankAccountsUpdatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> BankAccountsUpdatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/bank-accounts/update",
            body: request,
            requestOptions: requestOptions,
            responseType: BankAccountsUpdatePartnersResponse.self
        )
    }

    /// Deletes a partner bank account.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func bankAccountsDelete(request: Requests.BankAccountsDeletePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> BankAccountsDeletePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/bank-accounts/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: BankAccountsDeletePartnersResponse.self
        )
    }

    /// Lists partner bank accounts; filterable by `partnerId` and `iban`, sortable by `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func bankAccountsList(request: Requests.BankAccountsListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> BankAccountsListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/bank-accounts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: BankAccountsListPartnersResponse.self
        )
    }

    /// Lists the files attached to a partner, newest first. `partners/create` attaches one with `documentRef`, and `leads/convert` moves the lead's files here.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func filesList(request: Requests.FilesListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> FilesListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/files/list",
            body: request,
            requestOptions: requestOptions,
            responseType: FilesListPartnersResponse.self
        )
    }

    /// Runs the overdue selection of the daily debt-reminder job for this company as of the company's current date and returns the overdue reminders it would send, without sending or recording anything. A partner is included when it has `autoDebtReminder`, is active, has an e-mail address, got no overdue reminder in the last `repeatDays` days (`partners/debt-reminders/settings/get`) and has issued invoices or advance invoices with `debtRemindersEnabled` past their due date with an unpaid remainder; the interest per invoice is the remainder times the partner's `lateInterestPercent` times the days late over 365, and the totals are per currency. Sent reminders are listed by `partners/debt-reminders/list`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func debtRemindersPreview(request: Requests.DebtRemindersPreviewPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> DebtRemindersPreviewPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/debt-reminders/preview",
            body: request,
            requestOptions: requestOptions,
            responseType: DebtRemindersPreviewPartnersResponse.self
        )
    }

    /// Lists the debt reminders the daily job has sent, one row per partner and currency with the ids of the invoices it covered and its `kind` (`before_due` or `overdue`); filterable by `partnerId`, sortable by `sentAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func debtRemindersList(request: Requests.DebtRemindersListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> DebtRemindersListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/debt-reminders/list",
            body: request,
            requestOptions: requestOptions,
            responseType: DebtRemindersListPartnersResponse.self
        )
    }

    /// Returns the debt-reminder schedule of the company: `daysBefore`, the days before the due date on which the first reminder is sent (null when no reminder is sent before the due date), and `repeatDays`, the days between overdue reminders to a partner.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func debtRemindersSettingsGet(request: Requests.DebtRemindersSettingsGetPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> DebtRemindersSettingsGetPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/debt-reminders/settings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: DebtRemindersSettingsGetPartnersResponse.self
        )
    }

    /// Changes the given fields of the company's debt-reminder schedule. `daysBefore` (1 to 90, or null to send nothing before the due date) makes the daily job send one "payment due soon" reminder per invoice that many days before its due date; `repeatDays` (1 to 90) is the number of days between overdue reminders to a partner. Only partners with `autoDebtReminder` get reminders, and only for invoices with `debtRemindersEnabled`. A body without fields is refused with 400.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func debtRemindersSettingsUpdate(request: Requests.DebtRemindersSettingsUpdatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> DebtRemindersSettingsUpdatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/debt-reminders/settings/update",
            body: request,
            requestOptions: requestOptions,
            responseType: DebtRemindersSettingsUpdatePartnersResponse.self
        )
    }

    /// Returns the next reminder the daily debt-reminder job would send for each unpaid issued invoice or advance invoice with `debtRemindersEnabled` of the partners that get reminders (`autoDebtReminder`, active, with an e-mail address), as of the company's current date and sorted by `date`. A `before_due` reminder is sent once per invoice, `daysBefore` days before its due date or on the first daily run after that while the due date is still ahead; `overdue` reminders start the day after the due date and repeat every `repeatDays` days per partner, counting only overdue reminders. Nothing is sent or recorded.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func debtRemindersUpcoming(request: Requests.DebtRemindersUpcomingPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> DebtRemindersUpcomingPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/debt-reminders/upcoming",
            body: request,
            requestOptions: requestOptions,
            responseType: DebtRemindersUpcomingPartnersResponse.self
        )
    }

    /// Checks a VAT number against VIES, either a free `vatCode` or the VAT code of the partner in `partnerId` (exactly one of the two); a code without an EU country prefix and 2 to 12 alphanumeric characters is refused with 422, as is a partner without a VAT code, and a VIES outage answers 503. With a partner the outcome is written to it (`vatValid`, `vatValidatedAt`): an invalid number or a VIES name that shares no word with the partner's name opens or refreshes the partner's VAT review (`vat_review.opened`), a VIES failure opens one with reason `service_error`, and a valid matching number resolves the open review as `revalidated` (`vat_review.resolved`). Reviews are listed and closed with `partners/vat-reviews/list` and `partners/vat-reviews/resolve`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func validateVat(request: Requests.ValidateVatPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> ValidateVatPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/validate-vat",
            body: request,
            requestOptions: requestOptions,
            responseType: ValidateVatPartnersResponse.self
        )
    }

    /// Lists the VAT reviews opened by VIES checks of partners' VAT codes, with reason `invalid`, `name_mismatch` or `service_error`; filterable by `partnerId`, `status` and `reason`, sortable by `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func vatReviewsList(request: Requests.VatReviewsListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> VatReviewsListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/vat-reviews/list",
            body: request,
            requestOptions: requestOptions,
            responseType: VatReviewsListPartnersResponse.self
        )
    }

    /// Closes an open VAT review as `confirmed_valid`, `confirmed_invalid` or `dismissed`, with an optional note. The first two also set the partner's `vatValid` and stamp `vatValidatedAt` when the partner still carries the reviewed VAT code; `dismissed` leaves the partner unchanged. A review that is already resolved answers 409; emits `vat_review.resolved`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func vatReviewsResolve(request: Requests.VatReviewsResolvePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> VatReviewsResolvePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/vat-reviews/resolve",
            body: request,
            requestOptions: requestOptions,
            responseType: VatReviewsResolvePartnersResponse.self
        )
    }

    /// Creates a partner. `groupId`, `statusId` and `priceListId` must belong to the company; without `legalCountryClass` the class is derived from the address country (`lt`, `eu` or `non_eu`); `documentRef` attaches an uploaded file that is not yet linked to a record; a `code` already used by a live partner of the company is refused with 409. A `vatCode` is checked against VIES at once and the result stored on the partner: an invalid number, a VIES name that shares no word with the partner's name, or a VIES failure opens a VAT review (`vat_review.opened`), while a code that is not an EU VAT number is stored unchecked (see `partners/validate-vat`).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> CreatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreatePartnersResponse.self
        )
    }

    /// Returns the live partner matched by `code`, then `vatCode`, then `email` (at least one is required), or creates one from the body with the same validation and VIES check as `partners/create`; `created` says which happened. A creation that loses a race on the partner code returns the partner the other call created.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func findOrCreate(request: Requests.FindOrCreatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> FindOrCreatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/find-or-create",
            body: request,
            requestOptions: requestOptions,
            responseType: FindOrCreatePartnersResponse.self
        )
    }

    /// Returns one partner; a deleted partner answers 404.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(request: Requests.GetPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> GetPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GetPartnersResponse.self
        )
    }

    /// Changes the given fields of a partner; the clearable fields accept null. A new address country re-derives `legalCountryClass` unless the class is given, and a `code` already used by another live partner of the company is refused with 409. A changed `vatCode` resets the VIES result and is checked at once as in `partners/create`; a removed code, or one that is not an EU VAT number, resolves the partner's open VAT review as `superseded` (`vat_review.resolved`).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(request: Requests.UpdatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> UpdatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdatePartnersResponse.self
        )
    }

    /// Marks a partner as deleted; it no longer appears in lists or lookups.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(request: Requests.DeletePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> DeletePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: DeletePartnersResponse.self
        )
    }

    /// Moves every row that references the duplicate `sourceId` through a foreign key to partners (looked up in the database catalogue, within the company) to `targetId`, then marks the source partner as deleted; `moved` lists the tables, columns and row counts. Merging a partner into itself is 422, and when both partners hold the same unique entry (for example the same IBAN or item supplier row) the merge is refused with 409 until it is removed from one of them. When the kept partner has an open VAT review, the duplicate's open review is resolved as `superseded` (`vat_review.resolved`).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func merge(request: Requests.MergePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> MergePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/merge",
            body: request,
            requestOptions: requestOptions,
            responseType: MergePartnersResponse.self
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

    /// Lists live partners; filterable by `name`, `code`, `vatCode`, `email`, `type`, `isCustomer`, `isSupplier`, `isActive`, `legalCountryClass`, `isEmployee`, `groupId`, `statusId` and `nextCallDate`, sortable by `name`, `code`, `createdAt`, `nextCallDate` and `rating`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(request: Requests.ListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> ListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ListPartnersResponse.self
        )
    }

    /// Creates a partner group; a `code` already used by a group of the company is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func groupsCreate(request: Requests.GroupsCreatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsCreatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/groups/create",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsCreatePartnersResponse.self
        )
    }

    /// Changes the code or name of a partner group; a code already used by another group of the company is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func groupsUpdate(request: Requests.GroupsUpdatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsUpdatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/groups/update",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsUpdatePartnersResponse.self
        )
    }

    /// Deletes a partner group; a group still assigned to a live partner is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func groupsDelete(request: Requests.GroupsDeletePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsDeletePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/groups/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsDeletePartnersResponse.self
        )
    }

    /// Lists the company's partner groups ordered by code.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func groupsList(request: Requests.GroupsListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/groups/list",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsListPartnersResponse.self
        )
    }

    /// Creates a partner status with a `sortOrder`; a `code` already used by a status of the company is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func statusesCreate(request: Requests.StatusesCreatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> StatusesCreatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/statuses/create",
            body: request,
            requestOptions: requestOptions,
            responseType: StatusesCreatePartnersResponse.self
        )
    }

    /// Changes the code, name or sort order of a partner status; a code already used by another status of the company is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func statusesUpdate(request: Requests.StatusesUpdatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> StatusesUpdatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/statuses/update",
            body: request,
            requestOptions: requestOptions,
            responseType: StatusesUpdatePartnersResponse.self
        )
    }

    /// Deletes a partner status; a status still assigned to a live partner is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func statusesDelete(request: Requests.StatusesDeletePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> StatusesDeletePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/statuses/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: StatusesDeletePartnersResponse.self
        )
    }

    /// Lists the company's partner statuses ordered by sort order, then code.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func statusesList(request: Requests.StatusesListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> StatusesListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/statuses/list",
            body: request,
            requestOptions: requestOptions,
            responseType: StatusesListPartnersResponse.self
        )
    }

    /// Records an inquiry in status `new`, from a partner (`partnerId`) or from a contact given by `contactName` or `contactEmail`; without any of the three it is refused with 422. `assignedUserId` must be a member of the company. Emits `partner_inquiry.created`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func inquiriesCreate(request: Requests.InquiriesCreatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> InquiriesCreatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/inquiries/create",
            body: request,
            requestOptions: requestOptions,
            responseType: InquiriesCreatePartnersResponse.self
        )
    }

    /// Changes the given fields of an inquiry; `partnerId` and `assignedUserId` accept null. Setting `status` to `closed` stamps `closedAt`, and moving a closed inquiry to another status clears it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func inquiriesUpdate(request: Requests.InquiriesUpdatePartnersRequest, requestOptions: RequestOptions? = nil) async throws -> InquiriesUpdatePartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/inquiries/update",
            body: request,
            requestOptions: requestOptions,
            responseType: InquiriesUpdatePartnersResponse.self
        )
    }

    /// Returns one inquiry with the name of its partner.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func inquiriesGet(request: Requests.InquiriesGetPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> InquiriesGetPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/inquiries/get",
            body: request,
            requestOptions: requestOptions,
            responseType: InquiriesGetPartnersResponse.self
        )
    }

    /// Lists inquiries with their partner names; filterable by `status`, `channel`, `partnerId`, `assignedUserId` and `subject`, sortable by `createdAt` and `updatedAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func inquiriesList(request: Requests.InquiriesListPartnersRequest, requestOptions: RequestOptions? = nil) async throws -> InquiriesListPartnersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/partners/inquiries/list",
            body: request,
            requestOptions: requestOptions,
            responseType: InquiriesListPartnersResponse.self
        )
    }

    /// Compares a partner's open receivables plus an optional `additionalAmount` with its `creditLimit`. The open receivables are the unpaid remainder of the partner's issued invoices, advance invoices and credit notes (credit notes negative), converted to the company's base currency at each invoice's `fxRate`. Without a credit limit `available` is null and `exceeded` is false.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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