import Foundation
import Testing
import Api

@Suite("WebhooksClient Wire Tests") struct WebhooksClientWireTests {
    @Test func postV1WebhooksSubscriptionsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "url": "url",
                  "events": [
                    "events"
                  ],
                  "isActive": true,
                  "createdAt": "createdAt",
                  "secret": "secret"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1WebhooksSubscriptionsCreateResponse(
            id: "id",
            url: "url",
            events: [
                "events"
            ],
            isActive: true,
            createdAt: "createdAt",
            secret: "secret"
        )
        let response = try await client.webhooks.postV1WebhooksSubscriptionsCreate(
            request: .init(
                url: "url",
                events: [
                    "events"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1WebhooksSubscriptionsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "url": "url",
                  "events": [
                    "events",
                    "events"
                  ],
                  "isActive": true,
                  "createdAt": "createdAt",
                  "secret": "secret"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1WebhooksSubscriptionsCreateResponse(
            id: "x",
            url: "url",
            events: [
                "events",
                "events"
            ],
            isActive: true,
            createdAt: "createdAt",
            secret: "secret"
        )
        let response = try await client.webhooks.postV1WebhooksSubscriptionsCreate(
            request: .init(
                url: "url",
                events: [
                    "events",
                    "events"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1WebhooksSubscriptionsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "url": "url",
                      "events": [
                        "events"
                      ],
                      "isActive": true,
                      "createdAt": "createdAt"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1WebhooksSubscriptionsListResponse(
            rows: [
                PostV1WebhooksSubscriptionsListResponseRowsItem(
                    id: "id",
                    url: "url",
                    events: [
                        "events"
                    ],
                    isActive: true,
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.webhooks.postV1WebhooksSubscriptionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1WebhooksSubscriptionsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "url": "url",
                      "events": [
                        "events",
                        "events"
                      ],
                      "isActive": true,
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "url": "url",
                      "events": [
                        "events",
                        "events"
                      ],
                      "isActive": true,
                      "createdAt": "createdAt"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1WebhooksSubscriptionsListResponse(
            rows: [
                PostV1WebhooksSubscriptionsListResponseRowsItem(
                    id: "x",
                    url: "url",
                    events: [
                        "events",
                        "events"
                    ],
                    isActive: true,
                    createdAt: "createdAt"
                ),
                PostV1WebhooksSubscriptionsListResponseRowsItem(
                    id: "x",
                    url: "url",
                    events: [
                        "events",
                        "events"
                    ],
                    isActive: true,
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.webhooks.postV1WebhooksSubscriptionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1WebhooksSubscriptionsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "url": "url",
                  "events": [
                    "events"
                  ],
                  "isActive": true,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1WebhooksSubscriptionsUpdateResponse(
            id: "id",
            url: "url",
            events: [
                "events"
            ],
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.webhooks.postV1WebhooksSubscriptionsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1WebhooksSubscriptionsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "url": "url",
                  "events": [
                    "events",
                    "events"
                  ],
                  "isActive": true,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1WebhooksSubscriptionsUpdateResponse(
            id: "x",
            url: "url",
            events: [
                "events",
                "events"
            ],
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.webhooks.postV1WebhooksSubscriptionsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1WebhooksSubscriptionsDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1WebhooksSubscriptionsDeleteResponse(
            id: "id"
        )
        let response = try await client.webhooks.postV1WebhooksSubscriptionsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1WebhooksSubscriptionsDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1WebhooksSubscriptionsDeleteResponse(
            id: "x"
        )
        let response = try await client.webhooks.postV1WebhooksSubscriptionsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1WebhooksDeliveriesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "subscriptionId": "subscriptionId",
                      "eventType": "eventType",
                      "status": "pending",
                      "attempts": 1000000,
                      "lastError": "lastError",
                      "createdAt": "createdAt",
                      "deliveredAt": "deliveredAt"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1WebhooksDeliveriesListResponse(
            rows: [
                PostV1WebhooksDeliveriesListResponseRowsItem(
                    id: "id",
                    subscriptionId: "subscriptionId",
                    eventType: "eventType",
                    status: .pending,
                    attempts: 1000000,
                    lastError: Nullable<String>.value("lastError"),
                    createdAt: "createdAt",
                    deliveredAt: Nullable<String>.value("deliveredAt")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.webhooks.postV1WebhooksDeliveriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1WebhooksDeliveriesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "subscriptionId": "x",
                      "eventType": "eventType",
                      "status": "pending",
                      "attempts": 1000000,
                      "lastError": "lastError",
                      "createdAt": "createdAt",
                      "deliveredAt": "deliveredAt"
                    },
                    {
                      "id": "x",
                      "subscriptionId": "x",
                      "eventType": "eventType",
                      "status": "pending",
                      "attempts": 1000000,
                      "lastError": "lastError",
                      "createdAt": "createdAt",
                      "deliveredAt": "deliveredAt"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1WebhooksDeliveriesListResponse(
            rows: [
                PostV1WebhooksDeliveriesListResponseRowsItem(
                    id: "x",
                    subscriptionId: "x",
                    eventType: "eventType",
                    status: .pending,
                    attempts: 1000000,
                    lastError: Nullable<String>.value("lastError"),
                    createdAt: "createdAt",
                    deliveredAt: Nullable<String>.value("deliveredAt")
                ),
                PostV1WebhooksDeliveriesListResponseRowsItem(
                    id: "x",
                    subscriptionId: "x",
                    eventType: "eventType",
                    status: .pending,
                    attempts: 1000000,
                    lastError: Nullable<String>.value("lastError"),
                    createdAt: "createdAt",
                    deliveredAt: Nullable<String>.value("deliveredAt")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.webhooks.postV1WebhooksDeliveriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1WebhooksDeliveriesRedeliver1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "status": "status"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1WebhooksDeliveriesRedeliverResponse(
            id: "id",
            status: "status"
        )
        let response = try await client.webhooks.postV1WebhooksDeliveriesRedeliver(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1WebhooksDeliveriesRedeliver2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "status": "status"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1WebhooksDeliveriesRedeliverResponse(
            id: "x",
            status: "status"
        )
        let response = try await client.webhooks.postV1WebhooksDeliveriesRedeliver(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}