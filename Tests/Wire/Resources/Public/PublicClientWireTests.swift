import Foundation
import Testing
import Api

@Suite("PublicClient Wire Tests") struct PublicClientWireTests {
    @Test func integrationRequests1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "received": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = IntegrationRequestsPublicResponse(
            received: true
        )
        let response = try await client.public.integrationRequests(
            request: .init(
                integration: "integration",
                name: "name",
                email: "email"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func integrationRequests2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "received": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = IntegrationRequestsPublicResponse(
            received: true
        )
        let response = try await client.public.integrationRequests(
            request: .init(
                integration: "x",
                name: "x",
                email: "email"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}