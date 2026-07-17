import Foundation
import Testing
import Api

@Suite("ProductionClient Wire Tests") struct ProductionClientWireTests {
    @Test func postV1ProductionBomsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "finishedItemId": "finishedItemId",
                  "outputQuantity": "outputQuantity",
                  "isActive": true,
                  "lines": [
                    {
                      "id": "id",
                      "componentItemId": "componentItemId",
                      "quantity": "quantity"
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
        let expectedResponse = PostV1ProductionBomsCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            finishedItemId: "finishedItemId",
            outputQuantity: "outputQuantity",
            isActive: true,
            lines: [
                PostV1ProductionBomsCreateResponseLinesItem(
                    id: "id",
                    componentItemId: "componentItemId",
                    quantity: "quantity"
                )
            ]
        )
        let response = try await client.production.postV1ProductionBomsCreate(
            request: .init(
                code: "code",
                name: "name",
                finishedItemId: "finishedItemId",
                lines: [
                    PostV1ProductionBomsCreateRequestLinesItem(
                        componentItemId: "componentItemId",
                        quantity: "quantity"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionBomsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "finishedItemId": "x",
                  "outputQuantity": "outputQuantity",
                  "isActive": true,
                  "lines": [
                    {
                      "id": "x",
                      "componentItemId": "x",
                      "quantity": "quantity"
                    },
                    {
                      "id": "x",
                      "componentItemId": "x",
                      "quantity": "quantity"
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
        let expectedResponse = PostV1ProductionBomsCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            finishedItemId: "x",
            outputQuantity: "outputQuantity",
            isActive: true,
            lines: [
                PostV1ProductionBomsCreateResponseLinesItem(
                    id: "x",
                    componentItemId: "x",
                    quantity: "quantity"
                ),
                PostV1ProductionBomsCreateResponseLinesItem(
                    id: "x",
                    componentItemId: "x",
                    quantity: "quantity"
                )
            ]
        )
        let response = try await client.production.postV1ProductionBomsCreate(
            request: .init(
                code: "x",
                name: "x",
                finishedItemId: "x",
                lines: [
                    PostV1ProductionBomsCreateRequestLinesItem(
                        componentItemId: "x",
                        quantity: "quantity"
                    ),
                    PostV1ProductionBomsCreateRequestLinesItem(
                        componentItemId: "x",
                        quantity: "quantity"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionBomsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "finishedItemId": "finishedItemId",
                  "outputQuantity": "outputQuantity",
                  "isActive": true,
                  "lines": [
                    {
                      "id": "id",
                      "componentItemId": "componentItemId",
                      "quantity": "quantity"
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
        let expectedResponse = PostV1ProductionBomsGetResponse(
            id: "id",
            code: "code",
            name: "name",
            finishedItemId: "finishedItemId",
            outputQuantity: "outputQuantity",
            isActive: true,
            lines: [
                PostV1ProductionBomsGetResponseLinesItem(
                    id: "id",
                    componentItemId: "componentItemId",
                    quantity: "quantity"
                )
            ]
        )
        let response = try await client.production.postV1ProductionBomsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionBomsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "finishedItemId": "x",
                  "outputQuantity": "outputQuantity",
                  "isActive": true,
                  "lines": [
                    {
                      "id": "x",
                      "componentItemId": "x",
                      "quantity": "quantity"
                    },
                    {
                      "id": "x",
                      "componentItemId": "x",
                      "quantity": "quantity"
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
        let expectedResponse = PostV1ProductionBomsGetResponse(
            id: "x",
            code: "code",
            name: "name",
            finishedItemId: "x",
            outputQuantity: "outputQuantity",
            isActive: true,
            lines: [
                PostV1ProductionBomsGetResponseLinesItem(
                    id: "x",
                    componentItemId: "x",
                    quantity: "quantity"
                ),
                PostV1ProductionBomsGetResponseLinesItem(
                    id: "x",
                    componentItemId: "x",
                    quantity: "quantity"
                )
            ]
        )
        let response = try await client.production.postV1ProductionBomsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionBomsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "code": "code",
                      "name": "name",
                      "finishedItemId": "finishedItemId",
                      "outputQuantity": "outputQuantity",
                      "isActive": true
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
        let expectedResponse = PostV1ProductionBomsListResponse(
            rows: [
                PostV1ProductionBomsListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    finishedItemId: "finishedItemId",
                    outputQuantity: "outputQuantity",
                    isActive: true
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.production.postV1ProductionBomsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionBomsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "finishedItemId": "x",
                      "outputQuantity": "outputQuantity",
                      "isActive": true
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "finishedItemId": "x",
                      "outputQuantity": "outputQuantity",
                      "isActive": true
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
        let expectedResponse = PostV1ProductionBomsListResponse(
            rows: [
                PostV1ProductionBomsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    finishedItemId: "x",
                    outputQuantity: "outputQuantity",
                    isActive: true
                ),
                PostV1ProductionBomsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    finishedItemId: "x",
                    outputQuantity: "outputQuantity",
                    isActive: true
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.production.postV1ProductionBomsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionOrdersCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "type": "assembly",
                  "bomId": "bomId",
                  "warehouseId": "warehouseId",
                  "quantity": "quantity",
                  "date": "date",
                  "status": "draft",
                  "totalCost": "totalCost",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
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
        let expectedResponse = PostV1ProductionOrdersCreateResponse(
            id: "id",
            type: .assembly,
            bomId: "bomId",
            warehouseId: "warehouseId",
            quantity: "quantity",
            date: "date",
            status: .draft,
            totalCost: Nullable<String>.value("totalCost"),
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionOrdersCreate(
            request: .init(
                bomId: "bomId",
                warehouseId: "warehouseId",
                quantity: "quantity",
                date: "date"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionOrdersCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "type": "assembly",
                  "bomId": "x",
                  "warehouseId": "x",
                  "quantity": "quantity",
                  "date": "date",
                  "status": "draft",
                  "totalCost": "totalCost",
                  "journalTransactionId": "x",
                  "notes": "notes",
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
        let expectedResponse = PostV1ProductionOrdersCreateResponse(
            id: "x",
            type: .assembly,
            bomId: "x",
            warehouseId: "x",
            quantity: "quantity",
            date: "date",
            status: .draft,
            totalCost: Nullable<String>.value("totalCost"),
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionOrdersCreate(
            request: .init(
                bomId: "x",
                warehouseId: "x",
                quantity: "quantity",
                date: "date"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionOrdersComplete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "type": "assembly",
                  "bomId": "bomId",
                  "warehouseId": "warehouseId",
                  "quantity": "quantity",
                  "date": "date",
                  "status": "draft",
                  "totalCost": "totalCost",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
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
        let expectedResponse = PostV1ProductionOrdersCompleteResponse(
            id: "id",
            type: .assembly,
            bomId: "bomId",
            warehouseId: "warehouseId",
            quantity: "quantity",
            date: "date",
            status: .draft,
            totalCost: Nullable<String>.value("totalCost"),
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionOrdersComplete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionOrdersComplete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "type": "assembly",
                  "bomId": "x",
                  "warehouseId": "x",
                  "quantity": "quantity",
                  "date": "date",
                  "status": "draft",
                  "totalCost": "totalCost",
                  "journalTransactionId": "x",
                  "notes": "notes",
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
        let expectedResponse = PostV1ProductionOrdersCompleteResponse(
            id: "x",
            type: .assembly,
            bomId: "x",
            warehouseId: "x",
            quantity: "quantity",
            date: "date",
            status: .draft,
            totalCost: Nullable<String>.value("totalCost"),
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionOrdersComplete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionOrdersGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "type": "assembly",
                  "bomId": "bomId",
                  "warehouseId": "warehouseId",
                  "quantity": "quantity",
                  "date": "date",
                  "status": "draft",
                  "totalCost": "totalCost",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
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
        let expectedResponse = PostV1ProductionOrdersGetResponse(
            id: "id",
            type: .assembly,
            bomId: "bomId",
            warehouseId: "warehouseId",
            quantity: "quantity",
            date: "date",
            status: .draft,
            totalCost: Nullable<String>.value("totalCost"),
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionOrdersGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionOrdersGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "type": "assembly",
                  "bomId": "x",
                  "warehouseId": "x",
                  "quantity": "quantity",
                  "date": "date",
                  "status": "draft",
                  "totalCost": "totalCost",
                  "journalTransactionId": "x",
                  "notes": "notes",
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
        let expectedResponse = PostV1ProductionOrdersGetResponse(
            id: "x",
            type: .assembly,
            bomId: "x",
            warehouseId: "x",
            quantity: "quantity",
            date: "date",
            status: .draft,
            totalCost: Nullable<String>.value("totalCost"),
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionOrdersGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionOrdersList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "type": "assembly",
                      "bomId": "bomId",
                      "warehouseId": "warehouseId",
                      "quantity": "quantity",
                      "date": "date",
                      "status": "draft",
                      "totalCost": "totalCost",
                      "journalTransactionId": "journalTransactionId",
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
        let expectedResponse = PostV1ProductionOrdersListResponse(
            rows: [
                PostV1ProductionOrdersListResponseRowsItem(
                    id: "id",
                    type: .assembly,
                    bomId: "bomId",
                    warehouseId: "warehouseId",
                    quantity: "quantity",
                    date: "date",
                    status: .draft,
                    totalCost: Nullable<String>.value("totalCost"),
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.production.postV1ProductionOrdersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionOrdersList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "type": "assembly",
                      "bomId": "x",
                      "warehouseId": "x",
                      "quantity": "quantity",
                      "date": "date",
                      "status": "draft",
                      "totalCost": "totalCost",
                      "journalTransactionId": "x",
                      "notes": "notes",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "type": "assembly",
                      "bomId": "x",
                      "warehouseId": "x",
                      "quantity": "quantity",
                      "date": "date",
                      "status": "draft",
                      "totalCost": "totalCost",
                      "journalTransactionId": "x",
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
        let expectedResponse = PostV1ProductionOrdersListResponse(
            rows: [
                PostV1ProductionOrdersListResponseRowsItem(
                    id: "x",
                    type: .assembly,
                    bomId: "x",
                    warehouseId: "x",
                    quantity: "quantity",
                    date: "date",
                    status: .draft,
                    totalCost: Nullable<String>.value("totalCost"),
                    journalTransactionId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1ProductionOrdersListResponseRowsItem(
                    id: "x",
                    type: .assembly,
                    bomId: "x",
                    warehouseId: "x",
                    quantity: "quantity",
                    date: "date",
                    status: .draft,
                    totalCost: Nullable<String>.value("totalCost"),
                    journalTransactionId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.production.postV1ProductionOrdersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}