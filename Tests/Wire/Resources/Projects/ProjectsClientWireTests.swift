import Foundation
import Testing
import Api

@Suite("ProjectsClient Wire Tests") struct ProjectsClientWireTests {
    @Test func create1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "partnerId": "partnerId",
                  "status": "active",
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
        let expectedResponse = CreateProjectsResponse(
            id: "id",
            code: "code",
            name: "name",
            partnerId: Nullable<String>.value("partnerId"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.projects.create(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func create2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "partnerId": "x",
                  "status": "active",
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
        let expectedResponse = CreateProjectsResponse(
            id: "x",
            code: "code",
            name: "name",
            partnerId: Nullable<String>.value("x"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.projects.create(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func update1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "partnerId": "partnerId",
                  "status": "active",
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
        let expectedResponse = UpdateProjectsResponse(
            id: "id",
            code: "code",
            name: "name",
            partnerId: Nullable<String>.value("partnerId"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.projects.update(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func update2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "partnerId": "x",
                  "status": "active",
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
        let expectedResponse = UpdateProjectsResponse(
            id: "x",
            code: "code",
            name: "name",
            partnerId: Nullable<String>.value("x"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.projects.update(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func get1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "partnerId": "partnerId",
                  "status": "active",
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
        let expectedResponse = GetProjectsResponse(
            id: "id",
            code: "code",
            name: "name",
            partnerId: Nullable<String>.value("partnerId"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.projects.get(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func get2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "partnerId": "x",
                  "status": "active",
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
        let expectedResponse = GetProjectsResponse(
            id: "x",
            code: "code",
            name: "name",
            partnerId: Nullable<String>.value("x"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.projects.get(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func list1() async throws -> Void {
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
                      "partnerId": "partnerId",
                      "status": "active",
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
        let expectedResponse = ListProjectsResponse(
            rows: [
                ListProjectsResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    partnerId: Nullable<String>.value("partnerId"),
                    status: .active,
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
        let response = try await client.projects.list(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func list2() async throws -> Void {
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
                      "partnerId": "x",
                      "status": "active",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "partnerId": "x",
                      "status": "active",
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
        let expectedResponse = ListProjectsResponse(
            rows: [
                ListProjectsResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    partnerId: Nullable<String>.value("x"),
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ListProjectsResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    partnerId: Nullable<String>.value("x"),
                    status: .active,
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
        let response = try await client.projects.list(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timeEntriesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "projectId": "projectId",
                  "employeeId": "employeeId",
                  "date": "2026-07-01",
                  "hours": "hours",
                  "description": "description",
                  "billable": true,
                  "hourlyRate": "hourlyRate",
                  "billedInvoiceId": "billedInvoiceId",
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
        let expectedResponse = TimeEntriesCreateProjectsResponse(
            id: "id",
            projectId: "projectId",
            employeeId: Nullable<String>.value("employeeId"),
            date: CalendarDate("2026-07-01")!,
            hours: "hours",
            description: Nullable<String>.value("description"),
            billable: true,
            hourlyRate: Nullable<String>.value("hourlyRate"),
            billedInvoiceId: Nullable<String>.value("billedInvoiceId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.projects.timeEntriesCreate(
            request: .init(
                projectId: "projectId",
                date: CalendarDate("2026-07-01")!,
                hours: "121.00"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timeEntriesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "projectId": "x",
                  "employeeId": "x",
                  "date": "2023-01-15",
                  "hours": "hours",
                  "description": "description",
                  "billable": true,
                  "hourlyRate": "hourlyRate",
                  "billedInvoiceId": "billedInvoiceId",
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
        let expectedResponse = TimeEntriesCreateProjectsResponse(
            id: "x",
            projectId: "x",
            employeeId: Nullable<String>.value("x"),
            date: CalendarDate("2023-01-15")!,
            hours: "hours",
            description: Nullable<String>.value("description"),
            billable: true,
            hourlyRate: Nullable<String>.value("hourlyRate"),
            billedInvoiceId: Nullable<String>.value("billedInvoiceId"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.projects.timeEntriesCreate(
            request: .init(
                projectId: "x",
                date: CalendarDate("2023-01-15")!,
                hours: "hours"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timeEntriesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "projectId": "projectId",
                  "employeeId": "employeeId",
                  "date": "2026-07-01",
                  "hours": "hours",
                  "description": "description",
                  "billable": true,
                  "hourlyRate": "hourlyRate",
                  "billedInvoiceId": "billedInvoiceId",
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
        let expectedResponse = TimeEntriesUpdateProjectsResponse(
            id: "id",
            projectId: "projectId",
            employeeId: Nullable<String>.value("employeeId"),
            date: CalendarDate("2026-07-01")!,
            hours: "hours",
            description: Nullable<String>.value("description"),
            billable: true,
            hourlyRate: Nullable<String>.value("hourlyRate"),
            billedInvoiceId: Nullable<String>.value("billedInvoiceId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.projects.timeEntriesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timeEntriesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "projectId": "x",
                  "employeeId": "x",
                  "date": "2023-01-15",
                  "hours": "hours",
                  "description": "description",
                  "billable": true,
                  "hourlyRate": "hourlyRate",
                  "billedInvoiceId": "billedInvoiceId",
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
        let expectedResponse = TimeEntriesUpdateProjectsResponse(
            id: "x",
            projectId: "x",
            employeeId: Nullable<String>.value("x"),
            date: CalendarDate("2023-01-15")!,
            hours: "hours",
            description: Nullable<String>.value("description"),
            billable: true,
            hourlyRate: Nullable<String>.value("hourlyRate"),
            billedInvoiceId: Nullable<String>.value("billedInvoiceId"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.projects.timeEntriesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timeEntriesDelete1() async throws -> Void {
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
        let expectedResponse = TimeEntriesDeleteProjectsResponse(
            id: "id"
        )
        let response = try await client.projects.timeEntriesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timeEntriesDelete2() async throws -> Void {
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
        let expectedResponse = TimeEntriesDeleteProjectsResponse(
            id: "x"
        )
        let response = try await client.projects.timeEntriesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timeEntriesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "projectId": "projectId",
                      "employeeId": "employeeId",
                      "date": "2026-07-01",
                      "hours": "hours",
                      "description": "description",
                      "billable": true,
                      "hourlyRate": "hourlyRate",
                      "billedInvoiceId": "billedInvoiceId",
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
        let expectedResponse = TimeEntriesListProjectsResponse(
            rows: [
                TimeEntriesListProjectsResponseRowsItem(
                    id: "id",
                    projectId: "projectId",
                    employeeId: Nullable<String>.value("employeeId"),
                    date: CalendarDate("2026-07-01")!,
                    hours: "hours",
                    description: Nullable<String>.value("description"),
                    billable: true,
                    hourlyRate: Nullable<String>.value("hourlyRate"),
                    billedInvoiceId: Nullable<String>.value("billedInvoiceId"),
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
        let response = try await client.projects.timeEntriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timeEntriesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "projectId": "x",
                      "employeeId": "x",
                      "date": "2023-01-15",
                      "hours": "hours",
                      "description": "description",
                      "billable": true,
                      "hourlyRate": "hourlyRate",
                      "billedInvoiceId": "billedInvoiceId",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "projectId": "x",
                      "employeeId": "x",
                      "date": "2023-01-15",
                      "hours": "hours",
                      "description": "description",
                      "billable": true,
                      "hourlyRate": "hourlyRate",
                      "billedInvoiceId": "billedInvoiceId",
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
        let expectedResponse = TimeEntriesListProjectsResponse(
            rows: [
                TimeEntriesListProjectsResponseRowsItem(
                    id: "x",
                    projectId: "x",
                    employeeId: Nullable<String>.value("x"),
                    date: CalendarDate("2023-01-15")!,
                    hours: "hours",
                    description: Nullable<String>.value("description"),
                    billable: true,
                    hourlyRate: Nullable<String>.value("hourlyRate"),
                    billedInvoiceId: Nullable<String>.value("billedInvoiceId"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                TimeEntriesListProjectsResponseRowsItem(
                    id: "x",
                    projectId: "x",
                    employeeId: Nullable<String>.value("x"),
                    date: CalendarDate("2023-01-15")!,
                    hours: "hours",
                    description: Nullable<String>.value("description"),
                    billable: true,
                    hourlyRate: Nullable<String>.value("hourlyRate"),
                    billedInvoiceId: Nullable<String>.value("billedInvoiceId"),
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
        let response = try await client.projects.timeEntriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timeEntriesBill1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "invoiceId": "invoiceId",
                  "entryCount": 1000000,
                  "hours": "hours",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TimeEntriesBillProjectsResponse(
            invoiceId: "invoiceId",
            entryCount: 1000000,
            hours: "hours",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal"
        )
        let response = try await client.projects.timeEntriesBill(
            request: .init(projectId: "projectId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timeEntriesBill2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "invoiceId": "x",
                  "entryCount": 1000000,
                  "hours": "hours",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TimeEntriesBillProjectsResponse(
            invoiceId: "x",
            entryCount: 1000000,
            hours: "hours",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal"
        )
        let response = try await client.projects.timeEntriesBill(
            request: .init(projectId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func report1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "projectId": "projectId",
                      "code": "code",
                      "name": "name",
                      "status": "active",
                      "revenue": "revenue",
                      "costs": "costs",
                      "profit": "profit",
                      "totalHours": "totalHours",
                      "billableHours": "billableHours",
                      "billedHours": "billedHours",
                      "unbilledHours": "unbilledHours",
                      "unbilledAmount": "unbilledAmount"
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
        let expectedResponse = ReportProjectsResponse(
            rows: [
                ReportProjectsResponseRowsItem(
                    projectId: "projectId",
                    code: "code",
                    name: "name",
                    status: .active,
                    revenue: "revenue",
                    costs: "costs",
                    profit: "profit",
                    totalHours: "totalHours",
                    billableHours: "billableHours",
                    billedHours: "billedHours",
                    unbilledHours: "unbilledHours",
                    unbilledAmount: "unbilledAmount"
                )
            ]
        )
        let response = try await client.projects.report(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func report2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "projectId": "x",
                      "code": "code",
                      "name": "name",
                      "status": "active",
                      "revenue": "revenue",
                      "costs": "costs",
                      "profit": "profit",
                      "totalHours": "totalHours",
                      "billableHours": "billableHours",
                      "billedHours": "billedHours",
                      "unbilledHours": "unbilledHours",
                      "unbilledAmount": "unbilledAmount"
                    },
                    {
                      "projectId": "x",
                      "code": "code",
                      "name": "name",
                      "status": "active",
                      "revenue": "revenue",
                      "costs": "costs",
                      "profit": "profit",
                      "totalHours": "totalHours",
                      "billableHours": "billableHours",
                      "billedHours": "billedHours",
                      "unbilledHours": "unbilledHours",
                      "unbilledAmount": "unbilledAmount"
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
        let expectedResponse = ReportProjectsResponse(
            rows: [
                ReportProjectsResponseRowsItem(
                    projectId: "x",
                    code: "code",
                    name: "name",
                    status: .active,
                    revenue: "revenue",
                    costs: "costs",
                    profit: "profit",
                    totalHours: "totalHours",
                    billableHours: "billableHours",
                    billedHours: "billedHours",
                    unbilledHours: "unbilledHours",
                    unbilledAmount: "unbilledAmount"
                ),
                ReportProjectsResponseRowsItem(
                    projectId: "x",
                    code: "code",
                    name: "name",
                    status: .active,
                    revenue: "revenue",
                    costs: "costs",
                    profit: "profit",
                    totalHours: "totalHours",
                    billableHours: "billableHours",
                    billedHours: "billedHours",
                    unbilledHours: "unbilledHours",
                    unbilledAmount: "unbilledAmount"
                )
            ]
        )
        let response = try await client.projects.report(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}