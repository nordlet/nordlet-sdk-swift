import Foundation

public final class ReportsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Trial balance of the posted ledger for a period: for every account with an opening balance or movement, the balance before `fromDate`, the debit and credit turnover between `fromDate` and `toDate`, and the closing balance, with debit and credit totals. Template account names follow the `Accept-Language` header.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func trialBalance(request: Requests.TrialBalanceReportsRequest, requestOptions: RequestOptions? = nil) async throws -> TrialBalanceReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/trial-balance",
            body: request,
            requestOptions: requestOptions,
            responseType: TrialBalanceReportsResponse.self
        )
    }

    /// Classify the company's size for a calendar year as micro, small, medium or large from total assets at the year end, the net turnover of the year and the average number of employees under employment contracts, against the limits returned in `thresholds`; a category applies when at least two of its three limits are met. This is the default category of `reports/financial-statements`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func sizeCategory(request: Requests.SizeCategoryReportsRequest, requestOptions: RequestOptions? = nil) async throws -> SizeCategoryReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/size-category",
            body: request,
            requestOptions: requestOptions,
            responseType: SizeCategoryReportsResponse.self
        )
    }

    /// Balance sheet at `toDate` and profit and loss for the period from the posted ledger, year-end closing entries excluded, laid out by size category: `category` when given, else the one `reports/size-category` derives for the period. Micro gets the short balance sheet and profit and loss; the other categories add the balance sheet and profit and loss detail; medium and large also get the changes in equity and a cash flow summary. Line groupings follow the company's chart template.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func financialStatements(request: Requests.FinancialStatementsReportsRequest, requestOptions: RequestOptions? = nil) async throws -> FinancialStatementsReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/financial-statements",
            body: request,
            requestOptions: requestOptions,
            responseType: FinancialStatementsReportsResponse.self
        )
    }

    /// Posted journal transactions of a period in date order, each with its lines (account, debit, credit), paged with `page` and `pageSize` and the total count. Template account names follow the `Accept-Language` header.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func generalJournal(request: Requests.GeneralJournalReportsRequest, requestOptions: RequestOptions? = nil) async throws -> GeneralJournalReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/general-journal",
            body: request,
            requestOptions: requestOptions,
            responseType: GeneralJournalReportsResponse.self
        )
    }

    /// Ledger card of one account for a period: the opening balance before `fromDate`, every posted line in date order with a running balance, and the closing balance.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func glDetail(request: Requests.GlDetailReportsRequest, requestOptions: RequestOptions? = nil) async throws -> GlDetailReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/gl-detail",
            body: request,
            requestOptions: requestOptions,
            responseType: GlDetailReportsResponse.self
        )
    }

    /// Open balance per partner: receivables from issued sale invoices and payables from registered purchase invoices that are not fully paid, credit notes reducing the balance, converted to the base currency at the document rate, with totals.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func partnerBalances(request: Requests.PartnerBalancesReportsRequest, requestOptions: RequestOptions? = nil) async throws -> PartnerBalancesReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/partner-balances",
            body: request,
            requestOptions: requestOptions,
            responseType: PartnerBalancesReportsResponse.self
        )
    }

    /// Ageing of the open receivables or payables (`side`) at `asOf` (default the company's current date) per partner: not yet due, 1 to 30, 31 to 60, 61 to 90 and over 90 days past the due date. Counts documents dated on or before `asOf` and payments made up to that date.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func debtAging(request: Requests.DebtAgingReportsRequest, requestOptions: RequestOptions? = nil) async throws -> DebtAgingReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/debt-aging",
            body: request,
            requestOptions: requestOptions,
            responseType: DebtAgingReportsResponse.self
        )
    }

    /// One row per calendar month for the last `months` months ending with the current one: the receivable and payable balances at the end of the month and the revenue, expenses and net result posted in it, year-end closing entries excluded.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func monthlySummary(request: Requests.MonthlySummaryReportsRequest, requestOptions: RequestOptions? = nil) async throws -> MonthlySummaryReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/monthly-summary",
            body: request,
            requestOptions: requestOptions,
            responseType: MonthlySummaryReportsResponse.self
        )
    }

    /// Quantity and value on hand per item and warehouse at `asOf`, summed from the stock movements dated on or before it; `warehouseId` limits the report to one warehouse. Rows with zero quantity and zero value are left out.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func stockBalance(request: Requests.StockBalanceReportsRequest, requestOptions: RequestOptions? = nil) async throws -> StockBalanceReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/stock-balance",
            body: request,
            requestOptions: requestOptions,
            responseType: StockBalanceReportsResponse.self
        )
    }

    /// Stock movement per item for a period: opening quantity and value before `fromDate`, quantities and values received and issued between `fromDate` and `toDate`, and the closing figures; `warehouseId` and `itemId` narrow the report.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func stockMovement(request: Requests.StockMovementReportsRequest, requestOptions: RequestOptions? = nil) async throws -> StockMovementReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/stock-movement",
            body: request,
            requestOptions: requestOptions,
            responseType: StockMovementReportsResponse.self
        )
    }

    /// VAT of issued sale invoices (by issue date) or registered purchase invoices (by registration date) in a period, summed per VAT rate: net, VAT and gross in the base currency and the number of documents, credit notes counting negative. The rows of `reports/vat-detail` grouped by rate.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func vatSummary(request: Requests.VatSummaryReportsRequest, requestOptions: RequestOptions? = nil) async throws -> VatSummaryReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/vat-summary",
            body: request,
            requestOptions: requestOptions,
            responseType: VatSummaryReportsResponse.self
        )
    }

    /// Cash flow statement of a period from the posted transactions that touch a cash account: the inflow and outflow of every counterpart account, grouped into operating, investing and financing by the account prefixes of the company's chart template, with opening and closing cash and `balanced` telling whether opening cash plus the net change equals closing cash. Template account names follow the `Accept-Language` header.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cashFlow(request: Requests.CashFlowReportsRequest, requestOptions: RequestOptions? = nil) async throws -> CashFlowReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/cash-flow",
            body: request,
            requestOptions: requestOptions,
            responseType: CashFlowReportsResponse.self
        )
    }

    /// Age of the stock on hand at `asOf` per item and warehouse: the remaining quantity and value of each FIFO receipt layer, bucketed by days since the receipt (0 to 30, 31 to 60, 61 to 90, over 90), with totals; `warehouseId` limits the report to one warehouse. When movements after `asOf` exist, the layers are rebuilt by replaying the movements up to that date.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func stockAging(request: Requests.StockAgingReportsRequest, requestOptions: RequestOptions? = nil) async throws -> StockAgingReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/stock-aging",
            body: request,
            requestOptions: requestOptions,
            responseType: StockAgingReportsResponse.self
        )
    }

    /// Items whose reserved quantity exceeds the quantity on hand, per warehouse: on hand, reserved and the shortage. Only items with a reservation are checked; `warehouseId` limits the report to one warehouse.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func stockShortage(request: Requests.StockShortageReportsRequest, requestOptions: RequestOptions? = nil) async throws -> StockShortageReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/stock-shortage",
            body: request,
            requestOptions: requestOptions,
            responseType: StockShortageReportsResponse.self
        )
    }

    /// Export the ledger of one financial year as an SIE file (the Swedish standard accounting interchange format, specification 4B). The file carries the chart of accounts, the opening and closing balance of every balance sheet account and the turnover of every result account for the year and the year before it, and, when asked for, every posted voucher of the year with its lines. Cost centres travel as dimension 1 and projects as dimension 6. Services that build a Swedish annual report read this file.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func sie(request: Requests.SieReportsRequest, requestOptions: RequestOptions? = nil) async throws -> SieReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/sie",
            body: request,
            requestOptions: requestOptions,
            responseType: SieReportsResponse.self
        )
    }

    /// Export the posted ledger of a period as a DATEV Buchungsstapel file (DATEV format, category 21, version 700). Every transaction becomes one or more bookings of an amount between an account and a contra account; a transaction with more than two lines is split into pairs whose totals match it. The file is semicolon separated and written in the Windows-1252 character set DATEV expects.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func datev(request: Requests.DatevReportsRequest, requestOptions: RequestOptions? = nil) async throws -> DatevReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/datev",
            body: request,
            requestOptions: requestOptions,
            responseType: DatevReportsResponse.self
        )
    }

    /// Export the posted ledger of a period as a French FEC file (fichier des écritures comptables, order of 29 July 2013). One line per journal entry line, with the eighteen fields the order names, in their order, after a header line. Tab separated, UTF-8, comma as the decimal separator.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func fec(request: Requests.FecReportsRequest, requestOptions: RequestOptions? = nil) async throws -> FecReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/fec",
            body: request,
            requestOptions: requestOptions,
            responseType: FecReportsResponse.self
        )
    }

    /// Registered purchase invoices of a period (by registration date) from partners in another EU country, summed per partner country and VAT rate: net and VAT in the base currency and the number of documents, credit notes counting negative. The partner's country is the country code of its address, else the first two characters of its VAT number.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euPurchases(request: Requests.EuPurchasesReportsRequest, requestOptions: RequestOptions? = nil) async throws -> EuPurchasesReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/eu-purchases",
            body: request,
            requestOptions: requestOptions,
            responseType: EuPurchasesReportsResponse.self
        )
    }

    /// VAT of issued sale invoices (by issue date) or registered purchase invoices (by registration date) in a period, one row per document and VAT rate: net, VAT and gross in the base currency, with totals; credit notes count negative. `reports/vat-summary` groups these rows by rate.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func vatDetail(request: Requests.VatDetailReportsRequest, requestOptions: RequestOptions? = nil) async throws -> VatDetailReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/vat-detail",
            body: request,
            requestOptions: requestOptions,
            responseType: VatDetailReportsResponse.self
        )
    }

    /// POS reports of a period (by report date): per report the net, VAT, gross, cash and card amounts and the cost of goods sold, the net and VAT per VAT rate across the reports, and totals.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func posSales(request: Requests.PosSalesReportsRequest, requestOptions: RequestOptions? = nil) async throws -> PosSalesReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/pos-sales",
            body: request,
            requestOptions: requestOptions,
            responseType: PosSalesReportsResponse.self
        )
    }

    /// Sales orders created in a period, grouped by channel and currency: the number of orders, how many are fulfilled, cancelled or still open (new or reserved), and the net and gross of the orders that are not cancelled, computed from their lines.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func onlineSales(request: Requests.OnlineSalesReportsRequest, requestOptions: RequestOptions? = nil) async throws -> OnlineSalesReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/online-sales",
            body: request,
            requestOptions: requestOptions,
            responseType: OnlineSalesReportsResponse.self
        )
    }

    /// Issued sale invoices and credit notes of a period (by issue date) to partners in another EU country, summed per partner country and VAT rate: net and VAT in the base currency and the number of documents. The partner's country is the country code of its address, else the first two characters of its VAT number.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func oss(request: Requests.OssReportsRequest, requestOptions: RequestOptions? = nil) async throws -> OssReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/oss",
            body: request,
            requestOptions: requestOptions,
            responseType: OssReportsResponse.self
        )
    }

    /// Cash advances per employee for a period: the balance before `fromDate`, the advances paid out and returned through cash orders in the period, the amount settled by expense reports dated in the period, and the closing balance. A cash order counts as an advance when it names an employee and its counter account is the `cash.advances` posting rule.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func advanceReconciliation(request: Requests.AdvanceReconciliationReportsRequest, requestOptions: RequestOptions? = nil) async throws -> AdvanceReconciliationReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/advance-reconciliation",
            body: request,
            requestOptions: requestOptions,
            responseType: AdvanceReconciliationReportsResponse.self
        )
    }

    /// Stock issued by write-offs and stock takes in a period: one row per outgoing movement with item, warehouse, quantity, cost and notes, and the total cost; `warehouseId` limits the report to one warehouse.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func writeOffActs(request: Requests.WriteOffActsReportsRequest, requestOptions: RequestOptions? = nil) async throws -> WriteOffActsReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/write-off-acts",
            body: request,
            requestOptions: requestOptions,
            responseType: WriteOffActsReportsResponse.self
        )
    }

    /// Income, expenses and result per cost centre for a period, from the posted journal lines assigned to a cost centre.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func costCenters(request: Requests.CostCentersReportsRequest, requestOptions: RequestOptions? = nil) async throws -> CostCentersReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/cost-centers",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCentersReportsResponse.self
        )
    }

    /// Posted journal lines of one cost centre for a period, summed per account: debit, credit and net. Template account names follow the `Accept-Language` header.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func costCenterActivity(request: Requests.CostCenterActivityReportsRequest, requestOptions: RequestOptions? = nil) async throws -> CostCenterActivityReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/cost-center-activity",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCenterActivityReportsResponse.self
        )
    }

    /// Net purchases per cost centre and item for a period, from the lines of registered purchase invoices (by registration date) that carry a cost centre, credit notes counting negative; `costCenterId` limits the report to one cost centre. A line without an item is reported under its description.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func costCenterItems(request: Requests.CostCenterItemsReportsRequest, requestOptions: RequestOptions? = nil) async throws -> CostCenterItemsReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/cost-center-items",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCenterItemsReportsResponse.self
        )
    }

    /// Queue a report to be built in the background in one or more formats (`json`, `xlsx`, `pdf`) and stored as files; the job is returned at once with status `queued`. `reportType` is one of trial-balance, partner-balances, debt-aging, stock-balance, vat-summary, vat-detail, eu-purchases, oss, pos-sales, online-sales, advance-reconciliation, write-off-acts, cost-centers, cost-center-activity, cost-center-items and cash-flow, and `params` is the body of that report route; an unknown type or invalid params are refused with 422. Follow the job with `reports/jobs/get`, download its outputs with `files/get`, and listen for `report.completed` or `report.failed`; a report that does not finish within ten minutes fails.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func jobsCreate(request: Requests.JobsCreateReportsRequest, requestOptions: RequestOptions? = nil) async throws -> JobsCreateReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/jobs/create",
            body: request,
            requestOptions: requestOptions,
            responseType: JobsCreateReportsResponse.self
        )
    }

    /// Return one report job with its status (`queued`, `running`, `completed` or `failed`), the error of a failed job and the output files of a completed one.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func jobsGet(request: Requests.JobsGetReportsRequest, requestOptions: RequestOptions? = nil) async throws -> JobsGetReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/jobs/get",
            body: request,
            requestOptions: requestOptions,
            responseType: JobsGetReportsResponse.self
        )
    }

    /// List the company's report jobs, newest first; filterable by `status` and `reportType`, sortable by `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func jobsList(request: Requests.JobsListReportsRequest, requestOptions: RequestOptions? = nil) async throws -> JobsListReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/jobs/list",
            body: request,
            requestOptions: requestOptions,
            responseType: JobsListReportsResponse.self
        )
    }
}