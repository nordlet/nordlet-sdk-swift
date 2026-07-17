import Foundation
import Testing
import Api

@Suite("FilesClient Wire Tests") struct FilesClientWireTests {
    @Test func postV1FilesUpload1() async throws -> Void {
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
        let expectedResponse = PostV1FilesUploadResponse(
            id: "id",
            entity: "entity",
            entityId: "entityId",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            sha256: "sha256",
            createdAt: "createdAt"
        )
        let response = try await client.files.postV1FilesUpload(
            request: .init(
                entity: "entity",
                entityId: "entityId",
                fileName: "fileName",
                mimeType: "mimeType",
                content: "content"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FilesUpload2() async throws -> Void {
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
        let expectedResponse = PostV1FilesUploadResponse(
            id: "x",
            entity: "entity",
            entityId: "entityId",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            sha256: "sha256",
            createdAt: "createdAt"
        )
        let response = try await client.files.postV1FilesUpload(
            request: .init(
                entity: "x",
                entityId: "x",
                fileName: "x",
                mimeType: "x",
                content: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FilesGet1() async throws -> Void {
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
                  "createdAt": "createdAt",
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
        let expectedResponse = PostV1FilesGetResponse(
            id: "id",
            entity: "entity",
            entityId: "entityId",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            sha256: "sha256",
            createdAt: "createdAt",
            content: "content"
        )
        let response = try await client.files.postV1FilesGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FilesGet2() async throws -> Void {
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
                  "createdAt": "createdAt",
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
        let expectedResponse = PostV1FilesGetResponse(
            id: "x",
            entity: "entity",
            entityId: "entityId",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            sha256: "sha256",
            createdAt: "createdAt",
            content: "content"
        )
        let response = try await client.files.postV1FilesGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FilesList1() async throws -> Void {
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
        let expectedResponse = PostV1FilesListResponse(
            rows: [
                PostV1FilesListResponseRowsItem(
                    id: "id",
                    entity: "entity",
                    entityId: "entityId",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.files.postV1FilesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FilesList2() async throws -> Void {
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
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "entity": "entity",
                      "entityId": "entityId",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "sha256": "sha256",
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
        let expectedResponse = PostV1FilesListResponse(
            rows: [
                PostV1FilesListResponseRowsItem(
                    id: "x",
                    entity: "entity",
                    entityId: "entityId",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    createdAt: "createdAt"
                ),
                PostV1FilesListResponseRowsItem(
                    id: "x",
                    entity: "entity",
                    entityId: "entityId",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.files.postV1FilesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FilesDelete1() async throws -> Void {
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
        let expectedResponse = PostV1FilesDeleteResponse(
            deleted: true
        )
        let response = try await client.files.postV1FilesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FilesDelete2() async throws -> Void {
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
        let expectedResponse = PostV1FilesDeleteResponse(
            deleted: true
        )
        let response = try await client.files.postV1FilesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}