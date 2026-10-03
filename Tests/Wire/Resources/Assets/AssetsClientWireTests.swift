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
                  "expenseAccountCode": "expenseAccountCode",
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
            expenseAccountCode: "expenseAccountCode",
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
                  "total": 1000000,
                  "totals": {
                    "key": "value"
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
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
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
                      "expenseAccountCode": "expenseAccountCode",
                      "id": "x",
                      "createdAt": "createdAt"
                    },
                    {
                      "code": "x",
                      "name": "x",
                      "defaultUsefulLifeMonths": 1000000,
                      "assetAccountCode": "x",
                      "depreciationAccountCode": "x",
                      "expenseAccountCode": "expenseAccountCode",
                      "id": "x",
                      "createdAt": "createdAt"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "totals": "totals"
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
        let expectedResponse = PostV1AssetsGroupsListResponse(
            rows: [
                PostV1AssetsGroupsListResponseRowsItem(
                    code: "x",
                    name: "x",
                    defaultUsefulLifeMonths: Nullable<Int64>.value(1000000),
                    assetAccountCode: "x",
                    depreciationAccountCode: "x",
                    expenseAccountCode: "expenseAccountCode",
                    id: "x",
                    createdAt: "createdAt"
                ),
                PostV1AssetsGroupsListResponseRowsItem(
                    code: "x",
                    name: "x",
                    defaultUsefulLifeMonths: Nullable<Int64>.value(1000000),
                    assetAccountCode: "x",
                    depreciationAccountCode: "x",
                    expenseAccountCode: "expenseAccountCode",
                    id: "x",
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
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
                  "documents": [
                    {
                      "name": "name",
                      "ref": "ref"
                    }
                  ],
                  "inputVatAmount": "inputVatAmount",
                  "inputVatFirstUseDate": "inputVatFirstUseDate",
                  "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                  "inputVatRealEstate": true,
                  "inputVatUseChanges": [
                    {
                      "year": 1000000,
                      "percent": "percent",
                      "reason": "use_change"
                    }
                  ],
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
            documents: Nullable<[PostV1AssetsAssetsCreateResponseDocumentsItem]>.value([
                PostV1AssetsAssetsCreateResponseDocumentsItem(
                    name: "name",
                    ref: "ref"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<String>.value("inputVatFirstUseDate"),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                PostV1AssetsAssetsCreateResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                )
            ],
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
                  "documents": [
                    {
                      "name": "x",
                      "ref": "x"
                    },
                    {
                      "name": "x",
                      "ref": "x"
                    }
                  ],
                  "inputVatAmount": "inputVatAmount",
                  "inputVatFirstUseDate": "inputVatFirstUseDate",
                  "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                  "inputVatRealEstate": true,
                  "inputVatUseChanges": [
                    {
                      "year": 1000000,
                      "percent": "percent",
                      "reason": "use_change"
                    },
                    {
                      "year": 1000000,
                      "percent": "percent",
                      "reason": "use_change"
                    }
                  ],
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
            documents: Nullable<[PostV1AssetsAssetsCreateResponseDocumentsItem]>.value([
                PostV1AssetsAssetsCreateResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                ),
                PostV1AssetsAssetsCreateResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<String>.value("inputVatFirstUseDate"),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                PostV1AssetsAssetsCreateResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                ),
                PostV1AssetsAssetsCreateResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                )
            ],
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

    @Test func postV1AssetsAssetsUpdate1() async throws -> Void {
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
                  "documents": [
                    {
                      "name": "name",
                      "ref": "ref"
                    }
                  ],
                  "inputVatAmount": "inputVatAmount",
                  "inputVatFirstUseDate": "inputVatFirstUseDate",
                  "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                  "inputVatRealEstate": true,
                  "inputVatUseChanges": [
                    {
                      "year": 1000000,
                      "percent": "percent",
                      "reason": "use_change"
                    }
                  ],
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
        let expectedResponse = PostV1AssetsAssetsUpdateResponse(
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
            documents: Nullable<[PostV1AssetsAssetsUpdateResponseDocumentsItem]>.value([
                PostV1AssetsAssetsUpdateResponseDocumentsItem(
                    name: "name",
                    ref: "ref"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<String>.value("inputVatFirstUseDate"),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                PostV1AssetsAssetsUpdateResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                )
            ],
            createdAt: "createdAt"
        )
        let response = try await client.assets.postV1AssetsAssetsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsAssetsUpdate2() async throws -> Void {
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
                  "documents": [
                    {
                      "name": "x",
                      "ref": "x"
                    },
                    {
                      "name": "x",
                      "ref": "x"
                    }
                  ],
                  "inputVatAmount": "inputVatAmount",
                  "inputVatFirstUseDate": "inputVatFirstUseDate",
                  "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                  "inputVatRealEstate": true,
                  "inputVatUseChanges": [
                    {
                      "year": 1000000,
                      "percent": "percent",
                      "reason": "use_change"
                    },
                    {
                      "year": 1000000,
                      "percent": "percent",
                      "reason": "use_change"
                    }
                  ],
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
        let expectedResponse = PostV1AssetsAssetsUpdateResponse(
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
            documents: Nullable<[PostV1AssetsAssetsUpdateResponseDocumentsItem]>.value([
                PostV1AssetsAssetsUpdateResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                ),
                PostV1AssetsAssetsUpdateResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<String>.value("inputVatFirstUseDate"),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                PostV1AssetsAssetsUpdateResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                ),
                PostV1AssetsAssetsUpdateResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                )
            ],
            createdAt: "createdAt"
        )
        let response = try await client.assets.postV1AssetsAssetsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsAssetsInputVat1() async throws -> Void {
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
                  "documents": [
                    {
                      "name": "name",
                      "ref": "ref"
                    }
                  ],
                  "inputVatAmount": "inputVatAmount",
                  "inputVatFirstUseDate": "inputVatFirstUseDate",
                  "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                  "inputVatRealEstate": true,
                  "inputVatUseChanges": [
                    {
                      "year": 1000000,
                      "percent": "percent",
                      "reason": "use_change"
                    }
                  ],
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
        let expectedResponse = PostV1AssetsAssetsInputVatResponse(
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
            documents: Nullable<[PostV1AssetsAssetsInputVatResponseDocumentsItem]>.value([
                PostV1AssetsAssetsInputVatResponseDocumentsItem(
                    name: "name",
                    ref: "ref"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<String>.value("inputVatFirstUseDate"),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                PostV1AssetsAssetsInputVatResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                )
            ],
            createdAt: "createdAt"
        )
        let response = try await client.assets.postV1AssetsAssetsInputVat(
            request: .init(
                id: "id",
                inputVatAmount: .null,
                inputVatFirstUseDate: .null,
                inputVatDeductiblePercent: .null,
                inputVatRealEstate: true,
                inputVatUseChanges: [
                    PostV1AssetsAssetsInputVatRequestInputVatUseChangesItem(
                        year: 1000000,
                        percent: "percent",
                        reason: .useChange
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AssetsAssetsInputVat2() async throws -> Void {
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
                  "documents": [
                    {
                      "name": "x",
                      "ref": "x"
                    },
                    {
                      "name": "x",
                      "ref": "x"
                    }
                  ],
                  "inputVatAmount": "inputVatAmount",
                  "inputVatFirstUseDate": "inputVatFirstUseDate",
                  "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                  "inputVatRealEstate": true,
                  "inputVatUseChanges": [
                    {
                      "year": 1000000,
                      "percent": "percent",
                      "reason": "use_change"
                    },
                    {
                      "year": 1000000,
                      "percent": "percent",
                      "reason": "use_change"
                    }
                  ],
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
        let expectedResponse = PostV1AssetsAssetsInputVatResponse(
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
            documents: Nullable<[PostV1AssetsAssetsInputVatResponseDocumentsItem]>.value([
                PostV1AssetsAssetsInputVatResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                ),
                PostV1AssetsAssetsInputVatResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<String>.value("inputVatFirstUseDate"),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                PostV1AssetsAssetsInputVatResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                ),
                PostV1AssetsAssetsInputVatResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                )
            ],
            createdAt: "createdAt"
        )
        let response = try await client.assets.postV1AssetsAssetsInputVat(
            request: .init(
                id: "x",
                inputVatAmount: .null,
                inputVatFirstUseDate: .null,
                inputVatDeductiblePercent: .null,
                inputVatRealEstate: true,
                inputVatUseChanges: [
                    PostV1AssetsAssetsInputVatRequestInputVatUseChangesItem(
                        year: 1000000,
                        percent: "percent",
                        reason: .useChange
                    ),
                    PostV1AssetsAssetsInputVatRequestInputVatUseChangesItem(
                        year: 1000000,
                        percent: "percent",
                        reason: .useChange
                    )
                ]
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
                  "documents": [
                    {
                      "name": "name",
                      "ref": "ref"
                    }
                  ],
                  "inputVatAmount": "inputVatAmount",
                  "inputVatFirstUseDate": "inputVatFirstUseDate",
                  "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                  "inputVatRealEstate": true,
                  "inputVatUseChanges": [
                    {
                      "year": 1000000,
                      "percent": "percent",
                      "reason": "use_change"
                    }
                  ],
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
            documents: Nullable<[PostV1AssetsAssetsGetResponseDocumentsItem]>.value([
                PostV1AssetsAssetsGetResponseDocumentsItem(
                    name: "name",
                    ref: "ref"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<String>.value("inputVatFirstUseDate"),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                PostV1AssetsAssetsGetResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                )
            ],
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
                  "documents": [
                    {
                      "name": "x",
                      "ref": "x"
                    },
                    {
                      "name": "x",
                      "ref": "x"
                    }
                  ],
                  "inputVatAmount": "inputVatAmount",
                  "inputVatFirstUseDate": "inputVatFirstUseDate",
                  "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                  "inputVatRealEstate": true,
                  "inputVatUseChanges": [
                    {
                      "year": 1000000,
                      "percent": "percent",
                      "reason": "use_change"
                    },
                    {
                      "year": 1000000,
                      "percent": "percent",
                      "reason": "use_change"
                    }
                  ],
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
            documents: Nullable<[PostV1AssetsAssetsGetResponseDocumentsItem]>.value([
                PostV1AssetsAssetsGetResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                ),
                PostV1AssetsAssetsGetResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<String>.value("inputVatFirstUseDate"),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                PostV1AssetsAssetsGetResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                ),
                PostV1AssetsAssetsGetResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                )
            ],
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
                      "documents": [
                        {
                          "name": "name",
                          "ref": "ref"
                        }
                      ],
                      "inputVatAmount": "inputVatAmount",
                      "inputVatFirstUseDate": "inputVatFirstUseDate",
                      "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                      "inputVatRealEstate": true,
                      "inputVatUseChanges": [
                        {
                          "year": 1000000,
                          "percent": "percent",
                          "reason": "use_change"
                        }
                      ],
                      "createdAt": "createdAt"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "key": "value"
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
                    documents: Nullable<[PostV1AssetsAssetsListResponseRowsItemDocumentsItem]>.value([
                        PostV1AssetsAssetsListResponseRowsItemDocumentsItem(
                            name: "name",
                            ref: "ref"
                        )
                    ]),
                    inputVatAmount: Nullable<String>.value("inputVatAmount"),
                    inputVatFirstUseDate: Nullable<String>.value("inputVatFirstUseDate"),
                    inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
                    inputVatRealEstate: true,
                    inputVatUseChanges: [
                        PostV1AssetsAssetsListResponseRowsItemInputVatUseChangesItem(
                            year: 1000000,
                            percent: "percent",
                            reason: .useChange
                        )
                    ],
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
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
                      "documents": [
                        {
                          "name": "x",
                          "ref": "x"
                        },
                        {
                          "name": "x",
                          "ref": "x"
                        }
                      ],
                      "inputVatAmount": "inputVatAmount",
                      "inputVatFirstUseDate": "inputVatFirstUseDate",
                      "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                      "inputVatRealEstate": true,
                      "inputVatUseChanges": [
                        {
                          "year": 1000000,
                          "percent": "percent",
                          "reason": "use_change"
                        },
                        {
                          "year": 1000000,
                          "percent": "percent",
                          "reason": "use_change"
                        }
                      ],
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
                      "documents": [
                        {
                          "name": "x",
                          "ref": "x"
                        },
                        {
                          "name": "x",
                          "ref": "x"
                        }
                      ],
                      "inputVatAmount": "inputVatAmount",
                      "inputVatFirstUseDate": "inputVatFirstUseDate",
                      "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                      "inputVatRealEstate": true,
                      "inputVatUseChanges": [
                        {
                          "year": 1000000,
                          "percent": "percent",
                          "reason": "use_change"
                        },
                        {
                          "year": 1000000,
                          "percent": "percent",
                          "reason": "use_change"
                        }
                      ],
                      "createdAt": "createdAt"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "totals": "totals"
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
                    documents: Nullable<[PostV1AssetsAssetsListResponseRowsItemDocumentsItem]>.value([
                        PostV1AssetsAssetsListResponseRowsItemDocumentsItem(
                            name: "x",
                            ref: "x"
                        ),
                        PostV1AssetsAssetsListResponseRowsItemDocumentsItem(
                            name: "x",
                            ref: "x"
                        )
                    ]),
                    inputVatAmount: Nullable<String>.value("inputVatAmount"),
                    inputVatFirstUseDate: Nullable<String>.value("inputVatFirstUseDate"),
                    inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
                    inputVatRealEstate: true,
                    inputVatUseChanges: [
                        PostV1AssetsAssetsListResponseRowsItemInputVatUseChangesItem(
                            year: 1000000,
                            percent: "percent",
                            reason: .useChange
                        ),
                        PostV1AssetsAssetsListResponseRowsItemInputVatUseChangesItem(
                            year: 1000000,
                            percent: "percent",
                            reason: .useChange
                        )
                    ],
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
                    documents: Nullable<[PostV1AssetsAssetsListResponseRowsItemDocumentsItem]>.value([
                        PostV1AssetsAssetsListResponseRowsItemDocumentsItem(
                            name: "x",
                            ref: "x"
                        ),
                        PostV1AssetsAssetsListResponseRowsItemDocumentsItem(
                            name: "x",
                            ref: "x"
                        )
                    ]),
                    inputVatAmount: Nullable<String>.value("inputVatAmount"),
                    inputVatFirstUseDate: Nullable<String>.value("inputVatFirstUseDate"),
                    inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
                    inputVatRealEstate: true,
                    inputVatUseChanges: [
                        PostV1AssetsAssetsListResponseRowsItemInputVatUseChangesItem(
                            year: 1000000,
                            percent: "percent",
                            reason: .useChange
                        ),
                        PostV1AssetsAssetsListResponseRowsItemInputVatUseChangesItem(
                            year: 1000000,
                            percent: "percent",
                            reason: .useChange
                        )
                    ],
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
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
                  "documents": [
                    {
                      "name": "name",
                      "ref": "ref"
                    }
                  ],
                  "inputVatAmount": "inputVatAmount",
                  "inputVatFirstUseDate": "inputVatFirstUseDate",
                  "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                  "inputVatRealEstate": true,
                  "inputVatUseChanges": [
                    {
                      "year": 1000000,
                      "percent": "percent",
                      "reason": "use_change"
                    }
                  ],
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
            documents: Nullable<[PostV1AssetsAssetsModernizeResponseDocumentsItem]>.value([
                PostV1AssetsAssetsModernizeResponseDocumentsItem(
                    name: "name",
                    ref: "ref"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<String>.value("inputVatFirstUseDate"),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                PostV1AssetsAssetsModernizeResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                )
            ],
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
                  "documents": [
                    {
                      "name": "x",
                      "ref": "x"
                    },
                    {
                      "name": "x",
                      "ref": "x"
                    }
                  ],
                  "inputVatAmount": "inputVatAmount",
                  "inputVatFirstUseDate": "inputVatFirstUseDate",
                  "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                  "inputVatRealEstate": true,
                  "inputVatUseChanges": [
                    {
                      "year": 1000000,
                      "percent": "percent",
                      "reason": "use_change"
                    },
                    {
                      "year": 1000000,
                      "percent": "percent",
                      "reason": "use_change"
                    }
                  ],
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
            documents: Nullable<[PostV1AssetsAssetsModernizeResponseDocumentsItem]>.value([
                PostV1AssetsAssetsModernizeResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                ),
                PostV1AssetsAssetsModernizeResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<String>.value("inputVatFirstUseDate"),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                PostV1AssetsAssetsModernizeResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                ),
                PostV1AssetsAssetsModernizeResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                )
            ],
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