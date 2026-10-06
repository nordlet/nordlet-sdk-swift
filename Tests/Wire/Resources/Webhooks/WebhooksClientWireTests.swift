import Foundation
import Testing
import Api

@Suite("WebhooksClient Wire Tests") struct WebhooksClientWireTests {
    @Test func subscriptionsCreate1() async throws -> Void {
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
                  "consecutiveFailures": 1000000,
                  "lastDeliveryStatus": "pending",
                  "lastDeliveryAt": "2026-07-01T09:30:00Z",
                  "pausedAt": "2026-07-01T09:30:00Z",
                  "createdAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = SubscriptionsCreateWebhooksResponse(
            id: "id",
            url: "url",
            events: [
                "events"
            ],
            isActive: true,
            consecutiveFailures: 1000000,
            lastDeliveryStatus: Nullable<SubscriptionsCreateWebhooksResponseLastDeliveryStatus>.value(.pending),
            lastDeliveryAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            pausedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            secret: "secret"
        )
        let response = try await client.webhooks.subscriptionsCreate(
            request: .init(
                url: "url",
                events: [
                    .agreementInvoiceGenerated
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func subscriptionsCreate2() async throws -> Void {
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
                  "consecutiveFailures": 1000000,
                  "lastDeliveryStatus": "pending",
                  "lastDeliveryAt": "2024-01-15T09:30:00Z",
                  "pausedAt": "2024-01-15T09:30:00Z",
                  "createdAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = SubscriptionsCreateWebhooksResponse(
            id: "x",
            url: "url",
            events: [
                "events",
                "events"
            ],
            isActive: true,
            consecutiveFailures: 1000000,
            lastDeliveryStatus: Nullable<SubscriptionsCreateWebhooksResponseLastDeliveryStatus>.value(.pending),
            lastDeliveryAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            pausedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            secret: "secret"
        )
        let response = try await client.webhooks.subscriptionsCreate(
            request: .init(
                url: "url",
                events: [
                    .agreementInvoiceGenerated,
                    .agreementInvoiceGenerated
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func subscriptionsList1() async throws -> Void {
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
                      "consecutiveFailures": 1000000,
                      "lastDeliveryStatus": "pending",
                      "lastDeliveryAt": "2026-07-01T09:30:00Z",
                      "pausedAt": "2026-07-01T09:30:00Z",
                      "createdAt": "2026-07-01T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "key": "value"
                  },
                  "totalsByCurrency": {
                    "key": {
                      "key": "value"
                    }
                  }
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SubscriptionsListWebhooksResponse(
            rows: [
                SubscriptionsListWebhooksResponseRowsItem(
                    id: "id",
                    url: "url",
                    events: [
                        "events"
                    ],
                    isActive: true,
                    consecutiveFailures: 1000000,
                    lastDeliveryStatus: Nullable<SubscriptionsListWebhooksResponseRowsItemLastDeliveryStatus>.value(.pending),
                    lastDeliveryAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    pausedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ]),
            totalsByCurrency: Optional([
                "key": [
                    "key": "value"
                ]
            ])
        )
        let response = try await client.webhooks.subscriptionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func subscriptionsList2() async throws -> Void {
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
                      "consecutiveFailures": 1000000,
                      "lastDeliveryStatus": "pending",
                      "lastDeliveryAt": "2024-01-15T09:30:00Z",
                      "pausedAt": "2024-01-15T09:30:00Z",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "url": "url",
                      "events": [
                        "events",
                        "events"
                      ],
                      "isActive": true,
                      "consecutiveFailures": 1000000,
                      "lastDeliveryStatus": "pending",
                      "lastDeliveryAt": "2024-01-15T09:30:00Z",
                      "pausedAt": "2024-01-15T09:30:00Z",
                      "createdAt": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "totals": "totals"
                  },
                  "totalsByCurrency": {
                    "totalsByCurrency": {
                      "totalsByCurrency": "totalsByCurrency"
                    }
                  }
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SubscriptionsListWebhooksResponse(
            rows: [
                SubscriptionsListWebhooksResponseRowsItem(
                    id: "x",
                    url: "url",
                    events: [
                        "events",
                        "events"
                    ],
                    isActive: true,
                    consecutiveFailures: 1000000,
                    lastDeliveryStatus: Nullable<SubscriptionsListWebhooksResponseRowsItemLastDeliveryStatus>.value(.pending),
                    lastDeliveryAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    pausedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                SubscriptionsListWebhooksResponseRowsItem(
                    id: "x",
                    url: "url",
                    events: [
                        "events",
                        "events"
                    ],
                    isActive: true,
                    consecutiveFailures: 1000000,
                    lastDeliveryStatus: Nullable<SubscriptionsListWebhooksResponseRowsItemLastDeliveryStatus>.value(.pending),
                    lastDeliveryAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    pausedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ]),
            totalsByCurrency: Optional([
                "totalsByCurrency": [
                    "totalsByCurrency": "totalsByCurrency"
                ]
            ])
        )
        let response = try await client.webhooks.subscriptionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func subscriptionsUpdate1() async throws -> Void {
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
                  "consecutiveFailures": 1000000,
                  "lastDeliveryStatus": "pending",
                  "lastDeliveryAt": "2026-07-01T09:30:00Z",
                  "pausedAt": "2026-07-01T09:30:00Z",
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SubscriptionsUpdateWebhooksResponse(
            id: "id",
            url: "url",
            events: [
                "events"
            ],
            isActive: true,
            consecutiveFailures: 1000000,
            lastDeliveryStatus: Nullable<SubscriptionsUpdateWebhooksResponseLastDeliveryStatus>.value(.pending),
            lastDeliveryAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            pausedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.webhooks.subscriptionsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func subscriptionsUpdate2() async throws -> Void {
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
                  "consecutiveFailures": 1000000,
                  "lastDeliveryStatus": "pending",
                  "lastDeliveryAt": "2024-01-15T09:30:00Z",
                  "pausedAt": "2024-01-15T09:30:00Z",
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SubscriptionsUpdateWebhooksResponse(
            id: "x",
            url: "url",
            events: [
                "events",
                "events"
            ],
            isActive: true,
            consecutiveFailures: 1000000,
            lastDeliveryStatus: Nullable<SubscriptionsUpdateWebhooksResponseLastDeliveryStatus>.value(.pending),
            lastDeliveryAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            pausedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.webhooks.subscriptionsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func subscriptionsDelete1() async throws -> Void {
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
        let expectedResponse = SubscriptionsDeleteWebhooksResponse(
            id: "id"
        )
        let response = try await client.webhooks.subscriptionsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func subscriptionsDelete2() async throws -> Void {
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
        let expectedResponse = SubscriptionsDeleteWebhooksResponse(
            id: "x"
        )
        let response = try await client.webhooks.subscriptionsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deliveriesList1() async throws -> Void {
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
                      "createdAt": "2026-07-01T09:30:00Z",
                      "deliveredAt": "2026-07-01T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "key": "value"
                  },
                  "totalsByCurrency": {
                    "key": {
                      "key": "value"
                    }
                  }
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DeliveriesListWebhooksResponse(
            rows: [
                DeliveriesListWebhooksResponseRowsItem(
                    id: "id",
                    subscriptionId: "subscriptionId",
                    eventType: "eventType",
                    status: .pending,
                    attempts: 1000000,
                    lastError: Nullable<String>.value("lastError"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    deliveredAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ]),
            totalsByCurrency: Optional([
                "key": [
                    "key": "value"
                ]
            ])
        )
        let response = try await client.webhooks.deliveriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deliveriesList2() async throws -> Void {
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
                      "createdAt": "2024-01-15T09:30:00Z",
                      "deliveredAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "subscriptionId": "x",
                      "eventType": "eventType",
                      "status": "pending",
                      "attempts": 1000000,
                      "lastError": "lastError",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "deliveredAt": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "totals": "totals"
                  },
                  "totalsByCurrency": {
                    "totalsByCurrency": {
                      "totalsByCurrency": "totalsByCurrency"
                    }
                  }
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DeliveriesListWebhooksResponse(
            rows: [
                DeliveriesListWebhooksResponseRowsItem(
                    id: "x",
                    subscriptionId: "x",
                    eventType: "eventType",
                    status: .pending,
                    attempts: 1000000,
                    lastError: Nullable<String>.value("lastError"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    deliveredAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                DeliveriesListWebhooksResponseRowsItem(
                    id: "x",
                    subscriptionId: "x",
                    eventType: "eventType",
                    status: .pending,
                    attempts: 1000000,
                    lastError: Nullable<String>.value("lastError"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    deliveredAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ]),
            totalsByCurrency: Optional([
                "totalsByCurrency": [
                    "totalsByCurrency": "totalsByCurrency"
                ]
            ])
        )
        let response = try await client.webhooks.deliveriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deliveriesRedeliver1() async throws -> Void {
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
        let expectedResponse = DeliveriesRedeliverWebhooksResponse(
            id: "id",
            status: "status"
        )
        let response = try await client.webhooks.deliveriesRedeliver(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deliveriesRedeliver2() async throws -> Void {
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
        let expectedResponse = DeliveriesRedeliverWebhooksResponse(
            id: "x",
            status: "status"
        )
        let response = try await client.webhooks.deliveriesRedeliver(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}