import Foundation
import Testing
import Api

@Suite("LeadsClient Wire Tests") struct LeadsClientWireTests {
    @Test func create1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "contactName": "contactName",
                  "email": "email",
                  "phone": "phone",
                  "website": "website",
                  "countryCode": "countryCode",
                  "sourceId": "sourceId",
                  "sourceName": "sourceName",
                  "typeId": "typeId",
                  "typeName": "typeName",
                  "status": "new",
                  "estimatedValue": "estimatedValue",
                  "currency": "currency",
                  "description": "description",
                  "assignedUserId": "assignedUserId",
                  "partnerId": "partnerId",
                  "convertedAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = CreateLeadsResponse(
            id: "id",
            name: "name",
            contactName: Nullable<String>.value("contactName"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            website: Nullable<String>.value("website"),
            countryCode: Nullable<String>.value("countryCode"),
            sourceId: Nullable<String>.value("sourceId"),
            sourceName: Nullable<String>.value("sourceName"),
            typeId: Nullable<String>.value("typeId"),
            typeName: Nullable<String>.value("typeName"),
            status: .new,
            estimatedValue: Nullable<String>.value("estimatedValue"),
            currency: "currency",
            description: Nullable<String>.value("description"),
            assignedUserId: Nullable<String>.value("assignedUserId"),
            partnerId: Nullable<String>.value("partnerId"),
            convertedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.leads.create(
            request: .init(name: "name"),
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
                  "name": "name",
                  "contactName": "contactName",
                  "email": "email",
                  "phone": "phone",
                  "website": "website",
                  "countryCode": "countryCode",
                  "sourceId": "x",
                  "sourceName": "sourceName",
                  "typeId": "x",
                  "typeName": "typeName",
                  "status": "new",
                  "estimatedValue": "estimatedValue",
                  "currency": "currency",
                  "description": "description",
                  "assignedUserId": "x",
                  "partnerId": "x",
                  "convertedAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = CreateLeadsResponse(
            id: "x",
            name: "name",
            contactName: Nullable<String>.value("contactName"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            website: Nullable<String>.value("website"),
            countryCode: Nullable<String>.value("countryCode"),
            sourceId: Nullable<String>.value("x"),
            sourceName: Nullable<String>.value("sourceName"),
            typeId: Nullable<String>.value("x"),
            typeName: Nullable<String>.value("typeName"),
            status: .new,
            estimatedValue: Nullable<String>.value("estimatedValue"),
            currency: "currency",
            description: Nullable<String>.value("description"),
            assignedUserId: Nullable<String>.value("x"),
            partnerId: Nullable<String>.value("x"),
            convertedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.leads.create(
            request: .init(name: "x"),
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
                  "name": "name",
                  "contactName": "contactName",
                  "email": "email",
                  "phone": "phone",
                  "website": "website",
                  "countryCode": "countryCode",
                  "sourceId": "sourceId",
                  "sourceName": "sourceName",
                  "typeId": "typeId",
                  "typeName": "typeName",
                  "status": "new",
                  "estimatedValue": "estimatedValue",
                  "currency": "currency",
                  "description": "description",
                  "assignedUserId": "assignedUserId",
                  "partnerId": "partnerId",
                  "convertedAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = GetLeadsResponse(
            id: "id",
            name: "name",
            contactName: Nullable<String>.value("contactName"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            website: Nullable<String>.value("website"),
            countryCode: Nullable<String>.value("countryCode"),
            sourceId: Nullable<String>.value("sourceId"),
            sourceName: Nullable<String>.value("sourceName"),
            typeId: Nullable<String>.value("typeId"),
            typeName: Nullable<String>.value("typeName"),
            status: .new,
            estimatedValue: Nullable<String>.value("estimatedValue"),
            currency: "currency",
            description: Nullable<String>.value("description"),
            assignedUserId: Nullable<String>.value("assignedUserId"),
            partnerId: Nullable<String>.value("partnerId"),
            convertedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.leads.get(
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
                  "name": "name",
                  "contactName": "contactName",
                  "email": "email",
                  "phone": "phone",
                  "website": "website",
                  "countryCode": "countryCode",
                  "sourceId": "x",
                  "sourceName": "sourceName",
                  "typeId": "x",
                  "typeName": "typeName",
                  "status": "new",
                  "estimatedValue": "estimatedValue",
                  "currency": "currency",
                  "description": "description",
                  "assignedUserId": "x",
                  "partnerId": "x",
                  "convertedAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = GetLeadsResponse(
            id: "x",
            name: "name",
            contactName: Nullable<String>.value("contactName"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            website: Nullable<String>.value("website"),
            countryCode: Nullable<String>.value("countryCode"),
            sourceId: Nullable<String>.value("x"),
            sourceName: Nullable<String>.value("sourceName"),
            typeId: Nullable<String>.value("x"),
            typeName: Nullable<String>.value("typeName"),
            status: .new,
            estimatedValue: Nullable<String>.value("estimatedValue"),
            currency: "currency",
            description: Nullable<String>.value("description"),
            assignedUserId: Nullable<String>.value("x"),
            partnerId: Nullable<String>.value("x"),
            convertedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.leads.get(
            request: .init(id: "x"),
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
                  "name": "name",
                  "contactName": "contactName",
                  "email": "email",
                  "phone": "phone",
                  "website": "website",
                  "countryCode": "countryCode",
                  "sourceId": "sourceId",
                  "sourceName": "sourceName",
                  "typeId": "typeId",
                  "typeName": "typeName",
                  "status": "new",
                  "estimatedValue": "estimatedValue",
                  "currency": "currency",
                  "description": "description",
                  "assignedUserId": "assignedUserId",
                  "partnerId": "partnerId",
                  "convertedAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = UpdateLeadsResponse(
            id: "id",
            name: "name",
            contactName: Nullable<String>.value("contactName"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            website: Nullable<String>.value("website"),
            countryCode: Nullable<String>.value("countryCode"),
            sourceId: Nullable<String>.value("sourceId"),
            sourceName: Nullable<String>.value("sourceName"),
            typeId: Nullable<String>.value("typeId"),
            typeName: Nullable<String>.value("typeName"),
            status: .new,
            estimatedValue: Nullable<String>.value("estimatedValue"),
            currency: "currency",
            description: Nullable<String>.value("description"),
            assignedUserId: Nullable<String>.value("assignedUserId"),
            partnerId: Nullable<String>.value("partnerId"),
            convertedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.leads.update(
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
                  "name": "name",
                  "contactName": "contactName",
                  "email": "email",
                  "phone": "phone",
                  "website": "website",
                  "countryCode": "countryCode",
                  "sourceId": "x",
                  "sourceName": "sourceName",
                  "typeId": "x",
                  "typeName": "typeName",
                  "status": "new",
                  "estimatedValue": "estimatedValue",
                  "currency": "currency",
                  "description": "description",
                  "assignedUserId": "x",
                  "partnerId": "x",
                  "convertedAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = UpdateLeadsResponse(
            id: "x",
            name: "name",
            contactName: Nullable<String>.value("contactName"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            website: Nullable<String>.value("website"),
            countryCode: Nullable<String>.value("countryCode"),
            sourceId: Nullable<String>.value("x"),
            sourceName: Nullable<String>.value("sourceName"),
            typeId: Nullable<String>.value("x"),
            typeName: Nullable<String>.value("typeName"),
            status: .new,
            estimatedValue: Nullable<String>.value("estimatedValue"),
            currency: "currency",
            description: Nullable<String>.value("description"),
            assignedUserId: Nullable<String>.value("x"),
            partnerId: Nullable<String>.value("x"),
            convertedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.leads.update(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func delete1() async throws -> Void {
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
        let expectedResponse = DeleteLeadsResponse(
            id: "id"
        )
        let response = try await client.leads.delete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func delete2() async throws -> Void {
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
        let expectedResponse = DeleteLeadsResponse(
            id: "x"
        )
        let response = try await client.leads.delete(
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
                      "name": "name",
                      "contactName": "contactName",
                      "email": "email",
                      "phone": "phone",
                      "website": "website",
                      "countryCode": "countryCode",
                      "sourceId": "sourceId",
                      "sourceName": "sourceName",
                      "typeId": "typeId",
                      "typeName": "typeName",
                      "status": "new",
                      "estimatedValue": "estimatedValue",
                      "currency": "currency",
                      "description": "description",
                      "assignedUserId": "assignedUserId",
                      "partnerId": "partnerId",
                      "convertedAt": "2026-07-01T09:30:00Z",
                      "createdAt": "2026-07-01T09:30:00Z",
                      "updatedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = ListLeadsResponse(
            rows: [
                ListLeadsResponseRowsItem(
                    id: "id",
                    name: "name",
                    contactName: Nullable<String>.value("contactName"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    website: Nullable<String>.value("website"),
                    countryCode: Nullable<String>.value("countryCode"),
                    sourceId: Nullable<String>.value("sourceId"),
                    sourceName: Nullable<String>.value("sourceName"),
                    typeId: Nullable<String>.value("typeId"),
                    typeName: Nullable<String>.value("typeName"),
                    status: .new,
                    estimatedValue: Nullable<String>.value("estimatedValue"),
                    currency: "currency",
                    description: Nullable<String>.value("description"),
                    assignedUserId: Nullable<String>.value("assignedUserId"),
                    partnerId: Nullable<String>.value("partnerId"),
                    convertedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
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
        let response = try await client.leads.list(
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
                      "name": "name",
                      "contactName": "contactName",
                      "email": "email",
                      "phone": "phone",
                      "website": "website",
                      "countryCode": "countryCode",
                      "sourceId": "x",
                      "sourceName": "sourceName",
                      "typeId": "x",
                      "typeName": "typeName",
                      "status": "new",
                      "estimatedValue": "estimatedValue",
                      "currency": "currency",
                      "description": "description",
                      "assignedUserId": "x",
                      "partnerId": "x",
                      "convertedAt": "2024-01-15T09:30:00Z",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "contactName": "contactName",
                      "email": "email",
                      "phone": "phone",
                      "website": "website",
                      "countryCode": "countryCode",
                      "sourceId": "x",
                      "sourceName": "sourceName",
                      "typeId": "x",
                      "typeName": "typeName",
                      "status": "new",
                      "estimatedValue": "estimatedValue",
                      "currency": "currency",
                      "description": "description",
                      "assignedUserId": "x",
                      "partnerId": "x",
                      "convertedAt": "2024-01-15T09:30:00Z",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = ListLeadsResponse(
            rows: [
                ListLeadsResponseRowsItem(
                    id: "x",
                    name: "name",
                    contactName: Nullable<String>.value("contactName"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    website: Nullable<String>.value("website"),
                    countryCode: Nullable<String>.value("countryCode"),
                    sourceId: Nullable<String>.value("x"),
                    sourceName: Nullable<String>.value("sourceName"),
                    typeId: Nullable<String>.value("x"),
                    typeName: Nullable<String>.value("typeName"),
                    status: .new,
                    estimatedValue: Nullable<String>.value("estimatedValue"),
                    currency: "currency",
                    description: Nullable<String>.value("description"),
                    assignedUserId: Nullable<String>.value("x"),
                    partnerId: Nullable<String>.value("x"),
                    convertedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ListLeadsResponseRowsItem(
                    id: "x",
                    name: "name",
                    contactName: Nullable<String>.value("contactName"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    website: Nullable<String>.value("website"),
                    countryCode: Nullable<String>.value("countryCode"),
                    sourceId: Nullable<String>.value("x"),
                    sourceName: Nullable<String>.value("sourceName"),
                    typeId: Nullable<String>.value("x"),
                    typeName: Nullable<String>.value("typeName"),
                    status: .new,
                    estimatedValue: Nullable<String>.value("estimatedValue"),
                    currency: "currency",
                    description: Nullable<String>.value("description"),
                    assignedUserId: Nullable<String>.value("x"),
                    partnerId: Nullable<String>.value("x"),
                    convertedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
        let response = try await client.leads.list(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func notesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "leadId": "leadId",
                  "body": "body",
                  "authorId": "authorId",
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
        let expectedResponse = NotesCreateLeadsResponse(
            id: "id",
            leadId: "leadId",
            body: "body",
            authorId: Nullable<String>.value("authorId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.leads.notesCreate(
            request: .init(
                leadId: "leadId",
                body: "body"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func notesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "leadId": "x",
                  "body": "body",
                  "authorId": "authorId",
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
        let expectedResponse = NotesCreateLeadsResponse(
            id: "x",
            leadId: "x",
            body: "body",
            authorId: Nullable<String>.value("authorId"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.leads.notesCreate(
            request: .init(
                leadId: "x",
                body: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func notesDelete1() async throws -> Void {
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
        let expectedResponse = NotesDeleteLeadsResponse(
            id: "id"
        )
        let response = try await client.leads.notesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func notesDelete2() async throws -> Void {
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
        let expectedResponse = NotesDeleteLeadsResponse(
            id: "x"
        )
        let response = try await client.leads.notesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func notesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "leadId": "leadId",
                      "body": "body",
                      "authorId": "authorId",
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
        let expectedResponse = NotesListLeadsResponse(
            rows: [
                NotesListLeadsResponseRowsItem(
                    id: "id",
                    leadId: "leadId",
                    body: "body",
                    authorId: Nullable<String>.value("authorId"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.leads.notesList(
            request: .init(leadId: "leadId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func notesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "leadId": "x",
                      "body": "body",
                      "authorId": "authorId",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "leadId": "x",
                      "body": "body",
                      "authorId": "authorId",
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
        let expectedResponse = NotesListLeadsResponse(
            rows: [
                NotesListLeadsResponseRowsItem(
                    id: "x",
                    leadId: "x",
                    body: "body",
                    authorId: Nullable<String>.value("authorId"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                NotesListLeadsResponseRowsItem(
                    id: "x",
                    leadId: "x",
                    body: "body",
                    authorId: Nullable<String>.value("authorId"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.leads.notesList(
            request: .init(leadId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func filesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
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
        let expectedResponse = FilesListLeadsResponse(
            rows: [
                FilesListLeadsResponseRowsItem(
                    id: "id",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.leads.filesList(
            request: .init(leadId: "leadId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func filesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
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
        let expectedResponse = FilesListLeadsResponse(
            rows: [
                FilesListLeadsResponseRowsItem(
                    id: "x",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                FilesListLeadsResponseRowsItem(
                    id: "x",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.leads.filesList(
            request: .init(leadId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sourcesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
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
        let expectedResponse = SourcesCreateLeadsResponse(
            id: "id",
            name: "name",
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.leads.sourcesCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sourcesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
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
        let expectedResponse = SourcesCreateLeadsResponse(
            id: "x",
            name: "name",
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.leads.sourcesCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sourcesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
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
        let expectedResponse = SourcesUpdateLeadsResponse(
            id: "id",
            name: "name",
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.leads.sourcesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sourcesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
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
        let expectedResponse = SourcesUpdateLeadsResponse(
            id: "x",
            name: "name",
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.leads.sourcesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sourcesDelete1() async throws -> Void {
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
        let expectedResponse = SourcesDeleteLeadsResponse(
            id: "id"
        )
        let response = try await client.leads.sourcesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sourcesDelete2() async throws -> Void {
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
        let expectedResponse = SourcesDeleteLeadsResponse(
            id: "x"
        )
        let response = try await client.leads.sourcesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sourcesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "name": "name",
                      "isActive": true,
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
        let expectedResponse = SourcesListLeadsResponse(
            rows: [
                SourcesListLeadsResponseRowsItem(
                    id: "id",
                    name: "name",
                    isActive: true,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.leads.sourcesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sourcesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "name": "name",
                      "isActive": true,
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "isActive": true,
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
        let expectedResponse = SourcesListLeadsResponse(
            rows: [
                SourcesListLeadsResponseRowsItem(
                    id: "x",
                    name: "name",
                    isActive: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                SourcesListLeadsResponseRowsItem(
                    id: "x",
                    name: "name",
                    isActive: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.leads.sourcesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sourcesOptions1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "name": "name"
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
        let expectedResponse = SourcesOptionsLeadsResponse(
            rows: [
                SourcesOptionsLeadsResponseRowsItem(
                    id: "id",
                    name: "name"
                )
            ]
        )
        let response = try await client.leads.sourcesOptions(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sourcesOptions2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "name": "name"
                    },
                    {
                      "id": "x",
                      "name": "name"
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
        let expectedResponse = SourcesOptionsLeadsResponse(
            rows: [
                SourcesOptionsLeadsResponseRowsItem(
                    id: "x",
                    name: "name"
                ),
                SourcesOptionsLeadsResponseRowsItem(
                    id: "x",
                    name: "name"
                )
            ]
        )
        let response = try await client.leads.sourcesOptions(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
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
        let expectedResponse = TypesCreateLeadsResponse(
            id: "id",
            name: "name",
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.leads.typesCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
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
        let expectedResponse = TypesCreateLeadsResponse(
            id: "x",
            name: "name",
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.leads.typesCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
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
        let expectedResponse = TypesUpdateLeadsResponse(
            id: "id",
            name: "name",
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.leads.typesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
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
        let expectedResponse = TypesUpdateLeadsResponse(
            id: "x",
            name: "name",
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.leads.typesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typesDelete1() async throws -> Void {
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
        let expectedResponse = TypesDeleteLeadsResponse(
            id: "id"
        )
        let response = try await client.leads.typesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typesDelete2() async throws -> Void {
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
        let expectedResponse = TypesDeleteLeadsResponse(
            id: "x"
        )
        let response = try await client.leads.typesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "name": "name",
                      "isActive": true,
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
        let expectedResponse = TypesListLeadsResponse(
            rows: [
                TypesListLeadsResponseRowsItem(
                    id: "id",
                    name: "name",
                    isActive: true,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.leads.typesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "name": "name",
                      "isActive": true,
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "isActive": true,
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
        let expectedResponse = TypesListLeadsResponse(
            rows: [
                TypesListLeadsResponseRowsItem(
                    id: "x",
                    name: "name",
                    isActive: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                TypesListLeadsResponseRowsItem(
                    id: "x",
                    name: "name",
                    isActive: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.leads.typesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typesOptions1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "name": "name"
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
        let expectedResponse = TypesOptionsLeadsResponse(
            rows: [
                TypesOptionsLeadsResponseRowsItem(
                    id: "id",
                    name: "name"
                )
            ]
        )
        let response = try await client.leads.typesOptions(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typesOptions2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "name": "name"
                    },
                    {
                      "id": "x",
                      "name": "name"
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
        let expectedResponse = TypesOptionsLeadsResponse(
            rows: [
                TypesOptionsLeadsResponseRowsItem(
                    id: "x",
                    name: "name"
                ),
                TypesOptionsLeadsResponseRowsItem(
                    id: "x",
                    name: "name"
                )
            ]
        )
        let response = try await client.leads.typesOptions(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func convert1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "lead": {
                    "id": "id",
                    "name": "name",
                    "contactName": "contactName",
                    "email": "email",
                    "phone": "phone",
                    "website": "website",
                    "countryCode": "countryCode",
                    "sourceId": "sourceId",
                    "sourceName": "sourceName",
                    "typeId": "typeId",
                    "typeName": "typeName",
                    "status": "new",
                    "estimatedValue": "estimatedValue",
                    "currency": "currency",
                    "description": "description",
                    "assignedUserId": "assignedUserId",
                    "partnerId": "partnerId",
                    "convertedAt": "2026-07-01T09:30:00Z",
                    "createdAt": "2026-07-01T09:30:00Z",
                    "updatedAt": "2026-07-01T09:30:00Z"
                  },
                  "partnerId": "partnerId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ConvertLeadsResponse(
            lead: ConvertLeadsResponseLead(
                id: "id",
                name: "name",
                contactName: Nullable<String>.value("contactName"),
                email: Nullable<String>.value("email"),
                phone: Nullable<String>.value("phone"),
                website: Nullable<String>.value("website"),
                countryCode: Nullable<String>.value("countryCode"),
                sourceId: Nullable<String>.value("sourceId"),
                sourceName: Nullable<String>.value("sourceName"),
                typeId: Nullable<String>.value("typeId"),
                typeName: Nullable<String>.value("typeName"),
                status: .new,
                estimatedValue: Nullable<String>.value("estimatedValue"),
                currency: "currency",
                description: Nullable<String>.value("description"),
                assignedUserId: Nullable<String>.value("assignedUserId"),
                partnerId: Nullable<String>.value("partnerId"),
                convertedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
            ),
            partnerId: "partnerId"
        )
        let response = try await client.leads.convert(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func convert2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "lead": {
                    "id": "x",
                    "name": "name",
                    "contactName": "contactName",
                    "email": "email",
                    "phone": "phone",
                    "website": "website",
                    "countryCode": "countryCode",
                    "sourceId": "x",
                    "sourceName": "sourceName",
                    "typeId": "x",
                    "typeName": "typeName",
                    "status": "new",
                    "estimatedValue": "estimatedValue",
                    "currency": "currency",
                    "description": "description",
                    "assignedUserId": "x",
                    "partnerId": "x",
                    "convertedAt": "2024-01-15T09:30:00Z",
                    "createdAt": "2024-01-15T09:30:00Z",
                    "updatedAt": "2024-01-15T09:30:00Z"
                  },
                  "partnerId": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ConvertLeadsResponse(
            lead: ConvertLeadsResponseLead(
                id: "x",
                name: "name",
                contactName: Nullable<String>.value("contactName"),
                email: Nullable<String>.value("email"),
                phone: Nullable<String>.value("phone"),
                website: Nullable<String>.value("website"),
                countryCode: Nullable<String>.value("countryCode"),
                sourceId: Nullable<String>.value("x"),
                sourceName: Nullable<String>.value("sourceName"),
                typeId: Nullable<String>.value("x"),
                typeName: Nullable<String>.value("typeName"),
                status: .new,
                estimatedValue: Nullable<String>.value("estimatedValue"),
                currency: "currency",
                description: Nullable<String>.value("description"),
                assignedUserId: Nullable<String>.value("x"),
                partnerId: Nullable<String>.value("x"),
                convertedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ),
            partnerId: "x"
        )
        let response = try await client.leads.convert(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}