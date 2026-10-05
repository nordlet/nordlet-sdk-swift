import Foundation
import Testing
import Api

@Suite("OfficersClient Wire Tests") struct OfficersClientWireTests {
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
                      "role": "director",
                      "personalCode": "personalCode",
                      "birthDate": "2026-07-01",
                      "appointedOn": "appointedOn",
                      "powerNotary": "powerNotary",
                      "resignedOn": "resignedOn",
                      "signsAccounts": true
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
        let expectedResponse = ListOfficersResponse(
            rows: [
                ListOfficersResponseRowsItem(
                    id: "id",
                    name: "name",
                    role: .director,
                    personalCode: Nullable<String>.value("personalCode"),
                    birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    appointedOn: Nullable<String>.value("appointedOn"),
                    powerNotary: Nullable<String>.value("powerNotary"),
                    resignedOn: Nullable<String>.value("resignedOn"),
                    signsAccounts: true
                )
            ]
        )
        let response = try await client.officers.list(
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
                      "role": "director",
                      "personalCode": "personalCode",
                      "birthDate": "2023-01-15",
                      "appointedOn": "appointedOn",
                      "powerNotary": "powerNotary",
                      "resignedOn": "resignedOn",
                      "signsAccounts": true
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "role": "director",
                      "personalCode": "personalCode",
                      "birthDate": "2023-01-15",
                      "appointedOn": "appointedOn",
                      "powerNotary": "powerNotary",
                      "resignedOn": "resignedOn",
                      "signsAccounts": true
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
        let expectedResponse = ListOfficersResponse(
            rows: [
                ListOfficersResponseRowsItem(
                    id: "x",
                    name: "name",
                    role: .director,
                    personalCode: Nullable<String>.value("personalCode"),
                    birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    appointedOn: Nullable<String>.value("appointedOn"),
                    powerNotary: Nullable<String>.value("powerNotary"),
                    resignedOn: Nullable<String>.value("resignedOn"),
                    signsAccounts: true
                ),
                ListOfficersResponseRowsItem(
                    id: "x",
                    name: "name",
                    role: .director,
                    personalCode: Nullable<String>.value("personalCode"),
                    birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    appointedOn: Nullable<String>.value("appointedOn"),
                    powerNotary: Nullable<String>.value("powerNotary"),
                    resignedOn: Nullable<String>.value("resignedOn"),
                    signsAccounts: true
                )
            ]
        )
        let response = try await client.officers.list(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func create1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "role": "director",
                  "personalCode": "personalCode",
                  "birthDate": "2026-07-01",
                  "appointedOn": "appointedOn",
                  "powerNotary": "powerNotary",
                  "resignedOn": "resignedOn",
                  "signsAccounts": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateOfficersResponse(
            id: "id",
            name: "name",
            role: .director,
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            appointedOn: Nullable<String>.value("appointedOn"),
            powerNotary: Nullable<String>.value("powerNotary"),
            resignedOn: Nullable<String>.value("resignedOn"),
            signsAccounts: true
        )
        let response = try await client.officers.create(
            request: .init(
                name: "name",
                role: .director
            ),
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
                  "role": "director",
                  "personalCode": "personalCode",
                  "birthDate": "2023-01-15",
                  "appointedOn": "appointedOn",
                  "powerNotary": "powerNotary",
                  "resignedOn": "resignedOn",
                  "signsAccounts": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateOfficersResponse(
            id: "x",
            name: "name",
            role: .director,
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            appointedOn: Nullable<String>.value("appointedOn"),
            powerNotary: Nullable<String>.value("powerNotary"),
            resignedOn: Nullable<String>.value("resignedOn"),
            signsAccounts: true
        )
        let response = try await client.officers.create(
            request: .init(
                name: "x",
                role: .director
            ),
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
                  "role": "director",
                  "personalCode": "personalCode",
                  "birthDate": "2026-07-01",
                  "appointedOn": "appointedOn",
                  "powerNotary": "powerNotary",
                  "resignedOn": "resignedOn",
                  "signsAccounts": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = UpdateOfficersResponse(
            id: "id",
            name: "name",
            role: .director,
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            appointedOn: Nullable<String>.value("appointedOn"),
            powerNotary: Nullable<String>.value("powerNotary"),
            resignedOn: Nullable<String>.value("resignedOn"),
            signsAccounts: true
        )
        let response = try await client.officers.update(
            request: .init(
                id: "id",
                name: "name",
                role: .director
            ),
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
                  "role": "director",
                  "personalCode": "personalCode",
                  "birthDate": "2023-01-15",
                  "appointedOn": "appointedOn",
                  "powerNotary": "powerNotary",
                  "resignedOn": "resignedOn",
                  "signsAccounts": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = UpdateOfficersResponse(
            id: "x",
            name: "name",
            role: .director,
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            appointedOn: Nullable<String>.value("appointedOn"),
            powerNotary: Nullable<String>.value("powerNotary"),
            resignedOn: Nullable<String>.value("resignedOn"),
            signsAccounts: true
        )
        let response = try await client.officers.update(
            request: .init(
                id: "x",
                name: "x",
                role: .director
            ),
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
        let expectedResponse = DeleteOfficersResponse(
            id: "id"
        )
        let response = try await client.officers.delete(
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
        let expectedResponse = DeleteOfficersResponse(
            id: "x"
        )
        let response = try await client.officers.delete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}