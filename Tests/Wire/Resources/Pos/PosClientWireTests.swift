import Foundation
import Testing
import Api

@Suite("PosClient Wire Tests") struct PosClientWireTests {
    @Test func devicesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "serialNumber": "serialNumber",
                  "model": "model",
                  "registrationNumber": "registrationNumber",
                  "address": "address",
                  "isActive": true,
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
        let expectedResponse = DevicesCreatePosResponse(
            id: "id",
            name: "name",
            serialNumber: "serialNumber",
            model: Nullable<String>.value("model"),
            registrationNumber: Nullable<String>.value("registrationNumber"),
            address: Nullable<String>.value("address"),
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.pos.devicesCreate(
            request: .init(
                name: "name",
                serialNumber: "serialNumber"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func devicesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "serialNumber": "serialNumber",
                  "model": "model",
                  "registrationNumber": "registrationNumber",
                  "address": "address",
                  "isActive": true,
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
        let expectedResponse = DevicesCreatePosResponse(
            id: "x",
            name: "name",
            serialNumber: "serialNumber",
            model: Nullable<String>.value("model"),
            registrationNumber: Nullable<String>.value("registrationNumber"),
            address: Nullable<String>.value("address"),
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.pos.devicesCreate(
            request: .init(
                name: "x",
                serialNumber: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func devicesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "serialNumber": "serialNumber",
                  "model": "model",
                  "registrationNumber": "registrationNumber",
                  "address": "address",
                  "isActive": true,
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
        let expectedResponse = DevicesUpdatePosResponse(
            id: "id",
            name: "name",
            serialNumber: "serialNumber",
            model: Nullable<String>.value("model"),
            registrationNumber: Nullable<String>.value("registrationNumber"),
            address: Nullable<String>.value("address"),
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.pos.devicesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func devicesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "serialNumber": "serialNumber",
                  "model": "model",
                  "registrationNumber": "registrationNumber",
                  "address": "address",
                  "isActive": true,
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
        let expectedResponse = DevicesUpdatePosResponse(
            id: "x",
            name: "name",
            serialNumber: "serialNumber",
            model: Nullable<String>.value("model"),
            registrationNumber: Nullable<String>.value("registrationNumber"),
            address: Nullable<String>.value("address"),
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.pos.devicesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func devicesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "name": "name",
                      "serialNumber": "serialNumber",
                      "model": "model",
                      "registrationNumber": "registrationNumber",
                      "address": "address",
                      "isActive": true,
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
        let expectedResponse = DevicesListPosResponse(
            rows: [
                DevicesListPosResponseRowsItem(
                    id: "id",
                    name: "name",
                    serialNumber: "serialNumber",
                    model: Nullable<String>.value("model"),
                    registrationNumber: Nullable<String>.value("registrationNumber"),
                    address: Nullable<String>.value("address"),
                    isActive: true,
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
        let response = try await client.pos.devicesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func devicesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "name": "name",
                      "serialNumber": "serialNumber",
                      "model": "model",
                      "registrationNumber": "registrationNumber",
                      "address": "address",
                      "isActive": true,
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "serialNumber": "serialNumber",
                      "model": "model",
                      "registrationNumber": "registrationNumber",
                      "address": "address",
                      "isActive": true,
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
        let expectedResponse = DevicesListPosResponse(
            rows: [
                DevicesListPosResponseRowsItem(
                    id: "x",
                    name: "name",
                    serialNumber: "serialNumber",
                    model: Nullable<String>.value("model"),
                    registrationNumber: Nullable<String>.value("registrationNumber"),
                    address: Nullable<String>.value("address"),
                    isActive: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                DevicesListPosResponseRowsItem(
                    id: "x",
                    name: "name",
                    serialNumber: "serialNumber",
                    model: Nullable<String>.value("model"),
                    registrationNumber: Nullable<String>.value("registrationNumber"),
                    address: Nullable<String>.value("address"),
                    isActive: true,
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
        let response = try await client.pos.devicesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reportsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "reportNumber": "reportNumber",
                  "date": "2026-07-01",
                  "deviceId": "deviceId",
                  "warehouseId": "warehouseId",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "cashAmount": "cashAmount",
                  "cardAmount": "cardAmount",
                  "cogsTotal": "cogsTotal",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "vatLines": [
                    {
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
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
        let expectedResponse = ReportsCreatePosResponse(
            id: "id",
            reportNumber: "reportNumber",
            date: CalendarDate("2026-07-01")!,
            deviceId: Nullable<String>.value("deviceId"),
            warehouseId: Nullable<String>.value("warehouseId"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            cashAmount: "cashAmount",
            cardAmount: "cardAmount",
            cogsTotal: Nullable<String>.value("cogsTotal"),
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            vatLines: [
                ReportsCreatePosResponseVatLinesItem(
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                )
            ]
        )
        let response = try await client.pos.reportsCreate(
            request: .init(
                reportNumber: "reportNumber",
                date: CalendarDate("2026-07-01")!,
                vatLines: [
                    ReportsCreatePosRequestVatLinesItem(
                        vatRatePercent: "121.00",
                        netAmount: "121.0000",
                        vatAmount: "121.0000"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reportsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "reportNumber": "reportNumber",
                  "date": "2023-01-15",
                  "deviceId": "x",
                  "warehouseId": "x",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "cashAmount": "cashAmount",
                  "cardAmount": "cardAmount",
                  "cogsTotal": "cogsTotal",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "vatLines": [
                    {
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
                    },
                    {
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
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
        let expectedResponse = ReportsCreatePosResponse(
            id: "x",
            reportNumber: "reportNumber",
            date: CalendarDate("2023-01-15")!,
            deviceId: Nullable<String>.value("x"),
            warehouseId: Nullable<String>.value("x"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            cashAmount: "cashAmount",
            cardAmount: "cardAmount",
            cogsTotal: Nullable<String>.value("cogsTotal"),
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            vatLines: [
                ReportsCreatePosResponseVatLinesItem(
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                ),
                ReportsCreatePosResponseVatLinesItem(
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                )
            ]
        )
        let response = try await client.pos.reportsCreate(
            request: .init(
                reportNumber: "x",
                date: CalendarDate("2023-01-15")!,
                vatLines: [
                    ReportsCreatePosRequestVatLinesItem(
                        vatRatePercent: "vatRatePercent",
                        netAmount: "netAmount",
                        vatAmount: "vatAmount"
                    ),
                    ReportsCreatePosRequestVatLinesItem(
                        vatRatePercent: "vatRatePercent",
                        netAmount: "netAmount",
                        vatAmount: "vatAmount"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reportsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "reportNumber": "reportNumber",
                  "date": "2026-07-01",
                  "deviceId": "deviceId",
                  "warehouseId": "warehouseId",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "cashAmount": "cashAmount",
                  "cardAmount": "cardAmount",
                  "cogsTotal": "cogsTotal",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "vatLines": [
                    {
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
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
        let expectedResponse = ReportsGetPosResponse(
            id: "id",
            reportNumber: "reportNumber",
            date: CalendarDate("2026-07-01")!,
            deviceId: Nullable<String>.value("deviceId"),
            warehouseId: Nullable<String>.value("warehouseId"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            cashAmount: "cashAmount",
            cardAmount: "cardAmount",
            cogsTotal: Nullable<String>.value("cogsTotal"),
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            vatLines: [
                ReportsGetPosResponseVatLinesItem(
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                )
            ]
        )
        let response = try await client.pos.reportsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reportsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "reportNumber": "reportNumber",
                  "date": "2023-01-15",
                  "deviceId": "x",
                  "warehouseId": "x",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "cashAmount": "cashAmount",
                  "cardAmount": "cardAmount",
                  "cogsTotal": "cogsTotal",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "vatLines": [
                    {
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
                    },
                    {
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
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
        let expectedResponse = ReportsGetPosResponse(
            id: "x",
            reportNumber: "reportNumber",
            date: CalendarDate("2023-01-15")!,
            deviceId: Nullable<String>.value("x"),
            warehouseId: Nullable<String>.value("x"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            cashAmount: "cashAmount",
            cardAmount: "cardAmount",
            cogsTotal: Nullable<String>.value("cogsTotal"),
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            vatLines: [
                ReportsGetPosResponseVatLinesItem(
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                ),
                ReportsGetPosResponseVatLinesItem(
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                )
            ]
        )
        let response = try await client.pos.reportsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reportsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "reportNumber": "reportNumber",
                      "date": "2026-07-01",
                      "deviceId": "deviceId",
                      "warehouseId": "warehouseId",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "cashAmount": "cashAmount",
                      "cardAmount": "cardAmount",
                      "cogsTotal": "cogsTotal",
                      "journalTransactionId": "journalTransactionId",
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
        let expectedResponse = ReportsListPosResponse(
            rows: [
                ReportsListPosResponseRowsItem(
                    id: "id",
                    reportNumber: "reportNumber",
                    date: CalendarDate("2026-07-01")!,
                    deviceId: Nullable<String>.value("deviceId"),
                    warehouseId: Nullable<String>.value("warehouseId"),
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    cashAmount: "cashAmount",
                    cardAmount: "cardAmount",
                    cogsTotal: Nullable<String>.value("cogsTotal"),
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
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
        let response = try await client.pos.reportsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reportsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "reportNumber": "reportNumber",
                      "date": "2023-01-15",
                      "deviceId": "x",
                      "warehouseId": "x",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "cashAmount": "cashAmount",
                      "cardAmount": "cardAmount",
                      "cogsTotal": "cogsTotal",
                      "journalTransactionId": "x",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "reportNumber": "reportNumber",
                      "date": "2023-01-15",
                      "deviceId": "x",
                      "warehouseId": "x",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "cashAmount": "cashAmount",
                      "cardAmount": "cardAmount",
                      "cogsTotal": "cogsTotal",
                      "journalTransactionId": "x",
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
        let expectedResponse = ReportsListPosResponse(
            rows: [
                ReportsListPosResponseRowsItem(
                    id: "x",
                    reportNumber: "reportNumber",
                    date: CalendarDate("2023-01-15")!,
                    deviceId: Nullable<String>.value("x"),
                    warehouseId: Nullable<String>.value("x"),
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    cashAmount: "cashAmount",
                    cardAmount: "cardAmount",
                    cogsTotal: Nullable<String>.value("cogsTotal"),
                    journalTransactionId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ReportsListPosResponseRowsItem(
                    id: "x",
                    reportNumber: "reportNumber",
                    date: CalendarDate("2023-01-15")!,
                    deviceId: Nullable<String>.value("x"),
                    warehouseId: Nullable<String>.value("x"),
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    cashAmount: "cashAmount",
                    cardAmount: "cardAmount",
                    cogsTotal: Nullable<String>.value("cogsTotal"),
                    journalTransactionId: Nullable<String>.value("x"),
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
        let response = try await client.pos.reportsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func shiftsOpen1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "deviceId": "deviceId",
                  "warehouseId": "warehouseId",
                  "status": "open",
                  "openingCash": "openingCash",
                  "countedCash": "countedCash",
                  "receiptCount": 1000000,
                  "reportId": "reportId",
                  "openedAt": "2026-07-01T09:30:00Z",
                  "closedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ShiftsOpenPosResponse(
            id: "id",
            deviceId: "deviceId",
            warehouseId: Nullable<String>.value("warehouseId"),
            status: .open,
            openingCash: "openingCash",
            countedCash: Nullable<String>.value("countedCash"),
            receiptCount: 1000000,
            reportId: Nullable<String>.value("reportId"),
            openedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            closedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.pos.shiftsOpen(
            request: .init(deviceId: "deviceId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func shiftsOpen2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "deviceId": "x",
                  "warehouseId": "x",
                  "status": "open",
                  "openingCash": "openingCash",
                  "countedCash": "countedCash",
                  "receiptCount": 1000000,
                  "reportId": "x",
                  "openedAt": "2024-01-15T09:30:00Z",
                  "closedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ShiftsOpenPosResponse(
            id: "x",
            deviceId: "x",
            warehouseId: Nullable<String>.value("x"),
            status: .open,
            openingCash: "openingCash",
            countedCash: Nullable<String>.value("countedCash"),
            receiptCount: 1000000,
            reportId: Nullable<String>.value("x"),
            openedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            closedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.pos.shiftsOpen(
            request: .init(deviceId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func shiftsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "deviceId": "deviceId",
                  "warehouseId": "warehouseId",
                  "status": "open",
                  "openingCash": "openingCash",
                  "countedCash": "countedCash",
                  "receiptCount": 1000000,
                  "reportId": "reportId",
                  "openedAt": "2026-07-01T09:30:00Z",
                  "closedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ShiftsGetPosResponse(
            id: "id",
            deviceId: "deviceId",
            warehouseId: Nullable<String>.value("warehouseId"),
            status: .open,
            openingCash: "openingCash",
            countedCash: Nullable<String>.value("countedCash"),
            receiptCount: 1000000,
            reportId: Nullable<String>.value("reportId"),
            openedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            closedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.pos.shiftsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func shiftsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "deviceId": "x",
                  "warehouseId": "x",
                  "status": "open",
                  "openingCash": "openingCash",
                  "countedCash": "countedCash",
                  "receiptCount": 1000000,
                  "reportId": "x",
                  "openedAt": "2024-01-15T09:30:00Z",
                  "closedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ShiftsGetPosResponse(
            id: "x",
            deviceId: "x",
            warehouseId: Nullable<String>.value("x"),
            status: .open,
            openingCash: "openingCash",
            countedCash: Nullable<String>.value("countedCash"),
            receiptCount: 1000000,
            reportId: Nullable<String>.value("x"),
            openedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            closedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.pos.shiftsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func shiftsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "deviceId": "deviceId",
                      "warehouseId": "warehouseId",
                      "status": "open",
                      "openingCash": "openingCash",
                      "countedCash": "countedCash",
                      "receiptCount": 1000000,
                      "reportId": "reportId",
                      "openedAt": "2026-07-01T09:30:00Z",
                      "closedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = ShiftsListPosResponse(
            rows: [
                ShiftsListPosResponseRowsItem(
                    id: "id",
                    deviceId: "deviceId",
                    warehouseId: Nullable<String>.value("warehouseId"),
                    status: .open,
                    openingCash: "openingCash",
                    countedCash: Nullable<String>.value("countedCash"),
                    receiptCount: 1000000,
                    reportId: Nullable<String>.value("reportId"),
                    openedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    closedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
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
        let response = try await client.pos.shiftsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func shiftsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "deviceId": "x",
                      "warehouseId": "x",
                      "status": "open",
                      "openingCash": "openingCash",
                      "countedCash": "countedCash",
                      "receiptCount": 1000000,
                      "reportId": "x",
                      "openedAt": "2024-01-15T09:30:00Z",
                      "closedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "deviceId": "x",
                      "warehouseId": "x",
                      "status": "open",
                      "openingCash": "openingCash",
                      "countedCash": "countedCash",
                      "receiptCount": 1000000,
                      "reportId": "x",
                      "openedAt": "2024-01-15T09:30:00Z",
                      "closedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = ShiftsListPosResponse(
            rows: [
                ShiftsListPosResponseRowsItem(
                    id: "x",
                    deviceId: "x",
                    warehouseId: Nullable<String>.value("x"),
                    status: .open,
                    openingCash: "openingCash",
                    countedCash: Nullable<String>.value("countedCash"),
                    receiptCount: 1000000,
                    reportId: Nullable<String>.value("x"),
                    openedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    closedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                ShiftsListPosResponseRowsItem(
                    id: "x",
                    deviceId: "x",
                    warehouseId: Nullable<String>.value("x"),
                    status: .open,
                    openingCash: "openingCash",
                    countedCash: Nullable<String>.value("countedCash"),
                    receiptCount: 1000000,
                    reportId: Nullable<String>.value("x"),
                    openedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    closedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
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
        let response = try await client.pos.shiftsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func receiptsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "shiftId": "shiftId",
                  "number": 1000000,
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "cashAmount": "cashAmount",
                  "cardAmount": "cardAmount",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount",
                      "grossAmount": "grossAmount"
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
        let expectedResponse = ReceiptsCreatePosResponse(
            id: "id",
            shiftId: "shiftId",
            number: 1000000,
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            cashAmount: "cashAmount",
            cardAmount: "cardAmount",
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                ReceiptsCreatePosResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceInclVat: "unitPriceInclVat",
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount",
                    grossAmount: "grossAmount"
                )
            ]
        )
        let response = try await client.pos.receiptsCreate(
            request: .init(
                shiftId: "shiftId",
                lines: [
                    ReceiptsCreatePosRequestLinesItem(
                        quantity: "121.0000",
                        unitPriceInclVat: "121.0000",
                        vatRatePercent: "121.00"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func receiptsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "shiftId": "x",
                  "number": 1000000,
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "cashAmount": "cashAmount",
                  "cardAmount": "cardAmount",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount",
                      "grossAmount": "grossAmount"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount",
                      "grossAmount": "grossAmount"
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
        let expectedResponse = ReceiptsCreatePosResponse(
            id: "x",
            shiftId: "x",
            number: 1000000,
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            cashAmount: "cashAmount",
            cardAmount: "cardAmount",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                ReceiptsCreatePosResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceInclVat: "unitPriceInclVat",
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount",
                    grossAmount: "grossAmount"
                ),
                ReceiptsCreatePosResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceInclVat: "unitPriceInclVat",
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount",
                    grossAmount: "grossAmount"
                )
            ]
        )
        let response = try await client.pos.receiptsCreate(
            request: .init(
                shiftId: "x",
                lines: [
                    ReceiptsCreatePosRequestLinesItem(
                        quantity: "quantity",
                        unitPriceInclVat: "unitPriceInclVat",
                        vatRatePercent: "vatRatePercent"
                    ),
                    ReceiptsCreatePosRequestLinesItem(
                        quantity: "quantity",
                        unitPriceInclVat: "unitPriceInclVat",
                        vatRatePercent: "vatRatePercent"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func receiptsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "shiftId": "shiftId",
                      "number": 1000000,
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "cashAmount": "cashAmount",
                      "cardAmount": "cardAmount",
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
        let expectedResponse = ReceiptsListPosResponse(
            rows: [
                ReceiptsListPosResponseRowsItem(
                    id: "id",
                    shiftId: "shiftId",
                    number: 1000000,
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    cashAmount: "cashAmount",
                    cardAmount: "cardAmount",
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
        let response = try await client.pos.receiptsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func receiptsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "shiftId": "x",
                      "number": 1000000,
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "cashAmount": "cashAmount",
                      "cardAmount": "cardAmount",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "shiftId": "x",
                      "number": 1000000,
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "cashAmount": "cashAmount",
                      "cardAmount": "cardAmount",
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
        let expectedResponse = ReceiptsListPosResponse(
            rows: [
                ReceiptsListPosResponseRowsItem(
                    id: "x",
                    shiftId: "x",
                    number: 1000000,
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    cashAmount: "cashAmount",
                    cardAmount: "cardAmount",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ReceiptsListPosResponseRowsItem(
                    id: "x",
                    shiftId: "x",
                    number: 1000000,
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    cashAmount: "cashAmount",
                    cardAmount: "cardAmount",
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
        let response = try await client.pos.receiptsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func receiptsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "shiftId": "shiftId",
                  "number": 1000000,
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "cashAmount": "cashAmount",
                  "cardAmount": "cardAmount",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount",
                      "grossAmount": "grossAmount"
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
        let expectedResponse = ReceiptsGetPosResponse(
            id: "id",
            shiftId: "shiftId",
            number: 1000000,
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            cashAmount: "cashAmount",
            cardAmount: "cardAmount",
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                ReceiptsGetPosResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceInclVat: "unitPriceInclVat",
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount",
                    grossAmount: "grossAmount"
                )
            ]
        )
        let response = try await client.pos.receiptsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func receiptsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "shiftId": "x",
                  "number": 1000000,
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "cashAmount": "cashAmount",
                  "cardAmount": "cardAmount",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount",
                      "grossAmount": "grossAmount"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount",
                      "grossAmount": "grossAmount"
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
        let expectedResponse = ReceiptsGetPosResponse(
            id: "x",
            shiftId: "x",
            number: 1000000,
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            cashAmount: "cashAmount",
            cardAmount: "cardAmount",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                ReceiptsGetPosResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceInclVat: "unitPriceInclVat",
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount",
                    grossAmount: "grossAmount"
                ),
                ReceiptsGetPosResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: "quantity",
                    unitPriceInclVat: "unitPriceInclVat",
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount",
                    grossAmount: "grossAmount"
                )
            ]
        )
        let response = try await client.pos.receiptsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func shiftsClose1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "deviceId": "deviceId",
                  "warehouseId": "warehouseId",
                  "status": "open",
                  "openingCash": "openingCash",
                  "countedCash": "countedCash",
                  "receiptCount": 1000000,
                  "reportId": "reportId",
                  "openedAt": "2026-07-01T09:30:00Z",
                  "closedAt": "2026-07-01T09:30:00Z",
                  "expectedCash": "expectedCash",
                  "cashDifference": "cashDifference"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ShiftsClosePosResponse(
            id: "id",
            deviceId: "deviceId",
            warehouseId: Nullable<String>.value("warehouseId"),
            status: .open,
            openingCash: "openingCash",
            countedCash: Nullable<String>.value("countedCash"),
            receiptCount: 1000000,
            reportId: Nullable<String>.value("reportId"),
            openedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            closedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            expectedCash: "expectedCash",
            cashDifference: "cashDifference"
        )
        let response = try await client.pos.shiftsClose(
            request: .init(
                id: "id",
                countedCash: "121.00"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func shiftsClose2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "deviceId": "x",
                  "warehouseId": "x",
                  "status": "open",
                  "openingCash": "openingCash",
                  "countedCash": "countedCash",
                  "receiptCount": 1000000,
                  "reportId": "x",
                  "openedAt": "2024-01-15T09:30:00Z",
                  "closedAt": "2024-01-15T09:30:00Z",
                  "expectedCash": "expectedCash",
                  "cashDifference": "cashDifference"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ShiftsClosePosResponse(
            id: "x",
            deviceId: "x",
            warehouseId: Nullable<String>.value("x"),
            status: .open,
            openingCash: "openingCash",
            countedCash: Nullable<String>.value("countedCash"),
            receiptCount: 1000000,
            reportId: Nullable<String>.value("x"),
            openedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            closedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            expectedCash: "expectedCash",
            cashDifference: "cashDifference"
        )
        let response = try await client.pos.shiftsClose(
            request: .init(
                id: "x",
                countedCash: "countedCash"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}