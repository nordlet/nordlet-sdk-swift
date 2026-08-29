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
                      "lotId": "lotId",
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
                    lotId: Nullable<String>.value("lotId"),
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
                      "lotId": "x",
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
                      "lotId": "x",
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
                    lotId: Nullable<String>.value("x"),
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
                    lotId: Nullable<String>.value("x"),
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

    @Test func postV1InventoryLotsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "lotNumber": "lotNumber",
                      "expiryDate": "expiryDate",
                      "notes": "notes",
                      "onHand": "onHand",
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
        let expectedResponse = PostV1InventoryLotsListResponse(
            rows: [
                PostV1InventoryLotsListResponseRowsItem(
                    id: "id",
                    itemId: "itemId",
                    lotNumber: "lotNumber",
                    expiryDate: Nullable<String>.value("expiryDate"),
                    notes: Nullable<String>.value("notes"),
                    onHand: "onHand",
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.inventory.postV1InventoryLotsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryLotsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "lotNumber": "lotNumber",
                      "expiryDate": "expiryDate",
                      "notes": "notes",
                      "onHand": "onHand",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "lotNumber": "lotNumber",
                      "expiryDate": "expiryDate",
                      "notes": "notes",
                      "onHand": "onHand",
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
        let expectedResponse = PostV1InventoryLotsListResponse(
            rows: [
                PostV1InventoryLotsListResponseRowsItem(
                    id: "x",
                    itemId: "x",
                    lotNumber: "lotNumber",
                    expiryDate: Nullable<String>.value("expiryDate"),
                    notes: Nullable<String>.value("notes"),
                    onHand: "onHand",
                    createdAt: "createdAt"
                ),
                PostV1InventoryLotsListResponseRowsItem(
                    id: "x",
                    itemId: "x",
                    lotNumber: "lotNumber",
                    expiryDate: Nullable<String>.value("expiryDate"),
                    notes: Nullable<String>.value("notes"),
                    onHand: "onHand",
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.inventory.postV1InventoryLotsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryLotsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "itemId": "itemId",
                  "lotNumber": "lotNumber",
                  "expiryDate": "expiryDate",
                  "notes": "notes",
                  "onHand": "onHand",
                  "createdAt": "createdAt",
                  "movements": [
                    {
                      "id": "id",
                      "warehouseId": "warehouseId",
                      "itemId": "itemId",
                      "lotId": "lotId",
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
        let expectedResponse = PostV1InventoryLotsGetResponse(
            id: "id",
            itemId: "itemId",
            lotNumber: "lotNumber",
            expiryDate: Nullable<String>.value("expiryDate"),
            notes: Nullable<String>.value("notes"),
            onHand: "onHand",
            createdAt: "createdAt",
            movements: [
                PostV1InventoryLotsGetResponseMovementsItem(
                    id: "id",
                    warehouseId: "warehouseId",
                    itemId: "itemId",
                    lotId: Nullable<String>.value("lotId"),
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
            ]
        )
        let response = try await client.inventory.postV1InventoryLotsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryLotsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "itemId": "x",
                  "lotNumber": "lotNumber",
                  "expiryDate": "expiryDate",
                  "notes": "notes",
                  "onHand": "onHand",
                  "createdAt": "createdAt",
                  "movements": [
                    {
                      "id": "x",
                      "warehouseId": "x",
                      "itemId": "x",
                      "lotId": "x",
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
                      "lotId": "x",
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
        let expectedResponse = PostV1InventoryLotsGetResponse(
            id: "x",
            itemId: "x",
            lotNumber: "lotNumber",
            expiryDate: Nullable<String>.value("expiryDate"),
            notes: Nullable<String>.value("notes"),
            onHand: "onHand",
            createdAt: "createdAt",
            movements: [
                PostV1InventoryLotsGetResponseMovementsItem(
                    id: "x",
                    warehouseId: "x",
                    itemId: "x",
                    lotId: Nullable<String>.value("x"),
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
                PostV1InventoryLotsGetResponseMovementsItem(
                    id: "x",
                    warehouseId: "x",
                    itemId: "x",
                    lotId: Nullable<String>.value("x"),
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
            ]
        )
        let response = try await client.inventory.postV1InventoryLotsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryLotsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "itemId": "itemId",
                  "lotNumber": "lotNumber",
                  "expiryDate": "expiryDate",
                  "notes": "notes",
                  "onHand": "onHand",
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
        let expectedResponse = PostV1InventoryLotsUpdateResponse(
            id: "id",
            itemId: "itemId",
            lotNumber: "lotNumber",
            expiryDate: Nullable<String>.value("expiryDate"),
            notes: Nullable<String>.value("notes"),
            onHand: "onHand",
            createdAt: "createdAt"
        )
        let response = try await client.inventory.postV1InventoryLotsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryLotsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "itemId": "x",
                  "lotNumber": "lotNumber",
                  "expiryDate": "expiryDate",
                  "notes": "notes",
                  "onHand": "onHand",
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
        let expectedResponse = PostV1InventoryLotsUpdateResponse(
            id: "x",
            itemId: "x",
            lotNumber: "lotNumber",
            expiryDate: Nullable<String>.value("expiryDate"),
            notes: Nullable<String>.value("notes"),
            onHand: "onHand",
            createdAt: "createdAt"
        )
        let response = try await client.inventory.postV1InventoryLotsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryLandedCostsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "date": "date",
                  "amount": "amount",
                  "method": "by_value",
                  "goodsReceiptId": "goodsReceiptId",
                  "sourceInvoiceId": "sourceInvoiceId",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "lines": [
                    {
                      "movementId": "movementId",
                      "allocatedAmount": "allocatedAmount",
                      "newUnitCost": "newUnitCost"
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
        let expectedResponse = PostV1InventoryLandedCostsCreateResponse(
            id: "id",
            date: "date",
            amount: "amount",
            method: .byValue,
            goodsReceiptId: Nullable<String>.value("goodsReceiptId"),
            sourceInvoiceId: Nullable<String>.value("sourceInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            lines: [
                PostV1InventoryLandedCostsCreateResponseLinesItem(
                    movementId: "movementId",
                    allocatedAmount: "allocatedAmount",
                    newUnitCost: "newUnitCost"
                )
            ]
        )
        let response = try await client.inventory.postV1InventoryLandedCostsCreate(
            request: .init(
                date: "date",
                amount: "amount"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryLandedCostsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "date": "date",
                  "amount": "amount",
                  "method": "by_value",
                  "goodsReceiptId": "goodsReceiptId",
                  "sourceInvoiceId": "sourceInvoiceId",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "lines": [
                    {
                      "movementId": "x",
                      "allocatedAmount": "allocatedAmount",
                      "newUnitCost": "newUnitCost"
                    },
                    {
                      "movementId": "x",
                      "allocatedAmount": "allocatedAmount",
                      "newUnitCost": "newUnitCost"
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
        let expectedResponse = PostV1InventoryLandedCostsCreateResponse(
            id: "x",
            date: "date",
            amount: "amount",
            method: .byValue,
            goodsReceiptId: Nullable<String>.value("goodsReceiptId"),
            sourceInvoiceId: Nullable<String>.value("sourceInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            lines: [
                PostV1InventoryLandedCostsCreateResponseLinesItem(
                    movementId: "x",
                    allocatedAmount: "allocatedAmount",
                    newUnitCost: "newUnitCost"
                ),
                PostV1InventoryLandedCostsCreateResponseLinesItem(
                    movementId: "x",
                    allocatedAmount: "allocatedAmount",
                    newUnitCost: "newUnitCost"
                )
            ]
        )
        let response = try await client.inventory.postV1InventoryLandedCostsCreate(
            request: .init(
                date: "date",
                amount: "amount"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryLandedCostsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "date": "date",
                  "amount": "amount",
                  "method": "by_value",
                  "goodsReceiptId": "goodsReceiptId",
                  "sourceInvoiceId": "sourceInvoiceId",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "lines": [
                    {
                      "movementId": "movementId",
                      "allocatedAmount": "allocatedAmount",
                      "newUnitCost": "newUnitCost"
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
        let expectedResponse = PostV1InventoryLandedCostsGetResponse(
            id: "id",
            date: "date",
            amount: "amount",
            method: .byValue,
            goodsReceiptId: Nullable<String>.value("goodsReceiptId"),
            sourceInvoiceId: Nullable<String>.value("sourceInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            lines: [
                PostV1InventoryLandedCostsGetResponseLinesItem(
                    movementId: "movementId",
                    allocatedAmount: "allocatedAmount",
                    newUnitCost: "newUnitCost"
                )
            ]
        )
        let response = try await client.inventory.postV1InventoryLandedCostsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryLandedCostsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "date": "date",
                  "amount": "amount",
                  "method": "by_value",
                  "goodsReceiptId": "goodsReceiptId",
                  "sourceInvoiceId": "sourceInvoiceId",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "lines": [
                    {
                      "movementId": "x",
                      "allocatedAmount": "allocatedAmount",
                      "newUnitCost": "newUnitCost"
                    },
                    {
                      "movementId": "x",
                      "allocatedAmount": "allocatedAmount",
                      "newUnitCost": "newUnitCost"
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
        let expectedResponse = PostV1InventoryLandedCostsGetResponse(
            id: "x",
            date: "date",
            amount: "amount",
            method: .byValue,
            goodsReceiptId: Nullable<String>.value("goodsReceiptId"),
            sourceInvoiceId: Nullable<String>.value("sourceInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            lines: [
                PostV1InventoryLandedCostsGetResponseLinesItem(
                    movementId: "x",
                    allocatedAmount: "allocatedAmount",
                    newUnitCost: "newUnitCost"
                ),
                PostV1InventoryLandedCostsGetResponseLinesItem(
                    movementId: "x",
                    allocatedAmount: "allocatedAmount",
                    newUnitCost: "newUnitCost"
                )
            ]
        )
        let response = try await client.inventory.postV1InventoryLandedCostsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryLandedCostsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "date": "date",
                      "amount": "amount",
                      "method": "by_value",
                      "goodsReceiptId": "goodsReceiptId",
                      "sourceInvoiceId": "sourceInvoiceId",
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
        let expectedResponse = PostV1InventoryLandedCostsListResponse(
            rows: [
                PostV1InventoryLandedCostsListResponseRowsItem(
                    id: "id",
                    date: "date",
                    amount: "amount",
                    method: .byValue,
                    goodsReceiptId: Nullable<String>.value("goodsReceiptId"),
                    sourceInvoiceId: Nullable<String>.value("sourceInvoiceId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.inventory.postV1InventoryLandedCostsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryLandedCostsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "date": "date",
                      "amount": "amount",
                      "method": "by_value",
                      "goodsReceiptId": "goodsReceiptId",
                      "sourceInvoiceId": "sourceInvoiceId",
                      "notes": "notes",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "date": "date",
                      "amount": "amount",
                      "method": "by_value",
                      "goodsReceiptId": "goodsReceiptId",
                      "sourceInvoiceId": "sourceInvoiceId",
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
        let expectedResponse = PostV1InventoryLandedCostsListResponse(
            rows: [
                PostV1InventoryLandedCostsListResponseRowsItem(
                    id: "x",
                    date: "date",
                    amount: "amount",
                    method: .byValue,
                    goodsReceiptId: Nullable<String>.value("goodsReceiptId"),
                    sourceInvoiceId: Nullable<String>.value("sourceInvoiceId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1InventoryLandedCostsListResponseRowsItem(
                    id: "x",
                    date: "date",
                    amount: "amount",
                    method: .byValue,
                    goodsReceiptId: Nullable<String>.value("goodsReceiptId"),
                    sourceInvoiceId: Nullable<String>.value("sourceInvoiceId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.inventory.postV1InventoryLandedCostsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryReorderRulesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "itemId": "itemId",
                  "warehouseId": "warehouseId",
                  "minQty": "minQty",
                  "reorderQty": "reorderQty",
                  "isActive": true,
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1InventoryReorderRulesCreateResponse(
            id: "id",
            itemId: "itemId",
            warehouseId: Nullable<String>.value("warehouseId"),
            minQty: "minQty",
            reorderQty: Nullable<String>.value("reorderQty"),
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.inventory.postV1InventoryReorderRulesCreate(
            request: .init(
                itemId: "itemId",
                minQty: "minQty"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryReorderRulesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "itemId": "x",
                  "warehouseId": "x",
                  "minQty": "minQty",
                  "reorderQty": "reorderQty",
                  "isActive": true,
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1InventoryReorderRulesCreateResponse(
            id: "x",
            itemId: "x",
            warehouseId: Nullable<String>.value("x"),
            minQty: "minQty",
            reorderQty: Nullable<String>.value("reorderQty"),
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.inventory.postV1InventoryReorderRulesCreate(
            request: .init(
                itemId: "x",
                minQty: "minQty"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryReorderRulesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "itemId": "itemId",
                  "warehouseId": "warehouseId",
                  "minQty": "minQty",
                  "reorderQty": "reorderQty",
                  "isActive": true,
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1InventoryReorderRulesUpdateResponse(
            id: "id",
            itemId: "itemId",
            warehouseId: Nullable<String>.value("warehouseId"),
            minQty: "minQty",
            reorderQty: Nullable<String>.value("reorderQty"),
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.inventory.postV1InventoryReorderRulesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryReorderRulesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "itemId": "x",
                  "warehouseId": "x",
                  "minQty": "minQty",
                  "reorderQty": "reorderQty",
                  "isActive": true,
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1InventoryReorderRulesUpdateResponse(
            id: "x",
            itemId: "x",
            warehouseId: Nullable<String>.value("x"),
            minQty: "minQty",
            reorderQty: Nullable<String>.value("reorderQty"),
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.inventory.postV1InventoryReorderRulesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryReorderRulesDelete1() async throws -> Void {
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
        let expectedResponse = PostV1InventoryReorderRulesDeleteResponse(
            id: "id"
        )
        let response = try await client.inventory.postV1InventoryReorderRulesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryReorderRulesDelete2() async throws -> Void {
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
        let expectedResponse = PostV1InventoryReorderRulesDeleteResponse(
            id: "x"
        )
        let response = try await client.inventory.postV1InventoryReorderRulesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryReorderRulesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "warehouseId": "warehouseId",
                      "minQty": "minQty",
                      "reorderQty": "reorderQty",
                      "isActive": true,
                      "notes": "notes",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1InventoryReorderRulesListResponse(
            rows: [
                PostV1InventoryReorderRulesListResponseRowsItem(
                    id: "id",
                    itemId: "itemId",
                    warehouseId: Nullable<String>.value("warehouseId"),
                    minQty: "minQty",
                    reorderQty: Nullable<String>.value("reorderQty"),
                    isActive: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.inventory.postV1InventoryReorderRulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryReorderRulesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "warehouseId": "x",
                      "minQty": "minQty",
                      "reorderQty": "reorderQty",
                      "isActive": true,
                      "notes": "notes",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "warehouseId": "x",
                      "minQty": "minQty",
                      "reorderQty": "reorderQty",
                      "isActive": true,
                      "notes": "notes",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1InventoryReorderRulesListResponse(
            rows: [
                PostV1InventoryReorderRulesListResponseRowsItem(
                    id: "x",
                    itemId: "x",
                    warehouseId: Nullable<String>.value("x"),
                    minQty: "minQty",
                    reorderQty: Nullable<String>.value("reorderQty"),
                    isActive: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1InventoryReorderRulesListResponseRowsItem(
                    id: "x",
                    itemId: "x",
                    warehouseId: Nullable<String>.value("x"),
                    minQty: "minQty",
                    reorderQty: Nullable<String>.value("reorderQty"),
                    isActive: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.inventory.postV1InventoryReorderRulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryReorderRulesCheck1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "ruleId": "ruleId",
                      "itemId": "itemId",
                      "warehouseId": "warehouseId",
                      "minQty": "minQty",
                      "reorderQty": "reorderQty",
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
        let expectedResponse = PostV1InventoryReorderRulesCheckResponse(
            rows: [
                PostV1InventoryReorderRulesCheckResponseRowsItem(
                    ruleId: "ruleId",
                    itemId: "itemId",
                    warehouseId: Nullable<String>.value("warehouseId"),
                    minQty: "minQty",
                    reorderQty: Nullable<String>.value("reorderQty"),
                    onHand: "onHand",
                    reserved: "reserved",
                    available: "available"
                )
            ]
        )
        let response = try await client.inventory.postV1InventoryReorderRulesCheck(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1InventoryReorderRulesCheck2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "ruleId": "x",
                      "itemId": "x",
                      "warehouseId": "x",
                      "minQty": "minQty",
                      "reorderQty": "reorderQty",
                      "onHand": "onHand",
                      "reserved": "reserved",
                      "available": "available"
                    },
                    {
                      "ruleId": "x",
                      "itemId": "x",
                      "warehouseId": "x",
                      "minQty": "minQty",
                      "reorderQty": "reorderQty",
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
        let expectedResponse = PostV1InventoryReorderRulesCheckResponse(
            rows: [
                PostV1InventoryReorderRulesCheckResponseRowsItem(
                    ruleId: "x",
                    itemId: "x",
                    warehouseId: Nullable<String>.value("x"),
                    minQty: "minQty",
                    reorderQty: Nullable<String>.value("reorderQty"),
                    onHand: "onHand",
                    reserved: "reserved",
                    available: "available"
                ),
                PostV1InventoryReorderRulesCheckResponseRowsItem(
                    ruleId: "x",
                    itemId: "x",
                    warehouseId: Nullable<String>.value("x"),
                    minQty: "minQty",
                    reorderQty: Nullable<String>.value("reorderQty"),
                    onHand: "onHand",
                    reserved: "reserved",
                    available: "available"
                )
            ]
        )
        let response = try await client.inventory.postV1InventoryReorderRulesCheck(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}