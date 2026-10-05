import Foundation
import Testing
import Api

@Suite("ConsolidationClient Wire Tests") struct ConsolidationClientWireTests {
    @Test func groupsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "presentationCurrency": "presentationCurrency",
                  "memberCount": 1000000,
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GroupsCreateConsolidationResponse(
            id: "id",
            name: "name",
            presentationCurrency: "presentationCurrency",
            memberCount: 1000000,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.consolidation.groupsCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "presentationCurrency": "presentationCurrency",
                  "memberCount": 1000000,
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GroupsCreateConsolidationResponse(
            id: "x",
            name: "name",
            presentationCurrency: "presentationCurrency",
            memberCount: 1000000,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.consolidation.groupsCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "name": "name",
                      "presentationCurrency": "presentationCurrency",
                      "memberCount": 1000000,
                      "createdAt": "2026-07-01T09:30:00Z",
                      "updatedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = GroupsListConsolidationResponse(
            rows: [
                GroupsListConsolidationResponseRowsItem(
                    id: "id",
                    name: "name",
                    presentationCurrency: "presentationCurrency",
                    memberCount: 1000000,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.consolidation.groupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "name": "name",
                      "presentationCurrency": "presentationCurrency",
                      "memberCount": 1000000,
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "presentationCurrency": "presentationCurrency",
                      "memberCount": 1000000,
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = GroupsListConsolidationResponse(
            rows: [
                GroupsListConsolidationResponseRowsItem(
                    id: "x",
                    name: "name",
                    presentationCurrency: "presentationCurrency",
                    memberCount: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                GroupsListConsolidationResponseRowsItem(
                    id: "x",
                    name: "name",
                    presentationCurrency: "presentationCurrency",
                    memberCount: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.consolidation.groupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "presentationCurrency": "presentationCurrency",
                  "memberCount": 1000000,
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "members": [
                    {
                      "memberCompanyId": "memberCompanyId",
                      "name": "name",
                      "baseCurrency": "baseCurrency",
                      "ownershipPercent": "ownershipPercent",
                      "method": "full"
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
        let expectedResponse = GroupsGetConsolidationResponse(
            id: "id",
            name: "name",
            presentationCurrency: "presentationCurrency",
            memberCount: 1000000,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            members: [
                GroupsGetConsolidationResponseMembersItem(
                    memberCompanyId: "memberCompanyId",
                    name: "name",
                    baseCurrency: "baseCurrency",
                    ownershipPercent: "ownershipPercent",
                    method: .full
                )
            ]
        )
        let response = try await client.consolidation.groupsGet(
            request: .init(groupId: "groupId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "presentationCurrency": "presentationCurrency",
                  "memberCount": 1000000,
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "members": [
                    {
                      "memberCompanyId": "x",
                      "name": "name",
                      "baseCurrency": "baseCurrency",
                      "ownershipPercent": "ownershipPercent",
                      "method": "full"
                    },
                    {
                      "memberCompanyId": "x",
                      "name": "name",
                      "baseCurrency": "baseCurrency",
                      "ownershipPercent": "ownershipPercent",
                      "method": "full"
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
        let expectedResponse = GroupsGetConsolidationResponse(
            id: "x",
            name: "name",
            presentationCurrency: "presentationCurrency",
            memberCount: 1000000,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            members: [
                GroupsGetConsolidationResponseMembersItem(
                    memberCompanyId: "x",
                    name: "name",
                    baseCurrency: "baseCurrency",
                    ownershipPercent: "ownershipPercent",
                    method: .full
                ),
                GroupsGetConsolidationResponseMembersItem(
                    memberCompanyId: "x",
                    name: "name",
                    baseCurrency: "baseCurrency",
                    ownershipPercent: "ownershipPercent",
                    method: .full
                )
            ]
        )
        let response = try await client.consolidation.groupsGet(
            request: .init(groupId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "presentationCurrency": "presentationCurrency",
                  "memberCount": 1000000,
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GroupsUpdateConsolidationResponse(
            id: "id",
            name: "name",
            presentationCurrency: "presentationCurrency",
            memberCount: 1000000,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.consolidation.groupsUpdate(
            request: .init(groupId: "groupId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "presentationCurrency": "presentationCurrency",
                  "memberCount": 1000000,
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GroupsUpdateConsolidationResponse(
            id: "x",
            name: "name",
            presentationCurrency: "presentationCurrency",
            memberCount: 1000000,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.consolidation.groupsUpdate(
            request: .init(groupId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ok": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GroupsDeleteConsolidationResponse(
            ok: true
        )
        let response = try await client.consolidation.groupsDelete(
            request: .init(groupId: "groupId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ok": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GroupsDeleteConsolidationResponse(
            ok: true
        )
        let response = try await client.consolidation.groupsDelete(
            request: .init(groupId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func membersAdd1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "memberCompanyId": "memberCompanyId",
                  "name": "name",
                  "baseCurrency": "baseCurrency",
                  "ownershipPercent": "ownershipPercent",
                  "method": "full"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = MembersAddConsolidationResponse(
            memberCompanyId: "memberCompanyId",
            name: "name",
            baseCurrency: "baseCurrency",
            ownershipPercent: "ownershipPercent",
            method: .full
        )
        let response = try await client.consolidation.membersAdd(
            request: .init(
                groupId: "groupId",
                memberCompanyId: "memberCompanyId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func membersAdd2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "memberCompanyId": "x",
                  "name": "name",
                  "baseCurrency": "baseCurrency",
                  "ownershipPercent": "ownershipPercent",
                  "method": "full"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = MembersAddConsolidationResponse(
            memberCompanyId: "x",
            name: "name",
            baseCurrency: "baseCurrency",
            ownershipPercent: "ownershipPercent",
            method: .full
        )
        let response = try await client.consolidation.membersAdd(
            request: .init(
                groupId: "x",
                memberCompanyId: "x"
            ),
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
                  "ok": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = MembersRemoveConsolidationResponse(
            ok: true
        )
        let response = try await client.consolidation.membersRemove(
            request: .init(
                groupId: "groupId",
                memberCompanyId: "memberCompanyId"
            ),
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
                  "ok": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = MembersRemoveConsolidationResponse(
            ok: true
        )
        let response = try await client.consolidation.membersRemove(
            request: .init(
                groupId: "x",
                memberCompanyId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func intercompanyCandidates1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "memberCompanyId": "memberCompanyId",
                      "memberName": "memberName",
                      "partnerId": "partnerId",
                      "partnerName": "partnerName",
                      "partnerCode": "partnerCode",
                      "matchesCompanyId": "matchesCompanyId",
                      "matchesCompanyName": "matchesCompanyName",
                      "matchedOn": "code",
                      "linkId": "linkId"
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
        let expectedResponse = IntercompanyCandidatesConsolidationResponse(
            rows: [
                IntercompanyCandidatesConsolidationResponseRowsItem(
                    memberCompanyId: "memberCompanyId",
                    memberName: "memberName",
                    partnerId: "partnerId",
                    partnerName: "partnerName",
                    partnerCode: Nullable<String>.value("partnerCode"),
                    matchesCompanyId: "matchesCompanyId",
                    matchesCompanyName: "matchesCompanyName",
                    matchedOn: .code,
                    linkId: Nullable<String>.value("linkId")
                )
            ]
        )
        let response = try await client.consolidation.intercompanyCandidates(
            request: .init(groupId: "groupId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func intercompanyCandidates2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "memberCompanyId": "x",
                      "memberName": "memberName",
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "partnerCode": "partnerCode",
                      "matchesCompanyId": "x",
                      "matchesCompanyName": "matchesCompanyName",
                      "matchedOn": "code",
                      "linkId": "x"
                    },
                    {
                      "memberCompanyId": "x",
                      "memberName": "memberName",
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "partnerCode": "partnerCode",
                      "matchesCompanyId": "x",
                      "matchesCompanyName": "matchesCompanyName",
                      "matchedOn": "code",
                      "linkId": "x"
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
        let expectedResponse = IntercompanyCandidatesConsolidationResponse(
            rows: [
                IntercompanyCandidatesConsolidationResponseRowsItem(
                    memberCompanyId: "x",
                    memberName: "memberName",
                    partnerId: "x",
                    partnerName: "partnerName",
                    partnerCode: Nullable<String>.value("partnerCode"),
                    matchesCompanyId: "x",
                    matchesCompanyName: "matchesCompanyName",
                    matchedOn: .code,
                    linkId: Nullable<String>.value("x")
                ),
                IntercompanyCandidatesConsolidationResponseRowsItem(
                    memberCompanyId: "x",
                    memberName: "memberName",
                    partnerId: "x",
                    partnerName: "partnerName",
                    partnerCode: Nullable<String>.value("partnerCode"),
                    matchesCompanyId: "x",
                    matchesCompanyName: "matchesCompanyName",
                    matchedOn: .code,
                    linkId: Nullable<String>.value("x")
                )
            ]
        )
        let response = try await client.consolidation.intercompanyCandidates(
            request: .init(groupId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func intercompanyLinksSet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "groupId": "groupId",
                  "companyId": "companyId",
                  "partnerId": "partnerId",
                  "counterpartyCompanyId": "counterpartyCompanyId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = IntercompanyLinksSetConsolidationResponse(
            id: "id",
            groupId: "groupId",
            companyId: "companyId",
            partnerId: "partnerId",
            counterpartyCompanyId: "counterpartyCompanyId"
        )
        let response = try await client.consolidation.intercompanyLinksSet(
            request: .init(
                groupId: "groupId",
                partnerId: "partnerId",
                counterpartyCompanyId: "counterpartyCompanyId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func intercompanyLinksSet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "groupId": "x",
                  "companyId": "x",
                  "partnerId": "x",
                  "counterpartyCompanyId": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = IntercompanyLinksSetConsolidationResponse(
            id: "x",
            groupId: "x",
            companyId: "x",
            partnerId: "x",
            counterpartyCompanyId: "x"
        )
        let response = try await client.consolidation.intercompanyLinksSet(
            request: .init(
                groupId: "x",
                partnerId: "x",
                counterpartyCompanyId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func intercompanyLinksList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "companyId": "companyId",
                      "companyName": "companyName",
                      "partnerId": "partnerId",
                      "partnerName": "partnerName",
                      "counterpartyCompanyId": "counterpartyCompanyId",
                      "counterpartyCompanyName": "counterpartyCompanyName",
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
        let expectedResponse = IntercompanyLinksListConsolidationResponse(
            rows: [
                IntercompanyLinksListConsolidationResponseRowsItem(
                    id: "id",
                    companyId: "companyId",
                    companyName: "companyName",
                    partnerId: "partnerId",
                    partnerName: "partnerName",
                    counterpartyCompanyId: "counterpartyCompanyId",
                    counterpartyCompanyName: "counterpartyCompanyName",
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.consolidation.intercompanyLinksList(
            request: .init(groupId: "groupId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func intercompanyLinksList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "companyId": "x",
                      "companyName": "companyName",
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "counterpartyCompanyId": "x",
                      "counterpartyCompanyName": "counterpartyCompanyName",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "companyId": "x",
                      "companyName": "companyName",
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "counterpartyCompanyId": "x",
                      "counterpartyCompanyName": "counterpartyCompanyName",
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
        let expectedResponse = IntercompanyLinksListConsolidationResponse(
            rows: [
                IntercompanyLinksListConsolidationResponseRowsItem(
                    id: "x",
                    companyId: "x",
                    companyName: "companyName",
                    partnerId: "x",
                    partnerName: "partnerName",
                    counterpartyCompanyId: "x",
                    counterpartyCompanyName: "counterpartyCompanyName",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                IntercompanyLinksListConsolidationResponseRowsItem(
                    id: "x",
                    companyId: "x",
                    companyName: "companyName",
                    partnerId: "x",
                    partnerName: "partnerName",
                    counterpartyCompanyId: "x",
                    counterpartyCompanyName: "counterpartyCompanyName",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.consolidation.intercompanyLinksList(
            request: .init(groupId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func intercompanyLinksRemove1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ok": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = IntercompanyLinksRemoveConsolidationResponse(
            ok: true
        )
        let response = try await client.consolidation.intercompanyLinksRemove(
            request: .init(
                groupId: "groupId",
                id: "id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func intercompanyLinksRemove2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ok": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = IntercompanyLinksRemoveConsolidationResponse(
            ok: true
        )
        let response = try await client.consolidation.intercompanyLinksRemove(
            request: .init(
                groupId: "x",
                id: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func intercompanyReport1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
                  "directions": [
                    {
                      "sellerCompanyId": "sellerCompanyId",
                      "sellerName": "sellerName",
                      "buyerCompanyId": "buyerCompanyId",
                      "buyerName": "buyerName",
                      "documents": [
                        {
                          "sourceInvoiceId": "sourceInvoiceId",
                          "fullNumber": "fullNumber",
                          "issueDate": "2026-07-01",
                          "type": "invoice",
                          "currency": "currency",
                          "grossTotal": "grossTotal",
                          "paymentStatus": "unpaid",
                          "match": "mirrored",
                          "counterpart": null
                        }
                      ],
                      "unmatchedPurchases": [
                        {
                          "invoiceId": "invoiceId",
                          "documentNumber": "documentNumber",
                          "documentDate": "2026-07-01",
                          "currency": "currency",
                          "grossTotal": "grossTotal",
                          "status": "draft"
                        }
                      ],
                      "totals": [
                        {
                          "currency": "currency",
                          "salesGross": "salesGross",
                          "purchasesGross": "purchasesGross",
                          "grossDifference": "grossDifference",
                          "openReceivable": "openReceivable",
                          "openPayable": "openPayable",
                          "openDifference": "openDifference"
                        }
                      ]
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
        let expectedResponse = IntercompanyReportConsolidationResponse(
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            directions: [
                IntercompanyReportConsolidationResponseDirectionsItem(
                    sellerCompanyId: "sellerCompanyId",
                    sellerName: "sellerName",
                    buyerCompanyId: "buyerCompanyId",
                    buyerName: "buyerName",
                    documents: [
                        IntercompanyReportConsolidationResponseDirectionsItemDocumentsItem(
                            sourceInvoiceId: "sourceInvoiceId",
                            fullNumber: "fullNumber",
                            issueDate: CalendarDate("2026-07-01")!,
                            type: .invoice,
                            currency: "currency",
                            grossTotal: "grossTotal",
                            paymentStatus: .unpaid,
                            match: .mirrored,
                            counterpart: .null
                        )
                    ],
                    unmatchedPurchases: [
                        IntercompanyReportConsolidationResponseDirectionsItemUnmatchedPurchasesItem(
                            invoiceId: "invoiceId",
                            documentNumber: "documentNumber",
                            documentDate: CalendarDate("2026-07-01")!,
                            currency: "currency",
                            grossTotal: "grossTotal",
                            status: .draft
                        )
                    ],
                    totals: [
                        IntercompanyReportConsolidationResponseDirectionsItemTotalsItem(
                            currency: "currency",
                            salesGross: "salesGross",
                            purchasesGross: "purchasesGross",
                            grossDifference: "grossDifference",
                            openReceivable: "openReceivable",
                            openPayable: "openPayable",
                            openDifference: "openDifference"
                        )
                    ]
                )
            ]
        )
        let response = try await client.consolidation.intercompanyReport(
            request: .init(
                groupId: "groupId",
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func intercompanyReport2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
                  "directions": [
                    {
                      "sellerCompanyId": "x",
                      "sellerName": "sellerName",
                      "buyerCompanyId": "x",
                      "buyerName": "buyerName",
                      "documents": [
                        {
                          "sourceInvoiceId": "x",
                          "fullNumber": "fullNumber",
                          "issueDate": "2023-01-15",
                          "type": "invoice",
                          "currency": "currency",
                          "grossTotal": "grossTotal",
                          "paymentStatus": "unpaid",
                          "match": "mirrored",
                          "counterpart": {
                            "invoiceId": "x",
                            "status": "draft",
                            "paymentStatus": "unpaid",
                            "grossTotal": "grossTotal",
                            "amountsMatch": true
                          }
                        },
                        {
                          "sourceInvoiceId": "x",
                          "fullNumber": "fullNumber",
                          "issueDate": "2023-01-15",
                          "type": "invoice",
                          "currency": "currency",
                          "grossTotal": "grossTotal",
                          "paymentStatus": "unpaid",
                          "match": "mirrored",
                          "counterpart": {
                            "invoiceId": "x",
                            "status": "draft",
                            "paymentStatus": "unpaid",
                            "grossTotal": "grossTotal",
                            "amountsMatch": true
                          }
                        }
                      ],
                      "unmatchedPurchases": [
                        {
                          "invoiceId": "x",
                          "documentNumber": "documentNumber",
                          "documentDate": "2023-01-15",
                          "currency": "currency",
                          "grossTotal": "grossTotal",
                          "status": "draft"
                        },
                        {
                          "invoiceId": "x",
                          "documentNumber": "documentNumber",
                          "documentDate": "2023-01-15",
                          "currency": "currency",
                          "grossTotal": "grossTotal",
                          "status": "draft"
                        }
                      ],
                      "totals": [
                        {
                          "currency": "currency",
                          "salesGross": "salesGross",
                          "purchasesGross": "purchasesGross",
                          "grossDifference": "grossDifference",
                          "openReceivable": "openReceivable",
                          "openPayable": "openPayable",
                          "openDifference": "openDifference"
                        },
                        {
                          "currency": "currency",
                          "salesGross": "salesGross",
                          "purchasesGross": "purchasesGross",
                          "grossDifference": "grossDifference",
                          "openReceivable": "openReceivable",
                          "openPayable": "openPayable",
                          "openDifference": "openDifference"
                        }
                      ]
                    },
                    {
                      "sellerCompanyId": "x",
                      "sellerName": "sellerName",
                      "buyerCompanyId": "x",
                      "buyerName": "buyerName",
                      "documents": [
                        {
                          "sourceInvoiceId": "x",
                          "fullNumber": "fullNumber",
                          "issueDate": "2023-01-15",
                          "type": "invoice",
                          "currency": "currency",
                          "grossTotal": "grossTotal",
                          "paymentStatus": "unpaid",
                          "match": "mirrored",
                          "counterpart": {
                            "invoiceId": "x",
                            "status": "draft",
                            "paymentStatus": "unpaid",
                            "grossTotal": "grossTotal",
                            "amountsMatch": true
                          }
                        },
                        {
                          "sourceInvoiceId": "x",
                          "fullNumber": "fullNumber",
                          "issueDate": "2023-01-15",
                          "type": "invoice",
                          "currency": "currency",
                          "grossTotal": "grossTotal",
                          "paymentStatus": "unpaid",
                          "match": "mirrored",
                          "counterpart": {
                            "invoiceId": "x",
                            "status": "draft",
                            "paymentStatus": "unpaid",
                            "grossTotal": "grossTotal",
                            "amountsMatch": true
                          }
                        }
                      ],
                      "unmatchedPurchases": [
                        {
                          "invoiceId": "x",
                          "documentNumber": "documentNumber",
                          "documentDate": "2023-01-15",
                          "currency": "currency",
                          "grossTotal": "grossTotal",
                          "status": "draft"
                        },
                        {
                          "invoiceId": "x",
                          "documentNumber": "documentNumber",
                          "documentDate": "2023-01-15",
                          "currency": "currency",
                          "grossTotal": "grossTotal",
                          "status": "draft"
                        }
                      ],
                      "totals": [
                        {
                          "currency": "currency",
                          "salesGross": "salesGross",
                          "purchasesGross": "purchasesGross",
                          "grossDifference": "grossDifference",
                          "openReceivable": "openReceivable",
                          "openPayable": "openPayable",
                          "openDifference": "openDifference"
                        },
                        {
                          "currency": "currency",
                          "salesGross": "salesGross",
                          "purchasesGross": "purchasesGross",
                          "grossDifference": "grossDifference",
                          "openReceivable": "openReceivable",
                          "openPayable": "openPayable",
                          "openDifference": "openDifference"
                        }
                      ]
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
        let expectedResponse = IntercompanyReportConsolidationResponse(
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            directions: [
                IntercompanyReportConsolidationResponseDirectionsItem(
                    sellerCompanyId: "x",
                    sellerName: "sellerName",
                    buyerCompanyId: "x",
                    buyerName: "buyerName",
                    documents: [
                        IntercompanyReportConsolidationResponseDirectionsItemDocumentsItem(
                            sourceInvoiceId: "x",
                            fullNumber: "fullNumber",
                            issueDate: CalendarDate("2023-01-15")!,
                            type: .invoice,
                            currency: "currency",
                            grossTotal: "grossTotal",
                            paymentStatus: .unpaid,
                            match: .mirrored,
                            counterpart: Nullable<IntercompanyReportConsolidationResponseDirectionsItemDocumentsItemCounterpart>.value(IntercompanyReportConsolidationResponseDirectionsItemDocumentsItemCounterpart(
                                invoiceId: "x",
                                status: .draft,
                                paymentStatus: .unpaid,
                                grossTotal: "grossTotal",
                                amountsMatch: true
                            ))
                        ),
                        IntercompanyReportConsolidationResponseDirectionsItemDocumentsItem(
                            sourceInvoiceId: "x",
                            fullNumber: "fullNumber",
                            issueDate: CalendarDate("2023-01-15")!,
                            type: .invoice,
                            currency: "currency",
                            grossTotal: "grossTotal",
                            paymentStatus: .unpaid,
                            match: .mirrored,
                            counterpart: Nullable<IntercompanyReportConsolidationResponseDirectionsItemDocumentsItemCounterpart>.value(IntercompanyReportConsolidationResponseDirectionsItemDocumentsItemCounterpart(
                                invoiceId: "x",
                                status: .draft,
                                paymentStatus: .unpaid,
                                grossTotal: "grossTotal",
                                amountsMatch: true
                            ))
                        )
                    ],
                    unmatchedPurchases: [
                        IntercompanyReportConsolidationResponseDirectionsItemUnmatchedPurchasesItem(
                            invoiceId: "x",
                            documentNumber: "documentNumber",
                            documentDate: CalendarDate("2023-01-15")!,
                            currency: "currency",
                            grossTotal: "grossTotal",
                            status: .draft
                        ),
                        IntercompanyReportConsolidationResponseDirectionsItemUnmatchedPurchasesItem(
                            invoiceId: "x",
                            documentNumber: "documentNumber",
                            documentDate: CalendarDate("2023-01-15")!,
                            currency: "currency",
                            grossTotal: "grossTotal",
                            status: .draft
                        )
                    ],
                    totals: [
                        IntercompanyReportConsolidationResponseDirectionsItemTotalsItem(
                            currency: "currency",
                            salesGross: "salesGross",
                            purchasesGross: "purchasesGross",
                            grossDifference: "grossDifference",
                            openReceivable: "openReceivable",
                            openPayable: "openPayable",
                            openDifference: "openDifference"
                        ),
                        IntercompanyReportConsolidationResponseDirectionsItemTotalsItem(
                            currency: "currency",
                            salesGross: "salesGross",
                            purchasesGross: "purchasesGross",
                            grossDifference: "grossDifference",
                            openReceivable: "openReceivable",
                            openPayable: "openPayable",
                            openDifference: "openDifference"
                        )
                    ]
                ),
                IntercompanyReportConsolidationResponseDirectionsItem(
                    sellerCompanyId: "x",
                    sellerName: "sellerName",
                    buyerCompanyId: "x",
                    buyerName: "buyerName",
                    documents: [
                        IntercompanyReportConsolidationResponseDirectionsItemDocumentsItem(
                            sourceInvoiceId: "x",
                            fullNumber: "fullNumber",
                            issueDate: CalendarDate("2023-01-15")!,
                            type: .invoice,
                            currency: "currency",
                            grossTotal: "grossTotal",
                            paymentStatus: .unpaid,
                            match: .mirrored,
                            counterpart: Nullable<IntercompanyReportConsolidationResponseDirectionsItemDocumentsItemCounterpart>.value(IntercompanyReportConsolidationResponseDirectionsItemDocumentsItemCounterpart(
                                invoiceId: "x",
                                status: .draft,
                                paymentStatus: .unpaid,
                                grossTotal: "grossTotal",
                                amountsMatch: true
                            ))
                        ),
                        IntercompanyReportConsolidationResponseDirectionsItemDocumentsItem(
                            sourceInvoiceId: "x",
                            fullNumber: "fullNumber",
                            issueDate: CalendarDate("2023-01-15")!,
                            type: .invoice,
                            currency: "currency",
                            grossTotal: "grossTotal",
                            paymentStatus: .unpaid,
                            match: .mirrored,
                            counterpart: Nullable<IntercompanyReportConsolidationResponseDirectionsItemDocumentsItemCounterpart>.value(IntercompanyReportConsolidationResponseDirectionsItemDocumentsItemCounterpart(
                                invoiceId: "x",
                                status: .draft,
                                paymentStatus: .unpaid,
                                grossTotal: "grossTotal",
                                amountsMatch: true
                            ))
                        )
                    ],
                    unmatchedPurchases: [
                        IntercompanyReportConsolidationResponseDirectionsItemUnmatchedPurchasesItem(
                            invoiceId: "x",
                            documentNumber: "documentNumber",
                            documentDate: CalendarDate("2023-01-15")!,
                            currency: "currency",
                            grossTotal: "grossTotal",
                            status: .draft
                        ),
                        IntercompanyReportConsolidationResponseDirectionsItemUnmatchedPurchasesItem(
                            invoiceId: "x",
                            documentNumber: "documentNumber",
                            documentDate: CalendarDate("2023-01-15")!,
                            currency: "currency",
                            grossTotal: "grossTotal",
                            status: .draft
                        )
                    ],
                    totals: [
                        IntercompanyReportConsolidationResponseDirectionsItemTotalsItem(
                            currency: "currency",
                            salesGross: "salesGross",
                            purchasesGross: "purchasesGross",
                            grossDifference: "grossDifference",
                            openReceivable: "openReceivable",
                            openPayable: "openPayable",
                            openDifference: "openDifference"
                        ),
                        IntercompanyReportConsolidationResponseDirectionsItemTotalsItem(
                            currency: "currency",
                            salesGross: "salesGross",
                            purchasesGross: "purchasesGross",
                            grossDifference: "grossDifference",
                            openReceivable: "openReceivable",
                            openPayable: "openPayable",
                            openDifference: "openDifference"
                        )
                    ]
                )
            ]
        )
        let response = try await client.consolidation.intercompanyReport(
            request: .init(
                groupId: "x",
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func report1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "presentationCurrency": "presentationCurrency",
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
                  "category": "micro",
                  "statements": {
                    "category": "micro",
                    "layout": "layout",
                    "requiredStatements": [
                      "requiredStatements"
                    ],
                    "asOf": "asOf",
                    "balanceSheet": {
                      "nonCurrentAssets": "nonCurrentAssets",
                      "currentAssets": "currentAssets",
                      "totalAssets": "totalAssets",
                      "equity": "equity",
                      "ofWhichResult": "ofWhichResult",
                      "liabilities": "liabilities",
                      "totalEquityAndLiabilities": "totalEquityAndLiabilities",
                      "balanced": true
                    },
                    "profitLoss": {
                      "fromDate": "2026-07-01",
                      "toDate": "2026-07-01",
                      "revenue": "revenue",
                      "expenses": "expenses",
                      "netResult": "netResult"
                    },
                    "balanceSheetDetail": {
                      "nonCurrentAssets": {
                        "intangible": "intangible",
                        "tangible": "tangible",
                        "financial": "financial",
                        "other": "other",
                        "total": "total"
                      },
                      "currentAssets": {
                        "inventories": "inventories",
                        "receivables": "receivables",
                        "otherCurrent": "otherCurrent",
                        "cash": "cash",
                        "total": "total"
                      },
                      "equity": {
                        "capital": "capital",
                        "reserves": "reserves",
                        "retainedEarnings": "retainedEarnings",
                        "otherEquity": "otherEquity",
                        "periodResult": "periodResult",
                        "total": "total"
                      },
                      "liabilities": {
                        "nonCurrent": "nonCurrent",
                        "current": "current",
                        "other": "other",
                        "total": "total"
                      }
                    },
                    "profitLossDetail": {
                      "salesRevenue": "salesRevenue",
                      "costOfSales": "costOfSales",
                      "grossProfit": "grossProfit",
                      "sellingExpenses": "sellingExpenses",
                      "adminExpenses": "adminExpenses",
                      "operatingProfit": "operatingProfit",
                      "otherActivityResult": "otherActivityResult",
                      "financialActivityResult": "financialActivityResult",
                      "profitBeforeTax": "profitBeforeTax",
                      "incomeTax": "incomeTax",
                      "netProfit": "netProfit"
                    }
                  },
                  "trialBalance": [
                    {
                      "code": "code",
                      "type": "type",
                      "closing": "closing",
                      "period": "period"
                    }
                  ],
                  "nonControllingInterest": {
                    "equity": "equity",
                    "result": "result"
                  },
                  "equityMethod": {
                    "investmentsInAssociates": "investmentsInAssociates",
                    "shareOfAssociatesResult": "shareOfAssociatesResult"
                  },
                  "members": [
                    {
                      "companyId": "companyId",
                      "name": "name",
                      "baseCurrency": "baseCurrency",
                      "ownershipPercent": "ownershipPercent",
                      "method": "full",
                      "fxFactor": "fxFactor",
                      "rateFrom": "rateFrom",
                      "rateTo": "rateTo",
                      "totalAssets": "totalAssets",
                      "netEquity": "netEquity",
                      "periodResult": "periodResult"
                    }
                  ],
                  "eliminations": {
                    "applied": [
                      {
                        "code": "code",
                        "amount": "amount"
                      }
                    ],
                    "balanced": true,
                    "net": "net"
                  },
                  "cashFlow": {
                    "openingCash": "openingCash",
                    "closingCash": "closingCash",
                    "netChange": "netChange",
                    "operating": {
                      "inflow": "inflow",
                      "outflow": "outflow",
                      "net": "net",
                      "rows": [
                        {
                          "code": "code",
                          "name": "name",
                          "inflow": "inflow",
                          "outflow": "outflow"
                        }
                      ]
                    },
                    "investing": {
                      "inflow": "inflow",
                      "outflow": "outflow",
                      "net": "net",
                      "rows": [
                        {
                          "code": "code",
                          "name": "name",
                          "inflow": "inflow",
                          "outflow": "outflow"
                        }
                      ]
                    },
                    "financing": {
                      "inflow": "inflow",
                      "outflow": "outflow",
                      "net": "net",
                      "rows": [
                        {
                          "code": "code",
                          "name": "name",
                          "inflow": "inflow",
                          "outflow": "outflow"
                        }
                      ]
                    },
                    "balanced": true
                  },
                  "intercompanyCandidates": [
                    {
                      "memberCompanyId": "memberCompanyId",
                      "memberName": "memberName",
                      "partnerId": "partnerId",
                      "partnerName": "partnerName",
                      "partnerCode": "partnerCode",
                      "matchesCompanyId": "matchesCompanyId",
                      "matchesCompanyName": "matchesCompanyName",
                      "matchedOn": "code"
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
        let expectedResponse = ReportConsolidationResponse(
            presentationCurrency: "presentationCurrency",
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            category: .micro,
            statements: ReportConsolidationResponseStatements(
                category: .micro,
                layout: "layout",
                requiredStatements: [
                    "requiredStatements"
                ],
                asOf: "asOf",
                balanceSheet: ReportConsolidationResponseStatementsBalanceSheet(
                    nonCurrentAssets: "nonCurrentAssets",
                    currentAssets: "currentAssets",
                    totalAssets: "totalAssets",
                    equity: "equity",
                    ofWhichResult: "ofWhichResult",
                    liabilities: "liabilities",
                    totalEquityAndLiabilities: "totalEquityAndLiabilities",
                    balanced: true
                ),
                profitLoss: ReportConsolidationResponseStatementsProfitLoss(
                    fromDate: CalendarDate("2026-07-01")!,
                    toDate: CalendarDate("2026-07-01")!,
                    revenue: "revenue",
                    expenses: "expenses",
                    netResult: "netResult"
                ),
                balanceSheetDetail: Optional(ReportConsolidationResponseStatementsBalanceSheetDetail(
                    nonCurrentAssets: ReportConsolidationResponseStatementsBalanceSheetDetailNonCurrentAssets(
                        intangible: "intangible",
                        tangible: "tangible",
                        financial: "financial",
                        other: "other",
                        total: "total"
                    ),
                    currentAssets: ReportConsolidationResponseStatementsBalanceSheetDetailCurrentAssets(
                        inventories: "inventories",
                        receivables: "receivables",
                        otherCurrent: "otherCurrent",
                        cash: "cash",
                        total: "total"
                    ),
                    equity: ReportConsolidationResponseStatementsBalanceSheetDetailEquity(
                        capital: "capital",
                        reserves: "reserves",
                        retainedEarnings: "retainedEarnings",
                        otherEquity: "otherEquity",
                        periodResult: "periodResult",
                        total: "total"
                    ),
                    liabilities: ReportConsolidationResponseStatementsBalanceSheetDetailLiabilities(
                        nonCurrent: "nonCurrent",
                        current: "current",
                        other: "other",
                        total: "total"
                    )
                )),
                profitLossDetail: Optional(ReportConsolidationResponseStatementsProfitLossDetail(
                    salesRevenue: "salesRevenue",
                    costOfSales: "costOfSales",
                    grossProfit: "grossProfit",
                    sellingExpenses: "sellingExpenses",
                    adminExpenses: "adminExpenses",
                    operatingProfit: "operatingProfit",
                    otherActivityResult: "otherActivityResult",
                    financialActivityResult: "financialActivityResult",
                    profitBeforeTax: "profitBeforeTax",
                    incomeTax: "incomeTax",
                    netProfit: "netProfit"
                ))
            ),
            trialBalance: [
                ReportConsolidationResponseTrialBalanceItem(
                    code: "code",
                    type: "type",
                    closing: "closing",
                    period: "period"
                )
            ],
            nonControllingInterest: ReportConsolidationResponseNonControllingInterest(
                equity: "equity",
                result: "result"
            ),
            equityMethod: ReportConsolidationResponseEquityMethod(
                investmentsInAssociates: "investmentsInAssociates",
                shareOfAssociatesResult: "shareOfAssociatesResult"
            ),
            members: [
                ReportConsolidationResponseMembersItem(
                    companyId: "companyId",
                    name: "name",
                    baseCurrency: "baseCurrency",
                    ownershipPercent: "ownershipPercent",
                    method: .full,
                    fxFactor: "fxFactor",
                    rateFrom: "rateFrom",
                    rateTo: "rateTo",
                    totalAssets: "totalAssets",
                    netEquity: "netEquity",
                    periodResult: "periodResult"
                )
            ],
            eliminations: ReportConsolidationResponseEliminations(
                applied: [
                    ReportConsolidationResponseEliminationsAppliedItem(
                        code: "code",
                        amount: "amount"
                    )
                ],
                balanced: true,
                net: "net"
            ),
            cashFlow: ReportConsolidationResponseCashFlow(
                openingCash: "openingCash",
                closingCash: "closingCash",
                netChange: "netChange",
                operating: ReportConsolidationResponseCashFlowOperating(
                    inflow: "inflow",
                    outflow: "outflow",
                    net: "net",
                    rows: [
                        ReportConsolidationResponseCashFlowOperatingRowsItem(
                            code: "code",
                            name: "name",
                            inflow: "inflow",
                            outflow: "outflow"
                        )
                    ]
                ),
                investing: ReportConsolidationResponseCashFlowInvesting(
                    inflow: "inflow",
                    outflow: "outflow",
                    net: "net",
                    rows: [
                        ReportConsolidationResponseCashFlowInvestingRowsItem(
                            code: "code",
                            name: "name",
                            inflow: "inflow",
                            outflow: "outflow"
                        )
                    ]
                ),
                financing: ReportConsolidationResponseCashFlowFinancing(
                    inflow: "inflow",
                    outflow: "outflow",
                    net: "net",
                    rows: [
                        ReportConsolidationResponseCashFlowFinancingRowsItem(
                            code: "code",
                            name: "name",
                            inflow: "inflow",
                            outflow: "outflow"
                        )
                    ]
                ),
                balanced: true
            ),
            intercompanyCandidates: [
                ReportConsolidationResponseIntercompanyCandidatesItem(
                    memberCompanyId: "memberCompanyId",
                    memberName: "memberName",
                    partnerId: "partnerId",
                    partnerName: "partnerName",
                    partnerCode: Nullable<String>.value("partnerCode"),
                    matchesCompanyId: "matchesCompanyId",
                    matchesCompanyName: "matchesCompanyName",
                    matchedOn: .code
                )
            ]
        )
        let response = try await client.consolidation.report(
            request: .init(
                groupId: "groupId",
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func report2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "presentationCurrency": "presentationCurrency",
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
                  "category": "micro",
                  "statements": {
                    "category": "micro",
                    "layout": "layout",
                    "requiredStatements": [
                      "requiredStatements",
                      "requiredStatements"
                    ],
                    "asOf": "asOf",
                    "balanceSheet": {
                      "nonCurrentAssets": "nonCurrentAssets",
                      "currentAssets": "currentAssets",
                      "totalAssets": "totalAssets",
                      "equity": "equity",
                      "ofWhichResult": "ofWhichResult",
                      "liabilities": "liabilities",
                      "totalEquityAndLiabilities": "totalEquityAndLiabilities",
                      "balanced": true
                    },
                    "profitLoss": {
                      "fromDate": "2023-01-15",
                      "toDate": "2023-01-15",
                      "revenue": "revenue",
                      "expenses": "expenses",
                      "netResult": "netResult"
                    },
                    "balanceSheetDetail": {
                      "nonCurrentAssets": {
                        "intangible": "intangible",
                        "tangible": "tangible",
                        "financial": "financial",
                        "other": "other",
                        "total": "total"
                      },
                      "currentAssets": {
                        "inventories": "inventories",
                        "receivables": "receivables",
                        "otherCurrent": "otherCurrent",
                        "cash": "cash",
                        "total": "total"
                      },
                      "equity": {
                        "capital": "capital",
                        "reserves": "reserves",
                        "retainedEarnings": "retainedEarnings",
                        "otherEquity": "otherEquity",
                        "periodResult": "periodResult",
                        "total": "total"
                      },
                      "liabilities": {
                        "nonCurrent": "nonCurrent",
                        "current": "current",
                        "other": "other",
                        "total": "total"
                      }
                    },
                    "profitLossDetail": {
                      "salesRevenue": "salesRevenue",
                      "costOfSales": "costOfSales",
                      "grossProfit": "grossProfit",
                      "sellingExpenses": "sellingExpenses",
                      "adminExpenses": "adminExpenses",
                      "operatingProfit": "operatingProfit",
                      "otherActivityResult": "otherActivityResult",
                      "financialActivityResult": "financialActivityResult",
                      "profitBeforeTax": "profitBeforeTax",
                      "incomeTax": "incomeTax",
                      "netProfit": "netProfit"
                    }
                  },
                  "trialBalance": [
                    {
                      "code": "code",
                      "type": "type",
                      "closing": "closing",
                      "period": "period"
                    },
                    {
                      "code": "code",
                      "type": "type",
                      "closing": "closing",
                      "period": "period"
                    }
                  ],
                  "nonControllingInterest": {
                    "equity": "equity",
                    "result": "result"
                  },
                  "equityMethod": {
                    "investmentsInAssociates": "investmentsInAssociates",
                    "shareOfAssociatesResult": "shareOfAssociatesResult"
                  },
                  "members": [
                    {
                      "companyId": "x",
                      "name": "name",
                      "baseCurrency": "baseCurrency",
                      "ownershipPercent": "ownershipPercent",
                      "method": "full",
                      "fxFactor": "fxFactor",
                      "rateFrom": "rateFrom",
                      "rateTo": "rateTo",
                      "totalAssets": "totalAssets",
                      "netEquity": "netEquity",
                      "periodResult": "periodResult"
                    },
                    {
                      "companyId": "x",
                      "name": "name",
                      "baseCurrency": "baseCurrency",
                      "ownershipPercent": "ownershipPercent",
                      "method": "full",
                      "fxFactor": "fxFactor",
                      "rateFrom": "rateFrom",
                      "rateTo": "rateTo",
                      "totalAssets": "totalAssets",
                      "netEquity": "netEquity",
                      "periodResult": "periodResult"
                    }
                  ],
                  "eliminations": {
                    "applied": [
                      {
                        "code": "code",
                        "amount": "amount",
                        "note": "note"
                      },
                      {
                        "code": "code",
                        "amount": "amount",
                        "note": "note"
                      }
                    ],
                    "balanced": true,
                    "net": "net"
                  },
                  "cashFlow": {
                    "openingCash": "openingCash",
                    "closingCash": "closingCash",
                    "netChange": "netChange",
                    "operating": {
                      "inflow": "inflow",
                      "outflow": "outflow",
                      "net": "net",
                      "rows": [
                        {
                          "code": "code",
                          "name": "name",
                          "inflow": "inflow",
                          "outflow": "outflow"
                        },
                        {
                          "code": "code",
                          "name": "name",
                          "inflow": "inflow",
                          "outflow": "outflow"
                        }
                      ]
                    },
                    "investing": {
                      "inflow": "inflow",
                      "outflow": "outflow",
                      "net": "net",
                      "rows": [
                        {
                          "code": "code",
                          "name": "name",
                          "inflow": "inflow",
                          "outflow": "outflow"
                        },
                        {
                          "code": "code",
                          "name": "name",
                          "inflow": "inflow",
                          "outflow": "outflow"
                        }
                      ]
                    },
                    "financing": {
                      "inflow": "inflow",
                      "outflow": "outflow",
                      "net": "net",
                      "rows": [
                        {
                          "code": "code",
                          "name": "name",
                          "inflow": "inflow",
                          "outflow": "outflow"
                        },
                        {
                          "code": "code",
                          "name": "name",
                          "inflow": "inflow",
                          "outflow": "outflow"
                        }
                      ]
                    },
                    "balanced": true
                  },
                  "intercompanyCandidates": [
                    {
                      "memberCompanyId": "x",
                      "memberName": "memberName",
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "partnerCode": "partnerCode",
                      "matchesCompanyId": "x",
                      "matchesCompanyName": "matchesCompanyName",
                      "matchedOn": "code"
                    },
                    {
                      "memberCompanyId": "x",
                      "memberName": "memberName",
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "partnerCode": "partnerCode",
                      "matchesCompanyId": "x",
                      "matchesCompanyName": "matchesCompanyName",
                      "matchedOn": "code"
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
        let expectedResponse = ReportConsolidationResponse(
            presentationCurrency: "presentationCurrency",
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            category: .micro,
            statements: ReportConsolidationResponseStatements(
                category: .micro,
                layout: "layout",
                requiredStatements: [
                    "requiredStatements",
                    "requiredStatements"
                ],
                asOf: "asOf",
                balanceSheet: ReportConsolidationResponseStatementsBalanceSheet(
                    nonCurrentAssets: "nonCurrentAssets",
                    currentAssets: "currentAssets",
                    totalAssets: "totalAssets",
                    equity: "equity",
                    ofWhichResult: "ofWhichResult",
                    liabilities: "liabilities",
                    totalEquityAndLiabilities: "totalEquityAndLiabilities",
                    balanced: true
                ),
                profitLoss: ReportConsolidationResponseStatementsProfitLoss(
                    fromDate: CalendarDate("2023-01-15")!,
                    toDate: CalendarDate("2023-01-15")!,
                    revenue: "revenue",
                    expenses: "expenses",
                    netResult: "netResult"
                ),
                balanceSheetDetail: Optional(ReportConsolidationResponseStatementsBalanceSheetDetail(
                    nonCurrentAssets: ReportConsolidationResponseStatementsBalanceSheetDetailNonCurrentAssets(
                        intangible: "intangible",
                        tangible: "tangible",
                        financial: "financial",
                        other: "other",
                        total: "total"
                    ),
                    currentAssets: ReportConsolidationResponseStatementsBalanceSheetDetailCurrentAssets(
                        inventories: "inventories",
                        receivables: "receivables",
                        otherCurrent: "otherCurrent",
                        cash: "cash",
                        total: "total"
                    ),
                    equity: ReportConsolidationResponseStatementsBalanceSheetDetailEquity(
                        capital: "capital",
                        reserves: "reserves",
                        retainedEarnings: "retainedEarnings",
                        otherEquity: "otherEquity",
                        periodResult: "periodResult",
                        total: "total"
                    ),
                    liabilities: ReportConsolidationResponseStatementsBalanceSheetDetailLiabilities(
                        nonCurrent: "nonCurrent",
                        current: "current",
                        other: "other",
                        total: "total"
                    )
                )),
                profitLossDetail: Optional(ReportConsolidationResponseStatementsProfitLossDetail(
                    salesRevenue: "salesRevenue",
                    costOfSales: "costOfSales",
                    grossProfit: "grossProfit",
                    sellingExpenses: "sellingExpenses",
                    adminExpenses: "adminExpenses",
                    operatingProfit: "operatingProfit",
                    otherActivityResult: "otherActivityResult",
                    financialActivityResult: "financialActivityResult",
                    profitBeforeTax: "profitBeforeTax",
                    incomeTax: "incomeTax",
                    netProfit: "netProfit"
                ))
            ),
            trialBalance: [
                ReportConsolidationResponseTrialBalanceItem(
                    code: "code",
                    type: "type",
                    closing: "closing",
                    period: "period"
                ),
                ReportConsolidationResponseTrialBalanceItem(
                    code: "code",
                    type: "type",
                    closing: "closing",
                    period: "period"
                )
            ],
            nonControllingInterest: ReportConsolidationResponseNonControllingInterest(
                equity: "equity",
                result: "result"
            ),
            equityMethod: ReportConsolidationResponseEquityMethod(
                investmentsInAssociates: "investmentsInAssociates",
                shareOfAssociatesResult: "shareOfAssociatesResult"
            ),
            members: [
                ReportConsolidationResponseMembersItem(
                    companyId: "x",
                    name: "name",
                    baseCurrency: "baseCurrency",
                    ownershipPercent: "ownershipPercent",
                    method: .full,
                    fxFactor: "fxFactor",
                    rateFrom: "rateFrom",
                    rateTo: "rateTo",
                    totalAssets: "totalAssets",
                    netEquity: "netEquity",
                    periodResult: "periodResult"
                ),
                ReportConsolidationResponseMembersItem(
                    companyId: "x",
                    name: "name",
                    baseCurrency: "baseCurrency",
                    ownershipPercent: "ownershipPercent",
                    method: .full,
                    fxFactor: "fxFactor",
                    rateFrom: "rateFrom",
                    rateTo: "rateTo",
                    totalAssets: "totalAssets",
                    netEquity: "netEquity",
                    periodResult: "periodResult"
                )
            ],
            eliminations: ReportConsolidationResponseEliminations(
                applied: [
                    ReportConsolidationResponseEliminationsAppliedItem(
                        code: "code",
                        amount: "amount",
                        note: Optional("note")
                    ),
                    ReportConsolidationResponseEliminationsAppliedItem(
                        code: "code",
                        amount: "amount",
                        note: Optional("note")
                    )
                ],
                balanced: true,
                net: "net"
            ),
            cashFlow: ReportConsolidationResponseCashFlow(
                openingCash: "openingCash",
                closingCash: "closingCash",
                netChange: "netChange",
                operating: ReportConsolidationResponseCashFlowOperating(
                    inflow: "inflow",
                    outflow: "outflow",
                    net: "net",
                    rows: [
                        ReportConsolidationResponseCashFlowOperatingRowsItem(
                            code: "code",
                            name: "name",
                            inflow: "inflow",
                            outflow: "outflow"
                        ),
                        ReportConsolidationResponseCashFlowOperatingRowsItem(
                            code: "code",
                            name: "name",
                            inflow: "inflow",
                            outflow: "outflow"
                        )
                    ]
                ),
                investing: ReportConsolidationResponseCashFlowInvesting(
                    inflow: "inflow",
                    outflow: "outflow",
                    net: "net",
                    rows: [
                        ReportConsolidationResponseCashFlowInvestingRowsItem(
                            code: "code",
                            name: "name",
                            inflow: "inflow",
                            outflow: "outflow"
                        ),
                        ReportConsolidationResponseCashFlowInvestingRowsItem(
                            code: "code",
                            name: "name",
                            inflow: "inflow",
                            outflow: "outflow"
                        )
                    ]
                ),
                financing: ReportConsolidationResponseCashFlowFinancing(
                    inflow: "inflow",
                    outflow: "outflow",
                    net: "net",
                    rows: [
                        ReportConsolidationResponseCashFlowFinancingRowsItem(
                            code: "code",
                            name: "name",
                            inflow: "inflow",
                            outflow: "outflow"
                        ),
                        ReportConsolidationResponseCashFlowFinancingRowsItem(
                            code: "code",
                            name: "name",
                            inflow: "inflow",
                            outflow: "outflow"
                        )
                    ]
                ),
                balanced: true
            ),
            intercompanyCandidates: [
                ReportConsolidationResponseIntercompanyCandidatesItem(
                    memberCompanyId: "x",
                    memberName: "memberName",
                    partnerId: "x",
                    partnerName: "partnerName",
                    partnerCode: Nullable<String>.value("partnerCode"),
                    matchesCompanyId: "x",
                    matchesCompanyName: "matchesCompanyName",
                    matchedOn: .code
                ),
                ReportConsolidationResponseIntercompanyCandidatesItem(
                    memberCompanyId: "x",
                    memberName: "memberName",
                    partnerId: "x",
                    partnerName: "partnerName",
                    partnerCode: Nullable<String>.value("partnerCode"),
                    matchesCompanyId: "x",
                    matchesCompanyName: "matchesCompanyName",
                    matchedOn: .code
                )
            ]
        )
        let response = try await client.consolidation.report(
            request: .init(
                groupId: "x",
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}