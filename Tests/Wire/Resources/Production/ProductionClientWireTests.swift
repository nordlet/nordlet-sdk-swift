import Foundation
import Testing
import Api

@Suite("ProductionClient Wire Tests") struct ProductionClientWireTests {
    @Test func postV1ProductionWorkCentersCreate1() async throws -> Void {
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
                  "nextMaintenanceDate": "nextMaintenanceDate",
                  "isActive": true,
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
        let expectedResponse = PostV1ProductionWorkCentersCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            costPerHour: "costPerHour",
            costAccountCode: Nullable<String>.value("costAccountCode"),
            maintenanceIntervalDays: Nullable<Int64>.value(1000000),
            nextMaintenanceDate: Nullable<String>.value("nextMaintenanceDate"),
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionWorkCentersCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionWorkCentersCreate2() async throws -> Void {
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
                  "nextMaintenanceDate": "nextMaintenanceDate",
                  "isActive": true,
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
        let expectedResponse = PostV1ProductionWorkCentersCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            costPerHour: "costPerHour",
            costAccountCode: Nullable<String>.value("costAccountCode"),
            maintenanceIntervalDays: Nullable<Int64>.value(1000000),
            nextMaintenanceDate: Nullable<String>.value("nextMaintenanceDate"),
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionWorkCentersCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionWorkCentersUpdate1() async throws -> Void {
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
                  "nextMaintenanceDate": "nextMaintenanceDate",
                  "isActive": true,
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
        let expectedResponse = PostV1ProductionWorkCentersUpdateResponse(
            id: "id",
            code: "code",
            name: "name",
            costPerHour: "costPerHour",
            costAccountCode: Nullable<String>.value("costAccountCode"),
            maintenanceIntervalDays: Nullable<Int64>.value(1000000),
            nextMaintenanceDate: Nullable<String>.value("nextMaintenanceDate"),
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionWorkCentersUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionWorkCentersUpdate2() async throws -> Void {
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
                  "nextMaintenanceDate": "nextMaintenanceDate",
                  "isActive": true,
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
        let expectedResponse = PostV1ProductionWorkCentersUpdateResponse(
            id: "x",
            code: "code",
            name: "name",
            costPerHour: "costPerHour",
            costAccountCode: Nullable<String>.value("costAccountCode"),
            maintenanceIntervalDays: Nullable<Int64>.value(1000000),
            nextMaintenanceDate: Nullable<String>.value("nextMaintenanceDate"),
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionWorkCentersUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionWorkCentersList1() async throws -> Void {
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
                      "nextMaintenanceDate": "nextMaintenanceDate",
                      "isActive": true,
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
        let expectedResponse = PostV1ProductionWorkCentersListResponse(
            rows: [
                PostV1ProductionWorkCentersListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    costPerHour: "costPerHour",
                    costAccountCode: Nullable<String>.value("costAccountCode"),
                    maintenanceIntervalDays: Nullable<Int64>.value(1000000),
                    nextMaintenanceDate: Nullable<String>.value("nextMaintenanceDate"),
                    isActive: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.production.postV1ProductionWorkCentersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionWorkCentersList2() async throws -> Void {
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
                      "nextMaintenanceDate": "nextMaintenanceDate",
                      "isActive": true,
                      "notes": "notes",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "costPerHour": "costPerHour",
                      "costAccountCode": "costAccountCode",
                      "maintenanceIntervalDays": 1000000,
                      "nextMaintenanceDate": "nextMaintenanceDate",
                      "isActive": true,
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
        let expectedResponse = PostV1ProductionWorkCentersListResponse(
            rows: [
                PostV1ProductionWorkCentersListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    costPerHour: "costPerHour",
                    costAccountCode: Nullable<String>.value("costAccountCode"),
                    maintenanceIntervalDays: Nullable<Int64>.value(1000000),
                    nextMaintenanceDate: Nullable<String>.value("nextMaintenanceDate"),
                    isActive: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1ProductionWorkCentersListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    costPerHour: "costPerHour",
                    costAccountCode: Nullable<String>.value("costAccountCode"),
                    maintenanceIntervalDays: Nullable<Int64>.value(1000000),
                    nextMaintenanceDate: Nullable<String>.value("nextMaintenanceDate"),
                    isActive: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.production.postV1ProductionWorkCentersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionRoutingsCreate1() async throws -> Void {
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
                  "createdAt": "createdAt",
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
        let expectedResponse = PostV1ProductionRoutingsCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            operations: [
                PostV1ProductionRoutingsCreateResponseOperationsItem(
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
        let response = try await client.production.postV1ProductionRoutingsCreate(
            request: .init(
                code: "code",
                name: "name",
                operations: [
                    PostV1ProductionRoutingsCreateRequestOperationsItem(
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

    @Test func postV1ProductionRoutingsCreate2() async throws -> Void {
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
                  "createdAt": "createdAt",
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
        let expectedResponse = PostV1ProductionRoutingsCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            operations: [
                PostV1ProductionRoutingsCreateResponseOperationsItem(
                    id: "x",
                    sequence: 1000000,
                    name: "name",
                    workCenterId: "x",
                    setupMinutes: "setupMinutes",
                    runMinutesPerUnit: "runMinutesPerUnit",
                    qualityCheckName: Nullable<String>.value("qualityCheckName"),
                    notes: Nullable<String>.value("notes")
                ),
                PostV1ProductionRoutingsCreateResponseOperationsItem(
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
        let response = try await client.production.postV1ProductionRoutingsCreate(
            request: .init(
                code: "x",
                name: "x",
                operations: [
                    PostV1ProductionRoutingsCreateRequestOperationsItem(
                        sequence: 1000000,
                        name: "x",
                        workCenterId: "x"
                    ),
                    PostV1ProductionRoutingsCreateRequestOperationsItem(
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

    @Test func postV1ProductionRoutingsGet1() async throws -> Void {
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
                  "createdAt": "createdAt",
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
        let expectedResponse = PostV1ProductionRoutingsGetResponse(
            id: "id",
            code: "code",
            name: "name",
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            operations: [
                PostV1ProductionRoutingsGetResponseOperationsItem(
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
        let response = try await client.production.postV1ProductionRoutingsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionRoutingsGet2() async throws -> Void {
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
                  "createdAt": "createdAt",
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
        let expectedResponse = PostV1ProductionRoutingsGetResponse(
            id: "x",
            code: "code",
            name: "name",
            isActive: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            operations: [
                PostV1ProductionRoutingsGetResponseOperationsItem(
                    id: "x",
                    sequence: 1000000,
                    name: "name",
                    workCenterId: "x",
                    setupMinutes: "setupMinutes",
                    runMinutesPerUnit: "runMinutesPerUnit",
                    qualityCheckName: Nullable<String>.value("qualityCheckName"),
                    notes: Nullable<String>.value("notes")
                ),
                PostV1ProductionRoutingsGetResponseOperationsItem(
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
        let response = try await client.production.postV1ProductionRoutingsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionRoutingsList1() async throws -> Void {
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
        let expectedResponse = PostV1ProductionRoutingsListResponse(
            rows: [
                PostV1ProductionRoutingsListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    isActive: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.production.postV1ProductionRoutingsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionRoutingsList2() async throws -> Void {
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
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "isActive": true,
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
        let expectedResponse = PostV1ProductionRoutingsListResponse(
            rows: [
                PostV1ProductionRoutingsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    isActive: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1ProductionRoutingsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    isActive: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.production.postV1ProductionRoutingsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionMaintenanceCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "workCenterId": "workCenterId",
                  "type": "preventive",
                  "status": "planned",
                  "plannedDate": "plannedDate",
                  "completedDate": "completedDate",
                  "description": "description",
                  "downtimeHours": "downtimeHours",
                  "cost": "cost",
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
        let expectedResponse = PostV1ProductionMaintenanceCreateResponse(
            id: "id",
            workCenterId: "workCenterId",
            type: .preventive,
            status: .planned,
            plannedDate: "plannedDate",
            completedDate: Nullable<String>.value("completedDate"),
            description: Nullable<String>.value("description"),
            downtimeHours: Nullable<String>.value("downtimeHours"),
            cost: Nullable<String>.value("cost"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionMaintenanceCreate(
            request: .init(
                workCenterId: "workCenterId",
                type: .preventive,
                plannedDate: "plannedDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionMaintenanceCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "workCenterId": "x",
                  "type": "preventive",
                  "status": "planned",
                  "plannedDate": "plannedDate",
                  "completedDate": "completedDate",
                  "description": "description",
                  "downtimeHours": "downtimeHours",
                  "cost": "cost",
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
        let expectedResponse = PostV1ProductionMaintenanceCreateResponse(
            id: "x",
            workCenterId: "x",
            type: .preventive,
            status: .planned,
            plannedDate: "plannedDate",
            completedDate: Nullable<String>.value("completedDate"),
            description: Nullable<String>.value("description"),
            downtimeHours: Nullable<String>.value("downtimeHours"),
            cost: Nullable<String>.value("cost"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionMaintenanceCreate(
            request: .init(
                workCenterId: "x",
                type: .preventive,
                plannedDate: "plannedDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionMaintenanceComplete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "workCenterId": "workCenterId",
                  "type": "preventive",
                  "status": "planned",
                  "plannedDate": "plannedDate",
                  "completedDate": "completedDate",
                  "description": "description",
                  "downtimeHours": "downtimeHours",
                  "cost": "cost",
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
        let expectedResponse = PostV1ProductionMaintenanceCompleteResponse(
            id: "id",
            workCenterId: "workCenterId",
            type: .preventive,
            status: .planned,
            plannedDate: "plannedDate",
            completedDate: Nullable<String>.value("completedDate"),
            description: Nullable<String>.value("description"),
            downtimeHours: Nullable<String>.value("downtimeHours"),
            cost: Nullable<String>.value("cost"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionMaintenanceComplete(
            request: .init(
                id: "id",
                completedDate: "completedDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionMaintenanceComplete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "workCenterId": "x",
                  "type": "preventive",
                  "status": "planned",
                  "plannedDate": "plannedDate",
                  "completedDate": "completedDate",
                  "description": "description",
                  "downtimeHours": "downtimeHours",
                  "cost": "cost",
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
        let expectedResponse = PostV1ProductionMaintenanceCompleteResponse(
            id: "x",
            workCenterId: "x",
            type: .preventive,
            status: .planned,
            plannedDate: "plannedDate",
            completedDate: Nullable<String>.value("completedDate"),
            description: Nullable<String>.value("description"),
            downtimeHours: Nullable<String>.value("downtimeHours"),
            cost: Nullable<String>.value("cost"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionMaintenanceComplete(
            request: .init(
                id: "x",
                completedDate: "completedDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionMaintenanceCancel1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "workCenterId": "workCenterId",
                  "type": "preventive",
                  "status": "planned",
                  "plannedDate": "plannedDate",
                  "completedDate": "completedDate",
                  "description": "description",
                  "downtimeHours": "downtimeHours",
                  "cost": "cost",
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
        let expectedResponse = PostV1ProductionMaintenanceCancelResponse(
            id: "id",
            workCenterId: "workCenterId",
            type: .preventive,
            status: .planned,
            plannedDate: "plannedDate",
            completedDate: Nullable<String>.value("completedDate"),
            description: Nullable<String>.value("description"),
            downtimeHours: Nullable<String>.value("downtimeHours"),
            cost: Nullable<String>.value("cost"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionMaintenanceCancel(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionMaintenanceCancel2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "workCenterId": "x",
                  "type": "preventive",
                  "status": "planned",
                  "plannedDate": "plannedDate",
                  "completedDate": "completedDate",
                  "description": "description",
                  "downtimeHours": "downtimeHours",
                  "cost": "cost",
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
        let expectedResponse = PostV1ProductionMaintenanceCancelResponse(
            id: "x",
            workCenterId: "x",
            type: .preventive,
            status: .planned,
            plannedDate: "plannedDate",
            completedDate: Nullable<String>.value("completedDate"),
            description: Nullable<String>.value("description"),
            downtimeHours: Nullable<String>.value("downtimeHours"),
            cost: Nullable<String>.value("cost"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionMaintenanceCancel(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionMaintenanceList1() async throws -> Void {
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
                      "plannedDate": "plannedDate",
                      "completedDate": "completedDate",
                      "description": "description",
                      "downtimeHours": "downtimeHours",
                      "cost": "cost",
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
        let expectedResponse = PostV1ProductionMaintenanceListResponse(
            rows: [
                PostV1ProductionMaintenanceListResponseRowsItem(
                    id: "id",
                    workCenterId: "workCenterId",
                    type: .preventive,
                    status: .planned,
                    plannedDate: "plannedDate",
                    completedDate: Nullable<String>.value("completedDate"),
                    description: Nullable<String>.value("description"),
                    downtimeHours: Nullable<String>.value("downtimeHours"),
                    cost: Nullable<String>.value("cost"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.production.postV1ProductionMaintenanceList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionMaintenanceList2() async throws -> Void {
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
                      "plannedDate": "plannedDate",
                      "completedDate": "completedDate",
                      "description": "description",
                      "downtimeHours": "downtimeHours",
                      "cost": "cost",
                      "notes": "notes",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "workCenterId": "x",
                      "type": "preventive",
                      "status": "planned",
                      "plannedDate": "plannedDate",
                      "completedDate": "completedDate",
                      "description": "description",
                      "downtimeHours": "downtimeHours",
                      "cost": "cost",
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
        let expectedResponse = PostV1ProductionMaintenanceListResponse(
            rows: [
                PostV1ProductionMaintenanceListResponseRowsItem(
                    id: "x",
                    workCenterId: "x",
                    type: .preventive,
                    status: .planned,
                    plannedDate: "plannedDate",
                    completedDate: Nullable<String>.value("completedDate"),
                    description: Nullable<String>.value("description"),
                    downtimeHours: Nullable<String>.value("downtimeHours"),
                    cost: Nullable<String>.value("cost"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1ProductionMaintenanceListResponseRowsItem(
                    id: "x",
                    workCenterId: "x",
                    type: .preventive,
                    status: .planned,
                    plannedDate: "plannedDate",
                    completedDate: Nullable<String>.value("completedDate"),
                    description: Nullable<String>.value("description"),
                    downtimeHours: Nullable<String>.value("downtimeHours"),
                    cost: Nullable<String>.value("cost"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.production.postV1ProductionMaintenanceList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

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
        let expectedResponse = PostV1ProductionBomsCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            finishedItemId: "finishedItemId",
            outputQuantity: "outputQuantity",
            routingId: Nullable<String>.value("routingId"),
            isActive: true,
            lines: [
                PostV1ProductionBomsCreateResponseLinesItem(
                    id: "id",
                    componentItemId: "componentItemId",
                    quantity: "quantity",
                    scrapPercent: "scrapPercent"
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
        let expectedResponse = PostV1ProductionBomsCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            finishedItemId: "x",
            outputQuantity: "outputQuantity",
            routingId: Nullable<String>.value("x"),
            isActive: true,
            lines: [
                PostV1ProductionBomsCreateResponseLinesItem(
                    id: "x",
                    componentItemId: "x",
                    quantity: "quantity",
                    scrapPercent: "scrapPercent"
                ),
                PostV1ProductionBomsCreateResponseLinesItem(
                    id: "x",
                    componentItemId: "x",
                    quantity: "quantity",
                    scrapPercent: "scrapPercent"
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
        let expectedResponse = PostV1ProductionBomsGetResponse(
            id: "id",
            code: "code",
            name: "name",
            finishedItemId: "finishedItemId",
            outputQuantity: "outputQuantity",
            routingId: Nullable<String>.value("routingId"),
            isActive: true,
            lines: [
                PostV1ProductionBomsGetResponseLinesItem(
                    id: "id",
                    componentItemId: "componentItemId",
                    quantity: "quantity",
                    scrapPercent: "scrapPercent"
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
        let expectedResponse = PostV1ProductionBomsGetResponse(
            id: "x",
            code: "code",
            name: "name",
            finishedItemId: "x",
            outputQuantity: "outputQuantity",
            routingId: Nullable<String>.value("x"),
            isActive: true,
            lines: [
                PostV1ProductionBomsGetResponseLinesItem(
                    id: "x",
                    componentItemId: "x",
                    quantity: "quantity",
                    scrapPercent: "scrapPercent"
                ),
                PostV1ProductionBomsGetResponseLinesItem(
                    id: "x",
                    componentItemId: "x",
                    quantity: "quantity",
                    scrapPercent: "scrapPercent"
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
                      "routingId": "routingId",
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
                    routingId: Nullable<String>.value("routingId"),
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
                    routingId: Nullable<String>.value("x"),
                    isActive: true
                ),
                PostV1ProductionBomsListResponseRowsItem(
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
                  "routingId": "routingId",
                  "quantity": "quantity",
                  "date": "date",
                  "status": "draft",
                  "scrappedQuantity": "scrappedQuantity",
                  "materialCost": "materialCost",
                  "laborCost": "laborCost",
                  "scrapCost": "scrapCost",
                  "totalCost": "totalCost",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "createdAt": "createdAt",
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
                      "checkedAt": "checkedAt",
                      "checkedBy": "checkedBy",
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
        let expectedResponse = PostV1ProductionOrdersCreateResponse(
            id: "id",
            type: .assembly,
            bomId: "bomId",
            warehouseId: "warehouseId",
            routingId: Nullable<String>.value("routingId"),
            quantity: "quantity",
            date: "date",
            status: .draft,
            scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
            materialCost: Nullable<String>.value("materialCost"),
            laborCost: Nullable<String>.value("laborCost"),
            scrapCost: Nullable<String>.value("scrapCost"),
            totalCost: Nullable<String>.value("totalCost"),
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            operations: [
                PostV1ProductionOrdersCreateResponseOperationsItem(
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
                PostV1ProductionOrdersCreateResponseQualityChecksItem(
                    id: "id",
                    orderId: "orderId",
                    routingOperationId: Nullable<String>.value("routingOperationId"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<String>.value("checkedAt"),
                    checkedBy: Nullable<String>.value("checkedBy"),
                    createdAt: "createdAt"
                )
            ]
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
                  "routingId": "x",
                  "quantity": "quantity",
                  "date": "date",
                  "status": "draft",
                  "scrappedQuantity": "scrappedQuantity",
                  "materialCost": "materialCost",
                  "laborCost": "laborCost",
                  "scrapCost": "scrapCost",
                  "totalCost": "totalCost",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "createdAt": "createdAt",
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
                      "checkedAt": "checkedAt",
                      "checkedBy": "checkedBy",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "orderId": "x",
                      "routingOperationId": "x",
                      "name": "name",
                      "result": "pending",
                      "notes": "notes",
                      "checkedAt": "checkedAt",
                      "checkedBy": "checkedBy",
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
        let expectedResponse = PostV1ProductionOrdersCreateResponse(
            id: "x",
            type: .assembly,
            bomId: "x",
            warehouseId: "x",
            routingId: Nullable<String>.value("x"),
            quantity: "quantity",
            date: "date",
            status: .draft,
            scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
            materialCost: Nullable<String>.value("materialCost"),
            laborCost: Nullable<String>.value("laborCost"),
            scrapCost: Nullable<String>.value("scrapCost"),
            totalCost: Nullable<String>.value("totalCost"),
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            operations: [
                PostV1ProductionOrdersCreateResponseOperationsItem(
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
                PostV1ProductionOrdersCreateResponseOperationsItem(
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
                PostV1ProductionOrdersCreateResponseQualityChecksItem(
                    id: "x",
                    orderId: "x",
                    routingOperationId: Nullable<String>.value("x"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<String>.value("checkedAt"),
                    checkedBy: Nullable<String>.value("checkedBy"),
                    createdAt: "createdAt"
                ),
                PostV1ProductionOrdersCreateResponseQualityChecksItem(
                    id: "x",
                    orderId: "x",
                    routingOperationId: Nullable<String>.value("x"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<String>.value("checkedAt"),
                    checkedBy: Nullable<String>.value("checkedBy"),
                    createdAt: "createdAt"
                )
            ]
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

    @Test func postV1ProductionOrdersRecordOperation1() async throws -> Void {
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
        let expectedResponse = PostV1ProductionOrdersRecordOperationResponse(
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
        let response = try await client.production.postV1ProductionOrdersRecordOperation(
            request: .init(
                id: "id",
                actualMinutes: "actualMinutes"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionOrdersRecordOperation2() async throws -> Void {
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
        let expectedResponse = PostV1ProductionOrdersRecordOperationResponse(
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
        let response = try await client.production.postV1ProductionOrdersRecordOperation(
            request: .init(
                id: "x",
                actualMinutes: "actualMinutes"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionQualityChecksAdd1() async throws -> Void {
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
                  "checkedAt": "checkedAt",
                  "checkedBy": "checkedBy",
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
        let expectedResponse = PostV1ProductionQualityChecksAddResponse(
            id: "id",
            orderId: "orderId",
            routingOperationId: Nullable<String>.value("routingOperationId"),
            name: "name",
            result: .pending,
            notes: Nullable<String>.value("notes"),
            checkedAt: Nullable<String>.value("checkedAt"),
            checkedBy: Nullable<String>.value("checkedBy"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionQualityChecksAdd(
            request: .init(
                orderId: "orderId",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionQualityChecksAdd2() async throws -> Void {
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
                  "checkedAt": "checkedAt",
                  "checkedBy": "checkedBy",
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
        let expectedResponse = PostV1ProductionQualityChecksAddResponse(
            id: "x",
            orderId: "x",
            routingOperationId: Nullable<String>.value("x"),
            name: "name",
            result: .pending,
            notes: Nullable<String>.value("notes"),
            checkedAt: Nullable<String>.value("checkedAt"),
            checkedBy: Nullable<String>.value("checkedBy"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionQualityChecksAdd(
            request: .init(
                orderId: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionQualityChecksRecord1() async throws -> Void {
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
                  "checkedAt": "checkedAt",
                  "checkedBy": "checkedBy",
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
        let expectedResponse = PostV1ProductionQualityChecksRecordResponse(
            id: "id",
            orderId: "orderId",
            routingOperationId: Nullable<String>.value("routingOperationId"),
            name: "name",
            result: .pending,
            notes: Nullable<String>.value("notes"),
            checkedAt: Nullable<String>.value("checkedAt"),
            checkedBy: Nullable<String>.value("checkedBy"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionQualityChecksRecord(
            request: .init(
                id: "id",
                result: .passed
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionQualityChecksRecord2() async throws -> Void {
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
                  "checkedAt": "checkedAt",
                  "checkedBy": "checkedBy",
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
        let expectedResponse = PostV1ProductionQualityChecksRecordResponse(
            id: "x",
            orderId: "x",
            routingOperationId: Nullable<String>.value("x"),
            name: "name",
            result: .pending,
            notes: Nullable<String>.value("notes"),
            checkedAt: Nullable<String>.value("checkedAt"),
            checkedBy: Nullable<String>.value("checkedBy"),
            createdAt: "createdAt"
        )
        let response = try await client.production.postV1ProductionQualityChecksRecord(
            request: .init(
                id: "x",
                result: .passed
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionQualityChecksList1() async throws -> Void {
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
                      "checkedAt": "checkedAt",
                      "checkedBy": "checkedBy",
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
        let expectedResponse = PostV1ProductionQualityChecksListResponse(
            rows: [
                PostV1ProductionQualityChecksListResponseRowsItem(
                    id: "id",
                    orderId: "orderId",
                    routingOperationId: Nullable<String>.value("routingOperationId"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<String>.value("checkedAt"),
                    checkedBy: Nullable<String>.value("checkedBy"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.production.postV1ProductionQualityChecksList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProductionQualityChecksList2() async throws -> Void {
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
                      "checkedAt": "checkedAt",
                      "checkedBy": "checkedBy",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "orderId": "x",
                      "routingOperationId": "x",
                      "name": "name",
                      "result": "pending",
                      "notes": "notes",
                      "checkedAt": "checkedAt",
                      "checkedBy": "checkedBy",
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
        let expectedResponse = PostV1ProductionQualityChecksListResponse(
            rows: [
                PostV1ProductionQualityChecksListResponseRowsItem(
                    id: "x",
                    orderId: "x",
                    routingOperationId: Nullable<String>.value("x"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<String>.value("checkedAt"),
                    checkedBy: Nullable<String>.value("checkedBy"),
                    createdAt: "createdAt"
                ),
                PostV1ProductionQualityChecksListResponseRowsItem(
                    id: "x",
                    orderId: "x",
                    routingOperationId: Nullable<String>.value("x"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<String>.value("checkedAt"),
                    checkedBy: Nullable<String>.value("checkedBy"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.production.postV1ProductionQualityChecksList(
            request: .init(),
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
                  "routingId": "routingId",
                  "quantity": "quantity",
                  "date": "date",
                  "status": "draft",
                  "scrappedQuantity": "scrappedQuantity",
                  "materialCost": "materialCost",
                  "laborCost": "laborCost",
                  "scrapCost": "scrapCost",
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
            routingId: Nullable<String>.value("routingId"),
            quantity: "quantity",
            date: "date",
            status: .draft,
            scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
            materialCost: Nullable<String>.value("materialCost"),
            laborCost: Nullable<String>.value("laborCost"),
            scrapCost: Nullable<String>.value("scrapCost"),
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
                  "routingId": "x",
                  "quantity": "quantity",
                  "date": "date",
                  "status": "draft",
                  "scrappedQuantity": "scrappedQuantity",
                  "materialCost": "materialCost",
                  "laborCost": "laborCost",
                  "scrapCost": "scrapCost",
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
            routingId: Nullable<String>.value("x"),
            quantity: "quantity",
            date: "date",
            status: .draft,
            scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
            materialCost: Nullable<String>.value("materialCost"),
            laborCost: Nullable<String>.value("laborCost"),
            scrapCost: Nullable<String>.value("scrapCost"),
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
                  "routingId": "routingId",
                  "quantity": "quantity",
                  "date": "date",
                  "status": "draft",
                  "scrappedQuantity": "scrappedQuantity",
                  "materialCost": "materialCost",
                  "laborCost": "laborCost",
                  "scrapCost": "scrapCost",
                  "totalCost": "totalCost",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "createdAt": "createdAt",
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
                      "checkedAt": "checkedAt",
                      "checkedBy": "checkedBy",
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
        let expectedResponse = PostV1ProductionOrdersGetResponse(
            id: "id",
            type: .assembly,
            bomId: "bomId",
            warehouseId: "warehouseId",
            routingId: Nullable<String>.value("routingId"),
            quantity: "quantity",
            date: "date",
            status: .draft,
            scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
            materialCost: Nullable<String>.value("materialCost"),
            laborCost: Nullable<String>.value("laborCost"),
            scrapCost: Nullable<String>.value("scrapCost"),
            totalCost: Nullable<String>.value("totalCost"),
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            operations: [
                PostV1ProductionOrdersGetResponseOperationsItem(
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
                PostV1ProductionOrdersGetResponseQualityChecksItem(
                    id: "id",
                    orderId: "orderId",
                    routingOperationId: Nullable<String>.value("routingOperationId"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<String>.value("checkedAt"),
                    checkedBy: Nullable<String>.value("checkedBy"),
                    createdAt: "createdAt"
                )
            ]
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
                  "routingId": "x",
                  "quantity": "quantity",
                  "date": "date",
                  "status": "draft",
                  "scrappedQuantity": "scrappedQuantity",
                  "materialCost": "materialCost",
                  "laborCost": "laborCost",
                  "scrapCost": "scrapCost",
                  "totalCost": "totalCost",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "createdAt": "createdAt",
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
                      "checkedAt": "checkedAt",
                      "checkedBy": "checkedBy",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "orderId": "x",
                      "routingOperationId": "x",
                      "name": "name",
                      "result": "pending",
                      "notes": "notes",
                      "checkedAt": "checkedAt",
                      "checkedBy": "checkedBy",
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
        let expectedResponse = PostV1ProductionOrdersGetResponse(
            id: "x",
            type: .assembly,
            bomId: "x",
            warehouseId: "x",
            routingId: Nullable<String>.value("x"),
            quantity: "quantity",
            date: "date",
            status: .draft,
            scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
            materialCost: Nullable<String>.value("materialCost"),
            laborCost: Nullable<String>.value("laborCost"),
            scrapCost: Nullable<String>.value("scrapCost"),
            totalCost: Nullable<String>.value("totalCost"),
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            operations: [
                PostV1ProductionOrdersGetResponseOperationsItem(
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
                PostV1ProductionOrdersGetResponseOperationsItem(
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
                PostV1ProductionOrdersGetResponseQualityChecksItem(
                    id: "x",
                    orderId: "x",
                    routingOperationId: Nullable<String>.value("x"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<String>.value("checkedAt"),
                    checkedBy: Nullable<String>.value("checkedBy"),
                    createdAt: "createdAt"
                ),
                PostV1ProductionOrdersGetResponseQualityChecksItem(
                    id: "x",
                    orderId: "x",
                    routingOperationId: Nullable<String>.value("x"),
                    name: "name",
                    result: .pending,
                    notes: Nullable<String>.value("notes"),
                    checkedAt: Nullable<String>.value("checkedAt"),
                    checkedBy: Nullable<String>.value("checkedBy"),
                    createdAt: "createdAt"
                )
            ]
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
                      "routingId": "routingId",
                      "quantity": "quantity",
                      "date": "date",
                      "status": "draft",
                      "scrappedQuantity": "scrappedQuantity",
                      "materialCost": "materialCost",
                      "laborCost": "laborCost",
                      "scrapCost": "scrapCost",
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
                    routingId: Nullable<String>.value("routingId"),
                    quantity: "quantity",
                    date: "date",
                    status: .draft,
                    scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
                    materialCost: Nullable<String>.value("materialCost"),
                    laborCost: Nullable<String>.value("laborCost"),
                    scrapCost: Nullable<String>.value("scrapCost"),
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
                      "routingId": "x",
                      "quantity": "quantity",
                      "date": "date",
                      "status": "draft",
                      "scrappedQuantity": "scrappedQuantity",
                      "materialCost": "materialCost",
                      "laborCost": "laborCost",
                      "scrapCost": "scrapCost",
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
                      "routingId": "x",
                      "quantity": "quantity",
                      "date": "date",
                      "status": "draft",
                      "scrappedQuantity": "scrappedQuantity",
                      "materialCost": "materialCost",
                      "laborCost": "laborCost",
                      "scrapCost": "scrapCost",
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
                    routingId: Nullable<String>.value("x"),
                    quantity: "quantity",
                    date: "date",
                    status: .draft,
                    scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
                    materialCost: Nullable<String>.value("materialCost"),
                    laborCost: Nullable<String>.value("laborCost"),
                    scrapCost: Nullable<String>.value("scrapCost"),
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
                    routingId: Nullable<String>.value("x"),
                    quantity: "quantity",
                    date: "date",
                    status: .draft,
                    scrappedQuantity: Nullable<String>.value("scrappedQuantity"),
                    materialCost: Nullable<String>.value("materialCost"),
                    laborCost: Nullable<String>.value("laborCost"),
                    scrapCost: Nullable<String>.value("scrapCost"),
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