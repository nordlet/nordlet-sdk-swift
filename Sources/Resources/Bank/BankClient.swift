import Foundation

public final class BankClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Create a bank, Stripe or broker account. `currency` defaults to the company base currency and `accountCode` to the default bank account of the chart of accounts. Where the country has no IBAN the account is identified by `bankCode` (sort code, routing number) and `bankAccountNumber`, stored without spaces and hyphens. A `documentRef` also creates a bank agreement with that document attached. A Stripe account with an `iban` or an account number is refused with 422; an account with the same IBAN already existing answers 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func accountsCreate(request: Requests.AccountsCreateBankRequest, requestOptions: RequestOptions? = nil) async throws -> AccountsCreateBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/accounts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountsCreateBankResponse.self
        )
    }

    /// List the bank accounts of the company. Filterable by name, type, iban and isActive; sortable by name and createdAt.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func accountsList(request: Requests.AccountsListBankRequest, requestOptions: RequestOptions? = nil) async throws -> AccountsListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/accounts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountsListBankResponse.self
        )
    }

    /// Change the name, type, IBAN, bank code and account number, payment file settings (`paymentFileSettings` replaces the stored settings as a whole), ledger account code or active flag of a bank account. Setting type to stripe clears the IBAN and the account number, and sending an `iban` together with it is refused with 422.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func accountsUpdate(request: Requests.AccountsUpdateBankRequest, requestOptions: RequestOptions? = nil) async throws -> AccountsUpdateBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/accounts/update",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountsUpdateBankResponse.self
        )
    }

    /// Insert statement lines (up to 1000 per call) into a bank account as new transactions. A line without `currency` takes the account currency; a line in another currency is refused with 422. A line whose `externalId` is already on the account is skipped and counted in `skipped`. A line without `externalId` that is identical to a line already on the account (same booking date, amount, counterparty IBAN, or name when either IBAN is missing, and description) is skipped, counted in `skipped` and listed in `duplicates`. When `openingBalance` and `closingBalance` are both given, the opening balance plus the lines must give the closing balance (422 with both figures otherwise), and the closing balance is kept for `bank/reconciliation/get` as the balance on the latest line date. An incoming line that an active match rule (`bank/match-rules/create`) recognises is linked to its settlement batch.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func transactionsImport(request: Requests.TransactionsImportBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsImportBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/import",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsImportBankResponse.self
        )
    }

    /// Import a statement file into a bank account: camt.053 XML, MT940, a Stripe balance CSV or a Revolut Business CSV, chosen by `format` or by the type of `templateId` (an iso20022 template also takes MT940 content). Statements whose IBAN or currency differ from the account are left out; the call is refused with 422 when none remains, when a line is in another currency, when the opening balance plus the lines of a camt.053 or MT940 statement does not give its closing balance (the message names both figures), when the file lacks the columns or elements the template requires or when it holds more than 50000 lines. The closing balance of each statement is kept for `bank/reconciliation/get`. Lines already on the account are skipped, and Stripe movements already posted through a settlement payout are skipped with a warning. With a template, the mapped fields are posted to their ledger accounts, partners are created, payments are matched to the invoices they reference, and invoices, credit notes or advance invoices are issued where the template asks for them (`invoiceMetaField`, `advanceInvoices`); `transfersCsv` posts the lender payouts and commissions of a Stripe template. Invoices issued this way are announced as `sale_invoice.issued`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func statementsImport(request: Requests.StatementsImportBankRequest, requestOptions: RequestOptions? = nil) async throws -> StatementsImportBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/statements/import",
            body: request,
            requestOptions: requestOptions,
            responseType: StatementsImportBankResponse.self
        )
    }

    /// List the bank transactions of the company. Filterable by id, bankAccountId, status, matchedDocumentId, date, amount, counterpartyIban, counterpartyName, partnerId and externalId; sortable by date, createdAt, amount, bankAccountName (the name of the bank account), partnerName (the name of the partner, else the counterparty name), description and status. `counterpartyName` is the name as the bank wrote it; `partnerId` and `partnerName` are the partner the line belongs to.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func transactionsList(request: Requests.TransactionsListBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsListBankResponse.self
        )
    }

    /// Match one new bank transaction to a document: an issued sale invoice or advance for incoming money; an issued sale credit note, a registered purchase invoice, an approved payroll run or an expense report (the last two in company currency only) for outgoing money. An expense report is paid to the employee by debiting the cash advances account (`cash.advances`) against the bank account, which settles the employee's advance balance in `cash/advance-holders/balances`; a report already paid in full or a payment above its remaining amount answers 409. Posts the payment journal transaction between the bank account and the receivable or payable account the invoice was posted to (the account of its operation type, else the posting rule) or the net payable account, with any exchange difference on the gain or loss account, raises the paid amount of the document and sets the line to matched. A payment in another currency is converted into the invoice currency at the rate of the line date, and the difference against the invoice's own rate is the exchange difference; `invoiceAmount` states the amount settled instead; in the same currency it must equal the payment (422). `remainder` settles a payment that differs from the remaining balance of a sale or purchase invoice in its own currency: `advance` books an overpayment beyond the balance to the advances-received posting rule (customer payments) or, for a supplier overpayment, to the `purchases.advancesPaid` posting rule, or to `remainder.accountCode` when given, on the line's partner; `write_off` books the over- or underpayment to `remainder.accountCode`, else to the `bank.paymentDifferenceLoss` posting rule (a customer underpayment, a supplier overpayment, a credit note refund beyond its balance) or the `bank.paymentDifferenceGain` rule (a supplier underpayment, a customer overpayment, a credit note refund below its balance), and settles the invoice in full; `leave_open` settles an underpayment as a partial payment and leaves the rest open. Answers 409 when the line is already matched or ignored, when the amount (converted, beyond one cent of the payment) exceeds the remaining balance of the document and no `remainder` is given, or when the accounting period of the line date is locked. A document that becomes fully paid is announced as `sale_invoice.paid` or `purchase_invoice.paid`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func transactionsMatch(request: Requests.TransactionsMatchBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsMatchBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/match",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsMatchBankResponse.self
        )
    }

    /// The documents are issued sale invoices or advances for incoming money; issued sale credit notes, registered purchase invoices or approved payroll runs for outgoing money. Each must be in the currency of the payment, each allocation must be above zero, a document may appear once and the allocations must add up to the payment (422 otherwise). One journal transaction carries the bank entry, one entry per document and any exchange difference; the line is matched as an `invoice_allocation`. Answers 409 when the line is already matched, when an allocation exceeds the remaining balance of its document or when the accounting period of the line date is locked. Each document that becomes fully paid is announced as `sale_invoice.paid` or `purchase_invoice.paid`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func transactionsMatchMany(request: Requests.TransactionsMatchManyBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsMatchManyBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/match-many",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsMatchManyBankResponse.self
        )
    }

    /// Undo a match. A payment matched to an invoice, a line posted by an import template or by `bank/transactions/post` (to an account or a tax payment) gets a reversing journal transaction dated date (default: today) and the invoice paid amount and payment status are restored; a line linked to a payment-provider settlement is only unlinked; an ignored line is restored as with `bank/transactions/unignore`. The line returns to status new.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func transactionsUnmatch(request: Requests.TransactionsUnmatchBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsUnmatchBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/unmatch",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsUnmatchBankResponse.self
        )
    }

    /// Book one new bank transaction against a ledger account, for lines that settle no invoice (bank fees, interest, tax payments, transfers). Posts a journal transaction dated on the line's booking date between the bank account's ledger account and `accountCode` (incoming money: debit bank, credit the account; outgoing money the reverse), with the optional `partnerId` on the transaction and `costCenterId` and `projectId` on the counter entry, and sets the line to matched with `matchedDocumentType` `journal_transaction`. With `taxPaymentId` the line settles a tax payment recorded with `declarations/tax-payments/create`: an outgoing line for a payment, an incoming line for a refund, in the company currency and for the same amount (422 otherwise), not yet booked from another line (409); the line is matched as `tax_payment`. VAT is not booked here, because VAT returns are built from documents: a `vatClassifierCode` answers 422, and a fee with VAT is registered as a purchase invoice and the line matched to it. Answers 409 when the line is already matched or ignored or when the accounting period of the line date is locked. `bank/transactions/unmatch` reverses the posting.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func transactionsPost(request: Requests.TransactionsPostBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsPostBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/post",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsPostBankResponse.self
        )
    }

    /// Mark a new bank transaction as ignored, for a line that needs no booking (a duplicate the bank sent, a line booked another way), with the reason kept on the line. Nothing is posted. Answers 409 when the line is matched or already ignored; `bank/transactions/unignore` returns it to new.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func transactionsIgnore(request: Requests.TransactionsIgnoreBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsIgnoreBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/ignore",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsIgnoreBankResponse.self
        )
    }

    /// Return an ignored bank transaction to status new and clear its reason. Answers 409 when the line is not ignored.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func transactionsUnignore(request: Requests.TransactionsUnignoreBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsUnignoreBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/unignore",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsUnignoreBankResponse.self
        )
    }

    /// Compare a bank account's statement balance with its ledger balance on `date`. The statement balance is `statementBalance` when given, else the latest closing balance kept from an imported statement on or before `date` (`statementClosingDate`) plus the lines on the account dated after it up to `date`. The ledger balance is the posted balance of the bank account's ledger account up to `date`, in the account currency (for an account in another currency than the company's, the sum of the entries' currency amounts in that currency). `difference` is the statement balance less the ledger balance. `unbookedLines` are the lines up to `date` still in status new (at most 1000; `unbookedCount` and `unbookedTotal` cover all of them). Answers 404 when the bank account does not exist.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func reconciliationGet(request: Requests.ReconciliationGetBankRequest, requestOptions: RequestOptions? = nil) async throws -> ReconciliationGetBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/reconciliation/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ReconciliationGetBankResponse.self
        )
    }

    /// Record a payment that is on no imported statement: inserts a bank transaction on the account dated `date` (`amount` is always positive, in the account currency: money received for a sale invoice, money paid out for a purchase invoice or payroll run) and matches it to the document with the checks, posting and `sale_invoice.paid` or `purchase_invoice.paid` event of `bank/transactions/match`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func transactionsRecord(request: Requests.TransactionsRecordBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsRecordBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/record",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsRecordBankResponse.self
        )
    }

    /// Build a payment file that pays the remaining amount of each registered purchase invoice from the bank account on `executionDate`, to the partner's default bank account that the format can use. The format follows the bank account: a GBP account of a UK company with a sort code and account number gets a Bacs Standard 18 Direct Credit file (needs `paymentFileSettings.serviceUserNumber`; `executionDate` is the day the money arrives, a Bacs working day whose processing day is after today, default the earliest), a USD account of a US company with a routing number and account number gets a Nacha ACH credit file (needs `paymentFileSettings.immediateOrigin` and `companyIdentification`; CCD for a business partner, PPD for a partner that is not one, see `partners/update` `isBusiness`; default `executionDate` today), and an account with an IBAN gets ISO 20022 pain.001.001.03, a SEPA credit transfer in EUR and a generic pain.001 in other currencies (default `executionDate` today). Every invoice must be in the currency of the bank account and the partner must have a bank account the format can use (IBAN; sort code and account number; routing number, account number and `accountType`), 422 otherwise, see `partners/bank-accounts/create`; an invoice that is already paid answers 409. The file is returned in `content`, with `format`, `fileName` and `contentType`; nothing is posted or marked paid.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func paymentsExport(request: Requests.PaymentsExportBankRequest, requestOptions: RequestOptions? = nil) async throws -> PaymentsExportBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/payments/export",
            body: request,
            requestOptions: requestOptions,
            responseType: PaymentsExportBankResponse.self
        )
    }

    /// A template of type stripe, iso20022, revolut or bank_connection names the fields of the file or feed: a field with an `accountCode` is posted to that ledger account on import, a field with `createPartner` creates the customer, supplier or fee partner. `invoiceMetaField` is the Stripe metadata key (stripe) or the reference field (other types) by which payments are linked to invoices; with it `invoiceVatClassifierCode`, `invoiceVatRatePercent`, `invoiceItemId` and, outside Stripe, `advanceInvoices` apply. `companyMetaField`, `lenderMetaField`, the operation types and the refund labels are for Stripe templates only. A template with the same name already existing answers 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func importTemplatesCreate(request: Requests.ImportTemplatesCreateBankRequest, requestOptions: RequestOptions? = nil) async throws -> ImportTemplatesCreateBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/import-templates/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ImportTemplatesCreateBankResponse.self
        )
    }

    /// Change a company import template under the rules of `bank/import-templates/create`; a change of `type` re-checks the existing fields against the new type. Built-in templates cannot be changed. A name already used by another template answers 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func importTemplatesUpdate(request: Requests.ImportTemplatesUpdateBankRequest, requestOptions: RequestOptions? = nil) async throws -> ImportTemplatesUpdateBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/import-templates/update",
            body: request,
            requestOptions: requestOptions,
            responseType: ImportTemplatesUpdateBankResponse.self
        )
    }

    /// Delete a company import template. Built-in templates cannot be deleted.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func importTemplatesDelete(request: Requests.ImportTemplatesDeleteBankRequest, requestOptions: RequestOptions? = nil) async throws -> ImportTemplatesDeleteBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/import-templates/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: ImportTemplatesDeleteBankResponse.self
        )
    }

    /// Read one import template, a company one or a built-in one.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func importTemplatesGet(request: Requests.ImportTemplatesGetBankRequest, requestOptions: RequestOptions? = nil) async throws -> ImportTemplatesGetBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/import-templates/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ImportTemplatesGetBankResponse.self
        )
    }

    /// Today the Revolut Business template: the Revolut CSV fields, with fees, card payments and top-ups posted to the accounts of the posting rules, the sender and beneficiary names creating partners and the Reference column linking payments to invoices. The rows carry `builtin: true`, are readable with `bank/import-templates/get` and are not in `bank/import-templates/list`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func importTemplatesListBuiltin(request: Requests.ImportTemplatesListBuiltinBankRequest, requestOptions: RequestOptions? = nil) async throws -> ImportTemplatesListBuiltinBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/import-templates/list-builtin",
            body: request,
            requestOptions: requestOptions,
            responseType: ImportTemplatesListBuiltinBankResponse.self
        )
    }

    /// List the import templates of the company (the built-in ones are under `bank/import-templates/list-builtin`). Filterable by name and type; sortable by name and createdAt.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func importTemplatesList(request: Requests.ImportTemplatesListBankRequest, requestOptions: RequestOptions? = nil) async throws -> ImportTemplatesListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/import-templates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ImportTemplatesListBankResponse.self
        )
    }

    /// Create a rule that links incoming bank lines to the settlement batches of a payment provider when lines are imported and when a batch is posted. A line whose description, counterparty name or external id contains `pattern` (case-insensitive) is linked to the open batch of `provider` whose payout id follows `payoutIdPrefix` in the line text or, without a prefix, to the single open batch on the same bank account with the same currency and net amount and a payout date within `dateWindowDays` of the line date. `bankAccountId` limits the rule to one account.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func matchRulesCreate(request: Requests.MatchRulesCreateBankRequest, requestOptions: RequestOptions? = nil) async throws -> MatchRulesCreateBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/match-rules/create",
            body: request,
            requestOptions: requestOptions,
            responseType: MatchRulesCreateBankResponse.self
        )
    }

    /// Change a match rule; `payoutIdPrefix` and `bankAccountId` are cleared with null.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func matchRulesUpdate(request: Requests.MatchRulesUpdateBankRequest, requestOptions: RequestOptions? = nil) async throws -> MatchRulesUpdateBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/match-rules/update",
            body: request,
            requestOptions: requestOptions,
            responseType: MatchRulesUpdateBankResponse.self
        )
    }

    /// Delete a match rule.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func matchRulesDelete(request: Requests.MatchRulesDeleteBankRequest, requestOptions: RequestOptions? = nil) async throws -> MatchRulesDeleteBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/match-rules/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: MatchRulesDeleteBankResponse.self
        )
    }

    /// List the match rules of the company, ordered by name.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func matchRulesList(request: Requests.MatchRulesListBankRequest, requestOptions: RequestOptions? = nil) async throws -> MatchRulesListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/match-rules/list",
            body: request,
            requestOptions: requestOptions,
            responseType: MatchRulesListBankResponse.self
        )
    }

    /// Record a direct debit mandate a partner has signed, with the signature date. Schemes: `CORE` and `B2B` are SEPA mandates on the debtor's IBAN (and BIC), recurrent or one-off; `BACS` is a UK Direct Debit Instruction on a 6-digit sort code (`bankCode`) and an 8-digit account number, recurrent only, lodged with AUDDIS through `bank/mandates/auddis-export` before the first collection; `PPD` (consumer) and `CCD` (business) are US ACH debit authorizations on a 9-digit routing number (`bankCode`), an account number and `accountType`. Without `scheme`, an IBAN gives `CORE`, a UK company `BACS`, and a US company `CCD` for a business partner or `PPD` for one that is not (see `partners/update` `isBusiness`). `reference` is the mandate reference written into the collection files; without one `MNDT-` followed by a generated id is used (for `BACS` `MNDT` and the start of a generated id, upper case; a Bacs reference has 6 to 18 characters of A-Z, 0-9, . & / - and space, with at least six letters or digits, not one repeated character, not starting with DDIC). `debtorName` defaults to the partner name. A reference already in use answers 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func mandatesCreate(request: Requests.MandatesCreateBankRequest, requestOptions: RequestOptions? = nil) async throws -> MandatesCreateBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/mandates/create",
            body: request,
            requestOptions: requestOptions,
            responseType: MandatesCreateBankResponse.self
        )
    }

    /// Change the BIC, debtor name or notes of a mandate.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func mandatesUpdate(request: Requests.MandatesUpdateBankRequest, requestOptions: RequestOptions? = nil) async throws -> MandatesUpdateBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/mandates/update",
            body: request,
            requestOptions: requestOptions,
            responseType: MandatesUpdateBankResponse.self
        )
    }

    /// Cancel an active mandate. A BACS mandate that was lodged with AUDDIS is then reported cancelled by the next `bank/mandates/auddis-export`. A mandate that is already cancelled or completed answers 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func mandatesCancel(request: Requests.MandatesCancelBankRequest, requestOptions: RequestOptions? = nil) async throws -> MandatesCancelBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/mandates/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: MandatesCancelBankResponse.self
        )
    }

    /// Read one mandate. `expiresOn` is 36 months after the last collection, or after the signature date when nothing has been collected.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func mandatesGet(request: Requests.MandatesGetBankRequest, requestOptions: RequestOptions? = nil) async throws -> MandatesGetBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/mandates/get",
            body: request,
            requestOptions: requestOptions,
            responseType: MandatesGetBankResponse.self
        )
    }

    /// List the mandates of the company. Filterable by partnerId, status, scheme, reference and iban; sortable by createdAt, signatureDate, reference, partnerName (the name of the partner, else the debtor name), iban, scheme, sequenceType, collectionsCount, expiresOn (the last collection date, else the signature date) and status.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func mandatesList(request: Requests.MandatesListBankRequest, requestOptions: RequestOptions? = nil) async throws -> MandatesListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/mandates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: MandatesListBankResponse.self
        )
    }

    /// List the issued sale invoices that are unpaid or partly paid and whose partner holds an active mandate of a scheme in the invoice currency (CORE and B2B for EUR, BACS for GBP, PPD and CCD for USD), each with the mandate `bank/direct-debits/export` would use (the most recently signed active one of those schemes). Filterable by partnerId, fullNumber, issueDate and dueDate; sortable by issueDate, dueDate, fullNumber, grossTotal, createdAt, partnerName (the name of the partner), remaining (the gross total less the paid amount) and mandateReference (the reference of the mandate shown).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func directDebitsCandidates(request: Requests.DirectDebitsCandidatesBankRequest, requestOptions: RequestOptions? = nil) async throws -> DirectDebitsCandidatesBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/direct-debits/candidates",
            body: request,
            requestOptions: requestOptions,
            responseType: DirectDebitsCandidatesBankResponse.self
        )
    }

    /// Build a direct debit file that collects the remaining amount of each issued sale invoice into the bank account on `collectionDate` under the partner's most recently signed active mandate of a scheme the file carries. The format follows the bank account: a GBP account of a UK company with a sort code and account number gets a Bacs Standard 18 Direct Debit file (BACS mandates; needs `paymentFileSettings.serviceUserNumber`; each mandate must have been lodged with `bank/mandates/auddis-export` and the collection processed at least two Bacs working days after the lodgement; `collectionDate` is the day the money is collected, a Bacs working day whose processing day is after today, default the earliest; transaction code 01 for the first collection under a mandate and 17 after that), a USD account of a US company with a routing number and account number gets a Nacha ACH debit file (PPD and CCD mandates; needs `paymentFileSettings.immediateOrigin` and `companyIdentification`; `collectionDate` not before the mandate's signature date; default today), and an account with an IBAN gets a SEPA direct debit file pain.008.001.02 (CORE and B2B mandates; needs a valid `sepaCreditorId`, see `account/companies/update`; a mandate expires after 36 months without a collection; sequence type OOFF for a one-off mandate, FRST for the first collection under a recurrent one and RCUR after that; default today). Each invoice must be in the currency of the format (EUR, GBP, USD), 422 otherwise; an invoice whose partner has no usable active mandate answers 422; an invoice already paid, or a one-off mandate asked to collect more than one invoice, answers 409. On success the collection count and last collection date of each mandate are advanced and a one-off mandate is completed; nothing is posted. The file is returned in `content`, with `format`, `fileName`, `contentType` and the `collectionDate` used.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func directDebitsExport(request: Requests.DirectDebitsExportBankRequest, requestOptions: RequestOptions? = nil) async throws -> DirectDebitsExportBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/direct-debits/export",
            body: request,
            requestOptions: requestOptions,
            responseType: DirectDebitsExportBankResponse.self
        )
    }

    /// Build a Bacs AUDDIS file that lodges new Bacs Direct Debit Instructions (transaction code 0N, each active BACS mandate not yet lodged) and cancels lodged ones (0C, each cancelled BACS mandate whose cancellation was not yet lodged) with the paying banks. Without `mandateIds` every such mandate of the company is included. The bank account must be a GBP account of a UK company with a sort code, an account number and `paymentFileSettings.serviceUserNumber` (422 otherwise). `processingDate` is the Bacs processing day of the file, a Bacs working day after today (default the next one); it is stored as the mandate's `lodgedOn` or `cancellationLodgedOn`, and a first collection can be processed two Bacs working days after `lodgedOn`. Nothing to lodge answers 409. The file is returned in `content`, with `format`, `fileName` and `contentType`; nothing is sent to the bank.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func mandatesAuddisExport(request: Requests.MandatesAuddisExportBankRequest, requestOptions: RequestOptions? = nil) async throws -> MandatesAuddisExportBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/mandates/auddis-export",
            body: request,
            requestOptions: requestOptions,
            responseType: MandatesAuddisExportBankResponse.self
        )
    }

    /// Suggest documents for a new bank transaction: issued sale invoices and advances for incoming money; registered purchase invoices, issued sale credit notes and approved payroll runs for outgoing money. Candidates are unpaid documents with any remaining balance, also one below the payment, scored by an equal remaining balance, the document number or payroll period in the payment description and a counterparty IBAN or name matching the partner or an employee on the run; the best `limit` come back with their reasons; a candidate with no matching reason (score 0) is left out. A transaction that is already matched answers 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func transactionsSuggestMatches(request: Requests.TransactionsSuggestMatchesBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsSuggestMatchesBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/suggest-matches",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsSuggestMatchesBankResponse.self
        )
    }

    /// Import a Stripe payout report into settlement batches, one per payout: the itemized payout reconciliation CSV (`format` payout_reconciliation) or the unified payments export with its Transfer column (unified_payments); another CSV is refused with 422. Rows without a payout, the payout rows themselves and unsettled payments are skipped and counted. Each line is matched to an issued sale invoice through the references the report carries (the external reference of a sales order or an invoice number) or through a charge matched earlier. A payout already imported receives its new lines while the batch is in status imported and is skipped once posted; a payout mixing currencies answers 422. Emits `settlement.imported` for a new batch and `settlement.updated` for one that received lines.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settlementsImport(request: Requests.SettlementsImportBankRequest, requestOptions: RequestOptions? = nil) async throws -> SettlementsImportBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/import",
            body: request,
            requestOptions: requestOptions,
            responseType: SettlementsImportBankResponse.self
        )
    }

    /// List the settlement batches with their line counts and the clearing figures against the bank lines. Filterable by provider, payoutId, status, currency and bankAccountId; sortable by payoutDate, createdAt, netTotal, payoutId, provider, bankAccountName (the name of the bank account), grossTotal, feeTotal, lineCount (the number of lines) and status.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settlementsList(request: Requests.SettlementsListBankRequest, requestOptions: RequestOptions? = nil) async throws -> SettlementsListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/list",
            body: request,
            requestOptions: requestOptions,
            responseType: SettlementsListBankResponse.self
        )
    }

    /// Read one settlement batch with its lines, each with the invoice it is matched to and the bank line that cleared it (`clearingBooked`, `clearingDifference`, `clearingUnposted`).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settlementsGet(request: Requests.SettlementsGetBankRequest, requestOptions: RequestOptions? = nil) async throws -> SettlementsGetBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/get",
            body: request,
            requestOptions: requestOptions,
            responseType: SettlementsGetBankResponse.self
        )
    }

    /// Match a settlement line to an issued sale invoice or advance by hand (`matchStatus` manual), or clear the match with `invoiceId` null. Only lines of the categories charge, refund, dispute, dispute_reversal and partial_capture_reversal can be matched (422), and only while the batch is in status imported (409).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settlementsMatch(request: Requests.SettlementsMatchBankRequest, requestOptions: RequestOptions? = nil) async throws -> SettlementsMatchBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/match",
            body: request,
            requestOptions: requestOptions,
            responseType: SettlementsMatchBankResponse.self
        )
    }

    /// A line with its own rate or amount is split with that value when the batch is posted. A line without one falls back to the commissionPercent given to the posting call, and without that the amount goes to the suspense account. Send both fields as null to clear the line back to the fallback.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settlementsCommission(request: Requests.SettlementsCommissionBankRequest, requestOptions: RequestOptions? = nil) async throws -> SettlementsCommissionBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/commission",
            body: request,
            requestOptions: requestOptions,
            responseType: SettlementsCommissionBankResponse.self
        )
    }

    /// Attach the incoming bank-statement line that carries this payout to the settlement batch.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settlementsLink(request: Requests.SettlementsLinkBankRequest, requestOptions: RequestOptions? = nil) async throws -> SettlementsLinkBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/link",
            body: request,
            requestOptions: requestOptions,
            responseType: SettlementsLinkBankResponse.self
        )
    }

    /// Detach the bank-statement line from the settlement batch and return the line to unmatched.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settlementsUnlink(request: Requests.SettlementsUnlinkBankRequest, requestOptions: RequestOptions? = nil) async throws -> SettlementsUnlinkBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/unlink",
            body: request,
            requestOptions: requestOptions,
            responseType: SettlementsUnlinkBankResponse.self
        )
    }

    /// Post a settlement batch dated `date` (default: the payout date, else today): the bank account receives the net payout, the matched sale invoices are settled against the receivable account each was posted to (its operation type's account, else the posting rule; the receivable of each partner in a journal transaction of its own when invoices of several partners are settled), the provider fees, the marketplace commission and the seller payable are booked, and a payout in another currency is converted at the rate of that date with the exchange difference against each invoice's own rate on the gain or loss account. A line without a matched invoice is split by its own rate or amount, else by `commissionPercent`, else parked on the suspense account; a line already imported as a movement of a bank account is posted against that account instead. Answers 409 when the batch is already posted or the period is locked, 422 when it has no lines. The payout is linked to the bank line a match rule recognises. Emits `settlement.posted`, `sale_invoice.paid` for each invoice that becomes paid and `refund_liability.actual` for refunds of invoices carrying a refund liability.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settlementsPost(request: Requests.SettlementsPostBankRequest, requestOptions: RequestOptions? = nil) async throws -> SettlementsPostBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/post",
            body: request,
            requestOptions: requestOptions,
            responseType: SettlementsPostBankResponse.self
        )
    }

    /// Import an Interactive Brokers activity statement (CSV) into a bank account of type `broker`; refused with 422 for another account type, a file that is not an IBKR statement, a statement of a different IBKR account than the bank account already holds, or a trade older than the latest trade already imported (statements go in in date order). Rows already imported are skipped. Dividends, withholding tax, interest and fees are posted against the broker account; stock, option and futures trades are matched FIFO against the open lots and post the cost to `securities.investments` and the realised result to `securities.gain` or `securities.loss` (posting rules), one journal entry per date in the base currency at the rate of the day (422 without a rate, 409 when the date's period is locked). Deposits, corporate actions and currency conversions are stored as `not_posted` with a note.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func securitiesImport(request: Requests.SecuritiesImportBankRequest, requestOptions: RequestOptions? = nil) async throws -> SecuritiesImportBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/securities/import",
            body: request,
            requestOptions: requestOptions,
            responseType: SecuritiesImportBankResponse.self
        )
    }

    /// List the securities imports, newest first; filterable by `bankAccountId` and `brokerAccount`, sortable by `createdAt` and `realizedTotal`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func securitiesList(request: Requests.SecuritiesListBankRequest, requestOptions: RequestOptions? = nil) async throws -> SecuritiesListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/securities/list",
            body: request,
            requestOptions: requestOptions,
            responseType: SecuritiesListBankResponse.self
        )
    }

    /// Return one securities import with its operations in date order, each with its posting status, its amounts in the base currency and the journal transaction it was posted in.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func securitiesGet(request: Requests.SecuritiesGetBankRequest, requestOptions: RequestOptions? = nil) async throws -> SecuritiesGetBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/securities/get",
            body: request,
            requestOptions: requestOptions,
            responseType: SecuritiesGetBankResponse.self
        )
    }

    /// List the imported securities operations, newest first; filterable by `bankAccountId`, `kind`, `status`, `symbol` and `date`, sortable by `date`, `createdAt`, `bankAccountName` (the name of the bank account), `kind`, `symbol`, `quantity`, `amount`, `fee`, `cashBase`, `costBase`, `realizedBase` and `status`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func securitiesOperationsList(request: Requests.SecuritiesOperationsListBankRequest, requestOptions: RequestOptions? = nil) async throws -> SecuritiesOperationsListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/securities/operations/list",
            body: request,
            requestOptions: requestOptions,
            responseType: SecuritiesOperationsListBankResponse.self
        )
    }

    /// Read from the bank-feed provider configured on the API server or in platform settings (Enable Banking or an HTTP bridge, named in `provider`), for one `country` or all. Without a provider the call answers 503.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func feedsBanksList(request: Requests.FeedsBanksListBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsBanksListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/banks/list",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsBanksListBankResponse.self
        )
    }

    /// Creates a pending bank connection and asks the provider for the authorization page of the bank. `url` is where the user authorizes access for `validForDays` (default 90); `reference` is the state the bank sends back and what `bank/feeds/connections/complete` takes. `redirectUrl` falls back to the one in platform settings, and the call is refused with 422 when neither is set.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func feedsConnectionsStart(request: Requests.FeedsConnectionsStartBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsConnectionsStartBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/connections/start",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsConnectionsStartBankResponse.self
        )
    }

    /// Exchanges `code` for a provider session, sets the connection to active with the consent expiry the bank reports, and records every account of the session as a bank-feed account, not yet linked to a ledger account (`bank/feeds/accounts/link`). A connection that is already active answers 409. When the provider refuses the code the connection goes to status error with the message in `error`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func feedsConnectionsComplete(request: Requests.FeedsConnectionsCompleteBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsConnectionsCompleteBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/connections/complete",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsConnectionsCompleteBankResponse.self
        )
    }

    /// Read one bank connection with its bank-feed accounts.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func feedsConnectionsGet(request: Requests.FeedsConnectionsGetBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsConnectionsGetBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/connections/get",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsConnectionsGetBankResponse.self
        )
    }

    /// List the bank connections of the company, without their accounts. Filterable by status, provider and aspspCountry; sortable by createdAt and lastSyncedAt.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func feedsConnectionsList(request: Requests.FeedsConnectionsListBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsConnectionsListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/connections/list",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsConnectionsListBankResponse.self
        )
    }

    /// Closes the provider session when the connection has one and a provider is configured (a failure at the bank does not stop the call), then deletes the connection and its bank-feed accounts. The ledger bank accounts and the transactions already imported stay.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func feedsConnectionsDelete(request: Requests.FeedsConnectionsDeleteBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsConnectionsDeleteBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/connections/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsConnectionsDeleteBankResponse.self
        )
    }

    /// Give exactly one of `bankAccountId` (an existing ledger bank account) or `createBankAccount` (a new one with the IBAN and currency of the feed account; `accountCode` defaults to the default bank account of the chart of accounts). `syncFrom` is the date the first sync starts from; without it the first sync covers the last 90 days.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func feedsAccountsLink(request: Requests.FeedsAccountsLinkBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsAccountsLinkBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/accounts/link",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsAccountsLinkBankResponse.self
        )
    }

    /// `importTemplateId` must be a template of type bank_connection, or null to apply none. `syncSchedule` is manual, daily, weekly or monthly; every account whose schedule is not manual is synced by Nordlet when it is due. At least one of the two must be given.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func feedsAccountsConfigure(request: Requests.FeedsAccountsConfigureBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsAccountsConfigureBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/accounts/configure",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsAccountsConfigureBankResponse.self
        )
    }

    /// Fetches the transactions of every linked bank-feed account of the connection, or of `feedAccountId` alone, from `dateFrom` (default: seven days before the last sync, else the `syncFrom` of the account, else 90 days back) to `dateTo`, and inserts the new ones into the linked ledger bank account; lines already there count as `skipped`. An import template set on the account is applied as in `bank/statements/import`. Answers 409 when the connection is not active or has no session, and when the bank returns more than 20 pages for the range (keep `dateFrom` and set an earlier `dateTo`). A provider failure is written to the `error` of the connection, and one that is not retryable sets its status to error. The outcome is announced as `bank_feed.synced`, and invoices the template issues as `sale_invoice.issued`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func feedsSync(request: Requests.FeedsSyncBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsSyncBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/sync",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsSyncBankResponse.self
        )
    }
}