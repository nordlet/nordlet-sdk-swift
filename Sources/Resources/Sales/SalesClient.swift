import Foundation

public final class SalesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1SalesInvoicesCreate(request: Requests.PostV1SalesInvoicesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesCreateResponse.self
        )
    }

    public func postV1SalesInvoicesGet(request: Requests.PostV1SalesInvoicesGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesGetResponse.self
        )
    }

    public func postV1SalesInvoicesPdf(request: Requests.PostV1SalesInvoicesPdfRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesPdfResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/pdf",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesPdfResponse.self
        )
    }

    public func postV1SalesInvoicesSend(request: Requests.PostV1SalesInvoicesSendRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesSendResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/send",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesSendResponse.self
        )
    }

    public func postV1SalesInvoicesPeppolXml(request: Requests.PostV1SalesInvoicesPeppolXmlRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesPeppolXmlResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/peppol-xml",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesPeppolXmlResponse.self
        )
    }

    public func postV1SalesInvoicesPeppolSend(request: Requests.PostV1SalesInvoicesPeppolSendRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesPeppolSendResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/peppol-send",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesPeppolSendResponse.self
        )
    }

    public func postV1SalesInvoicesUpdate(request: Requests.PostV1SalesInvoicesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesUpdateResponse.self
        )
    }

    public func postV1SalesInvoicesDelete(request: Requests.PostV1SalesInvoicesDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesDeleteResponse.self
        )
    }

    public func postV1SalesInvoicesIssue(request: Requests.PostV1SalesInvoicesIssueRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesIssueResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/issue",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesIssueResponse.self
        )
    }

    public func postV1SalesRecognitionSchedulesList(request: Requests.PostV1SalesRecognitionSchedulesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRecognitionSchedulesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition-schedules/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRecognitionSchedulesListResponse.self
        )
    }

    public func postV1SalesInvoicesApplyAdvance(request: Requests.PostV1SalesInvoicesApplyAdvanceRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesApplyAdvanceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/apply-advance",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesApplyAdvanceResponse.self
        )
    }

    public func postV1SalesInvoicesList(request: Requests.PostV1SalesInvoicesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesListResponse.self
        )
    }

    public func postV1SalesActsCreate(request: Requests.PostV1SalesActsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesActsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesActsCreateResponse.self
        )
    }

    public func postV1SalesActsUpdate(request: Requests.PostV1SalesActsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesActsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesActsUpdateResponse.self
        )
    }

    public func postV1SalesActsIssue(request: Requests.PostV1SalesActsIssueRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesActsIssueResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/issue",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesActsIssueResponse.self
        )
    }

    public func postV1SalesActsCancel(request: Requests.PostV1SalesActsCancelRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesActsCancelResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesActsCancelResponse.self
        )
    }

    public func postV1SalesActsGet(request: Requests.PostV1SalesActsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesActsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesActsGetResponse.self
        )
    }

    public func postV1SalesActsList(request: Requests.PostV1SalesActsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesActsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesActsListResponse.self
        )
    }

    public func postV1SalesActsPdf(request: Requests.PostV1SalesActsPdfRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesActsPdfResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/pdf",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesActsPdfResponse.self
        )
    }

    public func postV1SalesRecognitionCompute(request: Requests.PostV1SalesRecognitionComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRecognitionComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRecognitionComputeResponse.self
        )
    }

    public func postV1SalesRecognitionRun(request: Requests.PostV1SalesRecognitionRunRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRecognitionRunResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/run",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRecognitionRunResponse.self
        )
    }

    public func postV1SalesRecognitionProgress(request: Requests.PostV1SalesRecognitionProgressRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRecognitionProgressResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/progress",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRecognitionProgressResponse.self
        )
    }

    /// Apply an IFRS 15 contract modification to a deferred invoice line. Prospective: cancel the pending schedule and respread the unrecognized remainder over the new terms. Cumulative catch-up (ratable only): recompute revenue as if the new terms applied from the start and post the difference immediately.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1SalesRecognitionModify(request: Requests.PostV1SalesRecognitionModifyRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRecognitionModifyResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/modify",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRecognitionModifyResponse.self
        )
    }

    public func postV1SalesRecognitionRunsList(request: Requests.PostV1SalesRecognitionRunsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRecognitionRunsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/runs/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRecognitionRunsListResponse.self
        )
    }

    public func postV1SalesRecognitionSummary(request: Requests.PostV1SalesRecognitionSummaryRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRecognitionSummaryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/summary",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRecognitionSummaryResponse.self
        )
    }

    public func postV1SalesRefundLiabilityList(request: Requests.PostV1SalesRefundLiabilityListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRefundLiabilityListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/refund-liability/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRefundLiabilityListResponse.self
        )
    }

    public func postV1SalesRefundLiabilityTrueUp(request: Requests.PostV1SalesRefundLiabilityTrueUpRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRefundLiabilityTrueUpResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/refund-liability/true-up",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRefundLiabilityTrueUpResponse.self
        )
    }
}