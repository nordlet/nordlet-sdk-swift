import Foundation
import Testing
import Api

@Suite("OperationTypesClient Wire Tests") struct OperationTypesClientWireTests {
    @Test func create1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "invoiceType": "invoice",
                  "payerPartnerId": "payerPartnerId",
                  "debitAccountCode": "debitAccountCode",
                  "creditAccountCode": "creditAccountCode",
                  "vatAccountCode": "vatAccountCode",
                  "expenseAccountCode": "expenseAccountCode",
                  "advanceAccountCode": "advanceAccountCode",
                  "incomeAccountCode": "incomeAccountCode",
                  "isPurchase": true,
                  "isSale": true,
                  "isWriteOff": true,
                  "isInternalMovement": true,
                  "isPurchaseReturn": true,
                  "isSalesReturn": true,
                  "isConsignment": true,
                  "isProduction": true,
                  "isAssetIn": true,
                  "isAssetOut": true,
                  "isCashRegisterSale": true,
                  "includeInVatRegister": true,
                  "includeInSaft": true,
                  "isActive": true,
                  "sortOrder": 1000000,
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
        let expectedResponse = CreateOperationTypesResponse(
            id: "id",
            code: "code",
            name: "name",
            invoiceType: Nullable<CreateOperationTypesResponseInvoiceType>.value(.invoice),
            payerPartnerId: Nullable<String>.value("payerPartnerId"),
            debitAccountCode: Nullable<String>.value("debitAccountCode"),
            creditAccountCode: Nullable<String>.value("creditAccountCode"),
            vatAccountCode: Nullable<String>.value("vatAccountCode"),
            expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
            advanceAccountCode: Nullable<String>.value("advanceAccountCode"),
            incomeAccountCode: Nullable<String>.value("incomeAccountCode"),
            isPurchase: true,
            isSale: true,
            isWriteOff: true,
            isInternalMovement: true,
            isPurchaseReturn: true,
            isSalesReturn: true,
            isConsignment: true,
            isProduction: true,
            isAssetIn: true,
            isAssetOut: true,
            isCashRegisterSale: true,
            includeInVatRegister: true,
            includeInSaft: true,
            isActive: true,
            sortOrder: 1000000,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.operationTypes.create(
            request: .init(
                code: "code",
                name: "name"
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
                  "code": "code",
                  "name": "name",
                  "invoiceType": "invoice",
                  "payerPartnerId": "x",
                  "debitAccountCode": "debitAccountCode",
                  "creditAccountCode": "creditAccountCode",
                  "vatAccountCode": "vatAccountCode",
                  "expenseAccountCode": "expenseAccountCode",
                  "advanceAccountCode": "advanceAccountCode",
                  "incomeAccountCode": "incomeAccountCode",
                  "isPurchase": true,
                  "isSale": true,
                  "isWriteOff": true,
                  "isInternalMovement": true,
                  "isPurchaseReturn": true,
                  "isSalesReturn": true,
                  "isConsignment": true,
                  "isProduction": true,
                  "isAssetIn": true,
                  "isAssetOut": true,
                  "isCashRegisterSale": true,
                  "includeInVatRegister": true,
                  "includeInSaft": true,
                  "isActive": true,
                  "sortOrder": 1000000,
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
        let expectedResponse = CreateOperationTypesResponse(
            id: "x",
            code: "code",
            name: "name",
            invoiceType: Nullable<CreateOperationTypesResponseInvoiceType>.value(.invoice),
            payerPartnerId: Nullable<String>.value("x"),
            debitAccountCode: Nullable<String>.value("debitAccountCode"),
            creditAccountCode: Nullable<String>.value("creditAccountCode"),
            vatAccountCode: Nullable<String>.value("vatAccountCode"),
            expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
            advanceAccountCode: Nullable<String>.value("advanceAccountCode"),
            incomeAccountCode: Nullable<String>.value("incomeAccountCode"),
            isPurchase: true,
            isSale: true,
            isWriteOff: true,
            isInternalMovement: true,
            isPurchaseReturn: true,
            isSalesReturn: true,
            isConsignment: true,
            isProduction: true,
            isAssetIn: true,
            isAssetOut: true,
            isCashRegisterSale: true,
            includeInVatRegister: true,
            includeInSaft: true,
            isActive: true,
            sortOrder: 1000000,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.operationTypes.create(
            request: .init(
                code: "x",
                name: "x"
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
                  "code": "code",
                  "name": "name",
                  "invoiceType": "invoice",
                  "payerPartnerId": "payerPartnerId",
                  "debitAccountCode": "debitAccountCode",
                  "creditAccountCode": "creditAccountCode",
                  "vatAccountCode": "vatAccountCode",
                  "expenseAccountCode": "expenseAccountCode",
                  "advanceAccountCode": "advanceAccountCode",
                  "incomeAccountCode": "incomeAccountCode",
                  "isPurchase": true,
                  "isSale": true,
                  "isWriteOff": true,
                  "isInternalMovement": true,
                  "isPurchaseReturn": true,
                  "isSalesReturn": true,
                  "isConsignment": true,
                  "isProduction": true,
                  "isAssetIn": true,
                  "isAssetOut": true,
                  "isCashRegisterSale": true,
                  "includeInVatRegister": true,
                  "includeInSaft": true,
                  "isActive": true,
                  "sortOrder": 1000000,
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
        let expectedResponse = UpdateOperationTypesResponse(
            id: "id",
            code: "code",
            name: "name",
            invoiceType: Nullable<UpdateOperationTypesResponseInvoiceType>.value(.invoice),
            payerPartnerId: Nullable<String>.value("payerPartnerId"),
            debitAccountCode: Nullable<String>.value("debitAccountCode"),
            creditAccountCode: Nullable<String>.value("creditAccountCode"),
            vatAccountCode: Nullable<String>.value("vatAccountCode"),
            expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
            advanceAccountCode: Nullable<String>.value("advanceAccountCode"),
            incomeAccountCode: Nullable<String>.value("incomeAccountCode"),
            isPurchase: true,
            isSale: true,
            isWriteOff: true,
            isInternalMovement: true,
            isPurchaseReturn: true,
            isSalesReturn: true,
            isConsignment: true,
            isProduction: true,
            isAssetIn: true,
            isAssetOut: true,
            isCashRegisterSale: true,
            includeInVatRegister: true,
            includeInSaft: true,
            isActive: true,
            sortOrder: 1000000,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.operationTypes.update(
            request: .init(id: "id"),
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
                  "code": "code",
                  "name": "name",
                  "invoiceType": "invoice",
                  "payerPartnerId": "x",
                  "debitAccountCode": "debitAccountCode",
                  "creditAccountCode": "creditAccountCode",
                  "vatAccountCode": "vatAccountCode",
                  "expenseAccountCode": "expenseAccountCode",
                  "advanceAccountCode": "advanceAccountCode",
                  "incomeAccountCode": "incomeAccountCode",
                  "isPurchase": true,
                  "isSale": true,
                  "isWriteOff": true,
                  "isInternalMovement": true,
                  "isPurchaseReturn": true,
                  "isSalesReturn": true,
                  "isConsignment": true,
                  "isProduction": true,
                  "isAssetIn": true,
                  "isAssetOut": true,
                  "isCashRegisterSale": true,
                  "includeInVatRegister": true,
                  "includeInSaft": true,
                  "isActive": true,
                  "sortOrder": 1000000,
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
        let expectedResponse = UpdateOperationTypesResponse(
            id: "x",
            code: "code",
            name: "name",
            invoiceType: Nullable<UpdateOperationTypesResponseInvoiceType>.value(.invoice),
            payerPartnerId: Nullable<String>.value("x"),
            debitAccountCode: Nullable<String>.value("debitAccountCode"),
            creditAccountCode: Nullable<String>.value("creditAccountCode"),
            vatAccountCode: Nullable<String>.value("vatAccountCode"),
            expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
            advanceAccountCode: Nullable<String>.value("advanceAccountCode"),
            incomeAccountCode: Nullable<String>.value("incomeAccountCode"),
            isPurchase: true,
            isSale: true,
            isWriteOff: true,
            isInternalMovement: true,
            isPurchaseReturn: true,
            isSalesReturn: true,
            isConsignment: true,
            isProduction: true,
            isAssetIn: true,
            isAssetOut: true,
            isCashRegisterSale: true,
            includeInVatRegister: true,
            includeInSaft: true,
            isActive: true,
            sortOrder: 1000000,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.operationTypes.update(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func get1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "invoiceType": "invoice",
                  "payerPartnerId": "payerPartnerId",
                  "debitAccountCode": "debitAccountCode",
                  "creditAccountCode": "creditAccountCode",
                  "vatAccountCode": "vatAccountCode",
                  "expenseAccountCode": "expenseAccountCode",
                  "advanceAccountCode": "advanceAccountCode",
                  "incomeAccountCode": "incomeAccountCode",
                  "isPurchase": true,
                  "isSale": true,
                  "isWriteOff": true,
                  "isInternalMovement": true,
                  "isPurchaseReturn": true,
                  "isSalesReturn": true,
                  "isConsignment": true,
                  "isProduction": true,
                  "isAssetIn": true,
                  "isAssetOut": true,
                  "isCashRegisterSale": true,
                  "includeInVatRegister": true,
                  "includeInSaft": true,
                  "isActive": true,
                  "sortOrder": 1000000,
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
        let expectedResponse = GetOperationTypesResponse(
            id: "id",
            code: "code",
            name: "name",
            invoiceType: Nullable<GetOperationTypesResponseInvoiceType>.value(.invoice),
            payerPartnerId: Nullable<String>.value("payerPartnerId"),
            debitAccountCode: Nullable<String>.value("debitAccountCode"),
            creditAccountCode: Nullable<String>.value("creditAccountCode"),
            vatAccountCode: Nullable<String>.value("vatAccountCode"),
            expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
            advanceAccountCode: Nullable<String>.value("advanceAccountCode"),
            incomeAccountCode: Nullable<String>.value("incomeAccountCode"),
            isPurchase: true,
            isSale: true,
            isWriteOff: true,
            isInternalMovement: true,
            isPurchaseReturn: true,
            isSalesReturn: true,
            isConsignment: true,
            isProduction: true,
            isAssetIn: true,
            isAssetOut: true,
            isCashRegisterSale: true,
            includeInVatRegister: true,
            includeInSaft: true,
            isActive: true,
            sortOrder: 1000000,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.operationTypes.get(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func get2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "invoiceType": "invoice",
                  "payerPartnerId": "x",
                  "debitAccountCode": "debitAccountCode",
                  "creditAccountCode": "creditAccountCode",
                  "vatAccountCode": "vatAccountCode",
                  "expenseAccountCode": "expenseAccountCode",
                  "advanceAccountCode": "advanceAccountCode",
                  "incomeAccountCode": "incomeAccountCode",
                  "isPurchase": true,
                  "isSale": true,
                  "isWriteOff": true,
                  "isInternalMovement": true,
                  "isPurchaseReturn": true,
                  "isSalesReturn": true,
                  "isConsignment": true,
                  "isProduction": true,
                  "isAssetIn": true,
                  "isAssetOut": true,
                  "isCashRegisterSale": true,
                  "includeInVatRegister": true,
                  "includeInSaft": true,
                  "isActive": true,
                  "sortOrder": 1000000,
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
        let expectedResponse = GetOperationTypesResponse(
            id: "x",
            code: "code",
            name: "name",
            invoiceType: Nullable<GetOperationTypesResponseInvoiceType>.value(.invoice),
            payerPartnerId: Nullable<String>.value("x"),
            debitAccountCode: Nullable<String>.value("debitAccountCode"),
            creditAccountCode: Nullable<String>.value("creditAccountCode"),
            vatAccountCode: Nullable<String>.value("vatAccountCode"),
            expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
            advanceAccountCode: Nullable<String>.value("advanceAccountCode"),
            incomeAccountCode: Nullable<String>.value("incomeAccountCode"),
            isPurchase: true,
            isSale: true,
            isWriteOff: true,
            isInternalMovement: true,
            isPurchaseReturn: true,
            isSalesReturn: true,
            isConsignment: true,
            isProduction: true,
            isAssetIn: true,
            isAssetOut: true,
            isCashRegisterSale: true,
            includeInVatRegister: true,
            includeInSaft: true,
            isActive: true,
            sortOrder: 1000000,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.operationTypes.get(
            request: .init(id: "x"),
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
        let expectedResponse = DeleteOperationTypesResponse(
            deleted: true
        )
        let response = try await client.operationTypes.delete(
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
        let expectedResponse = DeleteOperationTypesResponse(
            deleted: true
        )
        let response = try await client.operationTypes.delete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func list1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "code": "code",
                      "name": "name",
                      "invoiceType": "invoice",
                      "payerPartnerId": "payerPartnerId",
                      "debitAccountCode": "debitAccountCode",
                      "creditAccountCode": "creditAccountCode",
                      "vatAccountCode": "vatAccountCode",
                      "expenseAccountCode": "expenseAccountCode",
                      "advanceAccountCode": "advanceAccountCode",
                      "incomeAccountCode": "incomeAccountCode",
                      "isPurchase": true,
                      "isSale": true,
                      "isWriteOff": true,
                      "isInternalMovement": true,
                      "isPurchaseReturn": true,
                      "isSalesReturn": true,
                      "isConsignment": true,
                      "isProduction": true,
                      "isAssetIn": true,
                      "isAssetOut": true,
                      "isCashRegisterSale": true,
                      "includeInVatRegister": true,
                      "includeInSaft": true,
                      "isActive": true,
                      "sortOrder": 1000000,
                      "createdAt": "2026-07-01T09:30:00Z",
                      "updatedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = ListOperationTypesResponse(
            rows: [
                ListOperationTypesResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    invoiceType: Nullable<ListOperationTypesResponseRowsItemInvoiceType>.value(.invoice),
                    payerPartnerId: Nullable<String>.value("payerPartnerId"),
                    debitAccountCode: Nullable<String>.value("debitAccountCode"),
                    creditAccountCode: Nullable<String>.value("creditAccountCode"),
                    vatAccountCode: Nullable<String>.value("vatAccountCode"),
                    expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
                    advanceAccountCode: Nullable<String>.value("advanceAccountCode"),
                    incomeAccountCode: Nullable<String>.value("incomeAccountCode"),
                    isPurchase: true,
                    isSale: true,
                    isWriteOff: true,
                    isInternalMovement: true,
                    isPurchaseReturn: true,
                    isSalesReturn: true,
                    isConsignment: true,
                    isProduction: true,
                    isAssetIn: true,
                    isAssetOut: true,
                    isCashRegisterSale: true,
                    includeInVatRegister: true,
                    includeInSaft: true,
                    isActive: true,
                    sortOrder: 1000000,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.operationTypes.list(
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
                      "code": "code",
                      "name": "name",
                      "invoiceType": "invoice",
                      "payerPartnerId": "x",
                      "debitAccountCode": "debitAccountCode",
                      "creditAccountCode": "creditAccountCode",
                      "vatAccountCode": "vatAccountCode",
                      "expenseAccountCode": "expenseAccountCode",
                      "advanceAccountCode": "advanceAccountCode",
                      "incomeAccountCode": "incomeAccountCode",
                      "isPurchase": true,
                      "isSale": true,
                      "isWriteOff": true,
                      "isInternalMovement": true,
                      "isPurchaseReturn": true,
                      "isSalesReturn": true,
                      "isConsignment": true,
                      "isProduction": true,
                      "isAssetIn": true,
                      "isAssetOut": true,
                      "isCashRegisterSale": true,
                      "includeInVatRegister": true,
                      "includeInSaft": true,
                      "isActive": true,
                      "sortOrder": 1000000,
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "invoiceType": "invoice",
                      "payerPartnerId": "x",
                      "debitAccountCode": "debitAccountCode",
                      "creditAccountCode": "creditAccountCode",
                      "vatAccountCode": "vatAccountCode",
                      "expenseAccountCode": "expenseAccountCode",
                      "advanceAccountCode": "advanceAccountCode",
                      "incomeAccountCode": "incomeAccountCode",
                      "isPurchase": true,
                      "isSale": true,
                      "isWriteOff": true,
                      "isInternalMovement": true,
                      "isPurchaseReturn": true,
                      "isSalesReturn": true,
                      "isConsignment": true,
                      "isProduction": true,
                      "isAssetIn": true,
                      "isAssetOut": true,
                      "isCashRegisterSale": true,
                      "includeInVatRegister": true,
                      "includeInSaft": true,
                      "isActive": true,
                      "sortOrder": 1000000,
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = ListOperationTypesResponse(
            rows: [
                ListOperationTypesResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    invoiceType: Nullable<ListOperationTypesResponseRowsItemInvoiceType>.value(.invoice),
                    payerPartnerId: Nullable<String>.value("x"),
                    debitAccountCode: Nullable<String>.value("debitAccountCode"),
                    creditAccountCode: Nullable<String>.value("creditAccountCode"),
                    vatAccountCode: Nullable<String>.value("vatAccountCode"),
                    expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
                    advanceAccountCode: Nullable<String>.value("advanceAccountCode"),
                    incomeAccountCode: Nullable<String>.value("incomeAccountCode"),
                    isPurchase: true,
                    isSale: true,
                    isWriteOff: true,
                    isInternalMovement: true,
                    isPurchaseReturn: true,
                    isSalesReturn: true,
                    isConsignment: true,
                    isProduction: true,
                    isAssetIn: true,
                    isAssetOut: true,
                    isCashRegisterSale: true,
                    includeInVatRegister: true,
                    includeInSaft: true,
                    isActive: true,
                    sortOrder: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ListOperationTypesResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    invoiceType: Nullable<ListOperationTypesResponseRowsItemInvoiceType>.value(.invoice),
                    payerPartnerId: Nullable<String>.value("x"),
                    debitAccountCode: Nullable<String>.value("debitAccountCode"),
                    creditAccountCode: Nullable<String>.value("creditAccountCode"),
                    vatAccountCode: Nullable<String>.value("vatAccountCode"),
                    expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
                    advanceAccountCode: Nullable<String>.value("advanceAccountCode"),
                    incomeAccountCode: Nullable<String>.value("incomeAccountCode"),
                    isPurchase: true,
                    isSale: true,
                    isWriteOff: true,
                    isInternalMovement: true,
                    isPurchaseReturn: true,
                    isSalesReturn: true,
                    isConsignment: true,
                    isProduction: true,
                    isAssetIn: true,
                    isAssetOut: true,
                    isCashRegisterSale: true,
                    includeInVatRegister: true,
                    includeInSaft: true,
                    isActive: true,
                    sortOrder: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.operationTypes.list(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}