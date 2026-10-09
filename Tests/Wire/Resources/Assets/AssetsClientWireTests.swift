import Foundation
import Testing
import Api

@Suite("AssetsClient Wire Tests") struct AssetsClientWireTests {
    @Test func settingsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "autoDepreciation": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SettingsGetAssetsResponse(
            autoDepreciation: true
        )
        let response = try await client.assets.settingsGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settingsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "autoDepreciation": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SettingsGetAssetsResponse(
            autoDepreciation: true
        )
        let response = try await client.assets.settingsGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settingsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "autoDepreciation": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SettingsUpdateAssetsResponse(
            autoDepreciation: true
        )
        let response = try await client.assets.settingsUpdate(
            request: .init(autoDepreciation: true),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settingsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "autoDepreciation": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SettingsUpdateAssetsResponse(
            autoDepreciation: true
        )
        let response = try await client.assets.settingsUpdate(
            request: .init(autoDepreciation: true),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsCreate1() async throws -> Void {
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
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GroupsCreateAssetsResponse(
            code: "code",
            name: "name",
            defaultUsefulLifeMonths: Nullable<Int64>.value(1000000),
            assetAccountCode: "assetAccountCode",
            depreciationAccountCode: "depreciationAccountCode",
            expenseAccountCode: "expenseAccountCode",
            id: "id",
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.assets.groupsCreate(
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

    @Test func groupsCreate2() async throws -> Void {
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
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GroupsCreateAssetsResponse(
            code: "x",
            name: "x",
            defaultUsefulLifeMonths: Nullable<Int64>.value(1000000),
            assetAccountCode: "x",
            depreciationAccountCode: "x",
            expenseAccountCode: "expenseAccountCode",
            id: "x",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.assets.groupsCreate(
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

    @Test func groupsList1() async throws -> Void {
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
                      "createdAt": "2026-07-01T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "key": "value"
                  },
                  "totalsByCurrency": {
                    "key": {
                      "key": "value"
                    }
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
        let expectedResponse = GroupsListAssetsResponse(
            rows: [
                GroupsListAssetsResponseRowsItem(
                    code: "code",
                    name: "name",
                    defaultUsefulLifeMonths: Nullable<Int64>.value(1000000),
                    assetAccountCode: "assetAccountCode",
                    depreciationAccountCode: "depreciationAccountCode",
                    expenseAccountCode: "expenseAccountCode",
                    id: "id",
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ]),
            totalsByCurrency: Optional([
                "key": [
                    "key": "value"
                ]
            ])
        )
        let response = try await client.assets.groupsList(
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
                      "code": "x",
                      "name": "x",
                      "defaultUsefulLifeMonths": 1000000,
                      "assetAccountCode": "x",
                      "depreciationAccountCode": "x",
                      "expenseAccountCode": "expenseAccountCode",
                      "id": "x",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "code": "x",
                      "name": "x",
                      "defaultUsefulLifeMonths": 1000000,
                      "assetAccountCode": "x",
                      "depreciationAccountCode": "x",
                      "expenseAccountCode": "expenseAccountCode",
                      "id": "x",
                      "createdAt": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "totals": "totals"
                  },
                  "totalsByCurrency": {
                    "totalsByCurrency": {
                      "totalsByCurrency": "totalsByCurrency"
                    }
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
        let expectedResponse = GroupsListAssetsResponse(
            rows: [
                GroupsListAssetsResponseRowsItem(
                    code: "x",
                    name: "x",
                    defaultUsefulLifeMonths: Nullable<Int64>.value(1000000),
                    assetAccountCode: "x",
                    depreciationAccountCode: "x",
                    expenseAccountCode: "expenseAccountCode",
                    id: "x",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                GroupsListAssetsResponseRowsItem(
                    code: "x",
                    name: "x",
                    defaultUsefulLifeMonths: Nullable<Int64>.value(1000000),
                    assetAccountCode: "x",
                    depreciationAccountCode: "x",
                    expenseAccountCode: "expenseAccountCode",
                    id: "x",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ]),
            totalsByCurrency: Optional([
                "totalsByCurrency": [
                    "totalsByCurrency": "totalsByCurrency"
                ]
            ])
        )
        let response = try await client.assets.groupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assetsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "groupId": "groupId",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "2026-07-01",
                  "depreciationStartDate": "2026-07-01",
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
                  "inputVatFirstUseDate": "2026-07-01",
                  "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                  "inputVatRealEstate": true,
                  "inputVatUseChanges": [
                    {
                      "year": 1000000,
                      "percent": "121.00",
                      "reason": "use_change"
                    }
                  ],
                  "disposalDate": "2026-07-01",
                  "disposalReason": "sold",
                  "disposalProceeds": "disposalProceeds",
                  "disposalJournalTransactionId": "disposalJournalTransactionId",
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AssetsCreateAssetsResponse(
            id: "id",
            groupId: "groupId",
            code: "code",
            name: "name",
            acquisitionDate: CalendarDate("2026-07-01")!,
            depreciationStartDate: CalendarDate("2026-07-01")!,
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
            documents: Nullable<[AssetsCreateAssetsResponseDocumentsItem]>.value([
                AssetsCreateAssetsResponseDocumentsItem(
                    name: "name",
                    ref: "ref"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                AssetsCreateAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "121.00",
                    reason: .useChange
                )
            ],
            disposalDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            disposalReason: Nullable<AssetsCreateAssetsResponseDisposalReason>.value(.sold),
            disposalProceeds: Nullable<String>.value("disposalProceeds"),
            disposalJournalTransactionId: Nullable<String>.value("disposalJournalTransactionId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.assets.assetsCreate(
            request: .init(
                groupId: "groupId",
                code: "code",
                name: "name",
                acquisitionDate: CalendarDate("2026-07-01")!,
                acquisitionCost: "121.0000"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assetsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "groupId": "x",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "2023-01-15",
                  "depreciationStartDate": "2023-01-15",
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
                  "inputVatFirstUseDate": "2023-01-15",
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
                  "disposalDate": "2023-01-15",
                  "disposalReason": "sold",
                  "disposalProceeds": "disposalProceeds",
                  "disposalJournalTransactionId": "disposalJournalTransactionId",
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AssetsCreateAssetsResponse(
            id: "x",
            groupId: "x",
            code: "code",
            name: "name",
            acquisitionDate: CalendarDate("2023-01-15")!,
            depreciationStartDate: CalendarDate("2023-01-15")!,
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
            documents: Nullable<[AssetsCreateAssetsResponseDocumentsItem]>.value([
                AssetsCreateAssetsResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                ),
                AssetsCreateAssetsResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                AssetsCreateAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                ),
                AssetsCreateAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                )
            ],
            disposalDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            disposalReason: Nullable<AssetsCreateAssetsResponseDisposalReason>.value(.sold),
            disposalProceeds: Nullable<String>.value("disposalProceeds"),
            disposalJournalTransactionId: Nullable<String>.value("disposalJournalTransactionId"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.assets.assetsCreate(
            request: .init(
                groupId: "x",
                code: "x",
                name: "x",
                acquisitionDate: CalendarDate("2023-01-15")!,
                acquisitionCost: "acquisitionCost"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assetsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "groupId": "groupId",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "2026-07-01",
                  "depreciationStartDate": "2026-07-01",
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
                  "inputVatFirstUseDate": "2026-07-01",
                  "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                  "inputVatRealEstate": true,
                  "inputVatUseChanges": [
                    {
                      "year": 1000000,
                      "percent": "121.00",
                      "reason": "use_change"
                    }
                  ],
                  "disposalDate": "2026-07-01",
                  "disposalReason": "sold",
                  "disposalProceeds": "disposalProceeds",
                  "disposalJournalTransactionId": "disposalJournalTransactionId",
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AssetsUpdateAssetsResponse(
            id: "id",
            groupId: "groupId",
            code: "code",
            name: "name",
            acquisitionDate: CalendarDate("2026-07-01")!,
            depreciationStartDate: CalendarDate("2026-07-01")!,
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
            documents: Nullable<[AssetsUpdateAssetsResponseDocumentsItem]>.value([
                AssetsUpdateAssetsResponseDocumentsItem(
                    name: "name",
                    ref: "ref"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                AssetsUpdateAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "121.00",
                    reason: .useChange
                )
            ],
            disposalDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            disposalReason: Nullable<AssetsUpdateAssetsResponseDisposalReason>.value(.sold),
            disposalProceeds: Nullable<String>.value("disposalProceeds"),
            disposalJournalTransactionId: Nullable<String>.value("disposalJournalTransactionId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.assets.assetsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assetsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "groupId": "x",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "2023-01-15",
                  "depreciationStartDate": "2023-01-15",
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
                  "inputVatFirstUseDate": "2023-01-15",
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
                  "disposalDate": "2023-01-15",
                  "disposalReason": "sold",
                  "disposalProceeds": "disposalProceeds",
                  "disposalJournalTransactionId": "disposalJournalTransactionId",
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AssetsUpdateAssetsResponse(
            id: "x",
            groupId: "x",
            code: "code",
            name: "name",
            acquisitionDate: CalendarDate("2023-01-15")!,
            depreciationStartDate: CalendarDate("2023-01-15")!,
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
            documents: Nullable<[AssetsUpdateAssetsResponseDocumentsItem]>.value([
                AssetsUpdateAssetsResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                ),
                AssetsUpdateAssetsResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                AssetsUpdateAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                ),
                AssetsUpdateAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                )
            ],
            disposalDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            disposalReason: Nullable<AssetsUpdateAssetsResponseDisposalReason>.value(.sold),
            disposalProceeds: Nullable<String>.value("disposalProceeds"),
            disposalJournalTransactionId: Nullable<String>.value("disposalJournalTransactionId"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.assets.assetsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assetsInputVat1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "groupId": "groupId",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "2026-07-01",
                  "depreciationStartDate": "2026-07-01",
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
                  "inputVatFirstUseDate": "2026-07-01",
                  "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                  "inputVatRealEstate": true,
                  "inputVatUseChanges": [
                    {
                      "year": 1000000,
                      "percent": "121.00",
                      "reason": "use_change"
                    }
                  ],
                  "disposalDate": "2026-07-01",
                  "disposalReason": "sold",
                  "disposalProceeds": "disposalProceeds",
                  "disposalJournalTransactionId": "disposalJournalTransactionId",
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AssetsInputVatAssetsResponse(
            id: "id",
            groupId: "groupId",
            code: "code",
            name: "name",
            acquisitionDate: CalendarDate("2026-07-01")!,
            depreciationStartDate: CalendarDate("2026-07-01")!,
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
            documents: Nullable<[AssetsInputVatAssetsResponseDocumentsItem]>.value([
                AssetsInputVatAssetsResponseDocumentsItem(
                    name: "name",
                    ref: "ref"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                AssetsInputVatAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "121.00",
                    reason: .useChange
                )
            ],
            disposalDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            disposalReason: Nullable<AssetsInputVatAssetsResponseDisposalReason>.value(.sold),
            disposalProceeds: Nullable<String>.value("disposalProceeds"),
            disposalJournalTransactionId: Nullable<String>.value("disposalJournalTransactionId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.assets.assetsInputVat(
            request: .init(
                id: "id",
                inputVatAmount: .null,
                inputVatFirstUseDate: .null,
                inputVatDeductiblePercent: .null,
                inputVatRealEstate: true,
                inputVatUseChanges: [
                    AssetsInputVatAssetsRequestInputVatUseChangesItem(
                        year: 1000000,
                        percent: "121.00",
                        reason: .useChange
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assetsInputVat2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "groupId": "x",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "2023-01-15",
                  "depreciationStartDate": "2023-01-15",
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
                  "inputVatFirstUseDate": "2023-01-15",
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
                  "disposalDate": "2023-01-15",
                  "disposalReason": "sold",
                  "disposalProceeds": "disposalProceeds",
                  "disposalJournalTransactionId": "disposalJournalTransactionId",
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AssetsInputVatAssetsResponse(
            id: "x",
            groupId: "x",
            code: "code",
            name: "name",
            acquisitionDate: CalendarDate("2023-01-15")!,
            depreciationStartDate: CalendarDate("2023-01-15")!,
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
            documents: Nullable<[AssetsInputVatAssetsResponseDocumentsItem]>.value([
                AssetsInputVatAssetsResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                ),
                AssetsInputVatAssetsResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                AssetsInputVatAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                ),
                AssetsInputVatAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                )
            ],
            disposalDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            disposalReason: Nullable<AssetsInputVatAssetsResponseDisposalReason>.value(.sold),
            disposalProceeds: Nullable<String>.value("disposalProceeds"),
            disposalJournalTransactionId: Nullable<String>.value("disposalJournalTransactionId"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.assets.assetsInputVat(
            request: .init(
                id: "x",
                inputVatAmount: .null,
                inputVatFirstUseDate: .null,
                inputVatDeductiblePercent: .null,
                inputVatRealEstate: true,
                inputVatUseChanges: [
                    AssetsInputVatAssetsRequestInputVatUseChangesItem(
                        year: 1000000,
                        percent: "percent",
                        reason: .useChange
                    ),
                    AssetsInputVatAssetsRequestInputVatUseChangesItem(
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

    @Test func assetsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "groupId": "groupId",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "2026-07-01",
                  "depreciationStartDate": "2026-07-01",
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
                  "inputVatFirstUseDate": "2026-07-01",
                  "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                  "inputVatRealEstate": true,
                  "inputVatUseChanges": [
                    {
                      "year": 1000000,
                      "percent": "121.00",
                      "reason": "use_change"
                    }
                  ],
                  "disposalDate": "2026-07-01",
                  "disposalReason": "sold",
                  "disposalProceeds": "disposalProceeds",
                  "disposalJournalTransactionId": "disposalJournalTransactionId",
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AssetsGetAssetsResponse(
            id: "id",
            groupId: "groupId",
            code: "code",
            name: "name",
            acquisitionDate: CalendarDate("2026-07-01")!,
            depreciationStartDate: CalendarDate("2026-07-01")!,
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
            documents: Nullable<[AssetsGetAssetsResponseDocumentsItem]>.value([
                AssetsGetAssetsResponseDocumentsItem(
                    name: "name",
                    ref: "ref"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                AssetsGetAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "121.00",
                    reason: .useChange
                )
            ],
            disposalDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            disposalReason: Nullable<AssetsGetAssetsResponseDisposalReason>.value(.sold),
            disposalProceeds: Nullable<String>.value("disposalProceeds"),
            disposalJournalTransactionId: Nullable<String>.value("disposalJournalTransactionId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.assets.assetsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assetsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "groupId": "x",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "2023-01-15",
                  "depreciationStartDate": "2023-01-15",
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
                  "inputVatFirstUseDate": "2023-01-15",
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
                  "disposalDate": "2023-01-15",
                  "disposalReason": "sold",
                  "disposalProceeds": "disposalProceeds",
                  "disposalJournalTransactionId": "disposalJournalTransactionId",
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AssetsGetAssetsResponse(
            id: "x",
            groupId: "x",
            code: "code",
            name: "name",
            acquisitionDate: CalendarDate("2023-01-15")!,
            depreciationStartDate: CalendarDate("2023-01-15")!,
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
            documents: Nullable<[AssetsGetAssetsResponseDocumentsItem]>.value([
                AssetsGetAssetsResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                ),
                AssetsGetAssetsResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                AssetsGetAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                ),
                AssetsGetAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                )
            ],
            disposalDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            disposalReason: Nullable<AssetsGetAssetsResponseDisposalReason>.value(.sold),
            disposalProceeds: Nullable<String>.value("disposalProceeds"),
            disposalJournalTransactionId: Nullable<String>.value("disposalJournalTransactionId"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.assets.assetsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assetsList1() async throws -> Void {
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
                      "acquisitionDate": "2026-07-01",
                      "depreciationStartDate": "2026-07-01",
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
                      "inputVatFirstUseDate": "2026-07-01",
                      "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                      "inputVatRealEstate": true,
                      "inputVatUseChanges": [
                        {
                          "year": 1000000,
                          "percent": "121.00",
                          "reason": "use_change"
                        }
                      ],
                      "disposalDate": "2026-07-01",
                      "disposalReason": "sold",
                      "disposalProceeds": "disposalProceeds",
                      "disposalJournalTransactionId": "disposalJournalTransactionId",
                      "createdAt": "2026-07-01T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "key": "value"
                  },
                  "totalsByCurrency": {
                    "key": {
                      "key": "value"
                    }
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
        let expectedResponse = AssetsListAssetsResponse(
            rows: [
                AssetsListAssetsResponseRowsItem(
                    id: "id",
                    groupId: "groupId",
                    code: "code",
                    name: "name",
                    acquisitionDate: CalendarDate("2026-07-01")!,
                    depreciationStartDate: CalendarDate("2026-07-01")!,
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
                    documents: Nullable<[AssetsListAssetsResponseRowsItemDocumentsItem]>.value([
                        AssetsListAssetsResponseRowsItemDocumentsItem(
                            name: "name",
                            ref: "ref"
                        )
                    ]),
                    inputVatAmount: Nullable<String>.value("inputVatAmount"),
                    inputVatFirstUseDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
                    inputVatRealEstate: true,
                    inputVatUseChanges: [
                        AssetsListAssetsResponseRowsItemInputVatUseChangesItem(
                            year: 1000000,
                            percent: "121.00",
                            reason: .useChange
                        )
                    ],
                    disposalDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    disposalReason: Nullable<AssetsListAssetsResponseRowsItemDisposalReason>.value(.sold),
                    disposalProceeds: Nullable<String>.value("disposalProceeds"),
                    disposalJournalTransactionId: Nullable<String>.value("disposalJournalTransactionId"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ]),
            totalsByCurrency: Optional([
                "key": [
                    "key": "value"
                ]
            ])
        )
        let response = try await client.assets.assetsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assetsList2() async throws -> Void {
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
                      "acquisitionDate": "2023-01-15",
                      "depreciationStartDate": "2023-01-15",
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
                      "inputVatFirstUseDate": "2023-01-15",
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
                      "disposalDate": "2023-01-15",
                      "disposalReason": "sold",
                      "disposalProceeds": "disposalProceeds",
                      "disposalJournalTransactionId": "disposalJournalTransactionId",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "groupId": "x",
                      "code": "code",
                      "name": "name",
                      "acquisitionDate": "2023-01-15",
                      "depreciationStartDate": "2023-01-15",
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
                      "inputVatFirstUseDate": "2023-01-15",
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
                      "disposalDate": "2023-01-15",
                      "disposalReason": "sold",
                      "disposalProceeds": "disposalProceeds",
                      "disposalJournalTransactionId": "disposalJournalTransactionId",
                      "createdAt": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "totals": "totals"
                  },
                  "totalsByCurrency": {
                    "totalsByCurrency": {
                      "totalsByCurrency": "totalsByCurrency"
                    }
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
        let expectedResponse = AssetsListAssetsResponse(
            rows: [
                AssetsListAssetsResponseRowsItem(
                    id: "x",
                    groupId: "x",
                    code: "code",
                    name: "name",
                    acquisitionDate: CalendarDate("2023-01-15")!,
                    depreciationStartDate: CalendarDate("2023-01-15")!,
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
                    documents: Nullable<[AssetsListAssetsResponseRowsItemDocumentsItem]>.value([
                        AssetsListAssetsResponseRowsItemDocumentsItem(
                            name: "x",
                            ref: "x"
                        ),
                        AssetsListAssetsResponseRowsItemDocumentsItem(
                            name: "x",
                            ref: "x"
                        )
                    ]),
                    inputVatAmount: Nullable<String>.value("inputVatAmount"),
                    inputVatFirstUseDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
                    inputVatRealEstate: true,
                    inputVatUseChanges: [
                        AssetsListAssetsResponseRowsItemInputVatUseChangesItem(
                            year: 1000000,
                            percent: "percent",
                            reason: .useChange
                        ),
                        AssetsListAssetsResponseRowsItemInputVatUseChangesItem(
                            year: 1000000,
                            percent: "percent",
                            reason: .useChange
                        )
                    ],
                    disposalDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    disposalReason: Nullable<AssetsListAssetsResponseRowsItemDisposalReason>.value(.sold),
                    disposalProceeds: Nullable<String>.value("disposalProceeds"),
                    disposalJournalTransactionId: Nullable<String>.value("disposalJournalTransactionId"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                AssetsListAssetsResponseRowsItem(
                    id: "x",
                    groupId: "x",
                    code: "code",
                    name: "name",
                    acquisitionDate: CalendarDate("2023-01-15")!,
                    depreciationStartDate: CalendarDate("2023-01-15")!,
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
                    documents: Nullable<[AssetsListAssetsResponseRowsItemDocumentsItem]>.value([
                        AssetsListAssetsResponseRowsItemDocumentsItem(
                            name: "x",
                            ref: "x"
                        ),
                        AssetsListAssetsResponseRowsItemDocumentsItem(
                            name: "x",
                            ref: "x"
                        )
                    ]),
                    inputVatAmount: Nullable<String>.value("inputVatAmount"),
                    inputVatFirstUseDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
                    inputVatRealEstate: true,
                    inputVatUseChanges: [
                        AssetsListAssetsResponseRowsItemInputVatUseChangesItem(
                            year: 1000000,
                            percent: "percent",
                            reason: .useChange
                        ),
                        AssetsListAssetsResponseRowsItemInputVatUseChangesItem(
                            year: 1000000,
                            percent: "percent",
                            reason: .useChange
                        )
                    ],
                    disposalDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    disposalReason: Nullable<AssetsListAssetsResponseRowsItemDisposalReason>.value(.sold),
                    disposalProceeds: Nullable<String>.value("disposalProceeds"),
                    disposalJournalTransactionId: Nullable<String>.value("disposalJournalTransactionId"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ]),
            totalsByCurrency: Optional([
                "totalsByCurrency": [
                    "totalsByCurrency": "totalsByCurrency"
                ]
            ])
        )
        let response = try await client.assets.assetsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assetsModernize1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "groupId": "groupId",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "2026-07-01",
                  "depreciationStartDate": "2026-07-01",
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
                  "inputVatFirstUseDate": "2026-07-01",
                  "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                  "inputVatRealEstate": true,
                  "inputVatUseChanges": [
                    {
                      "year": 1000000,
                      "percent": "121.00",
                      "reason": "use_change"
                    }
                  ],
                  "disposalDate": "2026-07-01",
                  "disposalReason": "sold",
                  "disposalProceeds": "disposalProceeds",
                  "disposalJournalTransactionId": "disposalJournalTransactionId",
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AssetsModernizeAssetsResponse(
            id: "id",
            groupId: "groupId",
            code: "code",
            name: "name",
            acquisitionDate: CalendarDate("2026-07-01")!,
            depreciationStartDate: CalendarDate("2026-07-01")!,
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
            documents: Nullable<[AssetsModernizeAssetsResponseDocumentsItem]>.value([
                AssetsModernizeAssetsResponseDocumentsItem(
                    name: "name",
                    ref: "ref"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                AssetsModernizeAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "121.00",
                    reason: .useChange
                )
            ],
            disposalDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            disposalReason: Nullable<AssetsModernizeAssetsResponseDisposalReason>.value(.sold),
            disposalProceeds: Nullable<String>.value("disposalProceeds"),
            disposalJournalTransactionId: Nullable<String>.value("disposalJournalTransactionId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.assets.assetsModernize(
            request: .init(
                id: "id",
                date: CalendarDate("2026-07-01")!,
                amount: "121.0000"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assetsModernize2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "groupId": "x",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "2023-01-15",
                  "depreciationStartDate": "2023-01-15",
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
                  "inputVatFirstUseDate": "2023-01-15",
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
                  "disposalDate": "2023-01-15",
                  "disposalReason": "sold",
                  "disposalProceeds": "disposalProceeds",
                  "disposalJournalTransactionId": "disposalJournalTransactionId",
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AssetsModernizeAssetsResponse(
            id: "x",
            groupId: "x",
            code: "code",
            name: "name",
            acquisitionDate: CalendarDate("2023-01-15")!,
            depreciationStartDate: CalendarDate("2023-01-15")!,
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
            documents: Nullable<[AssetsModernizeAssetsResponseDocumentsItem]>.value([
                AssetsModernizeAssetsResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                ),
                AssetsModernizeAssetsResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                AssetsModernizeAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                ),
                AssetsModernizeAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                )
            ],
            disposalDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            disposalReason: Nullable<AssetsModernizeAssetsResponseDisposalReason>.value(.sold),
            disposalProceeds: Nullable<String>.value("disposalProceeds"),
            disposalJournalTransactionId: Nullable<String>.value("disposalJournalTransactionId"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.assets.assetsModernize(
            request: .init(
                id: "x",
                date: CalendarDate("2023-01-15")!,
                amount: "amount"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assetsDispose1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "groupId": "groupId",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "2026-07-01",
                  "depreciationStartDate": "2026-07-01",
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
                  "inputVatFirstUseDate": "2026-07-01",
                  "inputVatDeductiblePercent": "inputVatDeductiblePercent",
                  "inputVatRealEstate": true,
                  "inputVatUseChanges": [
                    {
                      "year": 1000000,
                      "percent": "121.00",
                      "reason": "use_change"
                    }
                  ],
                  "disposalDate": "2026-07-01",
                  "disposalReason": "sold",
                  "disposalProceeds": "disposalProceeds",
                  "disposalJournalTransactionId": "disposalJournalTransactionId",
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AssetsDisposeAssetsResponse(
            id: "id",
            groupId: "groupId",
            code: "code",
            name: "name",
            acquisitionDate: CalendarDate("2026-07-01")!,
            depreciationStartDate: CalendarDate("2026-07-01")!,
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
            documents: Nullable<[AssetsDisposeAssetsResponseDocumentsItem]>.value([
                AssetsDisposeAssetsResponseDocumentsItem(
                    name: "name",
                    ref: "ref"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                AssetsDisposeAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "121.00",
                    reason: .useChange
                )
            ],
            disposalDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            disposalReason: Nullable<AssetsDisposeAssetsResponseDisposalReason>.value(.sold),
            disposalProceeds: Nullable<String>.value("disposalProceeds"),
            disposalJournalTransactionId: Nullable<String>.value("disposalJournalTransactionId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.assets.assetsDispose(
            request: .init(
                id: "id",
                date: CalendarDate("2026-07-01")!,
                reason: .sold
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assetsDispose2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "groupId": "x",
                  "code": "code",
                  "name": "name",
                  "acquisitionDate": "2023-01-15",
                  "depreciationStartDate": "2023-01-15",
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
                  "inputVatFirstUseDate": "2023-01-15",
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
                  "disposalDate": "2023-01-15",
                  "disposalReason": "sold",
                  "disposalProceeds": "disposalProceeds",
                  "disposalJournalTransactionId": "disposalJournalTransactionId",
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AssetsDisposeAssetsResponse(
            id: "x",
            groupId: "x",
            code: "code",
            name: "name",
            acquisitionDate: CalendarDate("2023-01-15")!,
            depreciationStartDate: CalendarDate("2023-01-15")!,
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
            documents: Nullable<[AssetsDisposeAssetsResponseDocumentsItem]>.value([
                AssetsDisposeAssetsResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                ),
                AssetsDisposeAssetsResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                )
            ]),
            inputVatAmount: Nullable<String>.value("inputVatAmount"),
            inputVatFirstUseDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            inputVatDeductiblePercent: Nullable<String>.value("inputVatDeductiblePercent"),
            inputVatRealEstate: true,
            inputVatUseChanges: [
                AssetsDisposeAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                ),
                AssetsDisposeAssetsResponseInputVatUseChangesItem(
                    year: 1000000,
                    percent: "percent",
                    reason: .useChange
                )
            ],
            disposalDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            disposalReason: Nullable<AssetsDisposeAssetsResponseDisposalReason>.value(.sold),
            disposalProceeds: Nullable<String>.value("disposalProceeds"),
            disposalJournalTransactionId: Nullable<String>.value("disposalJournalTransactionId"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.assets.assetsDispose(
            request: .init(
                id: "x",
                date: CalendarDate("2023-01-15")!,
                reason: .sold
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func depreciationPreview1() async throws -> Void {
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
                      "alreadyPosted": true,
                      "months": [
                        "months"
                      ]
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
        let expectedResponse = DepreciationPreviewAssetsResponse(
            rows: [
                DepreciationPreviewAssetsResponseRowsItem(
                    assetId: "assetId",
                    code: "code",
                    name: "name",
                    amount: "amount",
                    alreadyPosted: true,
                    months: [
                        "months"
                    ]
                )
            ],
            total: "total"
        )
        let response = try await client.assets.depreciationPreview(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func depreciationPreview2() async throws -> Void {
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
                      "alreadyPosted": true,
                      "months": [
                        "months",
                        "months"
                      ]
                    },
                    {
                      "assetId": "x",
                      "code": "code",
                      "name": "name",
                      "amount": "amount",
                      "alreadyPosted": true,
                      "months": [
                        "months",
                        "months"
                      ]
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
        let expectedResponse = DepreciationPreviewAssetsResponse(
            rows: [
                DepreciationPreviewAssetsResponseRowsItem(
                    assetId: "x",
                    code: "code",
                    name: "name",
                    amount: "amount",
                    alreadyPosted: true,
                    months: [
                        "months",
                        "months"
                    ]
                ),
                DepreciationPreviewAssetsResponseRowsItem(
                    assetId: "x",
                    code: "code",
                    name: "name",
                    amount: "amount",
                    alreadyPosted: true,
                    months: [
                        "months",
                        "months"
                    ]
                )
            ],
            total: "total"
        )
        let response = try await client.assets.depreciationPreview(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func depreciationPost1() async throws -> Void {
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
        let expectedResponse = DepreciationPostAssetsResponse(
            posted: 1000000,
            skipped: 1000000,
            total: "total",
            journalTransactionId: Nullable<String>.value("journalTransactionId")
        )
        let response = try await client.assets.depreciationPost(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func depreciationPost2() async throws -> Void {
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
        let expectedResponse = DepreciationPostAssetsResponse(
            posted: 1000000,
            skipped: 1000000,
            total: "total",
            journalTransactionId: Nullable<String>.value("x")
        )
        let response = try await client.assets.depreciationPost(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}