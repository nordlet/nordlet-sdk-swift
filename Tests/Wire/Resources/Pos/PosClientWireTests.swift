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
}