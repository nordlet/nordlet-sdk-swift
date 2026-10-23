import Foundation

public final class PeppolClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Look a receiver up on the Peppol network (SML and SMP) and say which Peppol BIS Billing 3.0 documents it accepts. Give `partnerId` to look up a partner by its Peppol ID, VAT code or registration code, or `participantId` as "<scheme>:<identifier>". Works without an access point.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func participantsLookup(request: Requests.ParticipantsLookupPeppolRequest, requestOptions: RequestOptions? = nil) async throws -> ParticipantsLookupPeppolResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/peppol/participants/lookup",
            body: request,
            requestOptions: requestOptions,
            responseType: ParticipantsLookupPeppolResponse.self
        )
    }

    /// Apply one event: a delivery status event updates the Peppol status of the sale invoice with that message id and, when the status changes, emits `sale_invoice.peppol_delivered`, `sale_invoice.peppol_rejected` or `sale_invoice.peppol_failed`; a received-document event fetches the document from the access point, stores it as a document capture with the matched supplier, emits `document_capture.peppol_received` and marks it read at the access point (a document already stored is skipped). `handled` is false when the event matched no invoice or document. Answers 404 when no company uses that provider account, 401 when the signature does not match.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func webhooks(provider: String, companyId: String, requestOptions: RequestOptions? = nil) async throws -> WebhooksPeppolResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/peppol/webhooks/\(provider)/\(companyId)",
            requestOptions: requestOptions,
            responseType: WebhooksPeppolResponse.self
        )
    }
}