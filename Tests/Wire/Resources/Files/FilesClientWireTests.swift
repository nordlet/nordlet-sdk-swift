import Foundation
import Testing
import Api

@Suite("FilesClient Wire Tests") struct FilesClientWireTests {
    @Test func upload1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "entity": "entity",
                  "entityId": "entityId",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "sizeBytes": 1000000,
                  "sha256": "sha256",
                  "storageKey": "storageKey",
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
        let expectedResponse = UploadFilesResponse(
            id: "id",
            entity: "entity",
            entityId: Nullable<String>.value("entityId"),
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            sha256: "sha256",
            storageKey: "storageKey",
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.files.upload(
            request: .init(
                entity: "entity",
                fileName: "fileName",
                mimeType: "mimeType",
                content: "content"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func upload2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "entity": "entity",
                  "entityId": "entityId",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "sizeBytes": 1000000,
                  "sha256": "sha256",
                  "storageKey": "storageKey",
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
        let expectedResponse = UploadFilesResponse(
            id: "x",
            entity: "entity",
            entityId: Nullable<String>.value("entityId"),
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            sha256: "sha256",
            storageKey: "storageKey",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.files.upload(
            request: .init(
                entity: "x",
                fileName: "x",
                mimeType: "x",
                content: "x"
            ),
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
                  "entity": "entity",
                  "entityId": "entityId",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "sizeBytes": 1000000,
                  "sha256": "sha256",
                  "storageKey": "storageKey",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "content": "content"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GetFilesResponse(
            id: "id",
            entity: "entity",
            entityId: Nullable<String>.value("entityId"),
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            sha256: "sha256",
            storageKey: "storageKey",
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            content: "content"
        )
        let response = try await client.files.get(
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
                  "entity": "entity",
                  "entityId": "entityId",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "sizeBytes": 1000000,
                  "sha256": "sha256",
                  "storageKey": "storageKey",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "content": "content"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GetFilesResponse(
            id: "x",
            entity: "entity",
            entityId: Nullable<String>.value("entityId"),
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            sha256: "sha256",
            storageKey: "storageKey",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            content: "content"
        )
        let response = try await client.files.get(
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
                      "entity": "entity",
                      "entityId": "entityId",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "sha256": "sha256",
                      "storageKey": "storageKey",
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
        let expectedResponse = ListFilesResponse(
            rows: [
                ListFilesResponseRowsItem(
                    id: "id",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    storageKey: "storageKey",
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
        let response = try await client.files.list(
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
                      "entity": "entity",
                      "entityId": "entityId",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "sha256": "sha256",
                      "storageKey": "storageKey",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "entity": "entity",
                      "entityId": "entityId",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "sha256": "sha256",
                      "storageKey": "storageKey",
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
        let expectedResponse = ListFilesResponse(
            rows: [
                ListFilesResponseRowsItem(
                    id: "x",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    storageKey: "storageKey",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ListFilesResponseRowsItem(
                    id: "x",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    storageKey: "storageKey",
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
        let response = try await client.files.list(
            request: .init(),
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
        let expectedResponse = DeleteFilesResponse(
            deleted: true
        )
        let response = try await client.files.delete(
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
        let expectedResponse = DeleteFilesResponse(
            deleted: true
        )
        let response = try await client.files.delete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}