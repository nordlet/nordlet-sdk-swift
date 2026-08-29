import Foundation
import Testing
import Api

@Suite("ProjectsClient Wire Tests") struct ProjectsClientWireTests {
    @Test func postV1ProjectsCreate1() async throws -> Void {
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
        let expectedResponse = PostV1ProjectsCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            partnerId: Nullable<String>.value("partnerId"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.projects.postV1ProjectsCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsCreate2() async throws -> Void {
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
        let expectedResponse = PostV1ProjectsCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            partnerId: Nullable<String>.value("x"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.projects.postV1ProjectsCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsUpdate1() async throws -> Void {
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
        let expectedResponse = PostV1ProjectsUpdateResponse(
            id: "id",
            code: "code",
            name: "name",
            partnerId: Nullable<String>.value("partnerId"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.projects.postV1ProjectsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsUpdate2() async throws -> Void {
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
        let expectedResponse = PostV1ProjectsUpdateResponse(
            id: "x",
            code: "code",
            name: "name",
            partnerId: Nullable<String>.value("x"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.projects.postV1ProjectsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsGet1() async throws -> Void {
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
        let expectedResponse = PostV1ProjectsGetResponse(
            id: "id",
            code: "code",
            name: "name",
            partnerId: Nullable<String>.value("partnerId"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.projects.postV1ProjectsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsGet2() async throws -> Void {
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
        let expectedResponse = PostV1ProjectsGetResponse(
            id: "x",
            code: "code",
            name: "name",
            partnerId: Nullable<String>.value("x"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.projects.postV1ProjectsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsList1() async throws -> Void {
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
        let expectedResponse = PostV1ProjectsListResponse(
            rows: [
                PostV1ProjectsListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    partnerId: Nullable<String>.value("partnerId"),
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.projects.postV1ProjectsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsList2() async throws -> Void {
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
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "partnerId": "x",
                      "status": "active",
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
        let expectedResponse = PostV1ProjectsListResponse(
            rows: [
                PostV1ProjectsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    partnerId: Nullable<String>.value("x"),
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1ProjectsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    partnerId: Nullable<String>.value("x"),
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.projects.postV1ProjectsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsTimeEntriesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "projectId": "projectId",
                  "employeeId": "employeeId",
                  "date": "date",
                  "hours": "hours",
                  "description": "description",
                  "billable": true,
                  "hourlyRate": "hourlyRate",
                  "billedInvoiceId": "billedInvoiceId",
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
        let expectedResponse = PostV1ProjectsTimeEntriesCreateResponse(
            id: "id",
            projectId: "projectId",
            employeeId: Nullable<String>.value("employeeId"),
            date: "date",
            hours: "hours",
            description: Nullable<String>.value("description"),
            billable: true,
            hourlyRate: Nullable<String>.value("hourlyRate"),
            billedInvoiceId: Nullable<String>.value("billedInvoiceId"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.projects.postV1ProjectsTimeEntriesCreate(
            request: .init(
                projectId: "projectId",
                date: "date",
                hours: "hours"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsTimeEntriesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "projectId": "x",
                  "employeeId": "x",
                  "date": "date",
                  "hours": "hours",
                  "description": "description",
                  "billable": true,
                  "hourlyRate": "hourlyRate",
                  "billedInvoiceId": "billedInvoiceId",
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
        let expectedResponse = PostV1ProjectsTimeEntriesCreateResponse(
            id: "x",
            projectId: "x",
            employeeId: Nullable<String>.value("x"),
            date: "date",
            hours: "hours",
            description: Nullable<String>.value("description"),
            billable: true,
            hourlyRate: Nullable<String>.value("hourlyRate"),
            billedInvoiceId: Nullable<String>.value("billedInvoiceId"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.projects.postV1ProjectsTimeEntriesCreate(
            request: .init(
                projectId: "x",
                date: "date",
                hours: "hours"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsTimeEntriesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "projectId": "projectId",
                  "employeeId": "employeeId",
                  "date": "date",
                  "hours": "hours",
                  "description": "description",
                  "billable": true,
                  "hourlyRate": "hourlyRate",
                  "billedInvoiceId": "billedInvoiceId",
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
        let expectedResponse = PostV1ProjectsTimeEntriesUpdateResponse(
            id: "id",
            projectId: "projectId",
            employeeId: Nullable<String>.value("employeeId"),
            date: "date",
            hours: "hours",
            description: Nullable<String>.value("description"),
            billable: true,
            hourlyRate: Nullable<String>.value("hourlyRate"),
            billedInvoiceId: Nullable<String>.value("billedInvoiceId"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.projects.postV1ProjectsTimeEntriesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsTimeEntriesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "projectId": "x",
                  "employeeId": "x",
                  "date": "date",
                  "hours": "hours",
                  "description": "description",
                  "billable": true,
                  "hourlyRate": "hourlyRate",
                  "billedInvoiceId": "billedInvoiceId",
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
        let expectedResponse = PostV1ProjectsTimeEntriesUpdateResponse(
            id: "x",
            projectId: "x",
            employeeId: Nullable<String>.value("x"),
            date: "date",
            hours: "hours",
            description: Nullable<String>.value("description"),
            billable: true,
            hourlyRate: Nullable<String>.value("hourlyRate"),
            billedInvoiceId: Nullable<String>.value("billedInvoiceId"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.projects.postV1ProjectsTimeEntriesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsTimeEntriesDelete1() async throws -> Void {
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
        let expectedResponse = PostV1ProjectsTimeEntriesDeleteResponse(
            id: "id"
        )
        let response = try await client.projects.postV1ProjectsTimeEntriesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsTimeEntriesDelete2() async throws -> Void {
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
        let expectedResponse = PostV1ProjectsTimeEntriesDeleteResponse(
            id: "x"
        )
        let response = try await client.projects.postV1ProjectsTimeEntriesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsTimeEntriesList1() async throws -> Void {
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
                      "date": "date",
                      "hours": "hours",
                      "description": "description",
                      "billable": true,
                      "hourlyRate": "hourlyRate",
                      "billedInvoiceId": "billedInvoiceId",
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
        let expectedResponse = PostV1ProjectsTimeEntriesListResponse(
            rows: [
                PostV1ProjectsTimeEntriesListResponseRowsItem(
                    id: "id",
                    projectId: "projectId",
                    employeeId: Nullable<String>.value("employeeId"),
                    date: "date",
                    hours: "hours",
                    description: Nullable<String>.value("description"),
                    billable: true,
                    hourlyRate: Nullable<String>.value("hourlyRate"),
                    billedInvoiceId: Nullable<String>.value("billedInvoiceId"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.projects.postV1ProjectsTimeEntriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsTimeEntriesList2() async throws -> Void {
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
                      "date": "date",
                      "hours": "hours",
                      "description": "description",
                      "billable": true,
                      "hourlyRate": "hourlyRate",
                      "billedInvoiceId": "billedInvoiceId",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "projectId": "x",
                      "employeeId": "x",
                      "date": "date",
                      "hours": "hours",
                      "description": "description",
                      "billable": true,
                      "hourlyRate": "hourlyRate",
                      "billedInvoiceId": "billedInvoiceId",
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
        let expectedResponse = PostV1ProjectsTimeEntriesListResponse(
            rows: [
                PostV1ProjectsTimeEntriesListResponseRowsItem(
                    id: "x",
                    projectId: "x",
                    employeeId: Nullable<String>.value("x"),
                    date: "date",
                    hours: "hours",
                    description: Nullable<String>.value("description"),
                    billable: true,
                    hourlyRate: Nullable<String>.value("hourlyRate"),
                    billedInvoiceId: Nullable<String>.value("billedInvoiceId"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1ProjectsTimeEntriesListResponseRowsItem(
                    id: "x",
                    projectId: "x",
                    employeeId: Nullable<String>.value("x"),
                    date: "date",
                    hours: "hours",
                    description: Nullable<String>.value("description"),
                    billable: true,
                    hourlyRate: Nullable<String>.value("hourlyRate"),
                    billedInvoiceId: Nullable<String>.value("billedInvoiceId"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.projects.postV1ProjectsTimeEntriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsTimeEntriesBill1() async throws -> Void {
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
        let expectedResponse = PostV1ProjectsTimeEntriesBillResponse(
            invoiceId: "invoiceId",
            entryCount: 1000000,
            hours: "hours",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal"
        )
        let response = try await client.projects.postV1ProjectsTimeEntriesBill(
            request: .init(projectId: "projectId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsTimeEntriesBill2() async throws -> Void {
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
        let expectedResponse = PostV1ProjectsTimeEntriesBillResponse(
            invoiceId: "x",
            entryCount: 1000000,
            hours: "hours",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal"
        )
        let response = try await client.projects.postV1ProjectsTimeEntriesBill(
            request: .init(projectId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsReport1() async throws -> Void {
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
        let expectedResponse = PostV1ProjectsReportResponse(
            rows: [
                PostV1ProjectsReportResponseRowsItem(
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
        let response = try await client.projects.postV1ProjectsReport(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ProjectsReport2() async throws -> Void {
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
        let expectedResponse = PostV1ProjectsReportResponse(
            rows: [
                PostV1ProjectsReportResponseRowsItem(
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
                PostV1ProjectsReportResponseRowsItem(
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
        let response = try await client.projects.postV1ProjectsReport(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}