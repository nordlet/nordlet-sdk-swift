import Foundation
import Testing
import Api

@Suite("AssetsClient Wire Tests") struct AssetsClientWireTests {
    @Test func postV1AssetsGroupsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "code": "code",
                  "name": "name",
                  "defaultUsefulLifeMonths": 1000000,
                  "assetAccountCode": "assetAccountCode",
                  "depreciationAccountCode": "depreciationAccountCode",
                  "expenseAccountCode": "expenseAccountCode",
                  "id": "id",
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AssetsGroupsCreateResponse(
            code: "code",
            name: "name",
            defaultUsefulLifeMonths: Nullable<Int64>.value(1000000),
            assetAccountCode: "assetAccountCode",
            depreciationAccountCode: "depreciationAccountCode",
            expenseAccountCode: "expenseAccountCode",
            id: "id",
            createdAt: "createdAt"
        )
        let response = try await client.assets.postV1AssetsGroupsCreate(
            request: .init(
                code: "code",
                name: "name",
                assetAccountCode: "assetAccountCode",
                depreciationAccountCode: "depreciationAccountCode"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsGroupsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "code": "x",
                  "name": "x",
                  "defaultUsefulLifeMonths": 1000000,
                  "assetAccountCode": "x",
                  "depreciationAccountCode": "x",
                  "expenseAccountCode": "6206",
                  "id": "x",
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AssetsGroupsCreateResponse(
            code: "x",
            name: "x",
            defaultUsefulLifeMonths: Nullable<Int64>.value(1000000),
            assetAccountCode: "x",
            depreciationAccountCode: "x",
            expenseAccountCode: "6206",
            id: "x",
            createdAt: "createdAt"
        )
        let response = try await client.assets.postV1AssetsGroupsCreate(
            request: .init(
                code: "x",
                name: "x",
                assetAccountCode: "x",
                depreciationAccountCode: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsGroupsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "name": "name",
                      "defaultUsefulLifeMonths": 1000000,
                      "assetAccountCode": "assetAccountCode",
                      "depreciationAccountCode": "depreciationAccountCode",
                      "expenseAccountCode": "expenseAccountCode",
                      "id": "id",
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
        let expectedResponse = PostV1AssetsGroupsListResponse(
            rows: [
                PostV1AssetsGroupsListResponseRowsItem(
                    code: "code",
                    name: "name",
                    defaultUsefulLifeMonths: Nullable<Int64>.value(1000000),
                    assetAccountCode: "assetAccountCode",
                    depreciationAccountCode: "depreciationAccountCode",
                    expenseAccountCode: "expenseAccountCode",
                    id: "id",
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.assets.postV1AssetsGroupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsGroupsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "x",
                      "name": "x",
                      "defaultUsefulLifeMonths": 1000000,
                      "assetAccountCode": "x",
                      "depreciationAccountCode": "x",
                      "expenseAccountCode": "6206",
                      "id": "x",
                      "createdAt": "createdAt"
                    },
                    {
                      "code": "x",
                      "name": "x",
                      "defaultUsefulLifeMonths": 1000000,
                      "assetAccountCode": "x",
                      "depreciationAccountCode": "x",
                      "expenseAccountCode": "6206",
                      "id": "x",
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
        let expectedResponse = PostV1AssetsGroupsListResponse(
            rows: [
                PostV1AssetsGroupsListResponseRowsItem(
                    code: "x",
                    name: "x",
                    defaultUsefulLifeMonths: Nullable<Int64>.value(1000000),
                    assetAccountCode: "x",
                    depreciationAccountCode: "x",
                    expenseAccountCode: "6206",
                    id: "x",
                    createdAt: "createdAt"
                ),
                PostV1AssetsGroupsListResponseRowsItem(
                    code: "x",
                    name: "x",
                    defaultUsefulLifeMonths: Nullable<Int64>.value(1000000),
                    assetAccountCode: "x",
                    depreciationAccountCode: "x",
                    expenseAccountCode: "6206",
                    id: "x",
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.assets.postV1AssetsGroupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsAssetsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "groupId": "groupId",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "acquisitionDate",
                  "depreciationStartDate": "depreciationStartDate",
                  "acquisitionCost": "acquisitionCost",
                  "salvageValue": "salvageValue",
                  "usefulLifeMonths": 1000000,
                  "totalCost": "totalCost",
                  "accumulatedDepreciation": "accumulatedDepreciation",
                  "netBookValue": "netBookValue",
                  "depreciatedMonths": 1000000,
                  "totalLifeMonths": 1000000,
                  "status": "active",
                  "notes": "notes",
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AssetsAssetsCreateResponse(
            id: "id",
            groupId: "groupId",
            code: "code",
            name: "name",
            acquisitionDate: "acquisitionDate",
            depreciationStartDate: "depreciationStartDate",
            acquisitionCost: "acquisitionCost",
            salvageValue: "salvageValue",
            usefulLifeMonths: 1000000,
            totalCost: "totalCost",
            accumulatedDepreciation: "accumulatedDepreciation",
            netBookValue: "netBookValue",
            depreciatedMonths: 1000000,
            totalLifeMonths: 1000000,
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.assets.postV1AssetsAssetsCreate(
            request: .init(
                groupId: "groupId",
                code: "code",
                name: "name",
                acquisitionDate: "acquisitionDate",
                acquisitionCost: "acquisitionCost"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsAssetsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "groupId": "x",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "acquisitionDate",
                  "depreciationStartDate": "depreciationStartDate",
                  "acquisitionCost": "acquisitionCost",
                  "salvageValue": "salvageValue",
                  "usefulLifeMonths": 1000000,
                  "totalCost": "totalCost",
                  "accumulatedDepreciation": "accumulatedDepreciation",
                  "netBookValue": "netBookValue",
                  "depreciatedMonths": 1000000,
                  "totalLifeMonths": 1000000,
                  "status": "active",
                  "notes": "notes",
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AssetsAssetsCreateResponse(
            id: "x",
            groupId: "x",
            code: "code",
            name: "name",
            acquisitionDate: "acquisitionDate",
            depreciationStartDate: "depreciationStartDate",
            acquisitionCost: "acquisitionCost",
            salvageValue: "salvageValue",
            usefulLifeMonths: 1000000,
            totalCost: "totalCost",
            accumulatedDepreciation: "accumulatedDepreciation",
            netBookValue: "netBookValue",
            depreciatedMonths: 1000000,
            totalLifeMonths: 1000000,
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.assets.postV1AssetsAssetsCreate(
            request: .init(
                groupId: "x",
                code: "x",
                name: "x",
                acquisitionDate: "acquisitionDate",
                acquisitionCost: "acquisitionCost"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsAssetsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "groupId": "groupId",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "acquisitionDate",
                  "depreciationStartDate": "depreciationStartDate",
                  "acquisitionCost": "acquisitionCost",
                  "salvageValue": "salvageValue",
                  "usefulLifeMonths": 1000000,
                  "totalCost": "totalCost",
                  "accumulatedDepreciation": "accumulatedDepreciation",
                  "netBookValue": "netBookValue",
                  "depreciatedMonths": 1000000,
                  "totalLifeMonths": 1000000,
                  "status": "active",
                  "notes": "notes",
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AssetsAssetsGetResponse(
            id: "id",
            groupId: "groupId",
            code: "code",
            name: "name",
            acquisitionDate: "acquisitionDate",
            depreciationStartDate: "depreciationStartDate",
            acquisitionCost: "acquisitionCost",
            salvageValue: "salvageValue",
            usefulLifeMonths: 1000000,
            totalCost: "totalCost",
            accumulatedDepreciation: "accumulatedDepreciation",
            netBookValue: "netBookValue",
            depreciatedMonths: 1000000,
            totalLifeMonths: 1000000,
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.assets.postV1AssetsAssetsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsAssetsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "groupId": "x",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "acquisitionDate",
                  "depreciationStartDate": "depreciationStartDate",
                  "acquisitionCost": "acquisitionCost",
                  "salvageValue": "salvageValue",
                  "usefulLifeMonths": 1000000,
                  "totalCost": "totalCost",
                  "accumulatedDepreciation": "accumulatedDepreciation",
                  "netBookValue": "netBookValue",
                  "depreciatedMonths": 1000000,
                  "totalLifeMonths": 1000000,
                  "status": "active",
                  "notes": "notes",
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AssetsAssetsGetResponse(
            id: "x",
            groupId: "x",
            code: "code",
            name: "name",
            acquisitionDate: "acquisitionDate",
            depreciationStartDate: "depreciationStartDate",
            acquisitionCost: "acquisitionCost",
            salvageValue: "salvageValue",
            usefulLifeMonths: 1000000,
            totalCost: "totalCost",
            accumulatedDepreciation: "accumulatedDepreciation",
            netBookValue: "netBookValue",
            depreciatedMonths: 1000000,
            totalLifeMonths: 1000000,
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.assets.postV1AssetsAssetsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsAssetsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "groupId": "groupId",
                      "code": "code",
                      "name": "name",
                      "acquisitionDate": "acquisitionDate",
                      "depreciationStartDate": "depreciationStartDate",
                      "acquisitionCost": "acquisitionCost",
                      "salvageValue": "salvageValue",
                      "usefulLifeMonths": 1000000,
                      "totalCost": "totalCost",
                      "accumulatedDepreciation": "accumulatedDepreciation",
                      "netBookValue": "netBookValue",
                      "depreciatedMonths": 1000000,
                      "totalLifeMonths": 1000000,
                      "status": "active",
                      "notes": "notes",
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
        let expectedResponse = PostV1AssetsAssetsListResponse(
            rows: [
                PostV1AssetsAssetsListResponseRowsItem(
                    id: "id",
                    groupId: "groupId",
                    code: "code",
                    name: "name",
                    acquisitionDate: "acquisitionDate",
                    depreciationStartDate: "depreciationStartDate",
                    acquisitionCost: "acquisitionCost",
                    salvageValue: "salvageValue",
                    usefulLifeMonths: 1000000,
                    totalCost: "totalCost",
                    accumulatedDepreciation: "accumulatedDepreciation",
                    netBookValue: "netBookValue",
                    depreciatedMonths: 1000000,
                    totalLifeMonths: 1000000,
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.assets.postV1AssetsAssetsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsAssetsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "groupId": "x",
                      "code": "code",
                      "name": "name",
                      "acquisitionDate": "acquisitionDate",
                      "depreciationStartDate": "depreciationStartDate",
                      "acquisitionCost": "acquisitionCost",
                      "salvageValue": "salvageValue",
                      "usefulLifeMonths": 1000000,
                      "totalCost": "totalCost",
                      "accumulatedDepreciation": "accumulatedDepreciation",
                      "netBookValue": "netBookValue",
                      "depreciatedMonths": 1000000,
                      "totalLifeMonths": 1000000,
                      "status": "active",
                      "notes": "notes",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "groupId": "x",
                      "code": "code",
                      "name": "name",
                      "acquisitionDate": "acquisitionDate",
                      "depreciationStartDate": "depreciationStartDate",
                      "acquisitionCost": "acquisitionCost",
                      "salvageValue": "salvageValue",
                      "usefulLifeMonths": 1000000,
                      "totalCost": "totalCost",
                      "accumulatedDepreciation": "accumulatedDepreciation",
                      "netBookValue": "netBookValue",
                      "depreciatedMonths": 1000000,
                      "totalLifeMonths": 1000000,
                      "status": "active",
                      "notes": "notes",
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
        let expectedResponse = PostV1AssetsAssetsListResponse(
            rows: [
                PostV1AssetsAssetsListResponseRowsItem(
                    id: "x",
                    groupId: "x",
                    code: "code",
                    name: "name",
                    acquisitionDate: "acquisitionDate",
                    depreciationStartDate: "depreciationStartDate",
                    acquisitionCost: "acquisitionCost",
                    salvageValue: "salvageValue",
                    usefulLifeMonths: 1000000,
                    totalCost: "totalCost",
                    accumulatedDepreciation: "accumulatedDepreciation",
                    netBookValue: "netBookValue",
                    depreciatedMonths: 1000000,
                    totalLifeMonths: 1000000,
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1AssetsAssetsListResponseRowsItem(
                    id: "x",
                    groupId: "x",
                    code: "code",
                    name: "name",
                    acquisitionDate: "acquisitionDate",
                    depreciationStartDate: "depreciationStartDate",
                    acquisitionCost: "acquisitionCost",
                    salvageValue: "salvageValue",
                    usefulLifeMonths: 1000000,
                    totalCost: "totalCost",
                    accumulatedDepreciation: "accumulatedDepreciation",
                    netBookValue: "netBookValue",
                    depreciatedMonths: 1000000,
                    totalLifeMonths: 1000000,
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.assets.postV1AssetsAssetsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsAssetsModernize1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "groupId": "groupId",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "acquisitionDate",
                  "depreciationStartDate": "depreciationStartDate",
                  "acquisitionCost": "acquisitionCost",
                  "salvageValue": "salvageValue",
                  "usefulLifeMonths": 1000000,
                  "totalCost": "totalCost",
                  "accumulatedDepreciation": "accumulatedDepreciation",
                  "netBookValue": "netBookValue",
                  "depreciatedMonths": 1000000,
                  "totalLifeMonths": 1000000,
                  "status": "active",
                  "notes": "notes",
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AssetsAssetsModernizeResponse(
            id: "id",
            groupId: "groupId",
            code: "code",
            name: "name",
            acquisitionDate: "acquisitionDate",
            depreciationStartDate: "depreciationStartDate",
            acquisitionCost: "acquisitionCost",
            salvageValue: "salvageValue",
            usefulLifeMonths: 1000000,
            totalCost: "totalCost",
            accumulatedDepreciation: "accumulatedDepreciation",
            netBookValue: "netBookValue",
            depreciatedMonths: 1000000,
            totalLifeMonths: 1000000,
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.assets.postV1AssetsAssetsModernize(
            request: .init(
                id: "id",
                date: "date",
                amount: "amount"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsAssetsModernize2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "groupId": "x",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "acquisitionDate",
                  "depreciationStartDate": "depreciationStartDate",
                  "acquisitionCost": "acquisitionCost",
                  "salvageValue": "salvageValue",
                  "usefulLifeMonths": 1000000,
                  "totalCost": "totalCost",
                  "accumulatedDepreciation": "accumulatedDepreciation",
                  "netBookValue": "netBookValue",
                  "depreciatedMonths": 1000000,
                  "totalLifeMonths": 1000000,
                  "status": "active",
                  "notes": "notes",
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AssetsAssetsModernizeResponse(
            id: "x",
            groupId: "x",
            code: "code",
            name: "name",
            acquisitionDate: "acquisitionDate",
            depreciationStartDate: "depreciationStartDate",
            acquisitionCost: "acquisitionCost",
            salvageValue: "salvageValue",
            usefulLifeMonths: 1000000,
            totalCost: "totalCost",
            accumulatedDepreciation: "accumulatedDepreciation",
            netBookValue: "netBookValue",
            depreciatedMonths: 1000000,
            totalLifeMonths: 1000000,
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.assets.postV1AssetsAssetsModernize(
            request: .init(
                id: "x",
                date: "date",
                amount: "amount"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsDepreciationPreview1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "assetId": "assetId",
                      "code": "code",
                      "name": "name",
                      "amount": "amount",
                      "alreadyPosted": true
                    }
                  ],
                  "total": "total"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AssetsDepreciationPreviewResponse(
            rows: [
                PostV1AssetsDepreciationPreviewResponseRowsItem(
                    assetId: "assetId",
                    code: "code",
                    name: "name",
                    amount: "amount",
                    alreadyPosted: true
                )
            ],
            total: "total"
        )
        let response = try await client.assets.postV1AssetsDepreciationPreview(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsDepreciationPreview2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "assetId": "x",
                      "code": "code",
                      "name": "name",
                      "amount": "amount",
                      "alreadyPosted": true
                    },
                    {
                      "assetId": "x",
                      "code": "code",
                      "name": "name",
                      "amount": "amount",
                      "alreadyPosted": true
                    }
                  ],
                  "total": "total"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AssetsDepreciationPreviewResponse(
            rows: [
                PostV1AssetsDepreciationPreviewResponseRowsItem(
                    assetId: "x",
                    code: "code",
                    name: "name",
                    amount: "amount",
                    alreadyPosted: true
                ),
                PostV1AssetsDepreciationPreviewResponseRowsItem(
                    assetId: "x",
                    code: "code",
                    name: "name",
                    amount: "amount",
                    alreadyPosted: true
                )
            ],
            total: "total"
        )
        let response = try await client.assets.postV1AssetsDepreciationPreview(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsDepreciationPost1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "posted": 1000000,
                  "skipped": 1000000,
                  "total": "total",
                  "journalTransactionId": "journalTransactionId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AssetsDepreciationPostResponse(
            posted: 1000000,
            skipped: 1000000,
            total: "total",
            journalTransactionId: Nullable<String>.value("journalTransactionId")
        )
        let response = try await client.assets.postV1AssetsDepreciationPost(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsDepreciationPost2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "posted": 1000000,
                  "skipped": 1000000,
                  "total": "total",
                  "journalTransactionId": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1AssetsDepreciationPostResponse(
            posted: 1000000,
            skipped: 1000000,
            total: "total",
            journalTransactionId: Nullable<String>.value("x")
        )
        let response = try await client.assets.postV1AssetsDepreciationPost(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}