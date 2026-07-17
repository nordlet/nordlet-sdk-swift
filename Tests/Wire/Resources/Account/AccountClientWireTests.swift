import Foundation
import Testing
import Api

@Suite("AccountClient Wire Tests") struct AccountClientWireTests {
    @Test func postV1AccountLoginLinkRequest1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountLoginLinkRequestResponse(
            sent: true
        )
        let response = try await client.account.postV1AccountLoginLinkRequest(
            request: .init(email: "email"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountLoginLinkRequest2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountLoginLinkRequestResponse(
            sent: true
        )
        let response = try await client.account.postV1AccountLoginLinkRequest(
            request: .init(email: "email"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountLoginLinkConsume1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "token": "token",
                  "expiresAt": "expiresAt",
                  "user": {
                    "id": "id",
                    "email": "email",
                    "name": "name",
                    "plan": "plan"
                  },
                  "isNewUser": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountLoginLinkConsumeResponse(
            token: "token",
            expiresAt: "expiresAt",
            user: PostV1AccountLoginLinkConsumeResponseUser(
                id: "id",
                email: "email",
                name: Nullable<String>.value("name"),
                plan: "plan"
            ),
            isNewUser: true
        )
        let response = try await client.account.postV1AccountLoginLinkConsume(
            request: .init(token: "token"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountLoginLinkConsume2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "token": "token",
                  "expiresAt": "expiresAt",
                  "user": {
                    "id": "x",
                    "email": "email",
                    "name": "name",
                    "plan": "plan"
                  },
                  "isNewUser": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountLoginLinkConsumeResponse(
            token: "token",
            expiresAt: "expiresAt",
            user: PostV1AccountLoginLinkConsumeResponseUser(
                id: "x",
                email: "email",
                name: Nullable<String>.value("name"),
                plan: "plan"
            ),
            isNewUser: true
        )
        let response = try await client.account.postV1AccountLoginLinkConsume(
            request: .init(token: "strawberry"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountLogout1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "loggedOut": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountLogoutResponse(
            loggedOut: true
        )
        let response = try await client.account.postV1AccountLogout(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountLogout2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "loggedOut": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountLogoutResponse(
            loggedOut: true
        )
        let response = try await client.account.postV1AccountLogout(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountMe1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "user": {
                    "id": "id",
                    "email": "email",
                    "name": "name",
                    "locale": "locale",
                    "plan": "plan",
                    "isSuperAdmin": true
                  },
                  "locale": "locale",
                  "activeCompanyId": "activeCompanyId",
                  "role": "role",
                  "companies": [
                    {
                      "id": "id",
                      "name": "name",
                      "code": "code",
                      "vatCode": "vatCode",
                      "role": "role",
                      "isSandbox": true,
                      "status": "active",
                      "deletedAt": "deletedAt"
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
        let expectedResponse = PostV1AccountMeResponse(
            user: PostV1AccountMeResponseUser(
                id: "id",
                email: "email",
                name: Nullable<String>.value("name"),
                locale: "locale",
                plan: "plan",
                isSuperAdmin: true
            ),
            locale: "locale",
            activeCompanyId: Nullable<String>.value("activeCompanyId"),
            role: Nullable<String>.value("role"),
            companies: [
                PostV1AccountMeResponseCompaniesItem(
                    id: "id",
                    name: "name",
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    role: "role",
                    isSandbox: true,
                    status: .active,
                    deletedAt: Nullable<String>.value("deletedAt")
                )
            ]
        )
        let response = try await client.account.postV1AccountMe(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountMe2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "user": {
                    "id": "x",
                    "email": "email",
                    "name": "name",
                    "locale": "locale",
                    "plan": "plan",
                    "isSuperAdmin": true
                  },
                  "locale": "locale",
                  "activeCompanyId": "x",
                  "role": "role",
                  "companies": [
                    {
                      "id": "x",
                      "name": "name",
                      "code": "code",
                      "vatCode": "vatCode",
                      "role": "role",
                      "isSandbox": true,
                      "status": "active",
                      "deletedAt": "deletedAt"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "code": "code",
                      "vatCode": "vatCode",
                      "role": "role",
                      "isSandbox": true,
                      "status": "active",
                      "deletedAt": "deletedAt"
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
        let expectedResponse = PostV1AccountMeResponse(
            user: PostV1AccountMeResponseUser(
                id: "x",
                email: "email",
                name: Nullable<String>.value("name"),
                locale: "locale",
                plan: "plan",
                isSuperAdmin: true
            ),
            locale: "locale",
            activeCompanyId: Nullable<String>.value("x"),
            role: Nullable<String>.value("role"),
            companies: [
                PostV1AccountMeResponseCompaniesItem(
                    id: "x",
                    name: "name",
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    role: "role",
                    isSandbox: true,
                    status: .active,
                    deletedAt: Nullable<String>.value("deletedAt")
                ),
                PostV1AccountMeResponseCompaniesItem(
                    id: "x",
                    name: "name",
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    role: "role",
                    isSandbox: true,
                    status: .active,
                    deletedAt: Nullable<String>.value("deletedAt")
                )
            ]
        )
        let response = try await client.account.postV1AccountMe(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountMembersList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "userId": "userId",
                      "email": "email",
                      "name": "name",
                      "role": "role",
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1AccountMembersListResponse(
            rows: [
                PostV1AccountMembersListResponseRowsItem(
                    userId: "userId",
                    email: "email",
                    name: Nullable<String>.value("name"),
                    role: "role",
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.account.postV1AccountMembersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountMembersList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "userId": "x",
                      "email": "email",
                      "name": "name",
                      "role": "role",
                      "createdAt": "createdAt"
                    },
                    {
                      "userId": "x",
                      "email": "email",
                      "name": "name",
                      "role": "role",
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1AccountMembersListResponse(
            rows: [
                PostV1AccountMembersListResponseRowsItem(
                    userId: "x",
                    email: "email",
                    name: Nullable<String>.value("name"),
                    role: "role",
                    createdAt: "createdAt"
                ),
                PostV1AccountMembersListResponseRowsItem(
                    userId: "x",
                    email: "email",
                    name: Nullable<String>.value("name"),
                    role: "role",
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.account.postV1AccountMembersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountMembersSetRole1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "userId": "userId",
                  "role": "role"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountMembersSetRoleResponse(
            userId: "userId",
            role: "role"
        )
        let response = try await client.account.postV1AccountMembersSetRole(
            request: .init(
                userId: "userId",
                role: .admin
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountMembersSetRole2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "userId": "x",
                  "role": "role"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountMembersSetRoleResponse(
            userId: "x",
            role: "role"
        )
        let response = try await client.account.postV1AccountMembersSetRole(
            request: .init(
                userId: "x",
                role: .admin
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountMembersRemove1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "removed": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountMembersRemoveResponse(
            removed: true
        )
        let response = try await client.account.postV1AccountMembersRemove(
            request: .init(userId: "userId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountMembersRemove2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "removed": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountMembersRemoveResponse(
            removed: true
        )
        let response = try await client.account.postV1AccountMembersRemove(
            request: .init(userId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountInvitesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "email": "email",
                  "role": "role",
                  "expiresAt": "expiresAt",
                  "inviteUrl": "inviteUrl",
                  "emailSent": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountInvitesCreateResponse(
            id: "id",
            email: "email",
            role: "role",
            expiresAt: "expiresAt",
            inviteUrl: "inviteUrl",
            emailSent: true
        )
        let response = try await client.account.postV1AccountInvitesCreate(
            request: .init(
                email: "email",
                role: .admin
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountInvitesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "email": "email",
                  "role": "role",
                  "expiresAt": "expiresAt",
                  "inviteUrl": "inviteUrl",
                  "emailSent": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountInvitesCreateResponse(
            id: "x",
            email: "email",
            role: "role",
            expiresAt: "expiresAt",
            inviteUrl: "inviteUrl",
            emailSent: true
        )
        let response = try await client.account.postV1AccountInvitesCreate(
            request: .init(
                email: "email",
                role: .admin
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountInvitesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "email": "email",
                      "role": "role",
                      "expiresAt": "expiresAt",
                      "createdAt": "createdAt",
                      "expired": true
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
        let expectedResponse = PostV1AccountInvitesListResponse(
            rows: [
                PostV1AccountInvitesListResponseRowsItem(
                    id: "id",
                    email: "email",
                    role: "role",
                    expiresAt: "expiresAt",
                    createdAt: "createdAt",
                    expired: true
                )
            ]
        )
        let response = try await client.account.postV1AccountInvitesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountInvitesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "email": "email",
                      "role": "role",
                      "expiresAt": "expiresAt",
                      "createdAt": "createdAt",
                      "expired": true
                    },
                    {
                      "id": "x",
                      "email": "email",
                      "role": "role",
                      "expiresAt": "expiresAt",
                      "createdAt": "createdAt",
                      "expired": true
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
        let expectedResponse = PostV1AccountInvitesListResponse(
            rows: [
                PostV1AccountInvitesListResponseRowsItem(
                    id: "x",
                    email: "email",
                    role: "role",
                    expiresAt: "expiresAt",
                    createdAt: "createdAt",
                    expired: true
                ),
                PostV1AccountInvitesListResponseRowsItem(
                    id: "x",
                    email: "email",
                    role: "role",
                    expiresAt: "expiresAt",
                    createdAt: "createdAt",
                    expired: true
                )
            ]
        )
        let response = try await client.account.postV1AccountInvitesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountInvitesRevoke1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "revoked": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountInvitesRevokeResponse(
            revoked: true
        )
        let response = try await client.account.postV1AccountInvitesRevoke(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountInvitesRevoke2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "revoked": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountInvitesRevokeResponse(
            revoked: true
        )
        let response = try await client.account.postV1AccountInvitesRevoke(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountInvitesGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "email": "email",
                  "role": "role",
                  "companyName": "companyName",
                  "expired": true,
                  "userExists": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountInvitesGetResponse(
            email: "email",
            role: "role",
            companyName: "companyName",
            expired: true,
            userExists: true
        )
        let response = try await client.account.postV1AccountInvitesGet(
            request: .init(token: "token"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountInvitesGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "email": "email",
                  "role": "role",
                  "companyName": "companyName",
                  "expired": true,
                  "userExists": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountInvitesGetResponse(
            email: "email",
            role: "role",
            companyName: "companyName",
            expired: true,
            userExists: true
        )
        let response = try await client.account.postV1AccountInvitesGet(
            request: .init(token: "strawberry"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountInvitesAccept1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "token": "token",
                  "expiresAt": "expiresAt",
                  "user": {
                    "id": "id",
                    "email": "email",
                    "name": "name",
                    "plan": "plan"
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
        let expectedResponse = PostV1AccountInvitesAcceptResponse(
            token: "token",
            expiresAt: "expiresAt",
            user: PostV1AccountInvitesAcceptResponseUser(
                id: "id",
                email: "email",
                name: Nullable<String>.value("name"),
                plan: "plan"
            )
        )
        let response = try await client.account.postV1AccountInvitesAccept(
            request: .init(token: "token"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountInvitesAccept2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "token": "token",
                  "expiresAt": "expiresAt",
                  "user": {
                    "id": "x",
                    "email": "email",
                    "name": "name",
                    "plan": "plan"
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
        let expectedResponse = PostV1AccountInvitesAcceptResponse(
            token: "token",
            expiresAt: "expiresAt",
            user: PostV1AccountInvitesAcceptResponseUser(
                id: "x",
                email: "email",
                name: Nullable<String>.value("name"),
                plan: "plan"
            )
        )
        let response = try await client.account.postV1AccountInvitesAccept(
            request: .init(token: "strawberry"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountLocaleSet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "locale": "locale",
                  "scope": "membership"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountLocaleSetResponse(
            locale: "locale",
            scope: .membership
        )
        let response = try await client.account.postV1AccountLocaleSet(
            request: .init(locale: .lt),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountLocaleSet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "locale": "locale",
                  "scope": "membership"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountLocaleSetResponse(
            locale: "locale",
            scope: .membership
        )
        let response = try await client.account.postV1AccountLocaleSet(
            request: .init(locale: .lt),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountCompaniesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "code": "code",
                  "vatCode": "vatCode",
                  "role": "role",
                  "isSandbox": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountCompaniesCreateResponse(
            id: "id",
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            role: "role",
            isSandbox: true
        )
        let response = try await client.account.postV1AccountCompaniesCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountCompaniesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "code": "code",
                  "vatCode": "vatCode",
                  "role": "role",
                  "isSandbox": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountCompaniesCreateResponse(
            id: "x",
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            role: "role",
            isSandbox: true
        )
        let response = try await client.account.postV1AccountCompaniesCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountCompaniesSelect1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "activeCompanyId": "activeCompanyId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountCompaniesSelectResponse(
            activeCompanyId: "activeCompanyId"
        )
        let response = try await client.account.postV1AccountCompaniesSelect(
            request: .init(companyId: "companyId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountCompaniesSelect2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "activeCompanyId": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountCompaniesSelectResponse(
            activeCompanyId: "x"
        )
        let response = try await client.account.postV1AccountCompaniesSelect(
            request: .init(companyId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountCompaniesProfile1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "code": "code",
                  "vatCode": "vatCode",
                  "isVatPayer": true,
                  "isSandbox": true,
                  "countryCode": "countryCode",
                  "baseCurrency": "baseCurrency",
                  "defaultInvoiceCurrency": "defaultInvoiceCurrency",
                  "status": "active",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
                  "email": "email",
                  "phone": "phone",
                  "iban": "iban",
                  "bankName": "bankName",
                  "peppolId": "peppolId",
                  "logoFileId": "logoFileId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountCompaniesProfileResponse(
            id: "id",
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            isVatPayer: true,
            isSandbox: true,
            countryCode: "countryCode",
            baseCurrency: "baseCurrency",
            defaultInvoiceCurrency: "defaultInvoiceCurrency",
            status: .active,
            address: Nullable<PostV1AccountCompaniesProfileResponseAddress>.value(PostV1AccountCompaniesProfileResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            iban: Nullable<String>.value("iban"),
            bankName: Nullable<String>.value("bankName"),
            peppolId: Nullable<String>.value("peppolId"),
            logoFileId: Nullable<String>.value("logoFileId")
        )
        let response = try await client.account.postV1AccountCompaniesProfile(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountCompaniesProfile2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "code": "code",
                  "vatCode": "vatCode",
                  "isVatPayer": true,
                  "isSandbox": true,
                  "countryCode": "countryCode",
                  "baseCurrency": "baseCurrency",
                  "defaultInvoiceCurrency": "defaultInvoiceCurrency",
                  "status": "active",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
                  "email": "email",
                  "phone": "phone",
                  "iban": "iban",
                  "bankName": "bankName",
                  "peppolId": "peppolId",
                  "logoFileId": "logoFileId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountCompaniesProfileResponse(
            id: "x",
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            isVatPayer: true,
            isSandbox: true,
            countryCode: "countryCode",
            baseCurrency: "baseCurrency",
            defaultInvoiceCurrency: "defaultInvoiceCurrency",
            status: .active,
            address: Nullable<PostV1AccountCompaniesProfileResponseAddress>.value(PostV1AccountCompaniesProfileResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            iban: Nullable<String>.value("iban"),
            bankName: Nullable<String>.value("bankName"),
            peppolId: Nullable<String>.value("peppolId"),
            logoFileId: Nullable<String>.value("logoFileId")
        )
        let response = try await client.account.postV1AccountCompaniesProfile(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountCompaniesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "code": "code",
                  "vatCode": "vatCode",
                  "isVatPayer": true,
                  "isSandbox": true,
                  "countryCode": "countryCode",
                  "baseCurrency": "baseCurrency",
                  "defaultInvoiceCurrency": "defaultInvoiceCurrency",
                  "status": "active",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
                  "email": "email",
                  "phone": "phone",
                  "iban": "iban",
                  "bankName": "bankName",
                  "peppolId": "peppolId",
                  "logoFileId": "logoFileId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountCompaniesUpdateResponse(
            id: "id",
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            isVatPayer: true,
            isSandbox: true,
            countryCode: "countryCode",
            baseCurrency: "baseCurrency",
            defaultInvoiceCurrency: "defaultInvoiceCurrency",
            status: .active,
            address: Nullable<PostV1AccountCompaniesUpdateResponseAddress>.value(PostV1AccountCompaniesUpdateResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            iban: Nullable<String>.value("iban"),
            bankName: Nullable<String>.value("bankName"),
            peppolId: Nullable<String>.value("peppolId"),
            logoFileId: Nullable<String>.value("logoFileId")
        )
        let response = try await client.account.postV1AccountCompaniesUpdate(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountCompaniesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "code": "code",
                  "vatCode": "vatCode",
                  "isVatPayer": true,
                  "isSandbox": true,
                  "countryCode": "countryCode",
                  "baseCurrency": "baseCurrency",
                  "defaultInvoiceCurrency": "defaultInvoiceCurrency",
                  "status": "active",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
                  "email": "email",
                  "phone": "phone",
                  "iban": "iban",
                  "bankName": "bankName",
                  "peppolId": "peppolId",
                  "logoFileId": "logoFileId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountCompaniesUpdateResponse(
            id: "x",
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            isVatPayer: true,
            isSandbox: true,
            countryCode: "countryCode",
            baseCurrency: "baseCurrency",
            defaultInvoiceCurrency: "defaultInvoiceCurrency",
            status: .active,
            address: Nullable<PostV1AccountCompaniesUpdateResponseAddress>.value(PostV1AccountCompaniesUpdateResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            iban: Nullable<String>.value("iban"),
            bankName: Nullable<String>.value("bankName"),
            peppolId: Nullable<String>.value("peppolId"),
            logoFileId: Nullable<String>.value("logoFileId")
        )
        let response = try await client.account.postV1AccountCompaniesUpdate(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountCompaniesArchive1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "status": "status"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountCompaniesArchiveResponse(
            id: "id",
            status: "status"
        )
        let response = try await client.account.postV1AccountCompaniesArchive(
            request: .init(companyId: "companyId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountCompaniesArchive2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "status": "status"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountCompaniesArchiveResponse(
            id: "x",
            status: "status"
        )
        let response = try await client.account.postV1AccountCompaniesArchive(
            request: .init(companyId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountCompaniesDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "status": "status",
                  "purgeAfter": "purgeAfter"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountCompaniesDeleteResponse(
            id: "id",
            status: "status",
            purgeAfter: "purgeAfter"
        )
        let response = try await client.account.postV1AccountCompaniesDelete(
            request: .init(companyId: "companyId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountCompaniesDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "status": "status",
                  "purgeAfter": "purgeAfter"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountCompaniesDeleteResponse(
            id: "x",
            status: "status",
            purgeAfter: "purgeAfter"
        )
        let response = try await client.account.postV1AccountCompaniesDelete(
            request: .init(companyId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountCompaniesActivate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "status": "status"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountCompaniesActivateResponse(
            id: "id",
            status: "status"
        )
        let response = try await client.account.postV1AccountCompaniesActivate(
            request: .init(companyId: "companyId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountCompaniesActivate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "status": "status"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountCompaniesActivateResponse(
            id: "x",
            status: "status"
        )
        let response = try await client.account.postV1AccountCompaniesActivate(
            request: .init(companyId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountApiKeysCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "scopes": [
                    "scopes"
                  ],
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
        let expectedResponse = PostV1AccountApiKeysCreateResponse(
            id: "id",
            name: "name",
            scopes: [
                "scopes"
            ],
            key: "key"
        )
        let response = try await client.account.postV1AccountApiKeysCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountApiKeysCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "scopes": [
                    "scopes",
                    "scopes"
                  ],
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
        let expectedResponse = PostV1AccountApiKeysCreateResponse(
            id: "x",
            name: "name",
            scopes: [
                "scopes",
                "scopes"
            ],
            key: "key"
        )
        let response = try await client.account.postV1AccountApiKeysCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountApiKeysList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "name": "name",
                      "scopes": [
                        "scopes"
                      ],
                      "lastUsedAt": "lastUsedAt",
                      "revokedAt": "revokedAt",
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1AccountApiKeysListResponse(
            rows: [
                PostV1AccountApiKeysListResponseRowsItem(
                    id: "id",
                    name: "name",
                    scopes: [
                        "scopes"
                    ],
                    lastUsedAt: Nullable<String>.value("lastUsedAt"),
                    revokedAt: Nullable<String>.value("revokedAt"),
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.account.postV1AccountApiKeysList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountApiKeysList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "name": "name",
                      "scopes": [
                        "scopes",
                        "scopes"
                      ],
                      "lastUsedAt": "lastUsedAt",
                      "revokedAt": "revokedAt",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "scopes": [
                        "scopes",
                        "scopes"
                      ],
                      "lastUsedAt": "lastUsedAt",
                      "revokedAt": "revokedAt",
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1AccountApiKeysListResponse(
            rows: [
                PostV1AccountApiKeysListResponseRowsItem(
                    id: "x",
                    name: "name",
                    scopes: [
                        "scopes",
                        "scopes"
                    ],
                    lastUsedAt: Nullable<String>.value("lastUsedAt"),
                    revokedAt: Nullable<String>.value("revokedAt"),
                    createdAt: "createdAt"
                ),
                PostV1AccountApiKeysListResponseRowsItem(
                    id: "x",
                    name: "name",
                    scopes: [
                        "scopes",
                        "scopes"
                    ],
                    lastUsedAt: Nullable<String>.value("lastUsedAt"),
                    revokedAt: Nullable<String>.value("revokedAt"),
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.account.postV1AccountApiKeysList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountApiKeysRevoke1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "revoked": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountApiKeysRevokeResponse(
            revoked: true
        )
        let response = try await client.account.postV1AccountApiKeysRevoke(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AccountApiKeysRevoke2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "revoked": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AccountApiKeysRevokeResponse(
            revoked: true
        )
        let response = try await client.account.postV1AccountApiKeysRevoke(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}