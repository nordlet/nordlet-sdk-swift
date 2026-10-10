import Foundation
import Testing
import Api

@Suite("PeppolClient Wire Tests") struct PeppolClientWireTests {
    @Test func participantsLookup1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "participantId": "participantId",
                  "registered": true,
                  "smpUrl": "smpUrl",
                  "accessPointUrl": "accessPointUrl",
                  "acceptsInvoice": true,
                  "acceptsCreditNote": true,
                  "acceptsCii": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ParticipantsLookupPeppolResponse(
            participantId: "participantId",
            registered: true,
            smpUrl: Nullable<String>.value("smpUrl"),
            accessPointUrl: Nullable<String>.value("accessPointUrl"),
            acceptsInvoice: true,
            acceptsCreditNote: true,
            acceptsCii: true
        )
        let response = try await client.peppol.participantsLookup(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func participantsLookup2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "participantId": "participantId",
                  "registered": true,
                  "smpUrl": "smpUrl",
                  "accessPointUrl": "accessPointUrl",
                  "acceptsInvoice": true,
                  "acceptsCreditNote": true,
                  "acceptsCii": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ParticipantsLookupPeppolResponse(
            participantId: "participantId",
            registered: true,
            smpUrl: Nullable<String>.value("smpUrl"),
            accessPointUrl: Nullable<String>.value("accessPointUrl"),
            acceptsInvoice: true,
            acceptsCreditNote: true,
            acceptsCii: true
        )
        let response = try await client.peppol.participantsLookup(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func webhooks1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "handled": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = WebhooksPeppolResponse(
            handled: true
        )
        let response = try await client.peppol.webhooks(
            provider: "recommand",
            companyId: "companyId",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func webhooks2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "handled": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = WebhooksPeppolResponse(
            handled: true
        )
        let response = try await client.peppol.webhooks(
            provider: "recommand",
            companyId: "companyId",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}