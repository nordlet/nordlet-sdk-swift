import Foundation

public final class ReportsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1ReportsTrialBalance(request: Requests.PostV1ReportsTrialBalanceRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsTrialBalanceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/trial-balance",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsTrialBalanceResponse.self
        )
    }

    public func postV1ReportsSizeCategory(request: Requests.PostV1ReportsSizeCategoryRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsSizeCategoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/size-category",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsSizeCategoryResponse.self
        )
    }

    public func postV1ReportsFinancialStatements(request: Requests.PostV1ReportsFinancialStatementsRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsFinancialStatementsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/financial-statements",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsFinancialStatementsResponse.self
        )
    }

    public func postV1ReportsGeneralJournal(request: Requests.PostV1ReportsGeneralJournalRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsGeneralJournalResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/general-journal",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsGeneralJournalResponse.self
        )
    }

    public func postV1ReportsGlDetail(request: Requests.PostV1ReportsGlDetailRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsGlDetailResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/gl-detail",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsGlDetailResponse.self
        )
    }

    public func postV1ReportsPartnerBalances(request: Requests.PostV1ReportsPartnerBalancesRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsPartnerBalancesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/partner-balances",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsPartnerBalancesResponse.self
        )
    }

    public func postV1ReportsDebtAging(request: Requests.PostV1ReportsDebtAgingRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsDebtAgingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/debt-aging",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsDebtAgingResponse.self
        )
    }

    public func postV1ReportsMonthlySummary(request: Requests.PostV1ReportsMonthlySummaryRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsMonthlySummaryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/monthly-summary",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsMonthlySummaryResponse.self
        )
    }

    public func postV1ReportsStockBalance(request: Requests.PostV1ReportsStockBalanceRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsStockBalanceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/stock-balance",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsStockBalanceResponse.self
        )
    }

    public func postV1ReportsStockMovement(request: Requests.PostV1ReportsStockMovementRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsStockMovementResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/stock-movement",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsStockMovementResponse.self
        )
    }

    public func postV1ReportsVatSummary(request: Requests.PostV1ReportsVatSummaryRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsVatSummaryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/vat-summary",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsVatSummaryResponse.self
        )
    }

    public func postV1ReportsCashFlow(request: Requests.PostV1ReportsCashFlowRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsCashFlowResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/cash-flow",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsCashFlowResponse.self
        )
    }

    public func postV1ReportsStockAging(request: Requests.PostV1ReportsStockAgingRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsStockAgingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/stock-aging",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsStockAgingResponse.self
        )
    }

    public func postV1ReportsStockShortage(request: Requests.PostV1ReportsStockShortageRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsStockShortageResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/stock-shortage",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsStockShortageResponse.self
        )
    }

    /// Export the ledger of one financial year as an SIE file (the Swedish standard accounting interchange format, specification 4B). The file carries the chart of accounts, the opening and closing balance of every balance sheet account and the turnover of every result account for the year and the year before it, and, when asked for, every posted voucher of the year with its lines. Cost centres travel as dimension 1 and projects as dimension 6. Services that build a Swedish annual report read this file.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1ReportsSie(request: Requests.PostV1ReportsSieRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsSieResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/sie",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsSieResponse.self
        )
    }

    /// Export the posted ledger of a period as a DATEV Buchungsstapel file (DATEV format, category 21, version 700). Every transaction becomes one or more bookings of an amount between an account and a contra account; a transaction with more than two lines is split into pairs whose totals match it. The file is semicolon separated and written in the Windows-1252 character set DATEV expects.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1ReportsDatev(request: Requests.PostV1ReportsDatevRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsDatevResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/datev",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsDatevResponse.self
        )
    }

    /// Export the posted ledger of a period as a French FEC file (fichier des écritures comptables, order of 29 July 2013). One line per journal entry line, with the eighteen fields the order names, in their order, after a header line. Tab separated, UTF-8, comma as the decimal separator.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1ReportsFec(request: Requests.PostV1ReportsFecRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsFecResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/fec",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsFecResponse.self
        )
    }

    public func postV1ReportsEuPurchases(request: Requests.PostV1ReportsEuPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsEuPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/eu-purchases",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsEuPurchasesResponse.self
        )
    }

    public func postV1ReportsVatDetail(request: Requests.PostV1ReportsVatDetailRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsVatDetailResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/vat-detail",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsVatDetailResponse.self
        )
    }

    public func postV1ReportsPosSales(request: Requests.PostV1ReportsPosSalesRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsPosSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/pos-sales",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsPosSalesResponse.self
        )
    }

    public func postV1ReportsOnlineSales(request: Requests.PostV1ReportsOnlineSalesRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsOnlineSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/online-sales",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsOnlineSalesResponse.self
        )
    }

    public func postV1ReportsOss(request: Requests.PostV1ReportsOssRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsOssResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/oss",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsOssResponse.self
        )
    }

    public func postV1ReportsAdvanceReconciliation(request: Requests.PostV1ReportsAdvanceReconciliationRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsAdvanceReconciliationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/advance-reconciliation",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsAdvanceReconciliationResponse.self
        )
    }

    public func postV1ReportsWriteOffActs(request: Requests.PostV1ReportsWriteOffActsRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsWriteOffActsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/write-off-acts",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsWriteOffActsResponse.self
        )
    }

    public func postV1ReportsCostCenters(request: Requests.PostV1ReportsCostCentersRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsCostCentersResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/cost-centers",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsCostCentersResponse.self
        )
    }

    public func postV1ReportsCostCenterActivity(request: Requests.PostV1ReportsCostCenterActivityRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsCostCenterActivityResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/cost-center-activity",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsCostCenterActivityResponse.self
        )
    }

    public func postV1ReportsCostCenterItems(request: Requests.PostV1ReportsCostCenterItemsRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsCostCenterItemsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/cost-center-items",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsCostCenterItemsResponse.self
        )
    }

    public func postV1ReportsJobsCreate(request: Requests.PostV1ReportsJobsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsJobsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/jobs/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsJobsCreateResponse.self
        )
    }

    public func postV1ReportsJobsGet(request: Requests.PostV1ReportsJobsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsJobsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/jobs/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsJobsGetResponse.self
        )
    }

    public func postV1ReportsJobsList(request: Requests.PostV1ReportsJobsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ReportsJobsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/reports/jobs/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ReportsJobsListResponse.self
        )
    }
}