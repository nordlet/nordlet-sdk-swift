import Foundation
import Testing
import Api

@Suite("DocumentSeriesClient Wire Tests") struct DocumentSeriesClientWireTests {
    @Test func create1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "documentType": "documentType",
                  "prefix": "prefix",
                  "name": "name",
                  "label": "label",
                  "operationTypeId": "operationTypeId",
                  "numberLength": 1000000,
                  "nextNumber": 1000000,
                  "allocatedFrom": 1000000,
                  "allocatedTo": 1000000,
                  "warehouseId": "warehouseId",
                  "printSeries": true,
                  "isDefault": true,
                  "isActive": true,
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
        let expectedResponse = CreateDocumentSeriesResponse(
            id: "id",
            documentType: "documentType",
            prefix: "prefix",
            name: Nullable<String>.value("name"),
            label: Nullable<String>.value("label"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            numberLength: 1000000,
            nextNumber: 1000000,
            allocatedFrom: Nullable<Int64>.value(1000000),
            allocatedTo: Nullable<Int64>.value(1000000),
            warehouseId: Nullable<String>.value("warehouseId"),
            printSeries: true,
            isDefault: true,
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.documentSeries.create(
            request: .init(prefix: "prefix"),
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
                  "documentType": "documentType",
                  "prefix": "prefix",
                  "name": "name",
                  "label": "label",
                  "operationTypeId": "x",
                  "numberLength": 1000000,
                  "nextNumber": 1000000,
                  "allocatedFrom": 1000000,
                  "allocatedTo": 1000000,
                  "warehouseId": "x",
                  "printSeries": true,
                  "isDefault": true,
                  "isActive": true,
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
        let expectedResponse = CreateDocumentSeriesResponse(
            id: "x",
            documentType: "documentType",
            prefix: "prefix",
            name: Nullable<String>.value("name"),
            label: Nullable<String>.value("label"),
            operationTypeId: Nullable<String>.value("x"),
            numberLength: 1000000,
            nextNumber: 1000000,
            allocatedFrom: Nullable<Int64>.value(1000000),
            allocatedTo: Nullable<Int64>.value(1000000),
            warehouseId: Nullable<String>.value("x"),
            printSeries: true,
            isDefault: true,
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.documentSeries.create(
            request: .init(prefix: "x"),
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
                  "documentType": "documentType",
                  "prefix": "prefix",
                  "name": "name",
                  "label": "label",
                  "operationTypeId": "operationTypeId",
                  "numberLength": 1000000,
                  "nextNumber": 1000000,
                  "allocatedFrom": 1000000,
                  "allocatedTo": 1000000,
                  "warehouseId": "warehouseId",
                  "printSeries": true,
                  "isDefault": true,
                  "isActive": true,
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
        let expectedResponse = UpdateDocumentSeriesResponse(
            id: "id",
            documentType: "documentType",
            prefix: "prefix",
            name: Nullable<String>.value("name"),
            label: Nullable<String>.value("label"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            numberLength: 1000000,
            nextNumber: 1000000,
            allocatedFrom: Nullable<Int64>.value(1000000),
            allocatedTo: Nullable<Int64>.value(1000000),
            warehouseId: Nullable<String>.value("warehouseId"),
            printSeries: true,
            isDefault: true,
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.documentSeries.update(
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
                  "documentType": "documentType",
                  "prefix": "prefix",
                  "name": "name",
                  "label": "label",
                  "operationTypeId": "x",
                  "numberLength": 1000000,
                  "nextNumber": 1000000,
                  "allocatedFrom": 1000000,
                  "allocatedTo": 1000000,
                  "warehouseId": "x",
                  "printSeries": true,
                  "isDefault": true,
                  "isActive": true,
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
        let expectedResponse = UpdateDocumentSeriesResponse(
            id: "x",
            documentType: "documentType",
            prefix: "prefix",
            name: Nullable<String>.value("name"),
            label: Nullable<String>.value("label"),
            operationTypeId: Nullable<String>.value("x"),
            numberLength: 1000000,
            nextNumber: 1000000,
            allocatedFrom: Nullable<Int64>.value(1000000),
            allocatedTo: Nullable<Int64>.value(1000000),
            warehouseId: Nullable<String>.value("x"),
            printSeries: true,
            isDefault: true,
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.documentSeries.update(
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
                  "documentType": "documentType",
                  "prefix": "prefix",
                  "name": "name",
                  "label": "label",
                  "operationTypeId": "operationTypeId",
                  "numberLength": 1000000,
                  "nextNumber": 1000000,
                  "allocatedFrom": 1000000,
                  "allocatedTo": 1000000,
                  "warehouseId": "warehouseId",
                  "printSeries": true,
                  "isDefault": true,
                  "isActive": true,
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
        let expectedResponse = GetDocumentSeriesResponse(
            id: "id",
            documentType: "documentType",
            prefix: "prefix",
            name: Nullable<String>.value("name"),
            label: Nullable<String>.value("label"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            numberLength: 1000000,
            nextNumber: 1000000,
            allocatedFrom: Nullable<Int64>.value(1000000),
            allocatedTo: Nullable<Int64>.value(1000000),
            warehouseId: Nullable<String>.value("warehouseId"),
            printSeries: true,
            isDefault: true,
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.documentSeries.get(
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
                  "documentType": "documentType",
                  "prefix": "prefix",
                  "name": "name",
                  "label": "label",
                  "operationTypeId": "x",
                  "numberLength": 1000000,
                  "nextNumber": 1000000,
                  "allocatedFrom": 1000000,
                  "allocatedTo": 1000000,
                  "warehouseId": "x",
                  "printSeries": true,
                  "isDefault": true,
                  "isActive": true,
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
        let expectedResponse = GetDocumentSeriesResponse(
            id: "x",
            documentType: "documentType",
            prefix: "prefix",
            name: Nullable<String>.value("name"),
            label: Nullable<String>.value("label"),
            operationTypeId: Nullable<String>.value("x"),
            numberLength: 1000000,
            nextNumber: 1000000,
            allocatedFrom: Nullable<Int64>.value(1000000),
            allocatedTo: Nullable<Int64>.value(1000000),
            warehouseId: Nullable<String>.value("x"),
            printSeries: true,
            isDefault: true,
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.documentSeries.get(
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
                  "deleted": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DeleteDocumentSeriesResponse(
            deleted: true
        )
        let response = try await client.documentSeries.delete(
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
                  "deleted": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DeleteDocumentSeriesResponse(
            deleted: true
        )
        let response = try await client.documentSeries.delete(
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
                      "documentType": "documentType",
                      "prefix": "prefix",
                      "name": "name",
                      "label": "label",
                      "operationTypeId": "operationTypeId",
                      "numberLength": 1000000,
                      "nextNumber": 1000000,
                      "allocatedFrom": 1000000,
                      "allocatedTo": 1000000,
                      "warehouseId": "warehouseId",
                      "printSeries": true,
                      "isDefault": true,
                      "isActive": true,
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
        let expectedResponse = ListDocumentSeriesResponse(
            rows: [
                ListDocumentSeriesResponseRowsItem(
                    id: "id",
                    documentType: "documentType",
                    prefix: "prefix",
                    name: Nullable<String>.value("name"),
                    label: Nullable<String>.value("label"),
                    operationTypeId: Nullable<String>.value("operationTypeId"),
                    numberLength: 1000000,
                    nextNumber: 1000000,
                    allocatedFrom: Nullable<Int64>.value(1000000),
                    allocatedTo: Nullable<Int64>.value(1000000),
                    warehouseId: Nullable<String>.value("warehouseId"),
                    printSeries: true,
                    isDefault: true,
                    isActive: true,
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
        let response = try await client.documentSeries.list(
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
                      "documentType": "documentType",
                      "prefix": "prefix",
                      "name": "name",
                      "label": "label",
                      "operationTypeId": "x",
                      "numberLength": 1000000,
                      "nextNumber": 1000000,
                      "allocatedFrom": 1000000,
                      "allocatedTo": 1000000,
                      "warehouseId": "x",
                      "printSeries": true,
                      "isDefault": true,
                      "isActive": true,
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "documentType": "documentType",
                      "prefix": "prefix",
                      "name": "name",
                      "label": "label",
                      "operationTypeId": "x",
                      "numberLength": 1000000,
                      "nextNumber": 1000000,
                      "allocatedFrom": 1000000,
                      "allocatedTo": 1000000,
                      "warehouseId": "x",
                      "printSeries": true,
                      "isDefault": true,
                      "isActive": true,
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
        let expectedResponse = ListDocumentSeriesResponse(
            rows: [
                ListDocumentSeriesResponseRowsItem(
                    id: "x",
                    documentType: "documentType",
                    prefix: "prefix",
                    name: Nullable<String>.value("name"),
                    label: Nullable<String>.value("label"),
                    operationTypeId: Nullable<String>.value("x"),
                    numberLength: 1000000,
                    nextNumber: 1000000,
                    allocatedFrom: Nullable<Int64>.value(1000000),
                    allocatedTo: Nullable<Int64>.value(1000000),
                    warehouseId: Nullable<String>.value("x"),
                    printSeries: true,
                    isDefault: true,
                    isActive: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ListDocumentSeriesResponseRowsItem(
                    id: "x",
                    documentType: "documentType",
                    prefix: "prefix",
                    name: Nullable<String>.value("name"),
                    label: Nullable<String>.value("label"),
                    operationTypeId: Nullable<String>.value("x"),
                    numberLength: 1000000,
                    nextNumber: 1000000,
                    allocatedFrom: Nullable<Int64>.value(1000000),
                    allocatedTo: Nullable<Int64>.value(1000000),
                    warehouseId: Nullable<String>.value("x"),
                    printSeries: true,
                    isDefault: true,
                    isActive: true,
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
        let response = try await client.documentSeries.list(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}