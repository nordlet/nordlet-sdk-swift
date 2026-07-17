import Foundation

public final class WebhooksClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1WebhooksSubscriptionsCreate(request: Requests.PostV1WebhooksSubscriptionsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1WebhooksSubscriptionsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/subscriptions/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1WebhooksSubscriptionsCreateResponse.self
        )
    }

    public func postV1WebhooksSubscriptionsList(request: Requests.PostV1WebhooksSubscriptionsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1WebhooksSubscriptionsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/subscriptions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1WebhooksSubscriptionsListResponse.self
        )
    }

    public func postV1WebhooksSubscriptionsUpdate(request: Requests.PostV1WebhooksSubscriptionsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1WebhooksSubscriptionsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/subscriptions/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1WebhooksSubscriptionsUpdateResponse.self
        )
    }

    public func postV1WebhooksSubscriptionsDelete(request: Requests.PostV1WebhooksSubscriptionsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1WebhooksSubscriptionsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/subscriptions/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1WebhooksSubscriptionsDeleteResponse.self
        )
    }

    public func postV1WebhooksDeliveriesList(request: Requests.PostV1WebhooksDeliveriesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1WebhooksDeliveriesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/deliveries/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1WebhooksDeliveriesListResponse.self
        )
    }

    public func postV1WebhooksDeliveriesRedeliver(request: Requests.PostV1WebhooksDeliveriesRedeliverRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1WebhooksDeliveriesRedeliverResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/webhooks/deliveries/redeliver",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1WebhooksDeliveriesRedeliverResponse.self
        )
    }
}