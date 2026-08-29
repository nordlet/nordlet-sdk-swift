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
                  "purchaseOrderId": "purchaseOrderId",
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
                      "projectId": "projectId",
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
            purchaseOrderId: Nullable<String>.value("purchaseOrderId"),
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
                    projectId: Nullable<String>.value("projectId"),
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
                  "purchaseOrderId": "x",
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
                      "projectId": "x",
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
                      "projectId": "x",
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
            purchaseOrderId: Nullable<String>.value("x"),
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
                    projectId: Nullable<String>.value("x"),
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
                    projectId: Nullable<String>.value("x"),
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
                  "purchaseOrderId": "purchaseOrderId",
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
                      "projectId": "projectId",
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
            purchaseOrderId: Nullable<String>.value("purchaseOrderId"),
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
                    projectId: Nullable<String>.value("projectId"),
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
                  "purchaseOrderId": "x",
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
                      "projectId": "x",
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
                      "projectId": "x",
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
            purchaseOrderId: Nullable<String>.value("x"),
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
                    projectId: Nullable<String>.value("x"),
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
                    projectId: Nullable<String>.value("x"),
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
                  "purchaseOrderId": "purchaseOrderId",
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
                      "projectId": "projectId",
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
            purchaseOrderId: Nullable<String>.value("purchaseOrderId"),
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
                    projectId: Nullable<String>.value("projectId"),
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
                  "purchaseOrderId": "x",
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
                      "projectId": "x",
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
                      "projectId": "x",
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
            purchaseOrderId: Nullable<String>.value("x"),
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
                    projectId: Nullable<String>.value("x"),
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
                    projectId: Nullable<String>.value("x"),
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
                  "purchaseOrderId": "purchaseOrderId",
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
                      "projectId": "projectId",
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
            purchaseOrderId: Nullable<String>.value("purchaseOrderId"),
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
                    projectId: Nullable<String>.value("projectId"),
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
                  "purchaseOrderId": "x",
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
                      "projectId": "x",
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
                      "projectId": "x",
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
            purchaseOrderId: Nullable<String>.value("x"),
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
                    projectId: Nullable<String>.value("x"),
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
                    projectId: Nullable<String>.value("x"),
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
                      "purchaseOrderId": "purchaseOrderId",
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
                    purchaseOrderId: Nullable<String>.value("purchaseOrderId"),
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
                      "purchaseOrderId": "x",
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
                      "purchaseOrderId": "x",
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
                    purchaseOrderId: Nullable<String>.value("x"),
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
                    purchaseOrderId: Nullable<String>.value("x"),
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

    @Test func postV1PurchasesOrdersCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "orderDate",
                  "expectedDate": "expectedDate",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "approvedAt",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
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
        let expectedResponse = PostV1PurchasesOrdersCreateResponse(
            id: "id",
            partnerId: "partnerId",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: "orderDate",
            expectedDate: Nullable<String>.value("expectedDate"),
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<String>.value("approvedAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesOrdersCreateResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesOrdersCreate(
            request: .init(
                partnerId: "partnerId",
                orderDate: "orderDate",
                lines: [
                    PostV1PurchasesOrdersCreateRequestLinesItem(

                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "orderDate",
                  "expectedDate": "expectedDate",
                  "warehouseId": "x",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "approvedAt",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
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
        let expectedResponse = PostV1PurchasesOrdersCreateResponse(
            id: "x",
            partnerId: "x",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: "orderDate",
            expectedDate: Nullable<String>.value("expectedDate"),
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<String>.value("approvedAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesOrdersCreateResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1PurchasesOrdersCreateResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesOrdersCreate(
            request: .init(
                partnerId: "x",
                orderDate: "orderDate",
                lines: [
                    PostV1PurchasesOrdersCreateRequestLinesItem(

                    ),
                    PostV1PurchasesOrdersCreateRequestLinesItem(

                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "orderDate",
                  "expectedDate": "expectedDate",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "approvedAt",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
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
        let expectedResponse = PostV1PurchasesOrdersUpdateResponse(
            id: "id",
            partnerId: "partnerId",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: "orderDate",
            expectedDate: Nullable<String>.value("expectedDate"),
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<String>.value("approvedAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesOrdersUpdateResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesOrdersUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "orderDate",
                  "expectedDate": "expectedDate",
                  "warehouseId": "x",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "approvedAt",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
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
        let expectedResponse = PostV1PurchasesOrdersUpdateResponse(
            id: "x",
            partnerId: "x",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: "orderDate",
            expectedDate: Nullable<String>.value("expectedDate"),
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<String>.value("approvedAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesOrdersUpdateResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1PurchasesOrdersUpdateResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesOrdersUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "orderDate",
                  "expectedDate": "expectedDate",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "approvedAt",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
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
        let expectedResponse = PostV1PurchasesOrdersGetResponse(
            id: "id",
            partnerId: "partnerId",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: "orderDate",
            expectedDate: Nullable<String>.value("expectedDate"),
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<String>.value("approvedAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesOrdersGetResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesOrdersGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "orderDate",
                  "expectedDate": "expectedDate",
                  "warehouseId": "x",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "approvedAt",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
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
        let expectedResponse = PostV1PurchasesOrdersGetResponse(
            id: "x",
            partnerId: "x",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: "orderDate",
            expectedDate: Nullable<String>.value("expectedDate"),
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<String>.value("approvedAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesOrdersGetResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1PurchasesOrdersGetResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesOrdersGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "partnerId": "partnerId",
                      "status": "draft",
                      "orderNumber": "orderNumber",
                      "orderDate": "orderDate",
                      "expectedDate": "expectedDate",
                      "warehouseId": "warehouseId",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "approvedBy": "approvedBy",
                      "approvedAt": "approvedAt",
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
        let expectedResponse = PostV1PurchasesOrdersListResponse(
            rows: [
                PostV1PurchasesOrdersListResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    status: .draft,
                    orderNumber: "orderNumber",
                    orderDate: "orderDate",
                    expectedDate: Nullable<String>.value("expectedDate"),
                    warehouseId: Nullable<String>.value("warehouseId"),
                    currency: "currency",
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    approvedBy: Nullable<String>.value("approvedBy"),
                    approvedAt: Nullable<String>.value("approvedAt"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.purchases.postV1PurchasesOrdersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "partnerId": "x",
                      "status": "draft",
                      "orderNumber": "orderNumber",
                      "orderDate": "orderDate",
                      "expectedDate": "expectedDate",
                      "warehouseId": "x",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "approvedBy": "approvedBy",
                      "approvedAt": "approvedAt",
                      "notes": "notes",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "partnerId": "x",
                      "status": "draft",
                      "orderNumber": "orderNumber",
                      "orderDate": "orderDate",
                      "expectedDate": "expectedDate",
                      "warehouseId": "x",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "approvedBy": "approvedBy",
                      "approvedAt": "approvedAt",
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
        let expectedResponse = PostV1PurchasesOrdersListResponse(
            rows: [
                PostV1PurchasesOrdersListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    status: .draft,
                    orderNumber: "orderNumber",
                    orderDate: "orderDate",
                    expectedDate: Nullable<String>.value("expectedDate"),
                    warehouseId: Nullable<String>.value("x"),
                    currency: "currency",
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    approvedBy: Nullable<String>.value("approvedBy"),
                    approvedAt: Nullable<String>.value("approvedAt"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1PurchasesOrdersListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    status: .draft,
                    orderNumber: "orderNumber",
                    orderDate: "orderDate",
                    expectedDate: Nullable<String>.value("expectedDate"),
                    warehouseId: Nullable<String>.value("x"),
                    currency: "currency",
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    approvedBy: Nullable<String>.value("approvedBy"),
                    approvedAt: Nullable<String>.value("approvedAt"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.purchases.postV1PurchasesOrdersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersSubmit1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "orderDate",
                  "expectedDate": "expectedDate",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "approvedAt",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
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
        let expectedResponse = PostV1PurchasesOrdersSubmitResponse(
            id: "id",
            partnerId: "partnerId",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: "orderDate",
            expectedDate: Nullable<String>.value("expectedDate"),
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<String>.value("approvedAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesOrdersSubmitResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesOrdersSubmit(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersSubmit2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "orderDate",
                  "expectedDate": "expectedDate",
                  "warehouseId": "x",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "approvedAt",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
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
        let expectedResponse = PostV1PurchasesOrdersSubmitResponse(
            id: "x",
            partnerId: "x",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: "orderDate",
            expectedDate: Nullable<String>.value("expectedDate"),
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<String>.value("approvedAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesOrdersSubmitResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1PurchasesOrdersSubmitResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesOrdersSubmit(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersApprove1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "orderDate",
                  "expectedDate": "expectedDate",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "approvedAt",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
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
        let expectedResponse = PostV1PurchasesOrdersApproveResponse(
            id: "id",
            partnerId: "partnerId",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: "orderDate",
            expectedDate: Nullable<String>.value("expectedDate"),
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<String>.value("approvedAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesOrdersApproveResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesOrdersApprove(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersApprove2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "orderDate",
                  "expectedDate": "expectedDate",
                  "warehouseId": "x",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "approvedAt",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
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
        let expectedResponse = PostV1PurchasesOrdersApproveResponse(
            id: "x",
            partnerId: "x",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: "orderDate",
            expectedDate: Nullable<String>.value("expectedDate"),
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<String>.value("approvedAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesOrdersApproveResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1PurchasesOrdersApproveResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesOrdersApprove(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersReject1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "orderDate",
                  "expectedDate": "expectedDate",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "approvedAt",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
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
        let expectedResponse = PostV1PurchasesOrdersRejectResponse(
            id: "id",
            partnerId: "partnerId",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: "orderDate",
            expectedDate: Nullable<String>.value("expectedDate"),
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<String>.value("approvedAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesOrdersRejectResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesOrdersReject(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersReject2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "orderDate",
                  "expectedDate": "expectedDate",
                  "warehouseId": "x",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "approvedAt",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
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
        let expectedResponse = PostV1PurchasesOrdersRejectResponse(
            id: "x",
            partnerId: "x",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: "orderDate",
            expectedDate: Nullable<String>.value("expectedDate"),
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<String>.value("approvedAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesOrdersRejectResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1PurchasesOrdersRejectResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesOrdersReject(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersCancel1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "orderDate",
                  "expectedDate": "expectedDate",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "approvedAt",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
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
        let expectedResponse = PostV1PurchasesOrdersCancelResponse(
            id: "id",
            partnerId: "partnerId",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: "orderDate",
            expectedDate: Nullable<String>.value("expectedDate"),
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<String>.value("approvedAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesOrdersCancelResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesOrdersCancel(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersCancel2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "orderDate",
                  "expectedDate": "expectedDate",
                  "warehouseId": "x",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "approvedAt",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
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
        let expectedResponse = PostV1PurchasesOrdersCancelResponse(
            id: "x",
            partnerId: "x",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: "orderDate",
            expectedDate: Nullable<String>.value("expectedDate"),
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<String>.value("approvedAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesOrdersCancelResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1PurchasesOrdersCancelResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesOrdersCancel(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersClose1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "orderDate",
                  "expectedDate": "expectedDate",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "approvedAt",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
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
        let expectedResponse = PostV1PurchasesOrdersCloseResponse(
            id: "id",
            partnerId: "partnerId",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: "orderDate",
            expectedDate: Nullable<String>.value("expectedDate"),
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<String>.value("approvedAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesOrdersCloseResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesOrdersClose(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersClose2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "orderDate",
                  "expectedDate": "expectedDate",
                  "warehouseId": "x",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "approvedAt",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
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
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
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
        let expectedResponse = PostV1PurchasesOrdersCloseResponse(
            id: "x",
            partnerId: "x",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: "orderDate",
            expectedDate: Nullable<String>.value("expectedDate"),
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<String>.value("approvedAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1PurchasesOrdersCloseResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1PurchasesOrdersCloseResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesOrdersClose(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersDelete1() async throws -> Void {
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
        let expectedResponse = PostV1PurchasesOrdersDeleteResponse(
            id: "id"
        )
        let response = try await client.purchases.postV1PurchasesOrdersDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesOrdersDelete2() async throws -> Void {
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
        let expectedResponse = PostV1PurchasesOrdersDeleteResponse(
            id: "x"
        )
        let response = try await client.purchases.postV1PurchasesOrdersDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesReceiptsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "orderId": "orderId",
                  "receiptNumber": "receiptNumber",
                  "receiptDate": "receiptDate",
                  "warehouseId": "warehouseId",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "lines": [
                    {
                      "id": "id",
                      "orderLineId": "orderLineId",
                      "itemId": "itemId",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "stockMovementId": "stockMovementId"
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
        let expectedResponse = PostV1PurchasesReceiptsCreateResponse(
            id: "id",
            orderId: "orderId",
            receiptNumber: "receiptNumber",
            receiptDate: "receiptDate",
            warehouseId: "warehouseId",
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            lines: [
                PostV1PurchasesReceiptsCreateResponseLinesItem(
                    id: "id",
                    orderLineId: "orderLineId",
                    itemId: Nullable<String>.value("itemId"),
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    stockMovementId: Nullable<String>.value("stockMovementId")
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesReceiptsCreate(
            request: .init(
                orderId: "orderId",
                receiptDate: "receiptDate",
                lines: [
                    PostV1PurchasesReceiptsCreateRequestLinesItem(
                        orderLineId: "orderLineId",
                        quantity: "quantity"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesReceiptsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "orderId": "x",
                  "receiptNumber": "receiptNumber",
                  "receiptDate": "receiptDate",
                  "warehouseId": "x",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "lines": [
                    {
                      "id": "x",
                      "orderLineId": "x",
                      "itemId": "x",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "stockMovementId": "x"
                    },
                    {
                      "id": "x",
                      "orderLineId": "x",
                      "itemId": "x",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "stockMovementId": "x"
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
        let expectedResponse = PostV1PurchasesReceiptsCreateResponse(
            id: "x",
            orderId: "x",
            receiptNumber: "receiptNumber",
            receiptDate: "receiptDate",
            warehouseId: "x",
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            lines: [
                PostV1PurchasesReceiptsCreateResponseLinesItem(
                    id: "x",
                    orderLineId: "x",
                    itemId: Nullable<String>.value("x"),
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    stockMovementId: Nullable<String>.value("x")
                ),
                PostV1PurchasesReceiptsCreateResponseLinesItem(
                    id: "x",
                    orderLineId: "x",
                    itemId: Nullable<String>.value("x"),
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    stockMovementId: Nullable<String>.value("x")
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesReceiptsCreate(
            request: .init(
                orderId: "x",
                receiptDate: "receiptDate",
                lines: [
                    PostV1PurchasesReceiptsCreateRequestLinesItem(
                        orderLineId: "x",
                        quantity: "quantity"
                    ),
                    PostV1PurchasesReceiptsCreateRequestLinesItem(
                        orderLineId: "x",
                        quantity: "quantity"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesReceiptsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "orderId": "orderId",
                  "receiptNumber": "receiptNumber",
                  "receiptDate": "receiptDate",
                  "warehouseId": "warehouseId",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "lines": [
                    {
                      "id": "id",
                      "orderLineId": "orderLineId",
                      "itemId": "itemId",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "stockMovementId": "stockMovementId"
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
        let expectedResponse = PostV1PurchasesReceiptsGetResponse(
            id: "id",
            orderId: "orderId",
            receiptNumber: "receiptNumber",
            receiptDate: "receiptDate",
            warehouseId: "warehouseId",
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            lines: [
                PostV1PurchasesReceiptsGetResponseLinesItem(
                    id: "id",
                    orderLineId: "orderLineId",
                    itemId: Nullable<String>.value("itemId"),
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    stockMovementId: Nullable<String>.value("stockMovementId")
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesReceiptsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesReceiptsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "orderId": "x",
                  "receiptNumber": "receiptNumber",
                  "receiptDate": "receiptDate",
                  "warehouseId": "x",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "lines": [
                    {
                      "id": "x",
                      "orderLineId": "x",
                      "itemId": "x",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "stockMovementId": "x"
                    },
                    {
                      "id": "x",
                      "orderLineId": "x",
                      "itemId": "x",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "stockMovementId": "x"
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
        let expectedResponse = PostV1PurchasesReceiptsGetResponse(
            id: "x",
            orderId: "x",
            receiptNumber: "receiptNumber",
            receiptDate: "receiptDate",
            warehouseId: "x",
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            lines: [
                PostV1PurchasesReceiptsGetResponseLinesItem(
                    id: "x",
                    orderLineId: "x",
                    itemId: Nullable<String>.value("x"),
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    stockMovementId: Nullable<String>.value("x")
                ),
                PostV1PurchasesReceiptsGetResponseLinesItem(
                    id: "x",
                    orderLineId: "x",
                    itemId: Nullable<String>.value("x"),
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    stockMovementId: Nullable<String>.value("x")
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesReceiptsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesReceiptsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "orderId": "orderId",
                      "receiptNumber": "receiptNumber",
                      "receiptDate": "receiptDate",
                      "warehouseId": "warehouseId",
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
        let expectedResponse = PostV1PurchasesReceiptsListResponse(
            rows: [
                PostV1PurchasesReceiptsListResponseRowsItem(
                    id: "id",
                    orderId: "orderId",
                    receiptNumber: "receiptNumber",
                    receiptDate: "receiptDate",
                    warehouseId: "warehouseId",
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.purchases.postV1PurchasesReceiptsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesReceiptsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "orderId": "x",
                      "receiptNumber": "receiptNumber",
                      "receiptDate": "receiptDate",
                      "warehouseId": "x",
                      "notes": "notes",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "orderId": "x",
                      "receiptNumber": "receiptNumber",
                      "receiptDate": "receiptDate",
                      "warehouseId": "x",
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
        let expectedResponse = PostV1PurchasesReceiptsListResponse(
            rows: [
                PostV1PurchasesReceiptsListResponseRowsItem(
                    id: "x",
                    orderId: "x",
                    receiptNumber: "receiptNumber",
                    receiptDate: "receiptDate",
                    warehouseId: "x",
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1PurchasesReceiptsListResponseRowsItem(
                    id: "x",
                    orderId: "x",
                    receiptNumber: "receiptNumber",
                    receiptDate: "receiptDate",
                    warehouseId: "x",
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.purchases.postV1PurchasesReceiptsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesInvoicesMatch1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "invoiceId": "invoiceId",
                  "orderId": "orderId",
                  "status": "matched",
                  "rows": [
                    {
                      "itemId": "itemId",
                      "description": "description",
                      "orderedQty": "orderedQty",
                      "receivedQty": "receivedQty",
                      "invoicedQty": "invoicedQty",
                      "orderedUnitPrice": "orderedUnitPrice",
                      "invoicedUnitPrice": "invoicedUnitPrice",
                      "priceVariancePercent": "priceVariancePercent",
                      "status": "matched"
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
        let expectedResponse = PostV1PurchasesInvoicesMatchResponse(
            invoiceId: "invoiceId",
            orderId: "orderId",
            status: .matched,
            rows: [
                PostV1PurchasesInvoicesMatchResponseRowsItem(
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    orderedQty: "orderedQty",
                    receivedQty: "receivedQty",
                    invoicedQty: "invoicedQty",
                    orderedUnitPrice: Nullable<String>.value("orderedUnitPrice"),
                    invoicedUnitPrice: Nullable<String>.value("invoicedUnitPrice"),
                    priceVariancePercent: Nullable<String>.value("priceVariancePercent"),
                    status: .matched
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesInvoicesMatch(
            request: .init(invoiceId: "invoiceId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PurchasesInvoicesMatch2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "invoiceId": "x",
                  "orderId": "x",
                  "status": "matched",
                  "rows": [
                    {
                      "itemId": "x",
                      "description": "description",
                      "orderedQty": "orderedQty",
                      "receivedQty": "receivedQty",
                      "invoicedQty": "invoicedQty",
                      "orderedUnitPrice": "orderedUnitPrice",
                      "invoicedUnitPrice": "invoicedUnitPrice",
                      "priceVariancePercent": "priceVariancePercent",
                      "status": "matched"
                    },
                    {
                      "itemId": "x",
                      "description": "description",
                      "orderedQty": "orderedQty",
                      "receivedQty": "receivedQty",
                      "invoicedQty": "invoicedQty",
                      "orderedUnitPrice": "orderedUnitPrice",
                      "invoicedUnitPrice": "invoicedUnitPrice",
                      "priceVariancePercent": "priceVariancePercent",
                      "status": "matched"
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
        let expectedResponse = PostV1PurchasesInvoicesMatchResponse(
            invoiceId: "x",
            orderId: "x",
            status: .matched,
            rows: [
                PostV1PurchasesInvoicesMatchResponseRowsItem(
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    orderedQty: "orderedQty",
                    receivedQty: "receivedQty",
                    invoicedQty: "invoicedQty",
                    orderedUnitPrice: Nullable<String>.value("orderedUnitPrice"),
                    invoicedUnitPrice: Nullable<String>.value("invoicedUnitPrice"),
                    priceVariancePercent: Nullable<String>.value("priceVariancePercent"),
                    status: .matched
                ),
                PostV1PurchasesInvoicesMatchResponseRowsItem(
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    orderedQty: "orderedQty",
                    receivedQty: "receivedQty",
                    invoicedQty: "invoicedQty",
                    orderedUnitPrice: Nullable<String>.value("orderedUnitPrice"),
                    invoicedUnitPrice: Nullable<String>.value("invoicedUnitPrice"),
                    priceVariancePercent: Nullable<String>.value("priceVariancePercent"),
                    status: .matched
                )
            ]
        )
        let response = try await client.purchases.postV1PurchasesInvoicesMatch(
            request: .init(invoiceId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}