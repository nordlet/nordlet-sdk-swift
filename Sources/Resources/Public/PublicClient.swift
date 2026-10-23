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

    /// Redirect (302) to the company's payment page for the issued invoice that carries this payment token, rendered from the template set with `sales/invoices/payment-settings/update` with the invoice number, the amount still unpaid, the currency, the token, the invoice id and the customer name (see `sales/invoices/payment-link`). Answers 404 when the token matches no issued invoice or the company has no template, and 409 when the invoice is already paid.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func pay(token: String, requestOptions: RequestOptions? = nil) async throws -> Void {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/public/pay/\(token)",
            requestOptions: requestOptions
        )
    }
}