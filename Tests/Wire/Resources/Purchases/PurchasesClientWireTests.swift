import Foundation
import Testing
import Api

@Suite("PurchasesClient Wire Tests") struct PurchasesClientWireTests {
    @Test func postV1PurchasesInvoicesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "documentNumber": "documentNumber",
                  "documentDate": "documentDate",
                  "dueDate": "dueDate",
                  "registrationDate": "registrationDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = PostV1PurchasesInvoicesCreateResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            documentNumber: "documentNumber",
            documentDate: "documentDate",
            dueDate: Nullable<String>.value("dueDate"),
            registrationDate: Nullable<String>.value("registrationDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesInvoicesCreateResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesInvoicesCreate(
            request: .init(
                partnerId: "partnerId",
                documentNumber: "documentNumber",
                documentDate: "documentDate",
                lines: [
                    PostV1PurchasesInvoicesCreateRequestLinesItem(

                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesInvoicesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "documentNumber": "documentNumber",
                  "documentDate": "documentDate",
                  "dueDate": "dueDate",
                  "registrationDate": "registrationDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "creditedInvoiceId": "x",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = PostV1PurchasesInvoicesCreateResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            documentNumber: "documentNumber",
            documentDate: "documentDate",
            dueDate: Nullable<String>.value("dueDate"),
            registrationDate: Nullable<String>.value("registrationDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesInvoicesCreateResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1PurchasesInvoicesCreateResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesInvoicesCreate(
            request: .init(
                partnerId: "x",
                documentNumber: "x",
                documentDate: "documentDate",
                lines: [
                    PostV1PurchasesInvoicesCreateRequestLinesItem(

                    ),
                    PostV1PurchasesInvoicesCreateRequestLinesItem(

                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesInvoicesGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "documentNumber": "documentNumber",
                  "documentDate": "documentDate",
                  "dueDate": "dueDate",
                  "registrationDate": "registrationDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = PostV1PurchasesInvoicesGetResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            documentNumber: "documentNumber",
            documentDate: "documentDate",
            dueDate: Nullable<String>.value("dueDate"),
            registrationDate: Nullable<String>.value("registrationDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesInvoicesGetResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesInvoicesGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesInvoicesGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "documentNumber": "documentNumber",
                  "documentDate": "documentDate",
                  "dueDate": "dueDate",
                  "registrationDate": "registrationDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "creditedInvoiceId": "x",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = PostV1PurchasesInvoicesGetResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            documentNumber: "documentNumber",
            documentDate: "documentDate",
            dueDate: Nullable<String>.value("dueDate"),
            registrationDate: Nullable<String>.value("registrationDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesInvoicesGetResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1PurchasesInvoicesGetResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesInvoicesGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesInvoicesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "documentNumber": "documentNumber",
                  "documentDate": "documentDate",
                  "dueDate": "dueDate",
                  "registrationDate": "registrationDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = PostV1PurchasesInvoicesUpdateResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            documentNumber: "documentNumber",
            documentDate: "documentDate",
            dueDate: Nullable<String>.value("dueDate"),
            registrationDate: Nullable<String>.value("registrationDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesInvoicesUpdateResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesInvoicesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesInvoicesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "documentNumber": "documentNumber",
                  "documentDate": "documentDate",
                  "dueDate": "dueDate",
                  "registrationDate": "registrationDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "creditedInvoiceId": "x",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = PostV1PurchasesInvoicesUpdateResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            documentNumber: "documentNumber",
            documentDate: "documentDate",
            dueDate: Nullable<String>.value("dueDate"),
            registrationDate: Nullable<String>.value("registrationDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesInvoicesUpdateResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1PurchasesInvoicesUpdateResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesInvoicesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesInvoicesDelete1() async throws -> Void {
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
        let expectedResponse = PostV1PurchasesInvoicesDeleteResponse(
            id: "id"
        )
        let response = try await client.purchases.postV1PurchasesInvoicesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesInvoicesDelete2() async throws -> Void {
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
        let expectedResponse = PostV1PurchasesInvoicesDeleteResponse(
            id: "x"
        )
        let response = try await client.purchases.postV1PurchasesInvoicesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesInvoicesRegister1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "documentNumber": "documentNumber",
                  "documentDate": "documentDate",
                  "dueDate": "dueDate",
                  "registrationDate": "registrationDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = PostV1PurchasesInvoicesRegisterResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            documentNumber: "documentNumber",
            documentDate: "documentDate",
            dueDate: Nullable<String>.value("dueDate"),
            registrationDate: Nullable<String>.value("registrationDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesInvoicesRegisterResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesInvoicesRegister(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesInvoicesRegister2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "documentNumber": "documentNumber",
                  "documentDate": "documentDate",
                  "dueDate": "dueDate",
                  "registrationDate": "registrationDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "creditedInvoiceId": "x",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = PostV1PurchasesInvoicesRegisterResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            documentNumber: "documentNumber",
            documentDate: "documentDate",
            dueDate: Nullable<String>.value("dueDate"),
            registrationDate: Nullable<String>.value("registrationDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesInvoicesRegisterResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1PurchasesInvoicesRegisterResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesInvoicesRegister(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesInvoicesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "partnerId": "partnerId",
                      "type": "invoice",
                      "status": "draft",
                      "paymentStatus": "unpaid",
                      "documentNumber": "documentNumber",
                      "documentDate": "documentDate",
                      "dueDate": "dueDate",
                      "registrationDate": "registrationDate",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "journalTransactionId",
                      "creditedInvoiceId": "creditedInvoiceId",
                      "notes": "notes",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1PurchasesInvoicesListResponse(
            rows: [
                PostV1PurchasesInvoicesListResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    type: .invoice,
                    status: .draft,
                    paymentStatus: .unpaid,
                    documentNumber: "documentNumber",
                    documentDate: "documentDate",
                    dueDate: Nullable<String>.value("dueDate"),
                    registrationDate: Nullable<String>.value("registrationDate"),
                    currency: "currency",
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.purchases.postV1PurchasesInvoicesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesInvoicesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "partnerId": "x",
                      "type": "invoice",
                      "status": "draft",
                      "paymentStatus": "unpaid",
                      "documentNumber": "documentNumber",
                      "documentDate": "documentDate",
                      "dueDate": "dueDate",
                      "registrationDate": "registrationDate",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "x",
                      "creditedInvoiceId": "x",
                      "notes": "notes",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "partnerId": "x",
                      "type": "invoice",
                      "status": "draft",
                      "paymentStatus": "unpaid",
                      "documentNumber": "documentNumber",
                      "documentDate": "documentDate",
                      "dueDate": "dueDate",
                      "registrationDate": "registrationDate",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "x",
                      "creditedInvoiceId": "x",
                      "notes": "notes",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1PurchasesInvoicesListResponse(
            rows: [
                PostV1PurchasesInvoicesListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    type: .invoice,
                    status: .draft,
                    paymentStatus: .unpaid,
                    documentNumber: "documentNumber",
                    documentDate: "documentDate",
                    dueDate: Nullable<String>.value("dueDate"),
                    registrationDate: Nullable<String>.value("registrationDate"),
                    currency: "currency",
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("x"),
                    creditedInvoiceId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1PurchasesInvoicesListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    type: .invoice,
                    status: .draft,
                    paymentStatus: .unpaid,
                    documentNumber: "documentNumber",
                    documentDate: "documentDate",
                    dueDate: Nullable<String>.value("dueDate"),
                    registrationDate: Nullable<String>.value("registrationDate"),
                    currency: "currency",
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("x"),
                    creditedInvoiceId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.purchases.postV1PurchasesInvoicesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}