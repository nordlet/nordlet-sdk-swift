import Foundation
import Testing
import Api

@Suite("EcommerceClient Wire Tests") struct EcommerceClientWireTests {
    @Test func ordersCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "channel": "channel",
                  "externalRef": "externalRef",
                  "partnerId": "partnerId",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "status": "new",
                  "invoiceId": "invoiceId",
                  "shipToCountryCode": "shipToCountryCode",
                  "marketplace": "marketplace",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "vatRatePercent": "vatRatePercent"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersCreateEcommerceResponse(
            id: "id",
            channel: "channel",
            externalRef: Nullable<String>.value("externalRef"),
            partnerId: "partnerId",
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            status: .new,
            invoiceId: Nullable<String>.value("invoiceId"),
            shipToCountryCode: Nullable<String>.value("shipToCountryCode"),
            marketplace: Nullable<String>.value("marketplace"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersCreateEcommerceResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.ordersCreate(
            request: .init(lines: [
                OrdersCreateEcommerceRequestLinesItem(
                    description: "description",
                    quantity: "121.0000",
                    unitPriceExclVat: "121.0000"
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "channel": "channel",
                  "externalRef": "externalRef",
                  "partnerId": "x",
                  "warehouseId": "x",
                  "currency": "currency",
                  "status": "new",
                  "invoiceId": "x",
                  "shipToCountryCode": "shipToCountryCode",
                  "marketplace": "marketplace",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "vatRatePercent": "vatRatePercent"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "vatRatePercent": "vatRatePercent"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersCreateEcommerceResponse(
            id: "x",
            channel: "channel",
            externalRef: Nullable<String>.value("externalRef"),
            partnerId: "x",
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            status: .new,
            invoiceId: Nullable<String>.value("x"),
            shipToCountryCode: Nullable<String>.value("shipToCountryCode"),
            marketplace: Nullable<String>.value("marketplace"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersCreateEcommerceResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                ),
                OrdersCreateEcommerceResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.ordersCreate(
            request: .init(lines: [
                OrdersCreateEcommerceRequestLinesItem(
                    description: "x",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat"
                ),
                OrdersCreateEcommerceRequestLinesItem(
                    description: "x",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat"
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "channel": "channel",
                  "externalRef": "externalRef",
                  "partnerId": "partnerId",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "status": "new",
                  "invoiceId": "invoiceId",
                  "shipToCountryCode": "shipToCountryCode",
                  "marketplace": "marketplace",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "vatRatePercent": "vatRatePercent"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersGetEcommerceResponse(
            id: "id",
            channel: "channel",
            externalRef: Nullable<String>.value("externalRef"),
            partnerId: "partnerId",
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            status: .new,
            invoiceId: Nullable<String>.value("invoiceId"),
            shipToCountryCode: Nullable<String>.value("shipToCountryCode"),
            marketplace: Nullable<String>.value("marketplace"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersGetEcommerceResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.ordersGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "channel": "channel",
                  "externalRef": "externalRef",
                  "partnerId": "x",
                  "warehouseId": "x",
                  "currency": "currency",
                  "status": "new",
                  "invoiceId": "x",
                  "shipToCountryCode": "shipToCountryCode",
                  "marketplace": "marketplace",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "vatRatePercent": "vatRatePercent"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "vatRatePercent": "vatRatePercent"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersGetEcommerceResponse(
            id: "x",
            channel: "channel",
            externalRef: Nullable<String>.value("externalRef"),
            partnerId: "x",
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            status: .new,
            invoiceId: Nullable<String>.value("x"),
            shipToCountryCode: Nullable<String>.value("shipToCountryCode"),
            marketplace: Nullable<String>.value("marketplace"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersGetEcommerceResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                ),
                OrdersGetEcommerceResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.ordersGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "channel": "channel",
                      "externalRef": "externalRef",
                      "partnerId": "partnerId",
                      "warehouseId": "warehouseId",
                      "currency": "currency",
                      "status": "new",
                      "invoiceId": "invoiceId",
                      "shipToCountryCode": "shipToCountryCode",
                      "marketplace": "marketplace",
                      "notes": "notes",
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
        let expectedResponse = OrdersListEcommerceResponse(
            rows: [
                OrdersListEcommerceResponseRowsItem(
                    id: "id",
                    channel: "channel",
                    externalRef: Nullable<String>.value("externalRef"),
                    partnerId: "partnerId",
                    warehouseId: Nullable<String>.value("warehouseId"),
                    currency: "currency",
                    status: .new,
                    invoiceId: Nullable<String>.value("invoiceId"),
                    shipToCountryCode: Nullable<String>.value("shipToCountryCode"),
                    marketplace: Nullable<String>.value("marketplace"),
                    notes: Nullable<String>.value("notes"),
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
        let response = try await client.ecommerce.ordersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "channel": "channel",
                      "externalRef": "externalRef",
                      "partnerId": "x",
                      "warehouseId": "x",
                      "currency": "currency",
                      "status": "new",
                      "invoiceId": "x",
                      "shipToCountryCode": "shipToCountryCode",
                      "marketplace": "marketplace",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "channel": "channel",
                      "externalRef": "externalRef",
                      "partnerId": "x",
                      "warehouseId": "x",
                      "currency": "currency",
                      "status": "new",
                      "invoiceId": "x",
                      "shipToCountryCode": "shipToCountryCode",
                      "marketplace": "marketplace",
                      "notes": "notes",
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
        let expectedResponse = OrdersListEcommerceResponse(
            rows: [
                OrdersListEcommerceResponseRowsItem(
                    id: "x",
                    channel: "channel",
                    externalRef: Nullable<String>.value("externalRef"),
                    partnerId: "x",
                    warehouseId: Nullable<String>.value("x"),
                    currency: "currency",
                    status: .new,
                    invoiceId: Nullable<String>.value("x"),
                    shipToCountryCode: Nullable<String>.value("shipToCountryCode"),
                    marketplace: Nullable<String>.value("marketplace"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                OrdersListEcommerceResponseRowsItem(
                    id: "x",
                    channel: "channel",
                    externalRef: Nullable<String>.value("externalRef"),
                    partnerId: "x",
                    warehouseId: Nullable<String>.value("x"),
                    currency: "currency",
                    status: .new,
                    invoiceId: Nullable<String>.value("x"),
                    shipToCountryCode: Nullable<String>.value("shipToCountryCode"),
                    marketplace: Nullable<String>.value("marketplace"),
                    notes: Nullable<String>.value("notes"),
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
        let response = try await client.ecommerce.ordersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersReserve1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "channel": "channel",
                  "externalRef": "externalRef",
                  "partnerId": "partnerId",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "status": "new",
                  "invoiceId": "invoiceId",
                  "shipToCountryCode": "shipToCountryCode",
                  "marketplace": "marketplace",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "vatRatePercent": "vatRatePercent"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersReserveEcommerceResponse(
            id: "id",
            channel: "channel",
            externalRef: Nullable<String>.value("externalRef"),
            partnerId: "partnerId",
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            status: .new,
            invoiceId: Nullable<String>.value("invoiceId"),
            shipToCountryCode: Nullable<String>.value("shipToCountryCode"),
            marketplace: Nullable<String>.value("marketplace"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersReserveEcommerceResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.ordersReserve(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersReserve2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "channel": "channel",
                  "externalRef": "externalRef",
                  "partnerId": "x",
                  "warehouseId": "x",
                  "currency": "currency",
                  "status": "new",
                  "invoiceId": "x",
                  "shipToCountryCode": "shipToCountryCode",
                  "marketplace": "marketplace",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "vatRatePercent": "vatRatePercent"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "vatRatePercent": "vatRatePercent"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersReserveEcommerceResponse(
            id: "x",
            channel: "channel",
            externalRef: Nullable<String>.value("externalRef"),
            partnerId: "x",
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            status: .new,
            invoiceId: Nullable<String>.value("x"),
            shipToCountryCode: Nullable<String>.value("shipToCountryCode"),
            marketplace: Nullable<String>.value("marketplace"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersReserveEcommerceResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                ),
                OrdersReserveEcommerceResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.ordersReserve(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersFulfill1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "channel": "channel",
                  "externalRef": "externalRef",
                  "partnerId": "partnerId",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "status": "new",
                  "invoiceId": "invoiceId",
                  "shipToCountryCode": "shipToCountryCode",
                  "marketplace": "marketplace",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "vatRatePercent": "vatRatePercent"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersFulfillEcommerceResponse(
            id: "id",
            channel: "channel",
            externalRef: Nullable<String>.value("externalRef"),
            partnerId: "partnerId",
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            status: .new,
            invoiceId: Nullable<String>.value("invoiceId"),
            shipToCountryCode: Nullable<String>.value("shipToCountryCode"),
            marketplace: Nullable<String>.value("marketplace"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersFulfillEcommerceResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.ordersFulfill(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersFulfill2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "channel": "channel",
                  "externalRef": "externalRef",
                  "partnerId": "x",
                  "warehouseId": "x",
                  "currency": "currency",
                  "status": "new",
                  "invoiceId": "x",
                  "shipToCountryCode": "shipToCountryCode",
                  "marketplace": "marketplace",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "vatRatePercent": "vatRatePercent"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "vatRatePercent": "vatRatePercent"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersFulfillEcommerceResponse(
            id: "x",
            channel: "channel",
            externalRef: Nullable<String>.value("externalRef"),
            partnerId: "x",
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            status: .new,
            invoiceId: Nullable<String>.value("x"),
            shipToCountryCode: Nullable<String>.value("shipToCountryCode"),
            marketplace: Nullable<String>.value("marketplace"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersFulfillEcommerceResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                ),
                OrdersFulfillEcommerceResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.ordersFulfill(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersCancel1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "channel": "channel",
                  "externalRef": "externalRef",
                  "partnerId": "partnerId",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "status": "new",
                  "invoiceId": "invoiceId",
                  "shipToCountryCode": "shipToCountryCode",
                  "marketplace": "marketplace",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "vatRatePercent": "vatRatePercent"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersCancelEcommerceResponse(
            id: "id",
            channel: "channel",
            externalRef: Nullable<String>.value("externalRef"),
            partnerId: "partnerId",
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            status: .new,
            invoiceId: Nullable<String>.value("invoiceId"),
            shipToCountryCode: Nullable<String>.value("shipToCountryCode"),
            marketplace: Nullable<String>.value("marketplace"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersCancelEcommerceResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.ordersCancel(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersCancel2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "channel": "channel",
                  "externalRef": "externalRef",
                  "partnerId": "x",
                  "warehouseId": "x",
                  "currency": "currency",
                  "status": "new",
                  "invoiceId": "x",
                  "shipToCountryCode": "shipToCountryCode",
                  "marketplace": "marketplace",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "vatRatePercent": "vatRatePercent"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "vatRatePercent": "vatRatePercent"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersCancelEcommerceResponse(
            id: "x",
            channel: "channel",
            externalRef: Nullable<String>.value("externalRef"),
            partnerId: "x",
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            status: .new,
            invoiceId: Nullable<String>.value("x"),
            shipToCountryCode: Nullable<String>.value("shipToCountryCode"),
            marketplace: Nullable<String>.value("marketplace"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersCancelEcommerceResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                ),
                OrdersCancelEcommerceResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.ordersCancel(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func productsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "total": 1000000,
                  "page": 1000000,
                  "pageSize": 1000000,
                  "rows": [
                    {
                      "id": "id",
                      "type": "product",
                      "name": "name",
                      "code": "code",
                      "barcode": "barcode",
                      "unit": "unit",
                      "description": "description",
                      "translations": {},
                      "attributes": {},
                      "groupId": "groupId",
                      "groupName": "groupName",
                      "vatRatePercent": "vatRatePercent",
                      "price": "price",
                      "currency": "currency",
                      "components": [
                        {
                          "itemId": "itemId",
                          "quantity": "quantity"
                        }
                      ],
                      "onHand": "onHand",
                      "reserved": "reserved",
                      "available": "available",
                      "deleted": true,
                      "updatedAt": "2026-07-01T09:30:00Z"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ProductsListEcommerceResponse(
            total: 1000000,
            page: 1000000,
            pageSize: 1000000,
            rows: [
                ProductsListEcommerceResponseRowsItem(
                    id: "id",
                    type: .product,
                    name: "name",
                    code: Nullable<String>.value("code"),
                    barcode: Nullable<String>.value("barcode"),
                    unit: "unit",
                    description: Nullable<String>.value("description"),
                    translations: Nullable<[String: Nullable<ProductsListEcommerceResponseRowsItemTranslationsValue>]>.value([:]),
                    attributes: Nullable<[String: Nullable<String>]>.value([:]),
                    groupId: Nullable<String>.value("groupId"),
                    groupName: Nullable<String>.value("groupName"),
                    vatRatePercent: Nullable<String>.value("vatRatePercent"),
                    price: Nullable<String>.value("price"),
                    currency: "currency",
                    components: [
                        ProductsListEcommerceResponseRowsItemComponentsItem(
                            itemId: "itemId",
                            quantity: "quantity"
                        )
                    ],
                    onHand: Nullable<String>.value("onHand"),
                    reserved: Nullable<String>.value("reserved"),
                    available: Nullable<String>.value("available"),
                    deleted: true,
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.ecommerce.productsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func productsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "total": 1000000,
                  "page": 1000000,
                  "pageSize": 1000000,
                  "rows": [
                    {
                      "id": "x",
                      "type": "product",
                      "name": "name",
                      "code": "code",
                      "barcode": "barcode",
                      "unit": "unit",
                      "description": "description",
                      "translations": {
                        "translations": {
                          "name": "name",
                          "description": "description"
                        }
                      },
                      "attributes": {
                        "attributes": "attributes"
                      },
                      "groupId": "x",
                      "groupName": "groupName",
                      "vatRatePercent": "vatRatePercent",
                      "price": "price",
                      "currency": "currency",
                      "components": [
                        {
                          "itemId": "x",
                          "quantity": "quantity"
                        },
                        {
                          "itemId": "x",
                          "quantity": "quantity"
                        }
                      ],
                      "onHand": "onHand",
                      "reserved": "reserved",
                      "available": "available",
                      "deleted": true,
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "type": "product",
                      "name": "name",
                      "code": "code",
                      "barcode": "barcode",
                      "unit": "unit",
                      "description": "description",
                      "translations": {
                        "translations": {
                          "name": "name",
                          "description": "description"
                        }
                      },
                      "attributes": {
                        "attributes": "attributes"
                      },
                      "groupId": "x",
                      "groupName": "groupName",
                      "vatRatePercent": "vatRatePercent",
                      "price": "price",
                      "currency": "currency",
                      "components": [
                        {
                          "itemId": "x",
                          "quantity": "quantity"
                        },
                        {
                          "itemId": "x",
                          "quantity": "quantity"
                        }
                      ],
                      "onHand": "onHand",
                      "reserved": "reserved",
                      "available": "available",
                      "deleted": true,
                      "updatedAt": "2024-01-15T09:30:00Z"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ProductsListEcommerceResponse(
            total: 1000000,
            page: 1000000,
            pageSize: 1000000,
            rows: [
                ProductsListEcommerceResponseRowsItem(
                    id: "x",
                    type: .product,
                    name: "name",
                    code: Nullable<String>.value("code"),
                    barcode: Nullable<String>.value("barcode"),
                    unit: "unit",
                    description: Nullable<String>.value("description"),
                    translations: Nullable<[String: Nullable<ProductsListEcommerceResponseRowsItemTranslationsValue>]>.value([
                        "translations": Nullable<ProductsListEcommerceResponseRowsItemTranslationsValue>.value(ProductsListEcommerceResponseRowsItemTranslationsValue(
                            name: "name",
                            description: Optional("description")
                        ))
                    ]),
                    attributes: Nullable<[String: Nullable<String>]>.value([
                        "attributes": Nullable<String>.value("attributes")
                    ]),
                    groupId: Nullable<String>.value("x"),
                    groupName: Nullable<String>.value("groupName"),
                    vatRatePercent: Nullable<String>.value("vatRatePercent"),
                    price: Nullable<String>.value("price"),
                    currency: "currency",
                    components: [
                        ProductsListEcommerceResponseRowsItemComponentsItem(
                            itemId: "x",
                            quantity: "quantity"
                        ),
                        ProductsListEcommerceResponseRowsItemComponentsItem(
                            itemId: "x",
                            quantity: "quantity"
                        )
                    ],
                    onHand: Nullable<String>.value("onHand"),
                    reserved: Nullable<String>.value("reserved"),
                    available: Nullable<String>.value("available"),
                    deleted: true,
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ProductsListEcommerceResponseRowsItem(
                    id: "x",
                    type: .product,
                    name: "name",
                    code: Nullable<String>.value("code"),
                    barcode: Nullable<String>.value("barcode"),
                    unit: "unit",
                    description: Nullable<String>.value("description"),
                    translations: Nullable<[String: Nullable<ProductsListEcommerceResponseRowsItemTranslationsValue>]>.value([
                        "translations": Nullable<ProductsListEcommerceResponseRowsItemTranslationsValue>.value(ProductsListEcommerceResponseRowsItemTranslationsValue(
                            name: "name",
                            description: Optional("description")
                        ))
                    ]),
                    attributes: Nullable<[String: Nullable<String>]>.value([
                        "attributes": Nullable<String>.value("attributes")
                    ]),
                    groupId: Nullable<String>.value("x"),
                    groupName: Nullable<String>.value("groupName"),
                    vatRatePercent: Nullable<String>.value("vatRatePercent"),
                    price: Nullable<String>.value("price"),
                    currency: "currency",
                    components: [
                        ProductsListEcommerceResponseRowsItemComponentsItem(
                            itemId: "x",
                            quantity: "quantity"
                        ),
                        ProductsListEcommerceResponseRowsItemComponentsItem(
                            itemId: "x",
                            quantity: "quantity"
                        )
                    ],
                    onHand: Nullable<String>.value("onHand"),
                    reserved: Nullable<String>.value("reserved"),
                    available: Nullable<String>.value("available"),
                    deleted: true,
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.ecommerce.productsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "itemId": "itemId",
                      "warehouseId": "warehouseId",
                      "onHand": "onHand",
                      "reserved": "reserved",
                      "available": "available"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = StockListEcommerceResponse(
            rows: [
                StockListEcommerceResponseRowsItem(
                    itemId: "itemId",
                    warehouseId: "warehouseId",
                    onHand: "onHand",
                    reserved: "reserved",
                    available: "available"
                )
            ]
        )
        let response = try await client.ecommerce.stockList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "itemId": "x",
                      "warehouseId": "x",
                      "onHand": "onHand",
                      "reserved": "reserved",
                      "available": "available"
                    },
                    {
                      "itemId": "x",
                      "warehouseId": "x",
                      "onHand": "onHand",
                      "reserved": "reserved",
                      "available": "available"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = StockListEcommerceResponse(
            rows: [
                StockListEcommerceResponseRowsItem(
                    itemId: "x",
                    warehouseId: "x",
                    onHand: "onHand",
                    reserved: "reserved",
                    available: "available"
                ),
                StockListEcommerceResponseRowsItem(
                    itemId: "x",
                    warehouseId: "x",
                    onHand: "onHand",
                    reserved: "reserved",
                    available: "available"
                )
            ]
        )
        let response = try await client.ecommerce.stockList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}