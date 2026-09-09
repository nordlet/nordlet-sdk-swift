import Foundation
import Testing
import Api

@Suite("CalendarClient Wire Tests") struct CalendarClientWireTests {
    @Test func postV1CalendarList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "key": "key",
                      "id": "id",
                      "kind": "custom",
                      "ruleKey": "ruleKey",
                      "period": "period",
                      "title": "title",
                      "dueDate": "dueDate",
                      "notes": "notes",
                      "done": true,
                      "href": "href"
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
        let expectedResponse = PostV1CalendarListResponse(
            rows: [
                PostV1CalendarListResponseRowsItem(
                    key: "key",
                    id: Nullable<String>.value("id"),
                    kind: .custom,
                    ruleKey: Nullable<String>.value("ruleKey"),
                    period: Nullable<String>.value("period"),
                    title: "title",
                    dueDate: "dueDate",
                    notes: Nullable<String>.value("notes"),
                    done: true,
                    href: Nullable<String>.value("href")
                )
            ]
        )
        let response = try await client.calendar.postV1CalendarList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "key": "x",
                      "id": "x",
                      "kind": "custom",
                      "ruleKey": "ruleKey",
                      "period": "period",
                      "title": "title",
                      "dueDate": "dueDate",
                      "notes": "notes",
                      "done": true,
                      "href": "href"
                    },
                    {
                      "key": "x",
                      "id": "x",
                      "kind": "custom",
                      "ruleKey": "ruleKey",
                      "period": "period",
                      "title": "title",
                      "dueDate": "dueDate",
                      "notes": "notes",
                      "done": true,
                      "href": "href"
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
        let expectedResponse = PostV1CalendarListResponse(
            rows: [
                PostV1CalendarListResponseRowsItem(
                    key: "x",
                    id: Nullable<String>.value("x"),
                    kind: .custom,
                    ruleKey: Nullable<String>.value("ruleKey"),
                    period: Nullable<String>.value("period"),
                    title: "title",
                    dueDate: "dueDate",
                    notes: Nullable<String>.value("notes"),
                    done: true,
                    href: Nullable<String>.value("href")
                ),
                PostV1CalendarListResponseRowsItem(
                    key: "x",
                    id: Nullable<String>.value("x"),
                    kind: .custom,
                    ruleKey: Nullable<String>.value("ruleKey"),
                    period: Nullable<String>.value("period"),
                    title: "title",
                    dueDate: "dueDate",
                    notes: Nullable<String>.value("notes"),
                    done: true,
                    href: Nullable<String>.value("href")
                )
            ]
        )
        let response = try await client.calendar.postV1CalendarList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "key",
                  "id": "id",
                  "kind": "custom",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "title": "title",
                  "dueDate": "dueDate",
                  "notes": "notes",
                  "done": true,
                  "href": "href"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CalendarGetResponse(
            key: "key",
            id: Nullable<String>.value("id"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: "dueDate",
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href")
        )
        let response = try await client.calendar.postV1CalendarGet(
            request: .init(key: "key"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "x",
                  "id": "x",
                  "kind": "custom",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "title": "title",
                  "dueDate": "dueDate",
                  "notes": "notes",
                  "done": true,
                  "href": "href"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CalendarGetResponse(
            key: "x",
            id: Nullable<String>.value("x"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: "dueDate",
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href")
        )
        let response = try await client.calendar.postV1CalendarGet(
            request: .init(key: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "key",
                  "id": "id",
                  "kind": "custom",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "title": "title",
                  "dueDate": "dueDate",
                  "notes": "notes",
                  "done": true,
                  "href": "href"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CalendarCreateResponse(
            key: "key",
            id: Nullable<String>.value("id"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: "dueDate",
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href")
        )
        let response = try await client.calendar.postV1CalendarCreate(
            request: .init(
                title: "title",
                dueDate: "dueDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "x",
                  "id": "x",
                  "kind": "custom",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "title": "title",
                  "dueDate": "dueDate",
                  "notes": "notes",
                  "done": true,
                  "href": "href"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CalendarCreateResponse(
            key: "x",
            id: Nullable<String>.value("x"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: "dueDate",
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href")
        )
        let response = try await client.calendar.postV1CalendarCreate(
            request: .init(
                title: "x",
                dueDate: "dueDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "key",
                  "id": "id",
                  "kind": "custom",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "title": "title",
                  "dueDate": "dueDate",
                  "notes": "notes",
                  "done": true,
                  "href": "href"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CalendarUpdateResponse(
            key: "key",
            id: Nullable<String>.value("id"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: "dueDate",
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href")
        )
        let response = try await client.calendar.postV1CalendarUpdate(
            request: .init(key: "key"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "x",
                  "id": "x",
                  "kind": "custom",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "title": "title",
                  "dueDate": "dueDate",
                  "notes": "notes",
                  "done": true,
                  "href": "href"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CalendarUpdateResponse(
            key: "x",
            id: Nullable<String>.value("x"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: "dueDate",
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href")
        )
        let response = try await client.calendar.postV1CalendarUpdate(
            request: .init(key: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "key"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CalendarDeleteResponse(
            key: "key"
        )
        let response = try await client.calendar.postV1CalendarDelete(
            request: .init(key: "key"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CalendarDeleteResponse(
            key: "x"
        )
        let response = try await client.calendar.postV1CalendarDelete(
            request: .init(key: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}