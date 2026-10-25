import Foundation

public final class PublicClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Store a request for an integration: the integration asked for and the sender's name, company, e-mail and details. When `website` is filled in, the call answers `received` without storing anything.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func integrationRequests(request: Requests.IntegrationRequestsPublicRequest, requestOptions: RequestOptions? = nil) async throws -> IntegrationRequestsPublicResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/public/integration-requests",
            body: request,
            requestOptions: requestOptions,
            responseType: IntegrationRequestsPublicResponse.self
        )
    }

    /// Redirect (302) to the company's payment page for the issued invoice that carries this payment token, rendered from the template set with `sales/invoices/payment-settings/update` with the invoice number, the amount still unpaid, the currency, the token, the invoice id and the customer name (see `sales/invoices/payment-link`). Answers 404 when the token matches no issued invoice, the invoice has `payLinkEnabled` false or the company has no template, and 409 when the invoice is already paid.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func pay(token: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/public/pay/\(token)",
            requestOptions: requestOptions
        )
    }

    /// Return the issued sale document that carries this customer token (`token` of `sales/invoices/view`), in the shape of `sales/invoices/view` without the token. Answers 404 when the token matches no issued document.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invoicesGet(request: Requests.InvoicesGetPublicRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesGetPublicResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/public/invoices/get",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesGetPublicResponse.self
        )
    }

    /// Open a Stripe Checkout page on the company's connected Stripe account for the amount still unpaid on the issued invoice that carries this customer token, and return its `url`. Stripe sends the customer back to the public invoice page. Answers 404 when the token matches no issued invoice, the invoice has `payLinkEnabled` false or the company has no Stripe account that can take charges, 409 when the invoice is already paid and 422 when Stripe cannot take the amount in the invoice currency.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invoicesCheckout(request: Requests.InvoicesCheckoutPublicRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesCheckoutPublicResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/public/invoices/checkout",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesCheckoutPublicResponse.self
        )
    }

    /// Return the PDF of the issued sale document that carries this customer token, base64-encoded, as `sales/invoices/pdf` renders it in the document's own language, English when it has none. Answers 404 when the token matches no issued document.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invoicesPdf(request: Requests.InvoicesPdfPublicRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesPdfPublicResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/public/invoices/pdf",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesPdfPublicResponse.self
        )
    }
}