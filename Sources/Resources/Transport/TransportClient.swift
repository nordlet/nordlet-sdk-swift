import Foundation

public final class TransportClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Create a draft waybill to the consignee. The cargo lines are `lines` or, when none are given and `saleInvoiceId` is set, the product lines of that sale invoice (422 when it has none); a line without `description`, `unit` or `productCode` takes them from its item. `documentDate` defaults to the company's today and `series` to `VAZ`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func waybillsCreate(request: Requests.WaybillsCreateTransportRequest, requestOptions: RequestOptions? = nil) async throws -> WaybillsCreateTransportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/create",
            body: request,
            requestOptions: requestOptions,
            responseType: WaybillsCreateTransportResponse.self
        )
    }

    /// Change a draft waybill; omitted fields keep their value, the optional ones can be cleared with null, and `lines`, when given, replace all existing lines. A waybill that is already issued or cancelled is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func waybillsUpdate(request: Requests.WaybillsUpdateTransportRequest, requestOptions: RequestOptions? = nil) async throws -> WaybillsUpdateTransportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/update",
            body: request,
            requestOptions: requestOptions,
            responseType: WaybillsUpdateTransportResponse.self
        )
    }

    /// Issue a draft waybill: it takes the next number of its `series` for the year of `documentDate` and becomes `issued`. Without a vehicle plate or without lines the call is refused with 422, a waybill that is not a draft with 409. Only issued waybills can go into the Lithuanian i.VAZ file (`declarations/lt/ivaz/generate`) and the Romanian e-Transport declaration (`declarations/ro/etransport/build`).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func waybillsIssue(request: Requests.WaybillsIssueTransportRequest, requestOptions: RequestOptions? = nil) async throws -> WaybillsIssueTransportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/issue",
            body: request,
            requestOptions: requestOptions,
            responseType: WaybillsIssueTransportResponse.self
        )
    }

    /// Cancel a draft or issued waybill. An already cancelled one is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func waybillsCancel(request: Requests.WaybillsCancelTransportRequest, requestOptions: RequestOptions? = nil) async throws -> WaybillsCancelTransportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: WaybillsCancelTransportResponse.self
        )
    }

    /// Read one waybill with its lines.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func waybillsGet(request: Requests.WaybillsGetTransportRequest, requestOptions: RequestOptions? = nil) async throws -> WaybillsGetTransportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/get",
            body: request,
            requestOptions: requestOptions,
            responseType: WaybillsGetTransportResponse.self
        )
    }

    /// List waybills with the consignee's name. Filterable by `status`, `consigneePartnerId`, `documentDate`, `fullNumber` and `dispatchAt`; sortable by `createdAt`, `dispatchAt` and `fullNumber`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func waybillsList(request: Requests.WaybillsListTransportRequest, requestOptions: RequestOptions? = nil) async throws -> WaybillsListTransportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/list",
            body: request,
            requestOptions: requestOptions,
            responseType: WaybillsListTransportResponse.self
        )
    }
}