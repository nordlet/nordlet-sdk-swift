import Foundation
import Testing
import Api

@Suite("AccountClient Wire Tests") struct AccountClientWireTests {
    @Test func loginLinkRequest1() async throws -> Void {
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
        let expectedResponse = LoginLinkRequestAccountResponse(
            sent: true
        )
        let response = try await client.account.loginLinkRequest(
            request: .init(email: "email"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func loginLinkRequest2() async throws -> Void {
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
        let expectedResponse = LoginLinkRequestAccountResponse(
            sent: true
        )
        let response = try await client.account.loginLinkRequest(
            request: .init(email: "email"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func loginLinkConsume1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "token": "token",
                  "expiresAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = LoginLinkConsumeAccountResponse(
            token: "token",
            expiresAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            user: LoginLinkConsumeAccountResponseUser(
                id: "id",
                email: "email",
                name: Nullable<String>.value("name"),
                plan: "plan"
            ),
            isNewUser: true
        )
        let response = try await client.account.loginLinkConsume(
            request: .init(token: "token"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func loginLinkConsume2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "token": "token",
                  "expiresAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = LoginLinkConsumeAccountResponse(
            token: "token",
            expiresAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            user: LoginLinkConsumeAccountResponseUser(
                id: "x",
                email: "email",
                name: Nullable<String>.value("name"),
                plan: "plan"
            ),
            isNewUser: true
        )
        let response = try await client.account.loginLinkConsume(
            request: .init(token: "strawberry"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func logout1() async throws -> Void {
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
        let expectedResponse = LogoutAccountResponse(
            loggedOut: true
        )
        let response = try await client.account.logout(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func logout2() async throws -> Void {
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
        let expectedResponse = LogoutAccountResponse(
            loggedOut: true
        )
        let response = try await client.account.logout(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func me1() async throws -> Void {
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
                  "timeZone": "timeZone",
                  "role": "role",
                  "billing": {
                    "status": "trial",
                    "plan": "plan",
                    "balanceCents": 1000000,
                    "trialEndsAt": "2026-07-01T09:30:00Z",
                    "payerUserId": "payerUserId",
                    "payerEmail": "payerEmail",
                    "isPayer": true
                  },
                  "referralPoints": 1000000,
                  "consent": {
                    "termsVersion": "termsVersion",
                    "termsAcceptedAt": "2026-07-01T09:30:00Z",
                    "dpaVersion": "dpaVersion",
                    "dpaAcceptedAt": "2026-07-01T09:30:00Z",
                    "currentTermsVersion": "currentTermsVersion",
                    "currentDpaVersion": "currentDpaVersion",
                    "required": true
                  },
                  "companies": [
                    {
                      "id": "id",
                      "name": "name",
                      "code": "code",
                      "vatCode": "vatCode",
                      "role": "role",
                      "isSandbox": true,
                      "status": "active",
                      "deletedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = MeAccountResponse(
            user: MeAccountResponseUser(
                id: "id",
                email: "email",
                name: Nullable<String>.value("name"),
                locale: "locale",
                plan: "plan",
                isSuperAdmin: true
            ),
            locale: "locale",
            activeCompanyId: Nullable<String>.value("activeCompanyId"),
            timeZone: "timeZone",
            role: Nullable<String>.value("role"),
            billing: MeAccountResponseBilling(
                status: .trial,
                plan: "plan",
                balanceCents: 1000000,
                trialEndsAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                payerUserId: "payerUserId",
                payerEmail: "payerEmail",
                isPayer: true
            ),
            referralPoints: 1000000,
            consent: MeAccountResponseConsent(
                termsVersion: Nullable<String>.value("termsVersion"),
                termsAcceptedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                dpaVersion: Nullable<String>.value("dpaVersion"),
                dpaAcceptedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                currentTermsVersion: "currentTermsVersion",
                currentDpaVersion: "currentDpaVersion",
                required: true
            ),
            companies: [
                MeAccountResponseCompaniesItem(
                    id: "id",
                    name: "name",
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    role: "role",
                    isSandbox: true,
                    status: .active,
                    deletedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
                )
            ]
        )
        let response = try await client.account.me(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func me2() async throws -> Void {
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
                  "timeZone": "timeZone",
                  "role": "role",
                  "billing": {
                    "status": "trial",
                    "plan": "plan",
                    "balanceCents": 1000000,
                    "trialEndsAt": "2024-01-15T09:30:00Z",
                    "payerUserId": "x",
                    "payerEmail": "payerEmail",
                    "isPayer": true
                  },
                  "referralPoints": 1000000,
                  "consent": {
                    "termsVersion": "termsVersion",
                    "termsAcceptedAt": "2024-01-15T09:30:00Z",
                    "dpaVersion": "dpaVersion",
                    "dpaAcceptedAt": "2024-01-15T09:30:00Z",
                    "currentTermsVersion": "currentTermsVersion",
                    "currentDpaVersion": "currentDpaVersion",
                    "required": true
                  },
                  "companies": [
                    {
                      "id": "x",
                      "name": "name",
                      "code": "code",
                      "vatCode": "vatCode",
                      "role": "role",
                      "isSandbox": true,
                      "status": "active",
                      "deletedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "code": "code",
                      "vatCode": "vatCode",
                      "role": "role",
                      "isSandbox": true,
                      "status": "active",
                      "deletedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = MeAccountResponse(
            user: MeAccountResponseUser(
                id: "x",
                email: "email",
                name: Nullable<String>.value("name"),
                locale: "locale",
                plan: "plan",
                isSuperAdmin: true
            ),
            locale: "locale",
            activeCompanyId: Nullable<String>.value("x"),
            timeZone: "timeZone",
            role: Nullable<String>.value("role"),
            billing: MeAccountResponseBilling(
                status: .trial,
                plan: "plan",
                balanceCents: 1000000,
                trialEndsAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                payerUserId: "x",
                payerEmail: "payerEmail",
                isPayer: true
            ),
            referralPoints: 1000000,
            consent: MeAccountResponseConsent(
                termsVersion: Nullable<String>.value("termsVersion"),
                termsAcceptedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                dpaVersion: Nullable<String>.value("dpaVersion"),
                dpaAcceptedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                currentTermsVersion: "currentTermsVersion",
                currentDpaVersion: "currentDpaVersion",
                required: true
            ),
            companies: [
                MeAccountResponseCompaniesItem(
                    id: "x",
                    name: "name",
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    role: "role",
                    isSandbox: true,
                    status: .active,
                    deletedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                MeAccountResponseCompaniesItem(
                    id: "x",
                    name: "name",
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    role: "role",
                    isSandbox: true,
                    status: .active,
                    deletedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]
        )
        let response = try await client.account.me(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func membersList1() async throws -> Void {
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
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = MembersListAccountResponse(
            rows: [
                MembersListAccountResponseRowsItem(
                    userId: "userId",
                    email: "email",
                    name: Nullable<String>.value("name"),
                    role: "role",
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.account.membersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func membersList2() async throws -> Void {
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
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "userId": "x",
                      "email": "email",
                      "name": "name",
                      "role": "role",
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = MembersListAccountResponse(
            rows: [
                MembersListAccountResponseRowsItem(
                    userId: "x",
                    email: "email",
                    name: Nullable<String>.value("name"),
                    role: "role",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                MembersListAccountResponseRowsItem(
                    userId: "x",
                    email: "email",
                    name: Nullable<String>.value("name"),
                    role: "role",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.account.membersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func membersSetRole1() async throws -> Void {
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
        let expectedResponse = MembersSetRoleAccountResponse(
            userId: "userId",
            role: "role"
        )
        let response = try await client.account.membersSetRole(
            request: .init(
                userId: "userId",
                role: .admin
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func membersSetRole2() async throws -> Void {
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
        let expectedResponse = MembersSetRoleAccountResponse(
            userId: "x",
            role: "role"
        )
        let response = try await client.account.membersSetRole(
            request: .init(
                userId: "x",
                role: .admin
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func membersTransferOwnership1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ownerUserId": "ownerUserId",
                  "previousOwnerRole": "previousOwnerRole",
                  "payerUserId": "payerUserId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = MembersTransferOwnershipAccountResponse(
            ownerUserId: "ownerUserId",
            previousOwnerRole: "previousOwnerRole",
            payerUserId: Nullable<String>.value("payerUserId")
        )
        let response = try await client.account.membersTransferOwnership(
            request: .init(userId: "userId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func membersTransferOwnership2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ownerUserId": "x",
                  "previousOwnerRole": "previousOwnerRole",
                  "payerUserId": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = MembersTransferOwnershipAccountResponse(
            ownerUserId: "x",
            previousOwnerRole: "previousOwnerRole",
            payerUserId: Nullable<String>.value("x")
        )
        let response = try await client.account.membersTransferOwnership(
            request: .init(userId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func membersRemove1() async throws -> Void {
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
        let expectedResponse = MembersRemoveAccountResponse(
            removed: true
        )
        let response = try await client.account.membersRemove(
            request: .init(userId: "userId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func membersRemove2() async throws -> Void {
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
        let expectedResponse = MembersRemoveAccountResponse(
            removed: true
        )
        let response = try await client.account.membersRemove(
            request: .init(userId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invitesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "email": "email",
                  "role": "role",
                  "expiresAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = InvitesCreateAccountResponse(
            id: "id",
            email: "email",
            role: "role",
            expiresAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            emailSent: true
        )
        let response = try await client.account.invitesCreate(
            request: .init(
                email: "email",
                role: .admin
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invitesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "email": "email",
                  "role": "role",
                  "expiresAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = InvitesCreateAccountResponse(
            id: "x",
            email: "email",
            role: "role",
            expiresAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            emailSent: true
        )
        let response = try await client.account.invitesCreate(
            request: .init(
                email: "email",
                role: .admin
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invitesList1() async throws -> Void {
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
                      "expiresAt": "2026-07-01T09:30:00Z",
                      "createdAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = InvitesListAccountResponse(
            rows: [
                InvitesListAccountResponseRowsItem(
                    id: "id",
                    email: "email",
                    role: "role",
                    expiresAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    expired: true
                )
            ]
        )
        let response = try await client.account.invitesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invitesList2() async throws -> Void {
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
                      "expiresAt": "2024-01-15T09:30:00Z",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "expired": true
                    },
                    {
                      "id": "x",
                      "email": "email",
                      "role": "role",
                      "expiresAt": "2024-01-15T09:30:00Z",
                      "createdAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = InvitesListAccountResponse(
            rows: [
                InvitesListAccountResponseRowsItem(
                    id: "x",
                    email: "email",
                    role: "role",
                    expiresAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    expired: true
                ),
                InvitesListAccountResponseRowsItem(
                    id: "x",
                    email: "email",
                    role: "role",
                    expiresAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    expired: true
                )
            ]
        )
        let response = try await client.account.invitesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invitesRevoke1() async throws -> Void {
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
        let expectedResponse = InvitesRevokeAccountResponse(
            revoked: true
        )
        let response = try await client.account.invitesRevoke(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invitesRevoke2() async throws -> Void {
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
        let expectedResponse = InvitesRevokeAccountResponse(
            revoked: true
        )
        let response = try await client.account.invitesRevoke(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invitesGet1() async throws -> Void {
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
        let expectedResponse = InvitesGetAccountResponse(
            email: "email",
            role: "role",
            companyName: "companyName",
            expired: true,
            userExists: true
        )
        let response = try await client.account.invitesGet(
            request: .init(token: "token"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invitesGet2() async throws -> Void {
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
        let expectedResponse = InvitesGetAccountResponse(
            email: "email",
            role: "role",
            companyName: "companyName",
            expired: true,
            userExists: true
        )
        let response = try await client.account.invitesGet(
            request: .init(token: "strawberry"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invitesAccept1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "token": "token",
                  "expiresAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = InvitesAcceptAccountResponse(
            token: "token",
            expiresAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            user: InvitesAcceptAccountResponseUser(
                id: "id",
                email: "email",
                name: Nullable<String>.value("name"),
                plan: "plan"
            )
        )
        let response = try await client.account.invitesAccept(
            request: .init(token: "token"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invitesAccept2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "token": "token",
                  "expiresAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = InvitesAcceptAccountResponse(
            token: "token",
            expiresAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            user: InvitesAcceptAccountResponseUser(
                id: "x",
                email: "email",
                name: Nullable<String>.value("name"),
                plan: "plan"
            )
        )
        let response = try await client.account.invitesAccept(
            request: .init(token: "strawberry"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func localeSet1() async throws -> Void {
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
        let expectedResponse = LocaleSetAccountResponse(
            locale: "locale",
            scope: .membership
        )
        let response = try await client.account.localeSet(
            request: .init(locale: .en),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func localeSet2() async throws -> Void {
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
        let expectedResponse = LocaleSetAccountResponse(
            locale: "locale",
            scope: .membership
        )
        let response = try await client.account.localeSet(
            request: .init(locale: .en),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func companiesCreate1() async throws -> Void {
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
        let expectedResponse = CompaniesCreateAccountResponse(
            id: "id",
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            role: "role",
            isSandbox: true
        )
        let response = try await client.account.companiesCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func companiesCreate2() async throws -> Void {
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
        let expectedResponse = CompaniesCreateAccountResponse(
            id: "x",
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            role: "role",
            isSandbox: true
        )
        let response = try await client.account.companiesCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func companiesSelect1() async throws -> Void {
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
        let expectedResponse = CompaniesSelectAccountResponse(
            activeCompanyId: "activeCompanyId"
        )
        let response = try await client.account.companiesSelect(
            request: .init(companyId: "companyId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func companiesSelect2() async throws -> Void {
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
        let expectedResponse = CompaniesSelectAccountResponse(
            activeCompanyId: "x"
        )
        let response = try await client.account.companiesSelect(
            request: .init(companyId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func companiesProfile1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "code": "code",
                  "vatCode": "vatCode",
                  "smeExemptionNumber": "smeExemptionNumber",
                  "isVatPayer": true,
                  "isSandbox": true,
                  "countryCode": "countryCode",
                  "chartTemplate": "chartTemplate",
                  "countryChartTemplate": "countryChartTemplate",
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
                  "sepaCreditorId": "sepaCreditorId",
                  "logoFileId": "logoFileId",
                  "legalForm": "legalForm",
                  "registryName": "registryName",
                  "incorporatedOn": "incorporatedOn",
                  "shareCapital": "shareCapital",
                  "accountsKeptBy": "company",
                  "vatPeriod": "monthly",
                  "fiscalYearEndMonth": 1000000,
                  "timeZone": "timeZone",
                  "filingOptions": {
                    "key": "value"
                  },
                  "bookkeeperName": "bookkeeperName",
                  "auditorName": "auditorName",
                  "auditorRegistrationNumber": "auditorRegistrationNumber",
                  "auditRequired": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CompaniesProfileAccountResponse(
            id: "id",
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            smeExemptionNumber: Nullable<String>.value("smeExemptionNumber"),
            isVatPayer: true,
            isSandbox: true,
            countryCode: "countryCode",
            chartTemplate: "chartTemplate",
            countryChartTemplate: "countryChartTemplate",
            baseCurrency: "baseCurrency",
            defaultInvoiceCurrency: "defaultInvoiceCurrency",
            status: .active,
            address: Nullable<CompaniesProfileAccountResponseAddress>.value(CompaniesProfileAccountResponseAddress(
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
            sepaCreditorId: Nullable<String>.value("sepaCreditorId"),
            logoFileId: Nullable<String>.value("logoFileId"),
            legalForm: Nullable<String>.value("legalForm"),
            registryName: Nullable<String>.value("registryName"),
            incorporatedOn: Nullable<String>.value("incorporatedOn"),
            shareCapital: Nullable<String>.value("shareCapital"),
            accountsKeptBy: Nullable<CompaniesProfileAccountResponseAccountsKeptBy>.value(.company),
            vatPeriod: Nullable<CompaniesProfileAccountResponseVatPeriod>.value(.monthly),
            fiscalYearEndMonth: Nullable<Int64>.value(1000000),
            timeZone: "timeZone",
            filingOptions: Nullable<[String: Nullable<String>]>.value([
                "key": Nullable<String>.value("value")
            ]),
            bookkeeperName: Nullable<String>.value("bookkeeperName"),
            auditorName: Nullable<String>.value("auditorName"),
            auditorRegistrationNumber: Nullable<String>.value("auditorRegistrationNumber"),
            auditRequired: true
        )
        let response = try await client.account.companiesProfile(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func companiesProfile2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "code": "code",
                  "vatCode": "vatCode",
                  "smeExemptionNumber": "smeExemptionNumber",
                  "isVatPayer": true,
                  "isSandbox": true,
                  "countryCode": "countryCode",
                  "chartTemplate": "chartTemplate",
                  "countryChartTemplate": "countryChartTemplate",
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
                  "sepaCreditorId": "sepaCreditorId",
                  "logoFileId": "logoFileId",
                  "legalForm": "legalForm",
                  "registryName": "registryName",
                  "incorporatedOn": "incorporatedOn",
                  "shareCapital": "shareCapital",
                  "accountsKeptBy": "company",
                  "vatPeriod": "monthly",
                  "fiscalYearEndMonth": 1000000,
                  "timeZone": "timeZone",
                  "filingOptions": {
                    "filingOptions": "filingOptions"
                  },
                  "bookkeeperName": "bookkeeperName",
                  "auditorName": "auditorName",
                  "auditorRegistrationNumber": "auditorRegistrationNumber",
                  "auditRequired": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CompaniesProfileAccountResponse(
            id: "x",
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            smeExemptionNumber: Nullable<String>.value("smeExemptionNumber"),
            isVatPayer: true,
            isSandbox: true,
            countryCode: "countryCode",
            chartTemplate: "chartTemplate",
            countryChartTemplate: "countryChartTemplate",
            baseCurrency: "baseCurrency",
            defaultInvoiceCurrency: "defaultInvoiceCurrency",
            status: .active,
            address: Nullable<CompaniesProfileAccountResponseAddress>.value(CompaniesProfileAccountResponseAddress(
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
            sepaCreditorId: Nullable<String>.value("sepaCreditorId"),
            logoFileId: Nullable<String>.value("logoFileId"),
            legalForm: Nullable<String>.value("legalForm"),
            registryName: Nullable<String>.value("registryName"),
            incorporatedOn: Nullable<String>.value("incorporatedOn"),
            shareCapital: Nullable<String>.value("shareCapital"),
            accountsKeptBy: Nullable<CompaniesProfileAccountResponseAccountsKeptBy>.value(.company),
            vatPeriod: Nullable<CompaniesProfileAccountResponseVatPeriod>.value(.monthly),
            fiscalYearEndMonth: Nullable<Int64>.value(1000000),
            timeZone: "timeZone",
            filingOptions: Nullable<[String: Nullable<String>]>.value([
                "filingOptions": Nullable<String>.value("filingOptions")
            ]),
            bookkeeperName: Nullable<String>.value("bookkeeperName"),
            auditorName: Nullable<String>.value("auditorName"),
            auditorRegistrationNumber: Nullable<String>.value("auditorRegistrationNumber"),
            auditRequired: true
        )
        let response = try await client.account.companiesProfile(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func companiesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "code": "code",
                  "vatCode": "vatCode",
                  "smeExemptionNumber": "smeExemptionNumber",
                  "isVatPayer": true,
                  "isSandbox": true,
                  "countryCode": "countryCode",
                  "chartTemplate": "chartTemplate",
                  "countryChartTemplate": "countryChartTemplate",
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
                  "sepaCreditorId": "sepaCreditorId",
                  "logoFileId": "logoFileId",
                  "legalForm": "legalForm",
                  "registryName": "registryName",
                  "incorporatedOn": "incorporatedOn",
                  "shareCapital": "shareCapital",
                  "accountsKeptBy": "company",
                  "vatPeriod": "monthly",
                  "fiscalYearEndMonth": 1000000,
                  "timeZone": "timeZone",
                  "filingOptions": {
                    "key": "value"
                  },
                  "bookkeeperName": "bookkeeperName",
                  "auditorName": "auditorName",
                  "auditorRegistrationNumber": "auditorRegistrationNumber",
                  "auditRequired": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CompaniesUpdateAccountResponse(
            id: "id",
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            smeExemptionNumber: Nullable<String>.value("smeExemptionNumber"),
            isVatPayer: true,
            isSandbox: true,
            countryCode: "countryCode",
            chartTemplate: "chartTemplate",
            countryChartTemplate: "countryChartTemplate",
            baseCurrency: "baseCurrency",
            defaultInvoiceCurrency: "defaultInvoiceCurrency",
            status: .active,
            address: Nullable<CompaniesUpdateAccountResponseAddress>.value(CompaniesUpdateAccountResponseAddress(
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
            sepaCreditorId: Nullable<String>.value("sepaCreditorId"),
            logoFileId: Nullable<String>.value("logoFileId"),
            legalForm: Nullable<String>.value("legalForm"),
            registryName: Nullable<String>.value("registryName"),
            incorporatedOn: Nullable<String>.value("incorporatedOn"),
            shareCapital: Nullable<String>.value("shareCapital"),
            accountsKeptBy: Nullable<CompaniesUpdateAccountResponseAccountsKeptBy>.value(.company),
            vatPeriod: Nullable<CompaniesUpdateAccountResponseVatPeriod>.value(.monthly),
            fiscalYearEndMonth: Nullable<Int64>.value(1000000),
            timeZone: "timeZone",
            filingOptions: Nullable<[String: Nullable<String>]>.value([
                "key": Nullable<String>.value("value")
            ]),
            bookkeeperName: Nullable<String>.value("bookkeeperName"),
            auditorName: Nullable<String>.value("auditorName"),
            auditorRegistrationNumber: Nullable<String>.value("auditorRegistrationNumber"),
            auditRequired: true
        )
        let response = try await client.account.companiesUpdate(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func companiesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "code": "code",
                  "vatCode": "vatCode",
                  "smeExemptionNumber": "smeExemptionNumber",
                  "isVatPayer": true,
                  "isSandbox": true,
                  "countryCode": "countryCode",
                  "chartTemplate": "chartTemplate",
                  "countryChartTemplate": "countryChartTemplate",
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
                  "sepaCreditorId": "sepaCreditorId",
                  "logoFileId": "logoFileId",
                  "legalForm": "legalForm",
                  "registryName": "registryName",
                  "incorporatedOn": "incorporatedOn",
                  "shareCapital": "shareCapital",
                  "accountsKeptBy": "company",
                  "vatPeriod": "monthly",
                  "fiscalYearEndMonth": 1000000,
                  "timeZone": "timeZone",
                  "filingOptions": {
                    "filingOptions": "filingOptions"
                  },
                  "bookkeeperName": "bookkeeperName",
                  "auditorName": "auditorName",
                  "auditorRegistrationNumber": "auditorRegistrationNumber",
                  "auditRequired": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CompaniesUpdateAccountResponse(
            id: "x",
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            smeExemptionNumber: Nullable<String>.value("smeExemptionNumber"),
            isVatPayer: true,
            isSandbox: true,
            countryCode: "countryCode",
            chartTemplate: "chartTemplate",
            countryChartTemplate: "countryChartTemplate",
            baseCurrency: "baseCurrency",
            defaultInvoiceCurrency: "defaultInvoiceCurrency",
            status: .active,
            address: Nullable<CompaniesUpdateAccountResponseAddress>.value(CompaniesUpdateAccountResponseAddress(
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
            sepaCreditorId: Nullable<String>.value("sepaCreditorId"),
            logoFileId: Nullable<String>.value("logoFileId"),
            legalForm: Nullable<String>.value("legalForm"),
            registryName: Nullable<String>.value("registryName"),
            incorporatedOn: Nullable<String>.value("incorporatedOn"),
            shareCapital: Nullable<String>.value("shareCapital"),
            accountsKeptBy: Nullable<CompaniesUpdateAccountResponseAccountsKeptBy>.value(.company),
            vatPeriod: Nullable<CompaniesUpdateAccountResponseVatPeriod>.value(.monthly),
            fiscalYearEndMonth: Nullable<Int64>.value(1000000),
            timeZone: "timeZone",
            filingOptions: Nullable<[String: Nullable<String>]>.value([
                "filingOptions": Nullable<String>.value("filingOptions")
            ]),
            bookkeeperName: Nullable<String>.value("bookkeeperName"),
            auditorName: Nullable<String>.value("auditorName"),
            auditorRegistrationNumber: Nullable<String>.value("auditorRegistrationNumber"),
            auditRequired: true
        )
        let response = try await client.account.companiesUpdate(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func companiesArchive1() async throws -> Void {
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
        let expectedResponse = CompaniesArchiveAccountResponse(
            id: "id",
            status: "status"
        )
        let response = try await client.account.companiesArchive(
            request: .init(companyId: "companyId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func companiesArchive2() async throws -> Void {
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
        let expectedResponse = CompaniesArchiveAccountResponse(
            id: "x",
            status: "status"
        )
        let response = try await client.account.companiesArchive(
            request: .init(companyId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func companiesDelete1() async throws -> Void {
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
        let expectedResponse = CompaniesDeleteAccountResponse(
            id: "id",
            status: "status",
            purgeAfter: "purgeAfter"
        )
        let response = try await client.account.companiesDelete(
            request: .init(companyId: "companyId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func companiesDelete2() async throws -> Void {
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
        let expectedResponse = CompaniesDeleteAccountResponse(
            id: "x",
            status: "status",
            purgeAfter: "purgeAfter"
        )
        let response = try await client.account.companiesDelete(
            request: .init(companyId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func companiesActivate1() async throws -> Void {
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
        let expectedResponse = CompaniesActivateAccountResponse(
            id: "id",
            status: "status"
        )
        let response = try await client.account.companiesActivate(
            request: .init(companyId: "companyId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func companiesActivate2() async throws -> Void {
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
        let expectedResponse = CompaniesActivateAccountResponse(
            id: "x",
            status: "status"
        )
        let response = try await client.account.companiesActivate(
            request: .init(companyId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func apiKeysCreate1() async throws -> Void {
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
                  "key": "key",
                  "expiresAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ApiKeysCreateAccountResponse(
            id: "id",
            name: "name",
            scopes: [
                "scopes"
            ],
            key: "key",
            expiresAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.account.apiKeysCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func apiKeysCreate2() async throws -> Void {
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
                  "key": "key",
                  "expiresAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ApiKeysCreateAccountResponse(
            id: "x",
            name: "name",
            scopes: [
                "scopes",
                "scopes"
            ],
            key: "key",
            expiresAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.account.apiKeysCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func apiKeysList1() async throws -> Void {
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
                      "lastUsedAt": "2026-07-01T09:30:00Z",
                      "expiresAt": "2026-07-01T09:30:00Z",
                      "replacedByKeyId": "replacedByKeyId",
                      "createdByUserId": "createdByUserId",
                      "revokedAt": "2026-07-01T09:30:00Z",
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = ApiKeysListAccountResponse(
            rows: [
                ApiKeysListAccountResponseRowsItem(
                    id: "id",
                    name: "name",
                    scopes: [
                        "scopes"
                    ],
                    lastUsedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    expiresAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    replacedByKeyId: Nullable<String>.value("replacedByKeyId"),
                    createdByUserId: Nullable<String>.value("createdByUserId"),
                    revokedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.account.apiKeysList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func apiKeysList2() async throws -> Void {
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
                      "lastUsedAt": "2024-01-15T09:30:00Z",
                      "expiresAt": "2024-01-15T09:30:00Z",
                      "replacedByKeyId": "x",
                      "createdByUserId": "x",
                      "revokedAt": "2024-01-15T09:30:00Z",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "scopes": [
                        "scopes",
                        "scopes"
                      ],
                      "lastUsedAt": "2024-01-15T09:30:00Z",
                      "expiresAt": "2024-01-15T09:30:00Z",
                      "replacedByKeyId": "x",
                      "createdByUserId": "x",
                      "revokedAt": "2024-01-15T09:30:00Z",
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = ApiKeysListAccountResponse(
            rows: [
                ApiKeysListAccountResponseRowsItem(
                    id: "x",
                    name: "name",
                    scopes: [
                        "scopes",
                        "scopes"
                    ],
                    lastUsedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    expiresAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    replacedByKeyId: Nullable<String>.value("x"),
                    createdByUserId: Nullable<String>.value("x"),
                    revokedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ApiKeysListAccountResponseRowsItem(
                    id: "x",
                    name: "name",
                    scopes: [
                        "scopes",
                        "scopes"
                    ],
                    lastUsedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    expiresAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    replacedByKeyId: Nullable<String>.value("x"),
                    createdByUserId: Nullable<String>.value("x"),
                    revokedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.account.apiKeysList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func apiKeysRotate1() async throws -> Void {
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
                  "key": "key",
                  "expiresAt": "2026-07-01T09:30:00Z",
                  "replacedKeyId": "replacedKeyId",
                  "replacedKeyExpiresAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ApiKeysRotateAccountResponse(
            id: "id",
            name: "name",
            scopes: [
                "scopes"
            ],
            key: "key",
            expiresAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            replacedKeyId: "replacedKeyId",
            replacedKeyExpiresAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.account.apiKeysRotate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func apiKeysRotate2() async throws -> Void {
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
                  "key": "key",
                  "expiresAt": "2024-01-15T09:30:00Z",
                  "replacedKeyId": "x",
                  "replacedKeyExpiresAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ApiKeysRotateAccountResponse(
            id: "x",
            name: "name",
            scopes: [
                "scopes",
                "scopes"
            ],
            key: "key",
            expiresAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            replacedKeyId: "x",
            replacedKeyExpiresAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.account.apiKeysRotate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func apiKeysRevoke1() async throws -> Void {
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
        let expectedResponse = ApiKeysRevokeAccountResponse(
            revoked: true
        )
        let response = try await client.account.apiKeysRevoke(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func apiKeysRevoke2() async throws -> Void {
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
        let expectedResponse = ApiKeysRevokeAccountResponse(
            revoked: true
        )
        let response = try await client.account.apiKeysRevoke(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func consentAccept1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "termsVersion": "termsVersion",
                  "termsAcceptedAt": "2026-07-01T09:30:00Z",
                  "dpaVersion": "dpaVersion",
                  "dpaAcceptedAt": "2026-07-01T09:30:00Z",
                  "currentTermsVersion": "currentTermsVersion",
                  "currentDpaVersion": "currentDpaVersion",
                  "required": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ConsentAcceptAccountResponse(
            termsVersion: Nullable<String>.value("termsVersion"),
            termsAcceptedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            dpaVersion: Nullable<String>.value("dpaVersion"),
            dpaAcceptedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            currentTermsVersion: "currentTermsVersion",
            currentDpaVersion: "currentDpaVersion",
            required: true
        )
        let response = try await client.account.consentAccept(
            request: .init(
                acceptTerms: true,
                acceptDpa: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func consentAccept2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "termsVersion": "termsVersion",
                  "termsAcceptedAt": "2024-01-15T09:30:00Z",
                  "dpaVersion": "dpaVersion",
                  "dpaAcceptedAt": "2024-01-15T09:30:00Z",
                  "currentTermsVersion": "currentTermsVersion",
                  "currentDpaVersion": "currentDpaVersion",
                  "required": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ConsentAcceptAccountResponse(
            termsVersion: Nullable<String>.value("termsVersion"),
            termsAcceptedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            dpaVersion: Nullable<String>.value("dpaVersion"),
            dpaAcceptedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            currentTermsVersion: "currentTermsVersion",
            currentDpaVersion: "currentDpaVersion",
            required: true
        )
        let response = try await client.account.consentAccept(
            request: .init(
                acceptTerms: true,
                acceptDpa: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func profileUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "email": "email",
                  "name": "name"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ProfileUpdateAccountResponse(
            id: "id",
            email: "email",
            name: Nullable<String>.value("name")
        )
        let response = try await client.account.profileUpdate(
            request: .init(name: .null),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func profileUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "email": "email",
                  "name": "name"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ProfileUpdateAccountResponse(
            id: "x",
            email: "email",
            name: Nullable<String>.value("name")
        )
        let response = try await client.account.profileUpdate(
            request: .init(name: .null),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func emailChangeRequest1() async throws -> Void {
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
        let expectedResponse = EmailChangeRequestAccountResponse(
            sent: true
        )
        let response = try await client.account.emailChangeRequest(
            request: .init(newEmail: "newEmail"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func emailChangeRequest2() async throws -> Void {
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
        let expectedResponse = EmailChangeRequestAccountResponse(
            sent: true
        )
        let response = try await client.account.emailChangeRequest(
            request: .init(newEmail: "newEmail"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sessionsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "companyId": "companyId",
                      "ipAddress": "ipAddress",
                      "userAgent": "userAgent",
                      "lastSeenAt": "2026-07-01T09:30:00Z",
                      "createdAt": "2026-07-01T09:30:00Z",
                      "expiresAt": "2026-07-01T09:30:00Z",
                      "current": true
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
        let expectedResponse = SessionsListAccountResponse(
            rows: [
                SessionsListAccountResponseRowsItem(
                    id: "id",
                    companyId: Nullable<String>.value("companyId"),
                    ipAddress: Nullable<String>.value("ipAddress"),
                    userAgent: Nullable<String>.value("userAgent"),
                    lastSeenAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    expiresAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    current: true
                )
            ]
        )
        let response = try await client.account.sessionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sessionsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "companyId": "x",
                      "ipAddress": "ipAddress",
                      "userAgent": "userAgent",
                      "lastSeenAt": "2024-01-15T09:30:00Z",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "expiresAt": "2024-01-15T09:30:00Z",
                      "current": true
                    },
                    {
                      "id": "x",
                      "companyId": "x",
                      "ipAddress": "ipAddress",
                      "userAgent": "userAgent",
                      "lastSeenAt": "2024-01-15T09:30:00Z",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "expiresAt": "2024-01-15T09:30:00Z",
                      "current": true
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
        let expectedResponse = SessionsListAccountResponse(
            rows: [
                SessionsListAccountResponseRowsItem(
                    id: "x",
                    companyId: Nullable<String>.value("x"),
                    ipAddress: Nullable<String>.value("ipAddress"),
                    userAgent: Nullable<String>.value("userAgent"),
                    lastSeenAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    expiresAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    current: true
                ),
                SessionsListAccountResponseRowsItem(
                    id: "x",
                    companyId: Nullable<String>.value("x"),
                    ipAddress: Nullable<String>.value("ipAddress"),
                    userAgent: Nullable<String>.value("userAgent"),
                    lastSeenAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    expiresAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    current: true
                )
            ]
        )
        let response = try await client.account.sessionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sessionsRevoke1() async throws -> Void {
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
        let expectedResponse = SessionsRevokeAccountResponse(
            revoked: true
        )
        let response = try await client.account.sessionsRevoke(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sessionsRevoke2() async throws -> Void {
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
        let expectedResponse = SessionsRevokeAccountResponse(
            revoked: true
        )
        let response = try await client.account.sessionsRevoke(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sessionsRevokeOthers1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "revoked": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SessionsRevokeOthersAccountResponse(
            revoked: 1000000
        )
        let response = try await client.account.sessionsRevokeOthers(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sessionsRevokeOthers2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "revoked": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SessionsRevokeOthersAccountResponse(
            revoked: 1000000
        )
        let response = try await client.account.sessionsRevokeOthers(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func export1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "generatedAt": "2026-07-01T09:30:00Z",
                  "user": {
                    "id": "id",
                    "email": "email",
                    "name": "name",
                    "locale": "locale",
                    "plan": "plan",
                    "createdAt": "2026-07-01T09:30:00Z"
                  },
                  "consent": {
                    "termsVersion": "termsVersion",
                    "termsAcceptedAt": "2026-07-01T09:30:00Z",
                    "dpaVersion": "dpaVersion",
                    "dpaAcceptedAt": "2026-07-01T09:30:00Z",
                    "currentTermsVersion": "currentTermsVersion",
                    "currentDpaVersion": "currentDpaVersion",
                    "required": true
                  },
                  "memberships": [
                    {
                      "companyId": "companyId",
                      "companyName": "companyName",
                      "role": "role",
                      "since": "since"
                    }
                  ],
                  "sessions": [
                    {
                      "id": "id",
                      "companyId": "companyId",
                      "ipAddress": "ipAddress",
                      "userAgent": "userAgent",
                      "lastSeenAt": "2026-07-01T09:30:00Z",
                      "createdAt": "2026-07-01T09:30:00Z",
                      "expiresAt": "2026-07-01T09:30:00Z",
                      "current": true
                    }
                  ],
                  "billing": {
                    "status": "status",
                    "plan": "plan",
                    "balanceCents": 1000000,
                    "trialEndsAt": "2026-07-01T09:30:00Z",
                    "firstTopUpAt": "2026-07-01T09:30:00Z"
                  },
                  "creditTransactions": [
                    {
                      "id": "id",
                      "type": "type",
                      "amountCents": 1000000,
                      "balanceAfterCents": 1000000,
                      "description": "description",
                      "createdAt": "2026-07-01T09:30:00Z"
                    }
                  ],
                  "auditEntries": [
                    {
                      "id": 1000000,
                      "companyId": "companyId",
                      "action": "action",
                      "entity": "entity",
                      "entityId": "entityId",
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = ExportAccountResponse(
            generatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            user: ExportAccountResponseUser(
                id: "id",
                email: "email",
                name: Nullable<String>.value("name"),
                locale: "locale",
                plan: "plan",
                createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
            ),
            consent: ExportAccountResponseConsent(
                termsVersion: Nullable<String>.value("termsVersion"),
                termsAcceptedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                dpaVersion: Nullable<String>.value("dpaVersion"),
                dpaAcceptedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                currentTermsVersion: "currentTermsVersion",
                currentDpaVersion: "currentDpaVersion",
                required: true
            ),
            memberships: [
                ExportAccountResponseMembershipsItem(
                    companyId: "companyId",
                    companyName: "companyName",
                    role: "role",
                    since: "since"
                )
            ],
            sessions: [
                ExportAccountResponseSessionsItem(
                    id: "id",
                    companyId: Nullable<String>.value("companyId"),
                    ipAddress: Nullable<String>.value("ipAddress"),
                    userAgent: Nullable<String>.value("userAgent"),
                    lastSeenAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    expiresAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    current: true
                )
            ],
            billing: Nullable<ExportAccountResponseBilling>.value(ExportAccountResponseBilling(
                status: "status",
                plan: "plan",
                balanceCents: 1000000,
                trialEndsAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                firstTopUpAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
            )),
            creditTransactions: [
                ExportAccountResponseCreditTransactionsItem(
                    id: "id",
                    type: "type",
                    amountCents: 1000000,
                    balanceAfterCents: 1000000,
                    description: "description",
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            auditEntries: [
                ExportAccountResponseAuditEntriesItem(
                    id: 1000000,
                    companyId: "companyId",
                    action: "action",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.account.export(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func export2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "generatedAt": "2024-01-15T09:30:00Z",
                  "user": {
                    "id": "x",
                    "email": "email",
                    "name": "name",
                    "locale": "locale",
                    "plan": "plan",
                    "createdAt": "2024-01-15T09:30:00Z"
                  },
                  "consent": {
                    "termsVersion": "termsVersion",
                    "termsAcceptedAt": "2024-01-15T09:30:00Z",
                    "dpaVersion": "dpaVersion",
                    "dpaAcceptedAt": "2024-01-15T09:30:00Z",
                    "currentTermsVersion": "currentTermsVersion",
                    "currentDpaVersion": "currentDpaVersion",
                    "required": true
                  },
                  "memberships": [
                    {
                      "companyId": "x",
                      "companyName": "companyName",
                      "role": "role",
                      "since": "since"
                    },
                    {
                      "companyId": "x",
                      "companyName": "companyName",
                      "role": "role",
                      "since": "since"
                    }
                  ],
                  "sessions": [
                    {
                      "id": "x",
                      "companyId": "x",
                      "ipAddress": "ipAddress",
                      "userAgent": "userAgent",
                      "lastSeenAt": "2024-01-15T09:30:00Z",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "expiresAt": "2024-01-15T09:30:00Z",
                      "current": true
                    },
                    {
                      "id": "x",
                      "companyId": "x",
                      "ipAddress": "ipAddress",
                      "userAgent": "userAgent",
                      "lastSeenAt": "2024-01-15T09:30:00Z",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "expiresAt": "2024-01-15T09:30:00Z",
                      "current": true
                    }
                  ],
                  "billing": {
                    "status": "status",
                    "plan": "plan",
                    "balanceCents": 1000000,
                    "trialEndsAt": "2024-01-15T09:30:00Z",
                    "firstTopUpAt": "2024-01-15T09:30:00Z"
                  },
                  "creditTransactions": [
                    {
                      "id": "x",
                      "type": "type",
                      "amountCents": 1000000,
                      "balanceAfterCents": 1000000,
                      "description": "description",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "type": "type",
                      "amountCents": 1000000,
                      "balanceAfterCents": 1000000,
                      "description": "description",
                      "createdAt": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "auditEntries": [
                    {
                      "id": 1000000,
                      "companyId": "x",
                      "action": "action",
                      "entity": "entity",
                      "entityId": "entityId",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": 1000000,
                      "companyId": "x",
                      "action": "action",
                      "entity": "entity",
                      "entityId": "entityId",
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = ExportAccountResponse(
            generatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            user: ExportAccountResponseUser(
                id: "x",
                email: "email",
                name: Nullable<String>.value("name"),
                locale: "locale",
                plan: "plan",
                createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ),
            consent: ExportAccountResponseConsent(
                termsVersion: Nullable<String>.value("termsVersion"),
                termsAcceptedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                dpaVersion: Nullable<String>.value("dpaVersion"),
                dpaAcceptedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                currentTermsVersion: "currentTermsVersion",
                currentDpaVersion: "currentDpaVersion",
                required: true
            ),
            memberships: [
                ExportAccountResponseMembershipsItem(
                    companyId: "x",
                    companyName: "companyName",
                    role: "role",
                    since: "since"
                ),
                ExportAccountResponseMembershipsItem(
                    companyId: "x",
                    companyName: "companyName",
                    role: "role",
                    since: "since"
                )
            ],
            sessions: [
                ExportAccountResponseSessionsItem(
                    id: "x",
                    companyId: Nullable<String>.value("x"),
                    ipAddress: Nullable<String>.value("ipAddress"),
                    userAgent: Nullable<String>.value("userAgent"),
                    lastSeenAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    expiresAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    current: true
                ),
                ExportAccountResponseSessionsItem(
                    id: "x",
                    companyId: Nullable<String>.value("x"),
                    ipAddress: Nullable<String>.value("ipAddress"),
                    userAgent: Nullable<String>.value("userAgent"),
                    lastSeenAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    expiresAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    current: true
                )
            ],
            billing: Nullable<ExportAccountResponseBilling>.value(ExportAccountResponseBilling(
                status: "status",
                plan: "plan",
                balanceCents: 1000000,
                trialEndsAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                firstTopUpAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
            )),
            creditTransactions: [
                ExportAccountResponseCreditTransactionsItem(
                    id: "x",
                    type: "type",
                    amountCents: 1000000,
                    balanceAfterCents: 1000000,
                    description: "description",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ExportAccountResponseCreditTransactionsItem(
                    id: "x",
                    type: "type",
                    amountCents: 1000000,
                    balanceAfterCents: 1000000,
                    description: "description",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            auditEntries: [
                ExportAccountResponseAuditEntriesItem(
                    id: 1000000,
                    companyId: "x",
                    action: "action",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ExportAccountResponseAuditEntriesItem(
                    id: 1000000,
                    companyId: "x",
                    action: "action",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.account.export(
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
        let expectedResponse = DeleteAccountResponse(
            deleted: true
        )
        let response = try await client.account.delete(
            request: .init(confirmEmail: "confirmEmail"),
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
        let expectedResponse = DeleteAccountResponse(
            deleted: true
        )
        let response = try await client.account.delete(
            request: .init(confirmEmail: "confirmEmail"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func referralGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "code": "code",
                  "link": "link",
                  "points": 1000000,
                  "referredCount": 1000000,
                  "rates": {
                    "perEur": 1000000,
                    "pointCents": 1000000
                  },
                  "history": [
                    {
                      "points": 1000000,
                      "reason": "reason",
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = ReferralGetAccountResponse(
            code: "code",
            link: "link",
            points: 1000000,
            referredCount: 1000000,
            rates: ReferralGetAccountResponseRates(
                perEur: 1000000,
                pointCents: 1000000
            ),
            history: [
                ReferralGetAccountResponseHistoryItem(
                    points: 1000000,
                    reason: "reason",
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.account.referralGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func referralGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "code": "code",
                  "link": "link",
                  "points": 1000000,
                  "referredCount": 1000000,
                  "rates": {
                    "perEur": 1000000,
                    "pointCents": 1000000
                  },
                  "history": [
                    {
                      "points": 1000000,
                      "reason": "reason",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "points": 1000000,
                      "reason": "reason",
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = ReferralGetAccountResponse(
            code: "code",
            link: "link",
            points: 1000000,
            referredCount: 1000000,
            rates: ReferralGetAccountResponseRates(
                perEur: 1000000,
                pointCents: 1000000
            ),
            history: [
                ReferralGetAccountResponseHistoryItem(
                    points: 1000000,
                    reason: "reason",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ReferralGetAccountResponseHistoryItem(
                    points: 1000000,
                    reason: "reason",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.account.referralGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func referralConvert1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "points": 1000000,
                  "amountCents": 1000000,
                  "pointsLeft": 1000000,
                  "balanceCents": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ReferralConvertAccountResponse(
            points: 1000000,
            amountCents: 1000000,
            pointsLeft: 1000000,
            balanceCents: 1000000
        )
        let response = try await client.account.referralConvert(
            request: .init(points: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func referralConvert2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "points": 1000000,
                  "amountCents": 1000000,
                  "pointsLeft": 1000000,
                  "balanceCents": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ReferralConvertAccountResponse(
            points: 1000000,
            amountCents: 1000000,
            pointsLeft: 1000000,
            balanceCents: 1000000
        )
        let response = try await client.account.referralConvert(
            request: .init(points: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func tableSettingsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "tableKey": "tableKey",
                  "columns": [
                    "columns"
                  ],
                  "pageSize": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TableSettingsGetAccountResponse(
            tableKey: "tableKey",
            columns: Nullable<[String]>.value([
                "columns"
            ]),
            pageSize: Nullable<Int64>.value(1000000)
        )
        let response = try await client.account.tableSettingsGet(
            request: .init(tableKey: "tableKey"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func tableSettingsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "tableKey": "tableKey",
                  "columns": [
                    "columns",
                    "columns"
                  ],
                  "pageSize": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TableSettingsGetAccountResponse(
            tableKey: "tableKey",
            columns: Nullable<[String]>.value([
                "columns",
                "columns"
            ]),
            pageSize: Nullable<Int64>.value(1000000)
        )
        let response = try await client.account.tableSettingsGet(
            request: .init(tableKey: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func tableSettingsSet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "tableKey": "tableKey",
                  "columns": [
                    "columns"
                  ],
                  "pageSize": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TableSettingsSetAccountResponse(
            tableKey: "tableKey",
            columns: Nullable<[String]>.value([
                "columns"
            ]),
            pageSize: Nullable<Int64>.value(1000000)
        )
        let response = try await client.account.tableSettingsSet(
            request: .init(tableKey: "tableKey"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func tableSettingsSet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "tableKey": "tableKey",
                  "columns": [
                    "columns",
                    "columns"
                  ],
                  "pageSize": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TableSettingsSetAccountResponse(
            tableKey: "tableKey",
            columns: Nullable<[String]>.value([
                "columns",
                "columns"
            ]),
            pageSize: Nullable<Int64>.value(1000000)
        )
        let response = try await client.account.tableSettingsSet(
            request: .init(tableKey: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func tableSettingsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "tableKey": "tableKey",
                      "columns": [
                        "columns"
                      ],
                      "pageSize": 1000000
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
        let expectedResponse = TableSettingsListAccountResponse(
            rows: [
                TableSettingsListAccountResponseRowsItem(
                    tableKey: "tableKey",
                    columns: Nullable<[String]>.value([
                        "columns"
                    ]),
                    pageSize: Nullable<Int64>.value(1000000)
                )
            ]
        )
        let response = try await client.account.tableSettingsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func tableSettingsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "tableKey": "tableKey",
                      "columns": [
                        "columns",
                        "columns"
                      ],
                      "pageSize": 1000000
                    },
                    {
                      "tableKey": "tableKey",
                      "columns": [
                        "columns",
                        "columns"
                      ],
                      "pageSize": 1000000
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
        let expectedResponse = TableSettingsListAccountResponse(
            rows: [
                TableSettingsListAccountResponseRowsItem(
                    tableKey: "tableKey",
                    columns: Nullable<[String]>.value([
                        "columns",
                        "columns"
                    ]),
                    pageSize: Nullable<Int64>.value(1000000)
                ),
                TableSettingsListAccountResponseRowsItem(
                    tableKey: "tableKey",
                    columns: Nullable<[String]>.value([
                        "columns",
                        "columns"
                    ]),
                    pageSize: Nullable<Int64>.value(1000000)
                )
            ]
        )
        let response = try await client.account.tableSettingsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}