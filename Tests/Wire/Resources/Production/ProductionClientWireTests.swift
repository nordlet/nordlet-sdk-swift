import Foundation
import Testing
import Api

@Suite("ProductionClient Wire Tests") struct ProductionClientWireTests {
    @Test func workCentersCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "costPerHour": "costPerHour",
                  "costAccountCode": "costAccountCode",
                  "maintenanceIntervalDays": 1000000,
                  "nextMaintenanceDate": "2026-07-01",
                  "isActive": true,
                  "notes": "notes",
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
        let expectedResponse = WorkCentersCreateProductionResponse(
            id: "id",
            code: "code",
            name: "name",
            costPerHour: "costPerHour",
            costAccountCode: Nullable<String>.value("costAccountCode"),
            maintenanceIntervalDays: Nullable<Int64>.value(1000000),
            nextMaintenanceDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.production.workCentersCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func workCentersCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "costPerHour": "costPerHour",
                  "costAccountCode": "costAccountCode",
                  "maintenanceIntervalDays": 1000000,
                  "nextMaintenanceDate": "2023-01-15",
                  "isActive": true,
                  "notes": "notes",
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
        let expectedResponse = WorkCentersCreateProductionResponse(
            id: "x",
            code: "code",
            name: "name",
            costPerHour: "costPerHour",
            costAccountCode: Nullable<String>.value("costAccountCode"),
            maintenanceIntervalDays: Nullable<Int64>.value(1000000),
            nextMaintenanceDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.production.workCentersCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func workCentersUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "costPerHour": "costPerHour",
                  "costAccountCode": "costAccountCode",
                  "maintenanceIntervalDays": 1000000,
                  "nextMaintenanceDate": "2026-07-01",
                  "isActive": true,
                  "notes": "notes",
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
        let expectedResponse = WorkCentersUpdateProductionResponse(
            id: "id",
            code: "code",
            name: "name",
            costPerHour: "costPerHour",
            costAccountCode: Nullable<String>.value("costAccountCode"),
            maintenanceIntervalDays: Nullable<Int64>.value(1000000),
            nextMaintenanceDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.production.workCentersUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func workCentersUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "costPerHour": "costPerHour",
                  "costAccountCode": "costAccountCode",
                  "maintenanceIntervalDays": 1000000,
                  "nextMaintenanceDate": "2023-01-15",
                  "isActive": true,
                  "notes": "notes",
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
        let expectedResponse = WorkCentersUpdateProductionResponse(
            id: "x",
            code: "code",
            name: "name",
            costPerHour: "costPerHour",
            costAccountCode: Nullable<String>.value("costAccountCode"),
            maintenanceIntervalDays: Nullable<Int64>.value(1000000),
            nextMaintenanceDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.production.workCentersUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func workCentersList1() async throws -> Void {
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
                      "costPerHour": "costPerHour",
                      "costAccountCode": "costAccountCode",
                      "maintenanceIntervalDays": 1000000,
                      "nextMaintenanceDate": "2026-07-01",
                      "isActive": true,
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
        let expectedResponse = WorkCentersListProductionResponse(
            rows: [
                WorkCentersListProductionResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    costPerHour: "costPerHour",
                    costAccountCode: Nullable<String>.value("costAccountCode"),
                    maintenanceIntervalDays: Nullable<Int64>.value(1000000),
                    nextMaintenanceDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    isActive: true,
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
        let response = try await client.production.workCentersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func workCentersList2() async throws -> Void {
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
                      "costPerHour": "costPerHour",
                      "costAccountCode": "costAccountCode",
                      "maintenanceIntervalDays": 1000000,
                      "nextMaintenanceDate": "2023-01-15",
                      "isActive": true,
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "costPerHour": "costPerHour",
                      "costAccountCode": "costAccountCode",
                      "maintenanceIntervalDays": 1000000,
                      "nextMaintenanceDate": "2023-01-15",
                      "isActive": true,
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
        let expectedResponse = WorkCentersListProductionResponse(
            rows: [
                WorkCentersListProductionResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    costPerHour: "costPerHour",
                    costAccountCode: Nullable<String>.value("costAccountCode"),
                    maintenanceIntervalDays: Nullable<Int64>.value(1000000),
                    nextMaintenanceDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    isActive: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                WorkCentersListProductionResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    costPerHour: "costPerHour",
                    costAccountCode: Nullable<String>.value("costAccountCode"),
                    maintenanceIntervalDays: Nullable<Int64>.value(1000000),
                    nextMaintenanceDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    isActive: true,
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
        let response = try await client.production.workCentersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func routingsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "isActive": true,
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "operations": [
                    {
                      "id": "id",
                      "sequence": 1000000,
                      "name": "name",
                      "workCenterId": "workCenterId",
                      "setupMinutes": "setupMinutes",
                      "runMinutesPerUnit": "runMinutesPerUnit",
                      "qualityCheckName": "qualityCheckName",
                      "notes": "notes"
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
        let expectedResponse = RoutingsCreateProductionResponse(
            id: "id",
            code: "code",
            name: "name",
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            operations: [
                RoutingsCreateProductionResponseOperationsItem(
                    id: "id",
                    sequence: 1000000,
                    name: "name",
                    workCenterId: "workCenterId",
                    setupMinutes: "setupMinutes",
                    runMinutesPerUnit: "runMinutesPerUnit",
                    qualityCheckName: Nullable<String>.value("qualityCheckName"),
                    notes: Nullable<String>.value("notes")
                )
            ]
        )
        let response = try await client.production.routingsCreate(
            request: .init(
                code: "code",
                name: "name",
                operations: [
                    RoutingsCreateProductionRequestOperationsItem(
                        sequence: 1000000,
                        name: "name",
                        workCenterId: "workCenterId"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func routingsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "isActive": true,
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "operations": [
                    {
                      "id": "x",
                      "sequence": 1000000,
                      "name": "name",
                      "workCenterId": "x",
                      "setupMinutes": "setupMinutes",
                      "runMinutesPerUnit": "runMinutesPerUnit",
                      "qualityCheckName": "qualityCheckName",
                      "notes": "notes"
                    },
                    {
                      "id": "x",
                      "sequence": 1000000,
                      "name": "name",
                      "workCenterId": "x",
                      "setupMinutes": "setupMinutes",
                      "runMinutesPerUnit": "runMinutesPerUnit",
                      "qualityCheckName": "qualityCheckName",
                      "notes": "notes"
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
        let expectedResponse = RoutingsCreateProductionResponse(
            id: "x",
            code: "code",
            name: "name",
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            operations: [
                RoutingsCreateProductionResponseOperationsItem(
                    id: "x",
                    sequence: 1000000,
                    name: "name",
                    workCenterId: "x",
                    setupMinutes: "setupMinutes",
                    runMinutesPerUnit: "runMinutesPerUnit",
                    qualityCheckName: Nullable<String>.value("qualityCheckName"),
                    notes: Nullable<String>.value("notes")
                ),
                RoutingsCreateProductionResponseOperationsItem(
                    id: "x",
                    sequence: 1000000,
                    name: "name",
                    workCenterId: "x",
                    setupMinutes: "setupMinutes",
                    runMinutesPerUnit: "runMinutesPerUnit",
                    qualityCheckName: Nullable<String>.value("qualityCheckName"),
                    notes: Nullable<String>.value("notes")
                )
            ]
        )
        let response = try await client.production.routingsCreate(
            request: .init(
                code: "x",
                name: "x",
                operations: [
                    RoutingsCreateProductionRequestOperationsItem(
                        sequence: 1000000,
                        name: "x",
                        workCenterId: "x"
                    ),
                    RoutingsCreateProductionRequestOperationsItem(
                        sequence: 1000000,
                        name: "x",
                        workCenterId: "x"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func routingsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "isActive": true,
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "operations": [
                    {
                      "id": "id",
                      "sequence": 1000000,
                      "name": "name",
                      "workCenterId": "workCenterId",
                      "setupMinutes": "setupMinutes",
                      "runMinutesPerUnit": "runMinutesPerUnit",
                      "qualityCheckName": "qualityCheckName",
                      "notes": "notes"
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
        let expectedResponse = RoutingsGetProductionResponse(
            id: "id",
            code: "code",
            name: "name",
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            operations: [
                RoutingsGetProductionResponseOperationsItem(
                    id: "id",
                    sequence: 1000000,
                    name: "name",
                    workCenterId: "workCenterId",
                    setupMinutes: "setupMinutes",
                    runMinutesPerUnit: "runMinutesPerUnit",
                    qualityCheckName: Nullable<String>.value("qualityCheckName"),
                    notes: Nullable<String>.value("notes")
                )
            ]
        )
        let response = try await client.production.routingsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func routingsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "isActive": true,
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "operations": [
                    {
                      "id": "x",
                      "sequence": 1000000,
                      "name": "name",
                      "workCenterId": "x",
                      "setupMinutes": "setupMinutes",
                      "runMinutesPerUnit": "runMinutesPerUnit",
                      "qualityCheckName": "qualityCheckName",
                      "notes": "notes"
                    },
                    {
                      "id": "x",
                      "sequence": 1000000,
                      "name": "name",
                      "workCenterId": "x",
                      "setupMinutes": "setupMinutes",
                      "runMinutesPerUnit": "runMinutesPerUnit",
                      "qualityCheckName": "qualityCheckName",
                      "notes": "notes"
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
        let expectedResponse = RoutingsGetProductionResponse(
            id: "x",
            code: "code",
            name: "name",
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            operations: [
                RoutingsGetProductionResponseOperationsItem(
                    id: "x",
                    sequence: 1000000,
                    name: "name",
                    workCenterId: "x",
                    setupMinutes: "setupMinutes",
                    runMinutesPerUnit: "runMinutesPerUnit",
                    qualityCheckName: Nullable<String>.value("qualityCheckName"),
                    notes: Nullable<String>.value("notes")
                ),
                RoutingsGetProductionResponseOperationsItem(
                    id: "x",
                    sequence: 1000000,
                    name: "name",
                    workCenterId: "x",
                    setupMinutes: "setupMinutes",
                    runMinutesPerUnit: "runMinutesPerUnit",
                    qualityCheckName: Nullable<String>.value("qualityCheckName"),
                    notes: Nullable<String>.value("notes")
                )
            ]
        )
        let response = try await client.production.routingsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func routingsList1() async throws -> Void {
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
                      "isActive": true,
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
        let expectedResponse = RoutingsListProductionResponse(
            rows: [
                RoutingsListProductionResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    isActive: true,
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
        let response = try await client.production.routingsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func routingsList2() async throws -> Void {
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
                      "isActive": true,
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "isActive": true,
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
        let expectedResponse = RoutingsListProductionResponse(
            rows: [
                RoutingsListProductionResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    isActive: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                RoutingsListProductionResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    isActive: true,
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
        let response = try await client.production.routingsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func maintenanceCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "workCenterId": "workCenterId",
                  "type": "preventive",
                  "status": "planned",
                  "plannedDate": "2026-07-01",
                  "completedDate": "2026-07-01",
                  "description": "description",
                  "downtimeHours": "downtimeHours",
                  "cost": "cost",
                  "notes": "notes",
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
        let expectedResponse = MaintenanceCreateProductionResponse(
            id: "id",
            workCenterId: "workCenterId",
            type: .preventive,
            status: .planned,
            plannedDate: CalendarDate("2026-07-01")!,
            completedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            description: Nullable<String>.value("description"),
            downtimeHours: Nullable<String>.value("downtimeHours"),
            cost: Nullable<String>.value("cost"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.production.maintenanceCreate(
            request: .init(
                workCenterId: "workCenterId",
                type: .preventive,
                plannedDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func maintenanceCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "workCenterId": "x",
                  "type": "preventive",
                  "status": "planned",
                  "plannedDate": "2023-01-15",
                  "completedDate": "2023-01-15",
                  "description": "description",
                  "downtimeHours": "downtimeHours",
                  "cost": "cost",
                  "notes": "notes",
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
        let expectedResponse = MaintenanceCreateProductionResponse(
            id: "x",
            workCenterId: "x",
            type: .preventive,
            status: .planned,
            plannedDate: CalendarDate("2023-01-15")!,
            completedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            description: Nullable<String>.value("description"),
            downtimeHours: Nullable<String>.value("downtimeHours"),
            cost: Nullable<String>.value("cost"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.production.maintenanceCreate(
            request: .init(
                workCenterId: "x",
                type: .preventive,
                plannedDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func maintenanceComplete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "workCenterId": "workCenterId",
                  "type": "preventive",
                  "status": "planned",
                  "plannedDate": "2026-07-01",
                  "completedDate": "2026-07-01",
                  "description": "description",
                  "downtimeHours": "downtimeHours",
                  "cost": "cost",
                  "notes": "notes",
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
        let expectedResponse = MaintenanceCompleteProductionResponse(
            id: "id",
            workCenterId: "workCenterId",
            type: .preventive,
            status: .planned,
            plannedDate: CalendarDate("2026-07-01")!,
            completedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            description: Nullable<String>.value("description"),
            downtimeHours: Nullable<String>.value("downtimeHours"),
            cost: Nullable<String>.value("cost"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.production.maintenanceComplete(
            request: .init(
                id: "id",
                completedDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func maintenanceComplete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "workCenterId": "x",
                  "type": "preventive",
                  "status": "planned",
                  "plannedDate": "2023-01-15",
                  "completedDate": "2023-01-15",
                  "description": "description",
                  "downtimeHours": "downtimeHours",
                  "cost": "cost",
                  "notes": "notes",
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
        let expectedResponse = MaintenanceCompleteProductionResponse(
            id: "x",
            workCenterId: "x",
            type: .preventive,
            status: .planned,
            plannedDate: CalendarDate("2023-01-15")!,
            completedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            description: Nullable<String>.value("description"),
            downtimeHours: Nullable<String>.value("downtimeHours"),
            cost: Nullable<String>.value("cost"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.production.maintenanceComplete(
            request: .init(
                id: "x",
                completedDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func maintenanceCancel1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "workCenterId": "workCenterId",
                  "type": "preventive",
                  "status": "planned",
                  "plannedDate": "2026-07-01",
                  "completedDate": "2026-07-01",
                  "description": "description",
                  "downtimeHours": "downtimeHours",
                  "cost": "cost",
                  "notes": "notes",
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
        let expectedResponse = MaintenanceCancelProductionResponse(
            id: "id",
            workCenterId: "workCenterId",
            type: .preventive,
            status: .planned,
            plannedDate: CalendarDate("2026-07-01")!,
            completedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            description: Nullable<String>.value("description"),
            downtimeHours: Nullable<String>.value("downtimeHours"),
            cost: Nullable<String>.value("cost"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.production.maintenanceCancel(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func maintenanceCancel2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "workCenterId": "x",
                  "type": "preventive",
                  "status": "planned",
                  "plannedDate": "2023-01-15",
                  "completedDate": "2023-01-15",
                  "description": "description",
                  "downtimeHours": "downtimeHours",
                  "cost": "cost",
                  "notes": "notes",
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
        let expectedResponse = MaintenanceCancelProductionResponse(
            id: "x",
            workCenterId: "x",
            type: .preventive,
            status: .planned,
            plannedDate: CalendarDate("2023-01-15")!,
            completedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            description: Nullable<String>.value("description"),
            downtimeHours: Nullable<String>.value("downtimeHours"),
            cost: Nullable<String>.value("cost"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.production.maintenanceCancel(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func maintenanceList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "workCenterId": "workCenterId",
                      "type": "preventive",
                      "status": "planned",
                      "plannedDate": "2026-07-01",
                      "completedDate": "2026-07-01",
                      "description": "description",
                      "downtimeHours": "downtimeHours",
                      "cost": "cost",
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
        let expectedResponse = MaintenanceListProductionResponse(
            rows: [
                MaintenanceListProductionResponseRowsItem(
                    id: "id",
                    workCenterId: "workCenterId",
                    type: .preventive,
                    status: .planned,
                    plannedDate: CalendarDate("2026-07-01")!,
                    completedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    description: Nullable<String>.value("description"),
                    downtimeHours: Nullable<String>.value("downtimeHours"),
                    cost: Nullable<String>.value("cost"),
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
        let response = try await client.production.maintenanceList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func maintenanceList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "workCenterId": "x",
                      "type": "preventive",
                      "status": "planned",
                      "plannedDate": "2023-01-15",
                      "completedDate": "2023-01-15",
                      "description": "description",
                      "downtimeHours": "downtimeHours",
                      "cost": "cost",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "workCenterId": "x",
                      "type": "preventive",
                      "status": "planned",
                      "plannedDate": "2023-01-15",
                      "completedDate": "2023-01-15",
                      "description": "description",
                      "downtimeHours": "downtimeHours",
                      "cost": "cost",
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
        let expectedResponse = MaintenanceListProductionResponse(
            rows: [
                MaintenanceListProductionResponseRowsItem(
                    id: "x",
                    workCenterId: "x",
                    type: .preventive,
                    status: .planned,
                    plannedDate: CalendarDate("2023-01-15")!,
                    completedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    description: Nullable<String>.value("description"),
                    downtimeHours: Nullable<String>.value("downtimeHours"),
                    cost: Nullable<String>.value("cost"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                MaintenanceListProductionResponseRowsItem(
                    id: "x",
                    workCenterId: "x",
                    type: .preventive,
                    status: .planned,
                    plannedDate: CalendarDate("2023-01-15")!,
                    completedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    description: Nullable<String>.value("description"),
                    downtimeHours: Nullable<String>.value("downtimeHours"),
                    cost: Nullable<String>.value("cost"),
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
        let response = try await client.production.maintenanceList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func bomsCreate1() async throws -> Void {
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
                  "routingId": "routingId",
                  "isActive": true,
                  "lines": [
                    {
                      "id": "id",
                      "componentItemId": "componentItemId",
                      "quantity": "quantity",
                      "scrapPercent": "scrapPercent"
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
        let expectedResponse = BomsCreateProductionResponse(
            id: "id",
            code: "code",
            name: "name",
            finishedItemId: "finishedItemId",
            outputQuantity: "outputQuantity",
            routingId: Nullable<String>.value("routingId"),
            isActive: true,
            lines: [
                BomsCreateProductionResponseLinesItem(
                    id: "id",
                    componentItemId: "componentItemId",
                    quantity: "quantity",
                    scrapPercent: "scrapPercent"
                )
            ]
        )
        let response = try await client.production.bomsCreate(
            request: .init(
                code: "code",
                name: "name",
                finishedItemId: "finishedItemId",
                lines: [
                    BomsCreateProductionRequestLinesItem(
                        componentItemId: "componentItemId",
                        quantity: "121.0000"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func bomsCreate2() async throws -> Void {
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
                  "routingId": "x",
                  "isActive": true,
                  "lines": [
                    {
                      "id": "x",
                      "componentItemId": "x",
                      "quantity": "quantity",
                      "scrapPercent": "scrapPercent"
                    },
                    {
                      "id": "x",
                      "componentItemId": "x",
                      "quantity": "quantity",
                      "scrapPercent": "scrapPercent"
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
        let expectedResponse = BomsCreateProductionResponse(
            id: "x",
            code: "code",
            name: "name",
            finishedItemId: "x",
            outputQuantity: "outputQuantity",
            routingId: Nullable<String>.value("x"),
            isActive: true,
            lines: [
                BomsCreateProductionResponseLinesItem(
                    id: "x",
                    componentItemId: "x",
                    quantity: "quantity",
                    scrapPercent: "scrapPercent"
                ),
                BomsCreateProductionResponseLinesItem(
                    id: "x",
                    componentItemId: "x",
                    quantity: "quantity",
                    scrapPercent: "scrapPercent"
                )
            ]
        )
        let response = try await client.production.bomsCreate(
            request: .init(
                code: "x",
                name: "x",
                finishedItemId: "x",
                lines: [
                    BomsCreateProductionRequestLinesItem(
                        componentItemId: "x",
                        quantity: "quantity"
                    ),
                    BomsCreateProductionRequestLinesItem(
                        componentItemId: "x",
                        quantity: "quantity"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func bomsGet1() async throws -> Void {
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
                  "routingId": "routingId",
                  "isActive": true,
                  "lines": [
                    {
                      "id": "id",
                      "componentItemId": "componentItemId",
                      "quantity": "quantity",
                      "scrapPercent": "scrapPercent"
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
        let expectedResponse = BomsGetProductionResponse(
            id: "id",
            code: "code",
            name: "name",
            finishedItemId: "finishedItemId",
            outputQuantity: "outputQuantity",
            routingId: Nullable<String>.value("routingId"),
            isActive: true,
            lines: [
                BomsGetProductionResponseLinesItem(
                    id: "id",
                    componentItemId: "componentItemId",
                    quantity: "quantity",
                    scrapPercent: "scrapPercent"
                )
            ]
        )
        let response = try await client.production.bomsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func bomsGet2() async throws -> Void {
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
                  "routingId": "x",
                  "isActive": true,
                  "lines": [
                    {
                      "id": "x",
                      "componentItemId": "x",
                      "quantity": "quantity",
                      "scrapPercent": "scrapPercent"
                    },
                    {
                      "id": "x",
                      "componentItemId": "x",
                      "quantity": "quantity",
                      "scrapPercent": "scrapPercent"
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
        let expectedResponse = BomsGetProductionResponse(
            id: "x",
            code: "code",
            name: "name",
            finishedItemId: "x",
            outputQuantity: "outputQuantity",
            routingId: Nullable<String>.value("x"),
            isActive: true,
            lines: [
                BomsGetProductionResponseLinesItem(
                    id: "x",
                    componentItemId: "x",
                    quantity: "quantity",
                    scrapPercent: "scrapPercent"
                ),
                BomsGetProductionResponseLinesItem(
                    id: "x",
                    componentItemId: "x",
                    quantity: "quantity",
                    scrapPercent: "scrapPercent"
                )
            ]
        )
        let response = try await client.production.bomsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func bomsList1() async throws -> Void {
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
                      "routingId": "routingId",
                      "isActive": true
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
        let expectedResponse = BomsListProductionResponse(
            rows: [
                BomsListProductionResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    finishedItemId: "finishedItemId",
                    outputQuantity: "outputQuantity",
                    routingId: Nullable<String>.value("routingId"),
                    isActive: true
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.production.bomsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func bomsList2() async throws -> Void {
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
                      "routingId": "x",
                      "isActive": true
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "finishedItemId": "x",
                      "outputQuantity": "outputQuantity",
                      "routingId": "x",
                      "isActive": true
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
        let expectedResponse = BomsListProductionResponse(
            rows: [
                BomsListProductionResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    finishedItemId: "x",
                    outputQuantity: "outputQuantity",
                    routingId: Nullable<String>.value("x"),
                    isActive: true
                ),
                BomsListProductionResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    finishedItemId: "x",
                    outputQuantity: "outputQuantity",
                    routingId: Nullable<String>.value("x"),
                    isActive: true
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.production.bomsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "type": "assembly",
                  "bomId": "bomId",
                  "warehouseId": "warehouseId",
                  "routingId": "routingId",
                  "quantity": "quantity",
                  "date": "2026-07-01",
                  "status": "draft",
                  "scrappedQuantity": "scrappedQuantity",
                  "materialCost": "materialCost",
                  "laborCost": "laborCost",
                  "scrapCost": "scrapCost",
                  "totalCost": "totalCost",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "operations": [
                    {
                      "id": "id",
                      "routingOperationId": "routingOperationId",
                      "workCenterId": "workCenterId",
                      "sequence": 1000000,
                      "name": "name",
                      "plannedMinutes": "plannedMinutes",
                      "actualMinutes": "actualMinutes",
                      "costPerHour": "costPerHour",
                      "cost": "cost"
                    }
                  ],
                  "qualityChecks": [
                    {
                      "id": "id",
                      "orderId": "orderId",
                      "routingOperationId": "routingOperationId",
                      "name": "name",
                      "result": "pending",
                      "notes": "notes",
                      "checkedAt": "2026-07-01T09:30:00Z",
                      "checkedBy": "checkedBy",
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
        let expectedResponse = OrdersCreateProductionResponse(
            id: "id",
            type: .assembly,
            bomId: "bomId",
            warehouseId: "warehouseId",
            routingId: Nullable<String>.value("routingId"),
            quantity: "quantity",
            date: CalendarDate("2026-07-01")!,
            status: .draft,
            scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
            materialCost: Nullable<String>.value("materialCost"),
            laborCost: Nullable<String>.value("laborCost"),
            scrapCost: Nullable<String>.value("scrapCost"),
            totalCost: Nullable<String>.value("totalCost"),
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            operations: [
                OrdersCreateProductionResponseOperationsItem(
                    id: "id",
                    routingOperationId: Nullable<String>.value("routingOperationId"),
                    workCenterId: "workCenterId",
                    sequence: 1000000,
                    name: "name",
                    plannedMinutes: "plannedMinutes",
                    actualMinutes: Nullable<String>.value("actualMinutes"),
                    costPerHour: "costPerHour",
                    cost: Nullable<String>.value("cost")
                )
            ],
            qualityChecks: [
                OrdersCreateProductionResponseQualityChecksItem(
                    id: "id",
                    orderId: "orderId",
                    routingOperationId: Nullable<String>.value("routingOperationId"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    checkedBy: Nullable<String>.value("checkedBy"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.production.ordersCreate(
            request: .init(
                bomId: "bomId",
                warehouseId: "warehouseId",
                quantity: "121.0000",
                date: CalendarDate("2026-07-01")!
            ),
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
                  "type": "assembly",
                  "bomId": "x",
                  "warehouseId": "x",
                  "routingId": "x",
                  "quantity": "quantity",
                  "date": "2023-01-15",
                  "status": "draft",
                  "scrappedQuantity": "scrappedQuantity",
                  "materialCost": "materialCost",
                  "laborCost": "laborCost",
                  "scrapCost": "scrapCost",
                  "totalCost": "totalCost",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "operations": [
                    {
                      "id": "x",
                      "routingOperationId": "x",
                      "workCenterId": "x",
                      "sequence": 1000000,
                      "name": "name",
                      "plannedMinutes": "plannedMinutes",
                      "actualMinutes": "actualMinutes",
                      "costPerHour": "costPerHour",
                      "cost": "cost"
                    },
                    {
                      "id": "x",
                      "routingOperationId": "x",
                      "workCenterId": "x",
                      "sequence": 1000000,
                      "name": "name",
                      "plannedMinutes": "plannedMinutes",
                      "actualMinutes": "actualMinutes",
                      "costPerHour": "costPerHour",
                      "cost": "cost"
                    }
                  ],
                  "qualityChecks": [
                    {
                      "id": "x",
                      "orderId": "x",
                      "routingOperationId": "x",
                      "name": "name",
                      "result": "pending",
                      "notes": "notes",
                      "checkedAt": "2024-01-15T09:30:00Z",
                      "checkedBy": "checkedBy",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "orderId": "x",
                      "routingOperationId": "x",
                      "name": "name",
                      "result": "pending",
                      "notes": "notes",
                      "checkedAt": "2024-01-15T09:30:00Z",
                      "checkedBy": "checkedBy",
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
        let expectedResponse = OrdersCreateProductionResponse(
            id: "x",
            type: .assembly,
            bomId: "x",
            warehouseId: "x",
            routingId: Nullable<String>.value("x"),
            quantity: "quantity",
            date: CalendarDate("2023-01-15")!,
            status: .draft,
            scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
            materialCost: Nullable<String>.value("materialCost"),
            laborCost: Nullable<String>.value("laborCost"),
            scrapCost: Nullable<String>.value("scrapCost"),
            totalCost: Nullable<String>.value("totalCost"),
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            operations: [
                OrdersCreateProductionResponseOperationsItem(
                    id: "x",
                    routingOperationId: Nullable<String>.value("x"),
                    workCenterId: "x",
                    sequence: 1000000,
                    name: "name",
                    plannedMinutes: "plannedMinutes",
                    actualMinutes: Nullable<String>.value("actualMinutes"),
                    costPerHour: "costPerHour",
                    cost: Nullable<String>.value("cost")
                ),
                OrdersCreateProductionResponseOperationsItem(
                    id: "x",
                    routingOperationId: Nullable<String>.value("x"),
                    workCenterId: "x",
                    sequence: 1000000,
                    name: "name",
                    plannedMinutes: "plannedMinutes",
                    actualMinutes: Nullable<String>.value("actualMinutes"),
                    costPerHour: "costPerHour",
                    cost: Nullable<String>.value("cost")
                )
            ],
            qualityChecks: [
                OrdersCreateProductionResponseQualityChecksItem(
                    id: "x",
                    orderId: "x",
                    routingOperationId: Nullable<String>.value("x"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    checkedBy: Nullable<String>.value("checkedBy"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                OrdersCreateProductionResponseQualityChecksItem(
                    id: "x",
                    orderId: "x",
                    routingOperationId: Nullable<String>.value("x"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    checkedBy: Nullable<String>.value("checkedBy"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.production.ordersCreate(
            request: .init(
                bomId: "x",
                warehouseId: "x",
                quantity: "quantity",
                date: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersRecordOperation1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "routingOperationId": "routingOperationId",
                  "workCenterId": "workCenterId",
                  "sequence": 1000000,
                  "name": "name",
                  "plannedMinutes": "plannedMinutes",
                  "actualMinutes": "actualMinutes",
                  "costPerHour": "costPerHour",
                  "cost": "cost"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersRecordOperationProductionResponse(
            id: "id",
            routingOperationId: Nullable<String>.value("routingOperationId"),
            workCenterId: "workCenterId",
            sequence: 1000000,
            name: "name",
            plannedMinutes: "plannedMinutes",
            actualMinutes: Nullable<String>.value("actualMinutes"),
            costPerHour: "costPerHour",
            cost: Nullable<String>.value("cost")
        )
        let response = try await client.production.ordersRecordOperation(
            request: .init(
                id: "id",
                actualMinutes: "121.00"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersRecordOperation2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "routingOperationId": "x",
                  "workCenterId": "x",
                  "sequence": 1000000,
                  "name": "name",
                  "plannedMinutes": "plannedMinutes",
                  "actualMinutes": "actualMinutes",
                  "costPerHour": "costPerHour",
                  "cost": "cost"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersRecordOperationProductionResponse(
            id: "x",
            routingOperationId: Nullable<String>.value("x"),
            workCenterId: "x",
            sequence: 1000000,
            name: "name",
            plannedMinutes: "plannedMinutes",
            actualMinutes: Nullable<String>.value("actualMinutes"),
            costPerHour: "costPerHour",
            cost: Nullable<String>.value("cost")
        )
        let response = try await client.production.ordersRecordOperation(
            request: .init(
                id: "x",
                actualMinutes: "actualMinutes"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func qualityChecksAdd1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "orderId": "orderId",
                  "routingOperationId": "routingOperationId",
                  "name": "name",
                  "result": "pending",
                  "notes": "notes",
                  "checkedAt": "2026-07-01T09:30:00Z",
                  "checkedBy": "checkedBy",
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
        let expectedResponse = QualityChecksAddProductionResponse(
            id: "id",
            orderId: "orderId",
            routingOperationId: Nullable<String>.value("routingOperationId"),
            name: "name",
            result: .pending,
            notes: Nullable<String>.value("notes"),
            checkedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            checkedBy: Nullable<String>.value("checkedBy"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.production.qualityChecksAdd(
            request: .init(
                orderId: "orderId",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func qualityChecksAdd2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "orderId": "x",
                  "routingOperationId": "x",
                  "name": "name",
                  "result": "pending",
                  "notes": "notes",
                  "checkedAt": "2024-01-15T09:30:00Z",
                  "checkedBy": "checkedBy",
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
        let expectedResponse = QualityChecksAddProductionResponse(
            id: "x",
            orderId: "x",
            routingOperationId: Nullable<String>.value("x"),
            name: "name",
            result: .pending,
            notes: Nullable<String>.value("notes"),
            checkedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            checkedBy: Nullable<String>.value("checkedBy"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.production.qualityChecksAdd(
            request: .init(
                orderId: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func qualityChecksRecord1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "orderId": "orderId",
                  "routingOperationId": "routingOperationId",
                  "name": "name",
                  "result": "pending",
                  "notes": "notes",
                  "checkedAt": "2026-07-01T09:30:00Z",
                  "checkedBy": "checkedBy",
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
        let expectedResponse = QualityChecksRecordProductionResponse(
            id: "id",
            orderId: "orderId",
            routingOperationId: Nullable<String>.value("routingOperationId"),
            name: "name",
            result: .pending,
            notes: Nullable<String>.value("notes"),
            checkedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            checkedBy: Nullable<String>.value("checkedBy"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.production.qualityChecksRecord(
            request: .init(
                id: "id",
                result: .passed
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func qualityChecksRecord2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "orderId": "x",
                  "routingOperationId": "x",
                  "name": "name",
                  "result": "pending",
                  "notes": "notes",
                  "checkedAt": "2024-01-15T09:30:00Z",
                  "checkedBy": "checkedBy",
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
        let expectedResponse = QualityChecksRecordProductionResponse(
            id: "x",
            orderId: "x",
            routingOperationId: Nullable<String>.value("x"),
            name: "name",
            result: .pending,
            notes: Nullable<String>.value("notes"),
            checkedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            checkedBy: Nullable<String>.value("checkedBy"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.production.qualityChecksRecord(
            request: .init(
                id: "x",
                result: .passed
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func qualityChecksList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "orderId": "orderId",
                      "routingOperationId": "routingOperationId",
                      "name": "name",
                      "result": "pending",
                      "notes": "notes",
                      "checkedAt": "2026-07-01T09:30:00Z",
                      "checkedBy": "checkedBy",
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
        let expectedResponse = QualityChecksListProductionResponse(
            rows: [
                QualityChecksListProductionResponseRowsItem(
                    id: "id",
                    orderId: "orderId",
                    routingOperationId: Nullable<String>.value("routingOperationId"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    checkedBy: Nullable<String>.value("checkedBy"),
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
        let response = try await client.production.qualityChecksList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func qualityChecksList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "orderId": "x",
                      "routingOperationId": "x",
                      "name": "name",
                      "result": "pending",
                      "notes": "notes",
                      "checkedAt": "2024-01-15T09:30:00Z",
                      "checkedBy": "checkedBy",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "orderId": "x",
                      "routingOperationId": "x",
                      "name": "name",
                      "result": "pending",
                      "notes": "notes",
                      "checkedAt": "2024-01-15T09:30:00Z",
                      "checkedBy": "checkedBy",
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
        let expectedResponse = QualityChecksListProductionResponse(
            rows: [
                QualityChecksListProductionResponseRowsItem(
                    id: "x",
                    orderId: "x",
                    routingOperationId: Nullable<String>.value("x"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    checkedBy: Nullable<String>.value("checkedBy"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                QualityChecksListProductionResponseRowsItem(
                    id: "x",
                    orderId: "x",
                    routingOperationId: Nullable<String>.value("x"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    checkedBy: Nullable<String>.value("checkedBy"),
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
        let response = try await client.production.qualityChecksList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersComplete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "type": "assembly",
                  "bomId": "bomId",
                  "warehouseId": "warehouseId",
                  "routingId": "routingId",
                  "quantity": "quantity",
                  "date": "2026-07-01",
                  "status": "draft",
                  "scrappedQuantity": "scrappedQuantity",
                  "materialCost": "materialCost",
                  "laborCost": "laborCost",
                  "scrapCost": "scrapCost",
                  "totalCost": "totalCost",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
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
        let expectedResponse = OrdersCompleteProductionResponse(
            id: "id",
            type: .assembly,
            bomId: "bomId",
            warehouseId: "warehouseId",
            routingId: Nullable<String>.value("routingId"),
            quantity: "quantity",
            date: CalendarDate("2026-07-01")!,
            status: .draft,
            scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
            materialCost: Nullable<String>.value("materialCost"),
            laborCost: Nullable<String>.value("laborCost"),
            scrapCost: Nullable<String>.value("scrapCost"),
            totalCost: Nullable<String>.value("totalCost"),
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.production.ordersComplete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersComplete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "type": "assembly",
                  "bomId": "x",
                  "warehouseId": "x",
                  "routingId": "x",
                  "quantity": "quantity",
                  "date": "2023-01-15",
                  "status": "draft",
                  "scrappedQuantity": "scrappedQuantity",
                  "materialCost": "materialCost",
                  "laborCost": "laborCost",
                  "scrapCost": "scrapCost",
                  "totalCost": "totalCost",
                  "journalTransactionId": "x",
                  "notes": "notes",
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
        let expectedResponse = OrdersCompleteProductionResponse(
            id: "x",
            type: .assembly,
            bomId: "x",
            warehouseId: "x",
            routingId: Nullable<String>.value("x"),
            quantity: "quantity",
            date: CalendarDate("2023-01-15")!,
            status: .draft,
            scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
            materialCost: Nullable<String>.value("materialCost"),
            laborCost: Nullable<String>.value("laborCost"),
            scrapCost: Nullable<String>.value("scrapCost"),
            totalCost: Nullable<String>.value("totalCost"),
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.production.ordersComplete(
            request: .init(id: "x"),
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
                  "type": "assembly",
                  "bomId": "bomId",
                  "warehouseId": "warehouseId",
                  "routingId": "routingId",
                  "quantity": "quantity",
                  "date": "2026-07-01",
                  "status": "draft",
                  "scrappedQuantity": "scrappedQuantity",
                  "materialCost": "materialCost",
                  "laborCost": "laborCost",
                  "scrapCost": "scrapCost",
                  "totalCost": "totalCost",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "operations": [
                    {
                      "id": "id",
                      "routingOperationId": "routingOperationId",
                      "workCenterId": "workCenterId",
                      "sequence": 1000000,
                      "name": "name",
                      "plannedMinutes": "plannedMinutes",
                      "actualMinutes": "actualMinutes",
                      "costPerHour": "costPerHour",
                      "cost": "cost"
                    }
                  ],
                  "qualityChecks": [
                    {
                      "id": "id",
                      "orderId": "orderId",
                      "routingOperationId": "routingOperationId",
                      "name": "name",
                      "result": "pending",
                      "notes": "notes",
                      "checkedAt": "2026-07-01T09:30:00Z",
                      "checkedBy": "checkedBy",
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
        let expectedResponse = OrdersGetProductionResponse(
            id: "id",
            type: .assembly,
            bomId: "bomId",
            warehouseId: "warehouseId",
            routingId: Nullable<String>.value("routingId"),
            quantity: "quantity",
            date: CalendarDate("2026-07-01")!,
            status: .draft,
            scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
            materialCost: Nullable<String>.value("materialCost"),
            laborCost: Nullable<String>.value("laborCost"),
            scrapCost: Nullable<String>.value("scrapCost"),
            totalCost: Nullable<String>.value("totalCost"),
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            operations: [
                OrdersGetProductionResponseOperationsItem(
                    id: "id",
                    routingOperationId: Nullable<String>.value("routingOperationId"),
                    workCenterId: "workCenterId",
                    sequence: 1000000,
                    name: "name",
                    plannedMinutes: "plannedMinutes",
                    actualMinutes: Nullable<String>.value("actualMinutes"),
                    costPerHour: "costPerHour",
                    cost: Nullable<String>.value("cost")
                )
            ],
            qualityChecks: [
                OrdersGetProductionResponseQualityChecksItem(
                    id: "id",
                    orderId: "orderId",
                    routingOperationId: Nullable<String>.value("routingOperationId"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    checkedBy: Nullable<String>.value("checkedBy"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.production.ordersGet(
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
                  "type": "assembly",
                  "bomId": "x",
                  "warehouseId": "x",
                  "routingId": "x",
                  "quantity": "quantity",
                  "date": "2023-01-15",
                  "status": "draft",
                  "scrappedQuantity": "scrappedQuantity",
                  "materialCost": "materialCost",
                  "laborCost": "laborCost",
                  "scrapCost": "scrapCost",
                  "totalCost": "totalCost",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "operations": [
                    {
                      "id": "x",
                      "routingOperationId": "x",
                      "workCenterId": "x",
                      "sequence": 1000000,
                      "name": "name",
                      "plannedMinutes": "plannedMinutes",
                      "actualMinutes": "actualMinutes",
                      "costPerHour": "costPerHour",
                      "cost": "cost"
                    },
                    {
                      "id": "x",
                      "routingOperationId": "x",
                      "workCenterId": "x",
                      "sequence": 1000000,
                      "name": "name",
                      "plannedMinutes": "plannedMinutes",
                      "actualMinutes": "actualMinutes",
                      "costPerHour": "costPerHour",
                      "cost": "cost"
                    }
                  ],
                  "qualityChecks": [
                    {
                      "id": "x",
                      "orderId": "x",
                      "routingOperationId": "x",
                      "name": "name",
                      "result": "pending",
                      "notes": "notes",
                      "checkedAt": "2024-01-15T09:30:00Z",
                      "checkedBy": "checkedBy",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "orderId": "x",
                      "routingOperationId": "x",
                      "name": "name",
                      "result": "pending",
                      "notes": "notes",
                      "checkedAt": "2024-01-15T09:30:00Z",
                      "checkedBy": "checkedBy",
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
        let expectedResponse = OrdersGetProductionResponse(
            id: "x",
            type: .assembly,
            bomId: "x",
            warehouseId: "x",
            routingId: Nullable<String>.value("x"),
            quantity: "quantity",
            date: CalendarDate("2023-01-15")!,
            status: .draft,
            scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
            materialCost: Nullable<String>.value("materialCost"),
            laborCost: Nullable<String>.value("laborCost"),
            scrapCost: Nullable<String>.value("scrapCost"),
            totalCost: Nullable<String>.value("totalCost"),
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            operations: [
                OrdersGetProductionResponseOperationsItem(
                    id: "x",
                    routingOperationId: Nullable<String>.value("x"),
                    workCenterId: "x",
                    sequence: 1000000,
                    name: "name",
                    plannedMinutes: "plannedMinutes",
                    actualMinutes: Nullable<String>.value("actualMinutes"),
                    costPerHour: "costPerHour",
                    cost: Nullable<String>.value("cost")
                ),
                OrdersGetProductionResponseOperationsItem(
                    id: "x",
                    routingOperationId: Nullable<String>.value("x"),
                    workCenterId: "x",
                    sequence: 1000000,
                    name: "name",
                    plannedMinutes: "plannedMinutes",
                    actualMinutes: Nullable<String>.value("actualMinutes"),
                    costPerHour: "costPerHour",
                    cost: Nullable<String>.value("cost")
                )
            ],
            qualityChecks: [
                OrdersGetProductionResponseQualityChecksItem(
                    id: "x",
                    orderId: "x",
                    routingOperationId: Nullable<String>.value("x"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    checkedBy: Nullable<String>.value("checkedBy"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                OrdersGetProductionResponseQualityChecksItem(
                    id: "x",
                    orderId: "x",
                    routingOperationId: Nullable<String>.value("x"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    checkedBy: Nullable<String>.value("checkedBy"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.production.ordersGet(
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
                      "type": "assembly",
                      "bomId": "bomId",
                      "warehouseId": "warehouseId",
                      "routingId": "routingId",
                      "quantity": "quantity",
                      "date": "2026-07-01",
                      "status": "draft",
                      "scrappedQuantity": "scrappedQuantity",
                      "materialCost": "materialCost",
                      "laborCost": "laborCost",
                      "scrapCost": "scrapCost",
                      "totalCost": "totalCost",
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
        let expectedResponse = OrdersListProductionResponse(
            rows: [
                OrdersListProductionResponseRowsItem(
                    id: "id",
                    type: .assembly,
                    bomId: "bomId",
                    warehouseId: "warehouseId",
                    routingId: Nullable<String>.value("routingId"),
                    quantity: "quantity",
                    date: CalendarDate("2026-07-01")!,
                    status: .draft,
                    scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
                    materialCost: Nullable<String>.value("materialCost"),
                    laborCost: Nullable<String>.value("laborCost"),
                    scrapCost: Nullable<String>.value("scrapCost"),
                    totalCost: Nullable<String>.value("totalCost"),
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
            ])
        )
        let response = try await client.production.ordersList(
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
                      "type": "assembly",
                      "bomId": "x",
                      "warehouseId": "x",
                      "routingId": "x",
                      "quantity": "quantity",
                      "date": "2023-01-15",
                      "status": "draft",
                      "scrappedQuantity": "scrappedQuantity",
                      "materialCost": "materialCost",
                      "laborCost": "laborCost",
                      "scrapCost": "scrapCost",
                      "totalCost": "totalCost",
                      "journalTransactionId": "x",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "type": "assembly",
                      "bomId": "x",
                      "warehouseId": "x",
                      "routingId": "x",
                      "quantity": "quantity",
                      "date": "2023-01-15",
                      "status": "draft",
                      "scrappedQuantity": "scrappedQuantity",
                      "materialCost": "materialCost",
                      "laborCost": "laborCost",
                      "scrapCost": "scrapCost",
                      "totalCost": "totalCost",
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
        let expectedResponse = OrdersListProductionResponse(
            rows: [
                OrdersListProductionResponseRowsItem(
                    id: "x",
                    type: .assembly,
                    bomId: "x",
                    warehouseId: "x",
                    routingId: Nullable<String>.value("x"),
                    quantity: "quantity",
                    date: CalendarDate("2023-01-15")!,
                    status: .draft,
                    scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
                    materialCost: Nullable<String>.value("materialCost"),
                    laborCost: Nullable<String>.value("laborCost"),
                    scrapCost: Nullable<String>.value("scrapCost"),
                    totalCost: Nullable<String>.value("totalCost"),
                    journalTransactionId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                OrdersListProductionResponseRowsItem(
                    id: "x",
                    type: .assembly,
                    bomId: "x",
                    warehouseId: "x",
                    routingId: Nullable<String>.value("x"),
                    quantity: "quantity",
                    date: CalendarDate("2023-01-15")!,
                    status: .draft,
                    scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
                    materialCost: Nullable<String>.value("materialCost"),
                    laborCost: Nullable<String>.value("laborCost"),
                    scrapCost: Nullable<String>.value("scrapCost"),
                    totalCost: Nullable<String>.value("totalCost"),
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
            ])
        )
        let response = try await client.production.ordersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}