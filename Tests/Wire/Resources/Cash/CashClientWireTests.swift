import Foundation
import Testing
import Api

@Suite("CashClient Wire Tests") struct CashClientWireTests {
    @Test func ordersCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "type": "receipt",
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "date": "2026-07-01",
                  "partnerId": "partnerId",
                  "employeeId": "employeeId",
                  "amount": "amount",
                  "currency": "currency",
                  "purpose": "purpose",
                  "cashAccountCode": "cashAccountCode",
                  "counterAccountCode": "counterAccountCode",
                  "journalTransactionId": "journalTransactionId",
                  "saleInvoiceId": "saleInvoiceId",
                  "purchaseInvoiceId": "purchaseInvoiceId",
                  "notes": "notes",
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
        let expectedResponse = OrdersCreateCashResponse(
            id: "id",
            type: .receipt,
            series: "series",
            number: 1000000,
            fullNumber: "fullNumber",
            date: CalendarDate("2026-07-01")!,
            partnerId: Nullable<String>.value("partnerId"),
            employeeId: Nullable<String>.value("employeeId"),
            amount: "amount",
            currency: "currency",
            purpose: "purpose",
            cashAccountCode: "cashAccountCode",
            counterAccountCode: "counterAccountCode",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            purchaseInvoiceId: Nullable<String>.value("purchaseInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.cash.ordersCreate(
            request: .init(
                type: .receipt,
                date: CalendarDate("2026-07-01")!,
                amount: "121.0000",
                purpose: "purpose"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "type": "receipt",
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "date": "2023-01-15",
                  "partnerId": "x",
                  "employeeId": "x",
                  "amount": "amount",
                  "currency": "currency",
                  "purpose": "purpose",
                  "cashAccountCode": "cashAccountCode",
                  "counterAccountCode": "counterAccountCode",
                  "journalTransactionId": "x",
                  "saleInvoiceId": "x",
                  "purchaseInvoiceId": "x",
                  "notes": "notes",
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
        let expectedResponse = OrdersCreateCashResponse(
            id: "x",
            type: .receipt,
            series: "series",
            number: 1000000,
            fullNumber: "fullNumber",
            date: CalendarDate("2023-01-15")!,
            partnerId: Nullable<String>.value("x"),
            employeeId: Nullable<String>.value("x"),
            amount: "amount",
            currency: "currency",
            purpose: "purpose",
            cashAccountCode: "cashAccountCode",
            counterAccountCode: "counterAccountCode",
            journalTransactionId: Nullable<String>.value("x"),
            saleInvoiceId: Nullable<String>.value("x"),
            purchaseInvoiceId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.cash.ordersCreate(
            request: .init(
                type: .receipt,
                date: CalendarDate("2023-01-15")!,
                amount: "amount",
                purpose: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "type": "receipt",
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "date": "2026-07-01",
                  "partnerId": "partnerId",
                  "employeeId": "employeeId",
                  "amount": "amount",
                  "currency": "currency",
                  "purpose": "purpose",
                  "cashAccountCode": "cashAccountCode",
                  "counterAccountCode": "counterAccountCode",
                  "journalTransactionId": "journalTransactionId",
                  "saleInvoiceId": "saleInvoiceId",
                  "purchaseInvoiceId": "purchaseInvoiceId",
                  "notes": "notes",
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
        let expectedResponse = OrdersGetCashResponse(
            id: "id",
            type: .receipt,
            series: "series",
            number: 1000000,
            fullNumber: "fullNumber",
            date: CalendarDate("2026-07-01")!,
            partnerId: Nullable<String>.value("partnerId"),
            employeeId: Nullable<String>.value("employeeId"),
            amount: "amount",
            currency: "currency",
            purpose: "purpose",
            cashAccountCode: "cashAccountCode",
            counterAccountCode: "counterAccountCode",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            purchaseInvoiceId: Nullable<String>.value("purchaseInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.cash.ordersGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "type": "receipt",
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "date": "2023-01-15",
                  "partnerId": "x",
                  "employeeId": "x",
                  "amount": "amount",
                  "currency": "currency",
                  "purpose": "purpose",
                  "cashAccountCode": "cashAccountCode",
                  "counterAccountCode": "counterAccountCode",
                  "journalTransactionId": "x",
                  "saleInvoiceId": "x",
                  "purchaseInvoiceId": "x",
                  "notes": "notes",
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
        let expectedResponse = OrdersGetCashResponse(
            id: "x",
            type: .receipt,
            series: "series",
            number: 1000000,
            fullNumber: "fullNumber",
            date: CalendarDate("2023-01-15")!,
            partnerId: Nullable<String>.value("x"),
            employeeId: Nullable<String>.value("x"),
            amount: "amount",
            currency: "currency",
            purpose: "purpose",
            cashAccountCode: "cashAccountCode",
            counterAccountCode: "counterAccountCode",
            journalTransactionId: Nullable<String>.value("x"),
            saleInvoiceId: Nullable<String>.value("x"),
            purchaseInvoiceId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.cash.ordersGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "type": "receipt",
                      "series": "series",
                      "number": 1000000,
                      "fullNumber": "fullNumber",
                      "date": "2026-07-01",
                      "partnerId": "partnerId",
                      "employeeId": "employeeId",
                      "amount": "amount",
                      "currency": "currency",
                      "purpose": "purpose",
                      "cashAccountCode": "cashAccountCode",
                      "counterAccountCode": "counterAccountCode",
                      "journalTransactionId": "journalTransactionId",
                      "saleInvoiceId": "saleInvoiceId",
                      "purchaseInvoiceId": "purchaseInvoiceId",
                      "notes": "notes",
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
        let expectedResponse = OrdersListCashResponse(
            rows: [
                OrdersListCashResponseRowsItem(
                    id: "id",
                    type: .receipt,
                    series: "series",
                    number: 1000000,
                    fullNumber: "fullNumber",
                    date: CalendarDate("2026-07-01")!,
                    partnerId: Nullable<String>.value("partnerId"),
                    employeeId: Nullable<String>.value("employeeId"),
                    amount: "amount",
                    currency: "currency",
                    purpose: "purpose",
                    cashAccountCode: "cashAccountCode",
                    counterAccountCode: "counterAccountCode",
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
                    purchaseInvoiceId: Nullable<String>.value("purchaseInvoiceId"),
                    notes: Nullable<String>.value("notes"),
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
        let response = try await client.cash.ordersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "type": "receipt",
                      "series": "series",
                      "number": 1000000,
                      "fullNumber": "fullNumber",
                      "date": "2023-01-15",
                      "partnerId": "x",
                      "employeeId": "x",
                      "amount": "amount",
                      "currency": "currency",
                      "purpose": "purpose",
                      "cashAccountCode": "cashAccountCode",
                      "counterAccountCode": "counterAccountCode",
                      "journalTransactionId": "x",
                      "saleInvoiceId": "x",
                      "purchaseInvoiceId": "x",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "type": "receipt",
                      "series": "series",
                      "number": 1000000,
                      "fullNumber": "fullNumber",
                      "date": "2023-01-15",
                      "partnerId": "x",
                      "employeeId": "x",
                      "amount": "amount",
                      "currency": "currency",
                      "purpose": "purpose",
                      "cashAccountCode": "cashAccountCode",
                      "counterAccountCode": "counterAccountCode",
                      "journalTransactionId": "x",
                      "saleInvoiceId": "x",
                      "purchaseInvoiceId": "x",
                      "notes": "notes",
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
        let expectedResponse = OrdersListCashResponse(
            rows: [
                OrdersListCashResponseRowsItem(
                    id: "x",
                    type: .receipt,
                    series: "series",
                    number: 1000000,
                    fullNumber: "fullNumber",
                    date: CalendarDate("2023-01-15")!,
                    partnerId: Nullable<String>.value("x"),
                    employeeId: Nullable<String>.value("x"),
                    amount: "amount",
                    currency: "currency",
                    purpose: "purpose",
                    cashAccountCode: "cashAccountCode",
                    counterAccountCode: "counterAccountCode",
                    journalTransactionId: Nullable<String>.value("x"),
                    saleInvoiceId: Nullable<String>.value("x"),
                    purchaseInvoiceId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                OrdersListCashResponseRowsItem(
                    id: "x",
                    type: .receipt,
                    series: "series",
                    number: 1000000,
                    fullNumber: "fullNumber",
                    date: CalendarDate("2023-01-15")!,
                    partnerId: Nullable<String>.value("x"),
                    employeeId: Nullable<String>.value("x"),
                    amount: "amount",
                    currency: "currency",
                    purpose: "purpose",
                    cashAccountCode: "cashAccountCode",
                    counterAccountCode: "counterAccountCode",
                    journalTransactionId: Nullable<String>.value("x"),
                    saleInvoiceId: Nullable<String>.value("x"),
                    purchaseInvoiceId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
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
        let response = try await client.cash.ordersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func balance1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "cashAccountCode": "cashAccountCode",
                  "balance": "balance"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BalanceCashResponse(
            cashAccountCode: "cashAccountCode",
            balance: "balance"
        )
        let response = try await client.cash.balance(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func balance2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "cashAccountCode": "cashAccountCode",
                  "balance": "balance"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BalanceCashResponse(
            cashAccountCode: "cashAccountCode",
            balance: "balance"
        )
        let response = try await client.cash.balance(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func expenseReportsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "number": "number",
                  "employeeId": "employeeId",
                  "date": "2026-07-01",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "total": "total",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "description": "description",
                      "documentNumber": "documentNumber",
                      "accountCode": "accountCode",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
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
        let expectedResponse = ExpenseReportsCreateCashResponse(
            id: "id",
            number: "number",
            employeeId: "employeeId",
            date: CalendarDate("2026-07-01")!,
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            total: "total",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                ExpenseReportsCreateCashResponseLinesItem(
                    id: "id",
                    description: "description",
                    documentNumber: Nullable<String>.value("documentNumber"),
                    accountCode: "accountCode",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                )
            ]
        )
        let response = try await client.cash.expenseReportsCreate(
            request: .init(
                employeeId: "employeeId",
                date: CalendarDate("2026-07-01")!,
                lines: [
                    ExpenseReportsCreateCashRequestLinesItem(
                        description: "description",
                        accountCode: "accountCode",
                        netAmount: "121.00"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func expenseReportsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "number": "number",
                  "employeeId": "x",
                  "date": "2023-01-15",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "total": "total",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "description": "description",
                      "documentNumber": "documentNumber",
                      "accountCode": "accountCode",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
                    },
                    {
                      "id": "x",
                      "description": "description",
                      "documentNumber": "documentNumber",
                      "accountCode": "accountCode",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
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
        let expectedResponse = ExpenseReportsCreateCashResponse(
            id: "x",
            number: "number",
            employeeId: "x",
            date: CalendarDate("2023-01-15")!,
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            total: "total",
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                ExpenseReportsCreateCashResponseLinesItem(
                    id: "x",
                    description: "description",
                    documentNumber: Nullable<String>.value("documentNumber"),
                    accountCode: "accountCode",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                ),
                ExpenseReportsCreateCashResponseLinesItem(
                    id: "x",
                    description: "description",
                    documentNumber: Nullable<String>.value("documentNumber"),
                    accountCode: "accountCode",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                )
            ]
        )
        let response = try await client.cash.expenseReportsCreate(
            request: .init(
                employeeId: "x",
                date: CalendarDate("2023-01-15")!,
                lines: [
                    ExpenseReportsCreateCashRequestLinesItem(
                        description: "x",
                        accountCode: "x",
                        netAmount: "netAmount"
                    ),
                    ExpenseReportsCreateCashRequestLinesItem(
                        description: "x",
                        accountCode: "x",
                        netAmount: "netAmount"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func expenseReportsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "number": "number",
                  "employeeId": "employeeId",
                  "date": "2026-07-01",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "total": "total",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "description": "description",
                      "documentNumber": "documentNumber",
                      "accountCode": "accountCode",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
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
        let expectedResponse = ExpenseReportsGetCashResponse(
            id: "id",
            number: "number",
            employeeId: "employeeId",
            date: CalendarDate("2026-07-01")!,
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            total: "total",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                ExpenseReportsGetCashResponseLinesItem(
                    id: "id",
                    description: "description",
                    documentNumber: Nullable<String>.value("documentNumber"),
                    accountCode: "accountCode",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                )
            ]
        )
        let response = try await client.cash.expenseReportsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func expenseReportsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "number": "number",
                  "employeeId": "x",
                  "date": "2023-01-15",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "total": "total",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "description": "description",
                      "documentNumber": "documentNumber",
                      "accountCode": "accountCode",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
                    },
                    {
                      "id": "x",
                      "description": "description",
                      "documentNumber": "documentNumber",
                      "accountCode": "accountCode",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
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
        let expectedResponse = ExpenseReportsGetCashResponse(
            id: "x",
            number: "number",
            employeeId: "x",
            date: CalendarDate("2023-01-15")!,
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            total: "total",
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                ExpenseReportsGetCashResponseLinesItem(
                    id: "x",
                    description: "description",
                    documentNumber: Nullable<String>.value("documentNumber"),
                    accountCode: "accountCode",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                ),
                ExpenseReportsGetCashResponseLinesItem(
                    id: "x",
                    description: "description",
                    documentNumber: Nullable<String>.value("documentNumber"),
                    accountCode: "accountCode",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                )
            ]
        )
        let response = try await client.cash.expenseReportsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func expenseReportsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "number": "number",
                      "employeeId": "employeeId",
                      "date": "2026-07-01",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "total": "total",
                      "journalTransactionId": "journalTransactionId",
                      "notes": "notes",
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
        let expectedResponse = ExpenseReportsListCashResponse(
            rows: [
                ExpenseReportsListCashResponseRowsItem(
                    id: "id",
                    number: "number",
                    employeeId: "employeeId",
                    date: CalendarDate("2026-07-01")!,
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    total: "total",
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    notes: Nullable<String>.value("notes"),
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
        let response = try await client.cash.expenseReportsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func expenseReportsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "number": "number",
                      "employeeId": "x",
                      "date": "2023-01-15",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "total": "total",
                      "journalTransactionId": "x",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "number": "number",
                      "employeeId": "x",
                      "date": "2023-01-15",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "total": "total",
                      "journalTransactionId": "x",
                      "notes": "notes",
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
        let expectedResponse = ExpenseReportsListCashResponse(
            rows: [
                ExpenseReportsListCashResponseRowsItem(
                    id: "x",
                    number: "number",
                    employeeId: "x",
                    date: CalendarDate("2023-01-15")!,
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    total: "total",
                    journalTransactionId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ExpenseReportsListCashResponseRowsItem(
                    id: "x",
                    number: "number",
                    employeeId: "x",
                    date: CalendarDate("2023-01-15")!,
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    total: "total",
                    journalTransactionId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
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
        let response = try await client.cash.expenseReportsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func advanceHoldersBalances1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "issued": "issued",
                      "returned": "returned",
                      "settled": "settled",
                      "balance": "balance"
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
        let expectedResponse = AdvanceHoldersBalancesCashResponse(
            rows: [
                AdvanceHoldersBalancesCashResponseRowsItem(
                    employeeId: "employeeId",
                    firstName: "firstName",
                    lastName: "lastName",
                    issued: "issued",
                    returned: "returned",
                    settled: "settled",
                    balance: "balance"
                )
            ]
        )
        let response = try await client.cash.advanceHoldersBalances(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func advanceHoldersBalances2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "employeeId": "x",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "issued": "issued",
                      "returned": "returned",
                      "settled": "settled",
                      "balance": "balance"
                    },
                    {
                      "employeeId": "x",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "issued": "issued",
                      "returned": "returned",
                      "settled": "settled",
                      "balance": "balance"
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
        let expectedResponse = AdvanceHoldersBalancesCashResponse(
            rows: [
                AdvanceHoldersBalancesCashResponseRowsItem(
                    employeeId: "x",
                    firstName: "firstName",
                    lastName: "lastName",
                    issued: "issued",
                    returned: "returned",
                    settled: "settled",
                    balance: "balance"
                ),
                AdvanceHoldersBalancesCashResponseRowsItem(
                    employeeId: "x",
                    firstName: "firstName",
                    lastName: "lastName",
                    issued: "issued",
                    returned: "returned",
                    settled: "settled",
                    balance: "balance"
                )
            ]
        )
        let response = try await client.cash.advanceHoldersBalances(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}