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

    public func webhooks(provider: String, companyId: String, requestOptions: RequestOptions? = nil) async throws -> WebhooksPeppolResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/peppol/webhooks/\(provider)/\(companyId)",
            requestOptions: requestOptions,
            responseType: WebhooksPeppolResponse.self
        )
    }
}