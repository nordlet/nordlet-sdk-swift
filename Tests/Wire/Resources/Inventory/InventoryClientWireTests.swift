import Foundation
import Testing
import Api

@Suite("InventoryClient Wire Tests") struct InventoryClientWireTests {
    @Test func settingsGet1() async throws -> Void {
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
        let expectedResponse = SettingsGetInventoryResponse(
            negativeStockPolicy: .reject
        )
        let response = try await client.inventory.settingsGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settingsGet2() async throws -> Void {
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
        let expectedResponse = SettingsGetInventoryResponse(
            negativeStockPolicy: .reject
        )
        let response = try await client.inventory.settingsGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settingsUpdate1() async throws -> Void {
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
        let expectedResponse = SettingsUpdateInventoryResponse(
            negativeStockPolicy: .reject
        )
        let response = try await client.inventory.settingsUpdate(
            request: .init(negativeStockPolicy: .reject),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settingsUpdate2() async throws -> Void {
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
        let expectedResponse = SettingsUpdateInventoryResponse(
            negativeStockPolicy: .reject
        )
        let response = try await client.inventory.settingsUpdate(
            request: .init(negativeStockPolicy: .reject),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func warehousesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "isDefault": true,
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
        let expectedResponse = WarehousesCreateInventoryResponse(
            id: "id",
            code: "code",
            name: "name",
            isDefault: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.inventory.warehousesCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func warehousesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "isDefault": true,
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
        let expectedResponse = WarehousesCreateInventoryResponse(
            id: "x",
            code: "code",
            name: "name",
            isDefault: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.inventory.warehousesCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func warehousesList1() async throws -> Void {
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
                      "createdAt": "2026-07-01T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "key": "value"
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
        let expectedResponse = WarehousesListInventoryResponse(
            rows: [
                WarehousesListInventoryResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    isDefault: true,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.inventory.warehousesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func warehousesList2() async throws -> Void {
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
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "isDefault": true,
                      "createdAt": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "totals": "totals"
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
        let expectedResponse = WarehousesListInventoryResponse(
            rows: [
                WarehousesListInventoryResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    isDefault: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                WarehousesListInventoryResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    isDefault: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.inventory.warehousesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockReceive1() async throws -> Void {
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
        let expectedResponse = StockReceiveInventoryResponse(
            movementId: "movementId",
            totalCost: "totalCost"
        )
        let response = try await client.inventory.stockReceive(
            request: .init(
                warehouseId: "warehouseId",
                itemId: "itemId",
                date: CalendarDate("2026-07-01")!,
                quantity: "121.0000",
                unitCost: "121.000000"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockReceive2() async throws -> Void {
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
        let expectedResponse = StockReceiveInventoryResponse(
            movementId: "x",
            totalCost: "totalCost"
        )
        let response = try await client.inventory.stockReceive(
            request: .init(
                warehouseId: "x",
                itemId: "x",
                date: CalendarDate("2023-01-15")!,
                quantity: "quantity",
                unitCost: "unitCost"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockWriteOff1() async throws -> Void {
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
        let expectedResponse = StockWriteOffInventoryResponse(
            movementId: "movementId",
            totalCost: "totalCost",
            journalTransactionId: "journalTransactionId"
        )
        let response = try await client.inventory.stockWriteOff(
            request: .init(
                warehouseId: "warehouseId",
                itemId: "itemId",
                date: CalendarDate("2026-07-01")!,
                quantity: "121.0000"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockWriteOff2() async throws -> Void {
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
        let expectedResponse = StockWriteOffInventoryResponse(
            movementId: "x",
            totalCost: "totalCost",
            journalTransactionId: "x"
        )
        let response = try await client.inventory.stockWriteOff(
            request: .init(
                warehouseId: "x",
                itemId: "x",
                date: CalendarDate("2023-01-15")!,
                quantity: "quantity"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockTransfer1() async throws -> Void {
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
        let expectedResponse = StockTransferInventoryResponse(
            outMovementId: "outMovementId",
            inMovementId: "inMovementId",
            totalCost: "totalCost"
        )
        let response = try await client.inventory.stockTransfer(
            request: .init(
                fromWarehouseId: "fromWarehouseId",
                toWarehouseId: "toWarehouseId",
                itemId: "itemId",
                date: CalendarDate("2026-07-01")!,
                quantity: "121.0000"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockTransfer2() async throws -> Void {
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
        let expectedResponse = StockTransferInventoryResponse(
            outMovementId: "x",
            inMovementId: "x",
            totalCost: "totalCost"
        )
        let response = try await client.inventory.stockTransfer(
            request: .init(
                fromWarehouseId: "x",
                toWarehouseId: "x",
                itemId: "x",
                date: CalendarDate("2023-01-15")!,
                quantity: "quantity"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockTake1() async throws -> Void {
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
        let expectedResponse = StockTakeInventoryResponse(
            rows: [
                StockTakeInventoryResponseRowsItem(
                    itemId: "itemId",
                    onHand: "onHand",
                    counted: "counted",
                    difference: "difference",
                    adjustmentCost: "adjustmentCost"
                )
            ],
            journalTransactionId: Nullable<String>.value("journalTransactionId")
        )
        let response = try await client.inventory.stockTake(
            request: .init(
                warehouseId: "warehouseId",
                date: CalendarDate("2026-07-01")!,
                lines: [
                    StockTakeInventoryRequestLinesItem(
                        countedQty: "121.0000"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockTake2() async throws -> Void {
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
        let expectedResponse = StockTakeInventoryResponse(
            rows: [
                StockTakeInventoryResponseRowsItem(
                    itemId: "x",
                    onHand: "onHand",
                    counted: "counted",
                    difference: "difference",
                    adjustmentCost: "adjustmentCost"
                ),
                StockTakeInventoryResponseRowsItem(
                    itemId: "x",
                    onHand: "onHand",
                    counted: "counted",
                    difference: "difference",
                    adjustmentCost: "adjustmentCost"
                )
            ],
            journalTransactionId: Nullable<String>.value("x")
        )
        let response = try await client.inventory.stockTake(
            request: .init(
                warehouseId: "x",
                date: CalendarDate("2023-01-15")!,
                lines: [
                    StockTakeInventoryRequestLinesItem(
                        countedQty: "countedQty"
                    ),
                    StockTakeInventoryRequestLinesItem(
                        countedQty: "countedQty"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockLevels1() async throws -> Void {
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
        let expectedResponse = StockLevelsInventoryResponse(
            rows: [
                StockLevelsInventoryResponseRowsItem(
                    itemId: "itemId",
                    warehouseId: "warehouseId",
                    quantity: "quantity",
                    value: "value"
                )
            ]
        )
        let response = try await client.inventory.stockLevels(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockLevels2() async throws -> Void {
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
        let expectedResponse = StockLevelsInventoryResponse(
            rows: [
                StockLevelsInventoryResponseRowsItem(
                    itemId: "x",
                    warehouseId: "x",
                    quantity: "quantity",
                    value: "value"
                ),
                StockLevelsInventoryResponseRowsItem(
                    itemId: "x",
                    warehouseId: "x",
                    quantity: "quantity",
                    value: "value"
                )
            ]
        )
        let response = try await client.inventory.stockLevels(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockMovementsList1() async throws -> Void {
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
                      "date": "2026-07-01",
                      "direction": "in",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "totalCost": "totalCost",
                      "remainingQty": "remainingQty",
                      "documentType": "documentType",
                      "documentId": "documentId",
                      "notes": "notes",
                      "createdAt": "2026-07-01T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "key": "value"
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
        let expectedResponse = StockMovementsListInventoryResponse(
            rows: [
                StockMovementsListInventoryResponseRowsItem(
                    id: "id",
                    warehouseId: "warehouseId",
                    itemId: "itemId",
                    lotId: Nullable<String>.value("lotId"),
                    date: CalendarDate("2026-07-01")!,
                    direction: .in,
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    totalCost: "totalCost",
                    remainingQty: "remainingQty",
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("documentId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.inventory.stockMovementsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockMovementsList2() async throws -> Void {
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
                      "date": "2023-01-15",
                      "direction": "in",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "totalCost": "totalCost",
                      "remainingQty": "remainingQty",
                      "documentType": "documentType",
                      "documentId": "documentId",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "warehouseId": "x",
                      "itemId": "x",
                      "lotId": "x",
                      "date": "2023-01-15",
                      "direction": "in",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "totalCost": "totalCost",
                      "remainingQty": "remainingQty",
                      "documentType": "documentType",
                      "documentId": "documentId",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "totals": "totals"
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
        let expectedResponse = StockMovementsListInventoryResponse(
            rows: [
                StockMovementsListInventoryResponseRowsItem(
                    id: "x",
                    warehouseId: "x",
                    itemId: "x",
                    lotId: Nullable<String>.value("x"),
                    date: CalendarDate("2023-01-15")!,
                    direction: .in,
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    totalCost: "totalCost",
                    remainingQty: "remainingQty",
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("documentId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                StockMovementsListInventoryResponseRowsItem(
                    id: "x",
                    warehouseId: "x",
                    itemId: "x",
                    lotId: Nullable<String>.value("x"),
                    date: CalendarDate("2023-01-15")!,
                    direction: .in,
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    totalCost: "totalCost",
                    remainingQty: "remainingQty",
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("documentId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.inventory.stockMovementsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func lotsList1() async throws -> Void {
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
                      "expiryDate": "2026-07-01",
                      "notes": "notes",
                      "onHand": "onHand",
                      "createdAt": "2026-07-01T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "key": "value"
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
        let expectedResponse = LotsListInventoryResponse(
            rows: [
                LotsListInventoryResponseRowsItem(
                    id: "id",
                    itemId: "itemId",
                    lotNumber: "lotNumber",
                    expiryDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    notes: Nullable<String>.value("notes"),
                    onHand: "onHand",
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.inventory.lotsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func lotsList2() async throws -> Void {
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
                      "expiryDate": "2023-01-15",
                      "notes": "notes",
                      "onHand": "onHand",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "lotNumber": "lotNumber",
                      "expiryDate": "2023-01-15",
                      "notes": "notes",
                      "onHand": "onHand",
                      "createdAt": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "totals": "totals"
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
        let expectedResponse = LotsListInventoryResponse(
            rows: [
                LotsListInventoryResponseRowsItem(
                    id: "x",
                    itemId: "x",
                    lotNumber: "lotNumber",
                    expiryDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    notes: Nullable<String>.value("notes"),
                    onHand: "onHand",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                LotsListInventoryResponseRowsItem(
                    id: "x",
                    itemId: "x",
                    lotNumber: "lotNumber",
                    expiryDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    notes: Nullable<String>.value("notes"),
                    onHand: "onHand",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.inventory.lotsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func lotsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "itemId": "itemId",
                  "lotNumber": "lotNumber",
                  "expiryDate": "2026-07-01",
                  "notes": "notes",
                  "onHand": "onHand",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "movements": [
                    {
                      "id": "id",
                      "warehouseId": "warehouseId",
                      "itemId": "itemId",
                      "lotId": "lotId",
                      "date": "2026-07-01",
                      "direction": "in",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "totalCost": "totalCost",
                      "remainingQty": "remainingQty",
                      "documentType": "documentType",
                      "documentId": "documentId",
                      "notes": "notes",
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = LotsGetInventoryResponse(
            id: "id",
            itemId: "itemId",
            lotNumber: "lotNumber",
            expiryDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            notes: Nullable<String>.value("notes"),
            onHand: "onHand",
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            movements: [
                LotsGetInventoryResponseMovementsItem(
                    id: "id",
                    warehouseId: "warehouseId",
                    itemId: "itemId",
                    lotId: Nullable<String>.value("lotId"),
                    date: CalendarDate("2026-07-01")!,
                    direction: .in,
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    totalCost: "totalCost",
                    remainingQty: "remainingQty",
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("documentId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.inventory.lotsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func lotsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "itemId": "x",
                  "lotNumber": "lotNumber",
                  "expiryDate": "2023-01-15",
                  "notes": "notes",
                  "onHand": "onHand",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "movements": [
                    {
                      "id": "x",
                      "warehouseId": "x",
                      "itemId": "x",
                      "lotId": "x",
                      "date": "2023-01-15",
                      "direction": "in",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "totalCost": "totalCost",
                      "remainingQty": "remainingQty",
                      "documentType": "documentType",
                      "documentId": "documentId",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "warehouseId": "x",
                      "itemId": "x",
                      "lotId": "x",
                      "date": "2023-01-15",
                      "direction": "in",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "totalCost": "totalCost",
                      "remainingQty": "remainingQty",
                      "documentType": "documentType",
                      "documentId": "documentId",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = LotsGetInventoryResponse(
            id: "x",
            itemId: "x",
            lotNumber: "lotNumber",
            expiryDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            notes: Nullable<String>.value("notes"),
            onHand: "onHand",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            movements: [
                LotsGetInventoryResponseMovementsItem(
                    id: "x",
                    warehouseId: "x",
                    itemId: "x",
                    lotId: Nullable<String>.value("x"),
                    date: CalendarDate("2023-01-15")!,
                    direction: .in,
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    totalCost: "totalCost",
                    remainingQty: "remainingQty",
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("documentId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                LotsGetInventoryResponseMovementsItem(
                    id: "x",
                    warehouseId: "x",
                    itemId: "x",
                    lotId: Nullable<String>.value("x"),
                    date: CalendarDate("2023-01-15")!,
                    direction: .in,
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    totalCost: "totalCost",
                    remainingQty: "remainingQty",
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("documentId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.inventory.lotsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func lotsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "itemId": "itemId",
                  "lotNumber": "lotNumber",
                  "expiryDate": "2026-07-01",
                  "notes": "notes",
                  "onHand": "onHand",
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
        let expectedResponse = LotsUpdateInventoryResponse(
            id: "id",
            itemId: "itemId",
            lotNumber: "lotNumber",
            expiryDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            notes: Nullable<String>.value("notes"),
            onHand: "onHand",
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.inventory.lotsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func lotsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "itemId": "x",
                  "lotNumber": "lotNumber",
                  "expiryDate": "2023-01-15",
                  "notes": "notes",
                  "onHand": "onHand",
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
        let expectedResponse = LotsUpdateInventoryResponse(
            id: "x",
            itemId: "x",
            lotNumber: "lotNumber",
            expiryDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            notes: Nullable<String>.value("notes"),
            onHand: "onHand",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.inventory.lotsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func landedCostsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "date": "2026-07-01",
                  "amount": "amount",
                  "method": "by_value",
                  "goodsReceiptId": "goodsReceiptId",
                  "sourceInvoiceId": "sourceInvoiceId",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = LandedCostsCreateInventoryResponse(
            id: "id",
            date: CalendarDate("2026-07-01")!,
            amount: "amount",
            method: .byValue,
            goodsReceiptId: Nullable<String>.value("goodsReceiptId"),
            sourceInvoiceId: Nullable<String>.value("sourceInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                LandedCostsCreateInventoryResponseLinesItem(
                    movementId: "movementId",
                    allocatedAmount: "allocatedAmount",
                    newUnitCost: "newUnitCost"
                )
            ]
        )
        let response = try await client.inventory.landedCostsCreate(
            request: .init(
                date: CalendarDate("2026-07-01")!,
                amount: "121.000000"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func landedCostsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "date": "2023-01-15",
                  "amount": "amount",
                  "method": "by_value",
                  "goodsReceiptId": "goodsReceiptId",
                  "sourceInvoiceId": "sourceInvoiceId",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = LandedCostsCreateInventoryResponse(
            id: "x",
            date: CalendarDate("2023-01-15")!,
            amount: "amount",
            method: .byValue,
            goodsReceiptId: Nullable<String>.value("goodsReceiptId"),
            sourceInvoiceId: Nullable<String>.value("sourceInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                LandedCostsCreateInventoryResponseLinesItem(
                    movementId: "x",
                    allocatedAmount: "allocatedAmount",
                    newUnitCost: "newUnitCost"
                ),
                LandedCostsCreateInventoryResponseLinesItem(
                    movementId: "x",
                    allocatedAmount: "allocatedAmount",
                    newUnitCost: "newUnitCost"
                )
            ]
        )
        let response = try await client.inventory.landedCostsCreate(
            request: .init(
                date: CalendarDate("2023-01-15")!,
                amount: "amount"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func landedCostsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "date": "2026-07-01",
                  "amount": "amount",
                  "method": "by_value",
                  "goodsReceiptId": "goodsReceiptId",
                  "sourceInvoiceId": "sourceInvoiceId",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = LandedCostsGetInventoryResponse(
            id: "id",
            date: CalendarDate("2026-07-01")!,
            amount: "amount",
            method: .byValue,
            goodsReceiptId: Nullable<String>.value("goodsReceiptId"),
            sourceInvoiceId: Nullable<String>.value("sourceInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                LandedCostsGetInventoryResponseLinesItem(
                    movementId: "movementId",
                    allocatedAmount: "allocatedAmount",
                    newUnitCost: "newUnitCost"
                )
            ]
        )
        let response = try await client.inventory.landedCostsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func landedCostsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "date": "2023-01-15",
                  "amount": "amount",
                  "method": "by_value",
                  "goodsReceiptId": "goodsReceiptId",
                  "sourceInvoiceId": "sourceInvoiceId",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = LandedCostsGetInventoryResponse(
            id: "x",
            date: CalendarDate("2023-01-15")!,
            amount: "amount",
            method: .byValue,
            goodsReceiptId: Nullable<String>.value("goodsReceiptId"),
            sourceInvoiceId: Nullable<String>.value("sourceInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                LandedCostsGetInventoryResponseLinesItem(
                    movementId: "x",
                    allocatedAmount: "allocatedAmount",
                    newUnitCost: "newUnitCost"
                ),
                LandedCostsGetInventoryResponseLinesItem(
                    movementId: "x",
                    allocatedAmount: "allocatedAmount",
                    newUnitCost: "newUnitCost"
                )
            ]
        )
        let response = try await client.inventory.landedCostsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func landedCostsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "date": "2026-07-01",
                      "amount": "amount",
                      "method": "by_value",
                      "goodsReceiptId": "goodsReceiptId",
                      "sourceInvoiceId": "sourceInvoiceId",
                      "notes": "notes",
                      "createdAt": "2026-07-01T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "key": "value"
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
        let expectedResponse = LandedCostsListInventoryResponse(
            rows: [
                LandedCostsListInventoryResponseRowsItem(
                    id: "id",
                    date: CalendarDate("2026-07-01")!,
                    amount: "amount",
                    method: .byValue,
                    goodsReceiptId: Nullable<String>.value("goodsReceiptId"),
                    sourceInvoiceId: Nullable<String>.value("sourceInvoiceId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.inventory.landedCostsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func landedCostsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "date": "2023-01-15",
                      "amount": "amount",
                      "method": "by_value",
                      "goodsReceiptId": "goodsReceiptId",
                      "sourceInvoiceId": "sourceInvoiceId",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "date": "2023-01-15",
                      "amount": "amount",
                      "method": "by_value",
                      "goodsReceiptId": "goodsReceiptId",
                      "sourceInvoiceId": "sourceInvoiceId",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "totals": "totals"
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
        let expectedResponse = LandedCostsListInventoryResponse(
            rows: [
                LandedCostsListInventoryResponseRowsItem(
                    id: "x",
                    date: CalendarDate("2023-01-15")!,
                    amount: "amount",
                    method: .byValue,
                    goodsReceiptId: Nullable<String>.value("goodsReceiptId"),
                    sourceInvoiceId: Nullable<String>.value("sourceInvoiceId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                LandedCostsListInventoryResponseRowsItem(
                    id: "x",
                    date: CalendarDate("2023-01-15")!,
                    amount: "amount",
                    method: .byValue,
                    goodsReceiptId: Nullable<String>.value("goodsReceiptId"),
                    sourceInvoiceId: Nullable<String>.value("sourceInvoiceId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.inventory.landedCostsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reorderRulesCreate1() async throws -> Void {
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
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ReorderRulesCreateInventoryResponse(
            id: "id",
            itemId: "itemId",
            warehouseId: Nullable<String>.value("warehouseId"),
            minQty: "minQty",
            reorderQty: Nullable<String>.value("reorderQty"),
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.inventory.reorderRulesCreate(
            request: .init(
                itemId: "itemId",
                minQty: "121.0000"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reorderRulesCreate2() async throws -> Void {
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
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ReorderRulesCreateInventoryResponse(
            id: "x",
            itemId: "x",
            warehouseId: Nullable<String>.value("x"),
            minQty: "minQty",
            reorderQty: Nullable<String>.value("reorderQty"),
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.inventory.reorderRulesCreate(
            request: .init(
                itemId: "x",
                minQty: "minQty"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reorderRulesUpdate1() async throws -> Void {
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
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ReorderRulesUpdateInventoryResponse(
            id: "id",
            itemId: "itemId",
            warehouseId: Nullable<String>.value("warehouseId"),
            minQty: "minQty",
            reorderQty: Nullable<String>.value("reorderQty"),
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.inventory.reorderRulesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reorderRulesUpdate2() async throws -> Void {
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
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ReorderRulesUpdateInventoryResponse(
            id: "x",
            itemId: "x",
            warehouseId: Nullable<String>.value("x"),
            minQty: "minQty",
            reorderQty: Nullable<String>.value("reorderQty"),
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.inventory.reorderRulesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reorderRulesDelete1() async throws -> Void {
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
        let expectedResponse = ReorderRulesDeleteInventoryResponse(
            id: "id"
        )
        let response = try await client.inventory.reorderRulesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reorderRulesDelete2() async throws -> Void {
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
        let expectedResponse = ReorderRulesDeleteInventoryResponse(
            id: "x"
        )
        let response = try await client.inventory.reorderRulesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reorderRulesList1() async throws -> Void {
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
                      "createdAt": "2026-07-01T09:30:00Z",
                      "updatedAt": "2026-07-01T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "key": "value"
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
        let expectedResponse = ReorderRulesListInventoryResponse(
            rows: [
                ReorderRulesListInventoryResponseRowsItem(
                    id: "id",
                    itemId: "itemId",
                    warehouseId: Nullable<String>.value("warehouseId"),
                    minQty: "minQty",
                    reorderQty: Nullable<String>.value("reorderQty"),
                    isActive: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.inventory.reorderRulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reorderRulesList2() async throws -> Void {
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
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "warehouseId": "x",
                      "minQty": "minQty",
                      "reorderQty": "reorderQty",
                      "isActive": true,
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "totals": "totals"
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
        let expectedResponse = ReorderRulesListInventoryResponse(
            rows: [
                ReorderRulesListInventoryResponseRowsItem(
                    id: "x",
                    itemId: "x",
                    warehouseId: Nullable<String>.value("x"),
                    minQty: "minQty",
                    reorderQty: Nullable<String>.value("reorderQty"),
                    isActive: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ReorderRulesListInventoryResponseRowsItem(
                    id: "x",
                    itemId: "x",
                    warehouseId: Nullable<String>.value("x"),
                    minQty: "minQty",
                    reorderQty: Nullable<String>.value("reorderQty"),
                    isActive: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.inventory.reorderRulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reorderRulesCheck1() async throws -> Void {
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
        let expectedResponse = ReorderRulesCheckInventoryResponse(
            rows: [
                ReorderRulesCheckInventoryResponseRowsItem(
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
        let response = try await client.inventory.reorderRulesCheck(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reorderRulesCheck2() async throws -> Void {
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
        let expectedResponse = ReorderRulesCheckInventoryResponse(
            rows: [
                ReorderRulesCheckInventoryResponseRowsItem(
                    ruleId: "x",
                    itemId: "x",
                    warehouseId: Nullable<String>.value("x"),
                    minQty: "minQty",
                    reorderQty: Nullable<String>.value("reorderQty"),
                    onHand: "onHand",
                    reserved: "reserved",
                    available: "available"
                ),
                ReorderRulesCheckInventoryResponseRowsItem(
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
        let response = try await client.inventory.reorderRulesCheck(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}