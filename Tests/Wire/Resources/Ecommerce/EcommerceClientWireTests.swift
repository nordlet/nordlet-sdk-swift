import Foundation
import Testing
import Api

@Suite("EcommerceClient Wire Tests") struct EcommerceClientWireTests {
    @Test func postV1EcommerceOrdersCreate1() async throws -> Void {
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
                  "createdAt": "createdAt",
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
        let expectedResponse = PostV1EcommerceOrdersCreateResponse(
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
            createdAt: "createdAt",
            lines: [
                PostV1EcommerceOrdersCreateResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.postV1EcommerceOrdersCreate(
            request: .init(lines: [
                PostV1EcommerceOrdersCreateRequestLinesItem(
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat"
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1EcommerceOrdersCreate2() async throws -> Void {
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
                  "createdAt": "createdAt",
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
        let expectedResponse = PostV1EcommerceOrdersCreateResponse(
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
            createdAt: "createdAt",
            lines: [
                PostV1EcommerceOrdersCreateResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                ),
                PostV1EcommerceOrdersCreateResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.postV1EcommerceOrdersCreate(
            request: .init(lines: [
                PostV1EcommerceOrdersCreateRequestLinesItem(
                    description: "x",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat"
                ),
                PostV1EcommerceOrdersCreateRequestLinesItem(
                    description: "x",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat"
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1EcommerceOrdersGet1() async throws -> Void {
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
                  "createdAt": "createdAt",
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
        let expectedResponse = PostV1EcommerceOrdersGetResponse(
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
            createdAt: "createdAt",
            lines: [
                PostV1EcommerceOrdersGetResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.postV1EcommerceOrdersGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1EcommerceOrdersGet2() async throws -> Void {
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
                  "createdAt": "createdAt",
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
        let expectedResponse = PostV1EcommerceOrdersGetResponse(
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
            createdAt: "createdAt",
            lines: [
                PostV1EcommerceOrdersGetResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                ),
                PostV1EcommerceOrdersGetResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.postV1EcommerceOrdersGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1EcommerceOrdersList1() async throws -> Void {
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
        let expectedResponse = PostV1EcommerceOrdersListResponse(
            rows: [
                PostV1EcommerceOrdersListResponseRowsItem(
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
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.ecommerce.postV1EcommerceOrdersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1EcommerceOrdersList2() async throws -> Void {
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
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1EcommerceOrdersListResponse(
            rows: [
                PostV1EcommerceOrdersListResponseRowsItem(
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
                    createdAt: "createdAt"
                ),
                PostV1EcommerceOrdersListResponseRowsItem(
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
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.ecommerce.postV1EcommerceOrdersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1EcommerceOrdersReserve1() async throws -> Void {
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
                  "createdAt": "createdAt",
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
        let expectedResponse = PostV1EcommerceOrdersReserveResponse(
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
            createdAt: "createdAt",
            lines: [
                PostV1EcommerceOrdersReserveResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.postV1EcommerceOrdersReserve(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1EcommerceOrdersReserve2() async throws -> Void {
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
                  "createdAt": "createdAt",
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
        let expectedResponse = PostV1EcommerceOrdersReserveResponse(
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
            createdAt: "createdAt",
            lines: [
                PostV1EcommerceOrdersReserveResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                ),
                PostV1EcommerceOrdersReserveResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.postV1EcommerceOrdersReserve(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1EcommerceOrdersFulfill1() async throws -> Void {
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
                  "createdAt": "createdAt",
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
        let expectedResponse = PostV1EcommerceOrdersFulfillResponse(
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
            createdAt: "createdAt",
            lines: [
                PostV1EcommerceOrdersFulfillResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.postV1EcommerceOrdersFulfill(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1EcommerceOrdersFulfill2() async throws -> Void {
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
                  "createdAt": "createdAt",
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
        let expectedResponse = PostV1EcommerceOrdersFulfillResponse(
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
            createdAt: "createdAt",
            lines: [
                PostV1EcommerceOrdersFulfillResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                ),
                PostV1EcommerceOrdersFulfillResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.postV1EcommerceOrdersFulfill(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1EcommerceOrdersCancel1() async throws -> Void {
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
                  "createdAt": "createdAt",
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
        let expectedResponse = PostV1EcommerceOrdersCancelResponse(
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
            createdAt: "createdAt",
            lines: [
                PostV1EcommerceOrdersCancelResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.postV1EcommerceOrdersCancel(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1EcommerceOrdersCancel2() async throws -> Void {
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
                  "createdAt": "createdAt",
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
        let expectedResponse = PostV1EcommerceOrdersCancelResponse(
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
            createdAt: "createdAt",
            lines: [
                PostV1EcommerceOrdersCancelResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                ),
                PostV1EcommerceOrdersCancelResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceExclVat: "unitPriceExclVat",
                    vatRatePercent: "vatRatePercent"
                )
            ]
        )
        let response = try await client.ecommerce.postV1EcommerceOrdersCancel(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1EcommerceProductsList1() async throws -> Void {
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
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1EcommerceProductsListResponse(
            total: 1000000,
            page: 1000000,
            pageSize: 1000000,
            rows: [
                PostV1EcommerceProductsListResponseRowsItem(
                    id: "id",
                    type: .product,
                    name: "name",
                    code: Nullable<String>.value("code"),
                    barcode: Nullable<String>.value("barcode"),
                    unit: "unit",
                    description: Nullable<String>.value("description"),
                    translations: Nullable<[String: Nullable<PostV1EcommerceProductsListResponseRowsItemTranslationsValue>]>.value([:]),
                    attributes: Nullable<[String: Nullable<String>]>.value([:]),
                    groupId: Nullable<String>.value("groupId"),
                    groupName: Nullable<String>.value("groupName"),
                    vatRatePercent: Nullable<String>.value("vatRatePercent"),
                    price: Nullable<String>.value("price"),
                    currency: "currency",
                    components: [
                        PostV1EcommerceProductsListResponseRowsItemComponentsItem(
                            itemId: "itemId",
                            quantity: "quantity"
                        )
                    ],
                    onHand: Nullable<String>.value("onHand"),
                    reserved: Nullable<String>.value("reserved"),
                    available: Nullable<String>.value("available"),
                    deleted: true,
                    updatedAt: "updatedAt"
                )
            ]
        )
        let response = try await client.ecommerce.postV1EcommerceProductsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1EcommerceProductsList2() async throws -> Void {
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
                      "updatedAt": "updatedAt"
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
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1EcommerceProductsListResponse(
            total: 1000000,
            page: 1000000,
            pageSize: 1000000,
            rows: [
                PostV1EcommerceProductsListResponseRowsItem(
                    id: "x",
                    type: .product,
                    name: "name",
                    code: Nullable<String>.value("code"),
                    barcode: Nullable<String>.value("barcode"),
                    unit: "unit",
                    description: Nullable<String>.value("description"),
                    translations: Nullable<[String: Nullable<PostV1EcommerceProductsListResponseRowsItemTranslationsValue>]>.value([
                        "translations": Nullable<PostV1EcommerceProductsListResponseRowsItemTranslationsValue>.value(PostV1EcommerceProductsListResponseRowsItemTranslationsValue(
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
                        PostV1EcommerceProductsListResponseRowsItemComponentsItem(
                            itemId: "x",
                            quantity: "quantity"
                        ),
                        PostV1EcommerceProductsListResponseRowsItemComponentsItem(
                            itemId: "x",
                            quantity: "quantity"
                        )
                    ],
                    onHand: Nullable<String>.value("onHand"),
                    reserved: Nullable<String>.value("reserved"),
                    available: Nullable<String>.value("available"),
                    deleted: true,
                    updatedAt: "updatedAt"
                ),
                PostV1EcommerceProductsListResponseRowsItem(
                    id: "x",
                    type: .product,
                    name: "name",
                    code: Nullable<String>.value("code"),
                    barcode: Nullable<String>.value("barcode"),
                    unit: "unit",
                    description: Nullable<String>.value("description"),
                    translations: Nullable<[String: Nullable<PostV1EcommerceProductsListResponseRowsItemTranslationsValue>]>.value([
                        "translations": Nullable<PostV1EcommerceProductsListResponseRowsItemTranslationsValue>.value(PostV1EcommerceProductsListResponseRowsItemTranslationsValue(
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
                        PostV1EcommerceProductsListResponseRowsItemComponentsItem(
                            itemId: "x",
                            quantity: "quantity"
                        ),
                        PostV1EcommerceProductsListResponseRowsItemComponentsItem(
                            itemId: "x",
                            quantity: "quantity"
                        )
                    ],
                    onHand: Nullable<String>.value("onHand"),
                    reserved: Nullable<String>.value("reserved"),
                    available: Nullable<String>.value("available"),
                    deleted: true,
                    updatedAt: "updatedAt"
                )
            ]
        )
        let response = try await client.ecommerce.postV1EcommerceProductsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1EcommerceStockList1() async throws -> Void {
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
        let expectedResponse = PostV1EcommerceStockListResponse(
            rows: [
                PostV1EcommerceStockListResponseRowsItem(
                    itemId: "itemId",
                    warehouseId: "warehouseId",
                    onHand: "onHand",
                    reserved: "reserved",
                    available: "available"
                )
            ]
        )
        let response = try await client.ecommerce.postV1EcommerceStockList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1EcommerceStockList2() async throws -> Void {
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
        let expectedResponse = PostV1EcommerceStockListResponse(
            rows: [
                PostV1EcommerceStockListResponseRowsItem(
                    itemId: "x",
                    warehouseId: "x",
                    onHand: "onHand",
                    reserved: "reserved",
                    available: "available"
                ),
                PostV1EcommerceStockListResponseRowsItem(
                    itemId: "x",
                    warehouseId: "x",
                    onHand: "onHand",
                    reserved: "reserved",
                    available: "available"
                )
            ]
        )
        let response = try await client.ecommerce.postV1EcommerceStockList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}