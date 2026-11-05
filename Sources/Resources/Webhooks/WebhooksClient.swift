import Foundation

public final class WebhooksClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Register a webhook endpoint for the given event types (`*` for every event). The URL must be an https address that resolves to a public network (422 otherwise). The signing secret is generated unless `secret` is given (at least 32 characters), and this call is the only one that returns it. Answers 503 when the platform encryption key is not configured.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func subscriptionsCreate(request: Requests.SubscriptionsCreateWebhooksRequest, requestOptions: RequestOptions? = nil) async throws -> SubscriptionsCreateWebhooksResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/subscriptions/create",
            body: request,
            requestOptions: requestOptions,
            responseType: SubscriptionsCreateWebhooksResponse.self
        )
    }

    /// List the company's webhook subscriptions with their last delivery state. Filterable by `url` and `isActive`; sortable by `createdAt` and `url`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func subscriptionsList(request: Requests.SubscriptionsListWebhooksRequest, requestOptions: RequestOptions? = nil) async throws -> SubscriptionsListWebhooksResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/subscriptions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: SubscriptionsListWebhooksResponse.self
        )
    }

    /// Replace the signing secret of a subscription and return the new one; this call is the only one that returns it. The secret is generated unless `secret` is given (at least 32 characters). For 24 hours `x-nordlet-signature-v2` carries two `v1=` values, one with the new secret and one with the previous one, so a receiver can switch secrets without refusing deliveries; `x-nordlet-signature` uses the new secret only. Answers 404 for an unknown subscription and 503 when the platform encryption key is not configured.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func subscriptionsRotateSecret(request: Requests.SubscriptionsRotateSecretWebhooksRequest, requestOptions: RequestOptions? = nil) async throws -> SubscriptionsRotateSecretWebhooksResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/subscriptions/rotate-secret",
            body: request,
            requestOptions: requestOptions,
            responseType: SubscriptionsRotateSecretWebhooksResponse.self
        )
    }

    /// Change the URL, event types or `isActive` flag of a subscription; at least one field is required (400) and a new URL must be an https address that resolves to a public network (422). Setting `isActive` to true also clears `pausedAt` and `consecutiveFailures`, which is how a subscription paused after 5 failed deliveries in a row is switched back on.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func subscriptionsUpdate(request: Requests.SubscriptionsUpdateWebhooksRequest, requestOptions: RequestOptions? = nil) async throws -> SubscriptionsUpdateWebhooksResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/subscriptions/update",
            body: request,
            requestOptions: requestOptions,
            responseType: SubscriptionsUpdateWebhooksResponse.self
        )
    }

    /// Delete a webhook subscription.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func subscriptionsDelete(request: Requests.SubscriptionsDeleteWebhooksRequest, requestOptions: RequestOptions? = nil) async throws -> SubscriptionsDeleteWebhooksResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/subscriptions/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: SubscriptionsDeleteWebhooksResponse.self
        )
    }

    /// List the company's webhook deliveries, newest first. Filterable by `status`, `eventType` and `subscriptionId`; sortable by `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deliveriesList(request: Requests.DeliveriesListWebhooksRequest, requestOptions: RequestOptions? = nil) async throws -> DeliveriesListWebhooksResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/deliveries/list",
            body: request,
            requestOptions: requestOptions,
            responseType: DeliveriesListWebhooksResponse.self
        )
    }

    /// Send a delivery again now: its status goes back to `pending` with the attempt count and last error cleared. Answers 409 when the subscription is inactive.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deliveriesRedeliver(request: Requests.DeliveriesRedeliverWebhooksRequest, requestOptions: RequestOptions? = nil) async throws -> DeliveriesRedeliverWebhooksResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/deliveries/redeliver",
            body: request,
            requestOptions: requestOptions,
            responseType: DeliveriesRedeliverWebhooksResponse.self
        )
    }
}