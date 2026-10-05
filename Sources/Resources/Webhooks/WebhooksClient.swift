import Foundation

public final class WebhooksClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func subscriptionsCreate(request: Requests.SubscriptionsCreateWebhooksRequest, requestOptions: RequestOptions? = nil) async throws -> SubscriptionsCreateWebhooksResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/subscriptions/create",
            body: request,
            requestOptions: requestOptions,
            responseType: SubscriptionsCreateWebhooksResponse.self
        )
    }

    public func subscriptionsList(request: Requests.SubscriptionsListWebhooksRequest, requestOptions: RequestOptions? = nil) async throws -> SubscriptionsListWebhooksResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/subscriptions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: SubscriptionsListWebhooksResponse.self
        )
    }

    public func subscriptionsUpdate(request: Requests.SubscriptionsUpdateWebhooksRequest, requestOptions: RequestOptions? = nil) async throws -> SubscriptionsUpdateWebhooksResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/subscriptions/update",
            body: request,
            requestOptions: requestOptions,
            responseType: SubscriptionsUpdateWebhooksResponse.self
        )
    }

    public func subscriptionsDelete(request: Requests.SubscriptionsDeleteWebhooksRequest, requestOptions: RequestOptions? = nil) async throws -> SubscriptionsDeleteWebhooksResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/subscriptions/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: SubscriptionsDeleteWebhooksResponse.self
        )
    }

    public func deliveriesList(request: Requests.DeliveriesListWebhooksRequest, requestOptions: RequestOptions? = nil) async throws -> DeliveriesListWebhooksResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/deliveries/list",
            body: request,
            requestOptions: requestOptions,
            responseType: DeliveriesListWebhooksResponse.self
        )
    }

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