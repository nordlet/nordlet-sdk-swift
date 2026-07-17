import Foundation
import Testing
import Api

@Suite("InventoryClient Wire Tests") struct InventoryClientWireTests {
    @Test func postV1InventorySettingsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "negativeStockPolicy": "reject"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1InventorySettingsGetResponse(
            negativeStockPolicy: .reject
        )
        let response = try await client.inventory.postV1InventorySettingsGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventorySettingsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "negativeStockPolicy": "reject"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1InventorySettingsGetResponse(
            negativeStockPolicy: .reject
        )
        let response = try await client.inventory.postV1InventorySettingsGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventorySettingsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "negativeStockPolicy": "reject"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1InventorySettingsUpdateResponse(
            negativeStockPolicy: .reject
        )
        let response = try await client.inventory.postV1InventorySettingsUpdate(
            request: .init(negativeStockPolicy: .reject),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventorySettingsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "negativeStockPolicy": "reject"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1InventorySettingsUpdateResponse(
            negativeStockPolicy: .reject
        )
        let response = try await client.inventory.postV1InventorySettingsUpdate(
            request: .init(negativeStockPolicy: .reject),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryWarehousesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "isDefault": true,
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
        let expectedResponse = PostV1InventoryWarehousesCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            isDefault: true,
            createdAt: "createdAt"
        )
        let response = try await client.inventory.postV1InventoryWarehousesCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryWarehousesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "isDefault": true,
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
        let expectedResponse = PostV1InventoryWarehousesCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            isDefault: true,
            createdAt: "createdAt"
        )
        let response = try await client.inventory.postV1InventoryWarehousesCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryWarehousesList1() async throws -> Void {
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
                      "isDefault": true,
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
        let expectedResponse = PostV1InventoryWarehousesListResponse(
            rows: [
                PostV1InventoryWarehousesListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    isDefault: true,
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.inventory.postV1InventoryWarehousesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryWarehousesList2() async throws -> Void {
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
                      "isDefault": true,
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "isDefault": true,
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
        let expectedResponse = PostV1InventoryWarehousesListResponse(
            rows: [
                PostV1InventoryWarehousesListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    isDefault: true,
                    createdAt: "createdAt"
                ),
                PostV1InventoryWarehousesListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    isDefault: true,
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.inventory.postV1InventoryWarehousesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryStockReceive1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "movementId": "movementId",
                  "totalCost": "totalCost"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1InventoryStockReceiveResponse(
            movementId: "movementId",
            totalCost: "totalCost"
        )
        let response = try await client.inventory.postV1InventoryStockReceive(
            request: .init(
                warehouseId: "warehouseId",
                itemId: "itemId",
                date: "date",
                quantity: "quantity",
                unitCost: "unitCost"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryStockReceive2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "movementId": "x",
                  "totalCost": "totalCost"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1InventoryStockReceiveResponse(
            movementId: "x",
            totalCost: "totalCost"
        )
        let response = try await client.inventory.postV1InventoryStockReceive(
            request: .init(
                warehouseId: "x",
                itemId: "x",
                date: "date",
                quantity: "quantity",
                unitCost: "unitCost"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryStockWriteOff1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "movementId": "movementId",
                  "totalCost": "totalCost",
                  "journalTransactionId": "journalTransactionId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1InventoryStockWriteOffResponse(
            movementId: "movementId",
            totalCost: "totalCost",
            journalTransactionId: "journalTransactionId"
        )
        let response = try await client.inventory.postV1InventoryStockWriteOff(
            request: .init(
                warehouseId: "warehouseId",
                itemId: "itemId",
                date: "date",
                quantity: "quantity"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryStockWriteOff2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "movementId": "x",
                  "totalCost": "totalCost",
                  "journalTransactionId": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1InventoryStockWriteOffResponse(
            movementId: "x",
            totalCost: "totalCost",
            journalTransactionId: "x"
        )
        let response = try await client.inventory.postV1InventoryStockWriteOff(
            request: .init(
                warehouseId: "x",
                itemId: "x",
                date: "date",
                quantity: "quantity"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryStockTransfer1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "outMovementId": "outMovementId",
                  "inMovementId": "inMovementId",
                  "totalCost": "totalCost"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1InventoryStockTransferResponse(
            outMovementId: "outMovementId",
            inMovementId: "inMovementId",
            totalCost: "totalCost"
        )
        let response = try await client.inventory.postV1InventoryStockTransfer(
            request: .init(
                fromWarehouseId: "fromWarehouseId",
                toWarehouseId: "toWarehouseId",
                itemId: "itemId",
                date: "date",
                quantity: "quantity"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryStockTransfer2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "outMovementId": "x",
                  "inMovementId": "x",
                  "totalCost": "totalCost"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1InventoryStockTransferResponse(
            outMovementId: "x",
            inMovementId: "x",
            totalCost: "totalCost"
        )
        let response = try await client.inventory.postV1InventoryStockTransfer(
            request: .init(
                fromWarehouseId: "x",
                toWarehouseId: "x",
                itemId: "x",
                date: "date",
                quantity: "quantity"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryStockTake1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "itemId": "itemId",
                      "onHand": "onHand",
                      "counted": "counted",
                      "difference": "difference",
                      "adjustmentCost": "adjustmentCost"
                    }
                  ],
                  "journalTransactionId": "journalTransactionId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1InventoryStockTakeResponse(
            rows: [
                PostV1InventoryStockTakeResponseRowsItem(
                    itemId: "itemId",
                    onHand: "onHand",
                    counted: "counted",
                    difference: "difference",
                    adjustmentCost: "adjustmentCost"
                )
            ],
            journalTransactionId: Nullable<String>.value("journalTransactionId")
        )
        let response = try await client.inventory.postV1InventoryStockTake(
            request: .init(
                warehouseId: "warehouseId",
                date: "date",
                lines: [
                    PostV1InventoryStockTakeRequestLinesItem(
                        countedQty: "countedQty"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryStockTake2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "itemId": "x",
                      "onHand": "onHand",
                      "counted": "counted",
                      "difference": "difference",
                      "adjustmentCost": "adjustmentCost"
                    },
                    {
                      "itemId": "x",
                      "onHand": "onHand",
                      "counted": "counted",
                      "difference": "difference",
                      "adjustmentCost": "adjustmentCost"
                    }
                  ],
                  "journalTransactionId": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1InventoryStockTakeResponse(
            rows: [
                PostV1InventoryStockTakeResponseRowsItem(
                    itemId: "x",
                    onHand: "onHand",
                    counted: "counted",
                    difference: "difference",
                    adjustmentCost: "adjustmentCost"
                ),
                PostV1InventoryStockTakeResponseRowsItem(
                    itemId: "x",
                    onHand: "onHand",
                    counted: "counted",
                    difference: "difference",
                    adjustmentCost: "adjustmentCost"
                )
            ],
            journalTransactionId: Nullable<String>.value("x")
        )
        let response = try await client.inventory.postV1InventoryStockTake(
            request: .init(
                warehouseId: "x",
                date: "date",
                lines: [
                    PostV1InventoryStockTakeRequestLinesItem(
                        countedQty: "countedQty"
                    ),
                    PostV1InventoryStockTakeRequestLinesItem(
                        countedQty: "countedQty"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryStockLevels1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "itemId": "itemId",
                      "warehouseId": "warehouseId",
                      "quantity": "quantity",
                      "value": "value"
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
        let expectedResponse = PostV1InventoryStockLevelsResponse(
            rows: [
                PostV1InventoryStockLevelsResponseRowsItem(
                    itemId: "itemId",
                    warehouseId: "warehouseId",
                    quantity: "quantity",
                    value: "value"
                )
            ]
        )
        let response = try await client.inventory.postV1InventoryStockLevels(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryStockLevels2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "itemId": "x",
                      "warehouseId": "x",
                      "quantity": "quantity",
                      "value": "value"
                    },
                    {
                      "itemId": "x",
                      "warehouseId": "x",
                      "quantity": "quantity",
                      "value": "value"
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
        let expectedResponse = PostV1InventoryStockLevelsResponse(
            rows: [
                PostV1InventoryStockLevelsResponseRowsItem(
                    itemId: "x",
                    warehouseId: "x",
                    quantity: "quantity",
                    value: "value"
                ),
                PostV1InventoryStockLevelsResponseRowsItem(
                    itemId: "x",
                    warehouseId: "x",
                    quantity: "quantity",
                    value: "value"
                )
            ]
        )
        let response = try await client.inventory.postV1InventoryStockLevels(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryStockMovementsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "warehouseId": "warehouseId",
                      "itemId": "itemId",
                      "date": "date",
                      "direction": "in",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "totalCost": "totalCost",
                      "remainingQty": "remainingQty",
                      "documentType": "documentType",
                      "documentId": "documentId",
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
        let expectedResponse = PostV1InventoryStockMovementsListResponse(
            rows: [
                PostV1InventoryStockMovementsListResponseRowsItem(
                    id: "id",
                    warehouseId: "warehouseId",
                    itemId: "itemId",
                    date: "date",
                    direction: .in,
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    totalCost: "totalCost",
                    remainingQty: "remainingQty",
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("documentId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.inventory.postV1InventoryStockMovementsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryStockMovementsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "warehouseId": "x",
                      "itemId": "x",
                      "date": "date",
                      "direction": "in",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "totalCost": "totalCost",
                      "remainingQty": "remainingQty",
                      "documentType": "documentType",
                      "documentId": "documentId",
                      "notes": "notes",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "warehouseId": "x",
                      "itemId": "x",
                      "date": "date",
                      "direction": "in",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "totalCost": "totalCost",
                      "remainingQty": "remainingQty",
                      "documentType": "documentType",
                      "documentId": "documentId",
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
        let expectedResponse = PostV1InventoryStockMovementsListResponse(
            rows: [
                PostV1InventoryStockMovementsListResponseRowsItem(
                    id: "x",
                    warehouseId: "x",
                    itemId: "x",
                    date: "date",
                    direction: .in,
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    totalCost: "totalCost",
                    remainingQty: "remainingQty",
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("documentId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1InventoryStockMovementsListResponseRowsItem(
                    id: "x",
                    warehouseId: "x",
                    itemId: "x",
                    date: "date",
                    direction: .in,
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    totalCost: "totalCost",
                    remainingQty: "remainingQty",
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("documentId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.inventory.postV1InventoryStockMovementsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}