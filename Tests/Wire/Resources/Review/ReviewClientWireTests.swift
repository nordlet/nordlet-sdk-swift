import Foundation
import Testing
import Api

@Suite("ReviewClient Wire Tests") struct ReviewClientWireTests {
    @Test func queueList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "kind": "draft_warning",
                      "id": "id",
                      "message": "message",
                      "fix": "fix",
                      "code": "code"
                    }
                  ],
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
        let expectedResponse = QueueListReviewResponse(
            items: [
                QueueListReviewResponseItemsItem(
                    kind: .draftWarning,
                    id: "id",
                    message: "message",
                    fix: "fix",
                    code: Optional("code")
                )
            ],
            total: 1000000
        )
        let response = try await client.review.queueList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func queueList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "kind": "draft_warning",
                      "id": "id",
                      "message": "message",
                      "fix": "fix",
                      "code": "code"
                    },
                    {
                      "kind": "draft_warning",
                      "id": "id",
                      "message": "message",
                      "fix": "fix",
                      "code": "code"
                    }
                  ],
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
        let expectedResponse = QueueListReviewResponse(
            items: [
                QueueListReviewResponseItemsItem(
                    kind: .draftWarning,
                    id: "id",
                    message: "message",
                    fix: "fix",
                    code: Optional("code")
                ),
                QueueListReviewResponseItemsItem(
                    kind: .draftWarning,
                    id: "id",
                    message: "message",
                    fix: "fix",
                    code: Optional("code")
                )
            ],
            total: 1000000
        )
        let response = try await client.review.queueList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}