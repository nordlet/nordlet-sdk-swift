import Foundation
import Testing
import Api

@Suite("AuditClient Wire Tests") struct AuditClientWireTests {
    @Test func postV1AuditList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": 1000000,
                      "actorType": "user",
                      "actorId": "actorId",
                      "action": "action",
                      "entity": "entity",
                      "entityId": "entityId",
                      "diff": {
                        "key": "value"
                      },
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
        let expectedResponse = PostV1AuditListResponse(
            rows: [
                PostV1AuditListResponseRowsItem(
                    id: 1000000,
                    actorType: .user,
                    actorId: Nullable<String>.value("actorId"),
                    action: "action",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    diff: Nullable<JSONValue>.value(JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.audit.postV1AuditList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AuditList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": 1000000,
                      "actorType": "user",
                      "actorId": "actorId",
                      "action": "action",
                      "entity": "entity",
                      "entityId": "entityId",
                      "diff": {
                        "key": "value"
                      },
                      "createdAt": "createdAt"
                    },
                    {
                      "id": 1000000,
                      "actorType": "user",
                      "actorId": "actorId",
                      "action": "action",
                      "entity": "entity",
                      "entityId": "entityId",
                      "diff": {
                        "key": "value"
                      },
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
        let expectedResponse = PostV1AuditListResponse(
            rows: [
                PostV1AuditListResponseRowsItem(
                    id: 1000000,
                    actorType: .user,
                    actorId: Nullable<String>.value("actorId"),
                    action: "action",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    diff: Nullable<JSONValue>.value(JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )),
                    createdAt: "createdAt"
                ),
                PostV1AuditListResponseRowsItem(
                    id: 1000000,
                    actorType: .user,
                    actorId: Nullable<String>.value("actorId"),
                    action: "action",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    diff: Nullable<JSONValue>.value(JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    )),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.audit.postV1AuditList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}