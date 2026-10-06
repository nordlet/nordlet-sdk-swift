import Foundation
import Testing
import Api

@Suite("AuditClient Wire Tests") struct AuditClientWireTests {
    @Test func list1() async throws -> Void {
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
        let expectedResponse = ListAuditResponse(
            rows: [
                ListAuditResponseRowsItem(
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
        let response = try await client.audit.list(
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
                      "id": 1000000,
                      "actorType": "user",
                      "actorId": "actorId",
                      "action": "action",
                      "entity": "entity",
                      "entityId": "entityId",
                      "diff": {
                        "key": "value"
                      },
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = ListAuditResponse(
            rows: [
                ListAuditResponseRowsItem(
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
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ListAuditResponseRowsItem(
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
        let response = try await client.audit.list(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}