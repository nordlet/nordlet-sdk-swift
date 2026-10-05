import Foundation

public final class ReportsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func trialBalance(request: Requests.TrialBalanceReportsRequest, requestOptions: RequestOptions? = nil) async throws -> TrialBalanceReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/trial-balance",
            body: request,
            requestOptions: requestOptions,
            responseType: TrialBalanceReportsResponse.self
        )
    }

    public func sizeCategory(request: Requests.SizeCategoryReportsRequest, requestOptions: RequestOptions? = nil) async throws -> SizeCategoryReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/size-category",
            body: request,
            requestOptions: requestOptions,
            responseType: SizeCategoryReportsResponse.self
        )
    }

    public func financialStatements(request: Requests.FinancialStatementsReportsRequest, requestOptions: RequestOptions? = nil) async throws -> FinancialStatementsReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/financial-statements",
            body: request,
            requestOptions: requestOptions,
            responseType: FinancialStatementsReportsResponse.self
        )
    }

    public func generalJournal(request: Requests.GeneralJournalReportsRequest, requestOptions: RequestOptions? = nil) async throws -> GeneralJournalReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/general-journal",
            body: request,
            requestOptions: requestOptions,
            responseType: GeneralJournalReportsResponse.self
        )
    }

    public func glDetail(request: Requests.GlDetailReportsRequest, requestOptions: RequestOptions? = nil) async throws -> GlDetailReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/gl-detail",
            body: request,
            requestOptions: requestOptions,
            responseType: GlDetailReportsResponse.self
        )
    }

    public func partnerBalances(request: Requests.PartnerBalancesReportsRequest, requestOptions: RequestOptions? = nil) async throws -> PartnerBalancesReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/partner-balances",
            body: request,
            requestOptions: requestOptions,
            responseType: PartnerBalancesReportsResponse.self
        )
    }

    public func debtAging(request: Requests.DebtAgingReportsRequest, requestOptions: RequestOptions? = nil) async throws -> DebtAgingReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/debt-aging",
            body: request,
            requestOptions: requestOptions,
            responseType: DebtAgingReportsResponse.self
        )
    }

    public func monthlySummary(request: Requests.MonthlySummaryReportsRequest, requestOptions: RequestOptions? = nil) async throws -> MonthlySummaryReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/monthly-summary",
            body: request,
            requestOptions: requestOptions,
            responseType: MonthlySummaryReportsResponse.self
        )
    }

    public func stockBalance(request: Requests.StockBalanceReportsRequest, requestOptions: RequestOptions? = nil) async throws -> StockBalanceReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/stock-balance",
            body: request,
            requestOptions: requestOptions,
            responseType: StockBalanceReportsResponse.self
        )
    }

    public func stockMovement(request: Requests.StockMovementReportsRequest, requestOptions: RequestOptions? = nil) async throws -> StockMovementReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/stock-movement",
            body: request,
            requestOptions: requestOptions,
            responseType: StockMovementReportsResponse.self
        )
    }

    public func vatSummary(request: Requests.VatSummaryReportsRequest, requestOptions: RequestOptions? = nil) async throws -> VatSummaryReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/vat-summary",
            body: request,
            requestOptions: requestOptions,
            responseType: VatSummaryReportsResponse.self
        )
    }

    public func cashFlow(request: Requests.CashFlowReportsRequest, requestOptions: RequestOptions? = nil) async throws -> CashFlowReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/cash-flow",
            body: request,
            requestOptions: requestOptions,
            responseType: CashFlowReportsResponse.self
        )
    }

    public func stockAging(request: Requests.StockAgingReportsRequest, requestOptions: RequestOptions? = nil) async throws -> StockAgingReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/stock-aging",
            body: request,
            requestOptions: requestOptions,
            responseType: StockAgingReportsResponse.self
        )
    }

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

    public func euPurchases(request: Requests.EuPurchasesReportsRequest, requestOptions: RequestOptions? = nil) async throws -> EuPurchasesReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/eu-purchases",
            body: request,
            requestOptions: requestOptions,
            responseType: EuPurchasesReportsResponse.self
        )
    }

    public func vatDetail(request: Requests.VatDetailReportsRequest, requestOptions: RequestOptions? = nil) async throws -> VatDetailReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/vat-detail",
            body: request,
            requestOptions: requestOptions,
            responseType: VatDetailReportsResponse.self
        )
    }

    public func posSales(request: Requests.PosSalesReportsRequest, requestOptions: RequestOptions? = nil) async throws -> PosSalesReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/pos-sales",
            body: request,
            requestOptions: requestOptions,
            responseType: PosSalesReportsResponse.self
        )
    }

    public func onlineSales(request: Requests.OnlineSalesReportsRequest, requestOptions: RequestOptions? = nil) async throws -> OnlineSalesReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/online-sales",
            body: request,
            requestOptions: requestOptions,
            responseType: OnlineSalesReportsResponse.self
        )
    }

    public func oss(request: Requests.OssReportsRequest, requestOptions: RequestOptions? = nil) async throws -> OssReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/oss",
            body: request,
            requestOptions: requestOptions,
            responseType: OssReportsResponse.self
        )
    }

    public func advanceReconciliation(request: Requests.AdvanceReconciliationReportsRequest, requestOptions: RequestOptions? = nil) async throws -> AdvanceReconciliationReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/advance-reconciliation",
            body: request,
            requestOptions: requestOptions,
            responseType: AdvanceReconciliationReportsResponse.self
        )
    }

    public func writeOffActs(request: Requests.WriteOffActsReportsRequest, requestOptions: RequestOptions? = nil) async throws -> WriteOffActsReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/write-off-acts",
            body: request,
            requestOptions: requestOptions,
            responseType: WriteOffActsReportsResponse.self
        )
    }

    public func costCenters(request: Requests.CostCentersReportsRequest, requestOptions: RequestOptions? = nil) async throws -> CostCentersReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/cost-centers",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCentersReportsResponse.self
        )
    }

    public func costCenterActivity(request: Requests.CostCenterActivityReportsRequest, requestOptions: RequestOptions? = nil) async throws -> CostCenterActivityReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/cost-center-activity",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCenterActivityReportsResponse.self
        )
    }

    public func costCenterItems(request: Requests.CostCenterItemsReportsRequest, requestOptions: RequestOptions? = nil) async throws -> CostCenterItemsReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/cost-center-items",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCenterItemsReportsResponse.self
        )
    }

    public func jobsCreate(request: Requests.JobsCreateReportsRequest, requestOptions: RequestOptions? = nil) async throws -> JobsCreateReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/jobs/create",
            body: request,
            requestOptions: requestOptions,
            responseType: JobsCreateReportsResponse.self
        )
    }

    public func jobsGet(request: Requests.JobsGetReportsRequest, requestOptions: RequestOptions? = nil) async throws -> JobsGetReportsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/jobs/get",
            body: request,
            requestOptions: requestOptions,
            responseType: JobsGetReportsResponse.self
        )
    }

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