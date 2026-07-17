import Foundation
import Testing
import Api

@Suite("SalesClient Wire Tests") struct SalesClientWireTests {
    @Test func postV1SalesInvoicesCreate1() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "issueDate",
                  "dueDate": "dueDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "vatScheme": "domestic",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
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
        let expectedResponse = PostV1SalesInvoicesCreateResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<String>.value("issueDate"),
            dueDate: Nullable<String>.value("dueDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            vatScheme: Nullable<PostV1SalesInvoicesCreateResponseVatScheme>.value(.domestic),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesInvoicesCreateResponseLinesItem(
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
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesInvoicesCreate(
            request: .init(
                partnerId: "partnerId",
                lines: [
                    PostV1SalesInvoicesCreateRequestLinesItem(

                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesCreate2() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "issueDate",
                  "dueDate": "dueDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "vatScheme": "domestic",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
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
        let expectedResponse = PostV1SalesInvoicesCreateResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<String>.value("issueDate"),
            dueDate: Nullable<String>.value("dueDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            vatScheme: Nullable<PostV1SalesInvoicesCreateResponseVatScheme>.value(.domestic),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesInvoicesCreateResponseLinesItem(
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
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1SalesInvoicesCreateResponseLinesItem(
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
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesInvoicesCreate(
            request: .init(
                partnerId: "x",
                lines: [
                    PostV1SalesInvoicesCreateRequestLinesItem(

                    ),
                    PostV1SalesInvoicesCreateRequestLinesItem(

                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesGet1() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "issueDate",
                  "dueDate": "dueDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "vatScheme": "domestic",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
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
        let expectedResponse = PostV1SalesInvoicesGetResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<String>.value("issueDate"),
            dueDate: Nullable<String>.value("dueDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            vatScheme: Nullable<PostV1SalesInvoicesGetResponseVatScheme>.value(.domestic),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesInvoicesGetResponseLinesItem(
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
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesInvoicesGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesGet2() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "issueDate",
                  "dueDate": "dueDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "vatScheme": "domestic",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
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
        let expectedResponse = PostV1SalesInvoicesGetResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<String>.value("issueDate"),
            dueDate: Nullable<String>.value("dueDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            vatScheme: Nullable<PostV1SalesInvoicesGetResponseVatScheme>.value(.domestic),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesInvoicesGetResponseLinesItem(
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
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1SalesInvoicesGetResponseLinesItem(
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
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesInvoicesGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesPdf1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesInvoicesPdfResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data"
        )
        let response = try await client.sales.postV1SalesInvoicesPdf(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesPdf2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesInvoicesPdfResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data"
        )
        let response = try await client.sales.postV1SalesInvoicesPdf(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesSend1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true,
                  "to": "to"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesInvoicesSendResponse(
            sent: true,
            to: "to"
        )
        let response = try await client.sales.postV1SalesInvoicesSend(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesSend2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true,
                  "to": "to"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesInvoicesSendResponse(
            sent: true,
            to: "to"
        )
        let response = try await client.sales.postV1SalesInvoicesSend(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesPeppolXml1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "senderId": "senderId",
                  "receiverId": "receiverId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesInvoicesPeppolXmlResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            senderId: "senderId",
            receiverId: "receiverId"
        )
        let response = try await client.sales.postV1SalesInvoicesPeppolXml(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesPeppolXml2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "senderId": "senderId",
                  "receiverId": "receiverId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesInvoicesPeppolXmlResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            senderId: "senderId",
            receiverId: "receiverId"
        )
        let response = try await client.sales.postV1SalesInvoicesPeppolXml(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesPeppolSend1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true,
                  "messageId": "messageId",
                  "receiverId": "receiverId",
                  "fileId": "fileId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesInvoicesPeppolSendResponse(
            sent: true,
            messageId: "messageId",
            receiverId: "receiverId",
            fileId: "fileId"
        )
        let response = try await client.sales.postV1SalesInvoicesPeppolSend(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesPeppolSend2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true,
                  "messageId": "messageId",
                  "receiverId": "receiverId",
                  "fileId": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesInvoicesPeppolSendResponse(
            sent: true,
            messageId: "messageId",
            receiverId: "receiverId",
            fileId: "x"
        )
        let response = try await client.sales.postV1SalesInvoicesPeppolSend(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesUpdate1() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "issueDate",
                  "dueDate": "dueDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "vatScheme": "domestic",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
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
        let expectedResponse = PostV1SalesInvoicesUpdateResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<String>.value("issueDate"),
            dueDate: Nullable<String>.value("dueDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            vatScheme: Nullable<PostV1SalesInvoicesUpdateResponseVatScheme>.value(.domestic),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesInvoicesUpdateResponseLinesItem(
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
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesInvoicesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesUpdate2() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "issueDate",
                  "dueDate": "dueDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "vatScheme": "domestic",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
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
        let expectedResponse = PostV1SalesInvoicesUpdateResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<String>.value("issueDate"),
            dueDate: Nullable<String>.value("dueDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            vatScheme: Nullable<PostV1SalesInvoicesUpdateResponseVatScheme>.value(.domestic),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesInvoicesUpdateResponseLinesItem(
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
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1SalesInvoicesUpdateResponseLinesItem(
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
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesInvoicesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesDelete1() async throws -> Void {
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
        let expectedResponse = PostV1SalesInvoicesDeleteResponse(
            id: "id"
        )
        let response = try await client.sales.postV1SalesInvoicesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesDelete2() async throws -> Void {
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
        let expectedResponse = PostV1SalesInvoicesDeleteResponse(
            id: "x"
        )
        let response = try await client.sales.postV1SalesInvoicesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesIssue1() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "issueDate",
                  "dueDate": "dueDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "vatScheme": "domestic",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
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
        let expectedResponse = PostV1SalesInvoicesIssueResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<String>.value("issueDate"),
            dueDate: Nullable<String>.value("dueDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            vatScheme: Nullable<PostV1SalesInvoicesIssueResponseVatScheme>.value(.domestic),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesInvoicesIssueResponseLinesItem(
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
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesInvoicesIssue(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesIssue2() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "issueDate",
                  "dueDate": "dueDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "vatScheme": "domestic",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
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
        let expectedResponse = PostV1SalesInvoicesIssueResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<String>.value("issueDate"),
            dueDate: Nullable<String>.value("dueDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            vatScheme: Nullable<PostV1SalesInvoicesIssueResponseVatScheme>.value(.domestic),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesInvoicesIssueResponseLinesItem(
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
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1SalesInvoicesIssueResponseLinesItem(
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
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesInvoicesIssue(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesApplyAdvance1() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "issueDate",
                  "dueDate": "dueDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "vatScheme": "domestic",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
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
        let expectedResponse = PostV1SalesInvoicesApplyAdvanceResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<String>.value("issueDate"),
            dueDate: Nullable<String>.value("dueDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            vatScheme: Nullable<PostV1SalesInvoicesApplyAdvanceResponseVatScheme>.value(.domestic),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesInvoicesApplyAdvanceResponseLinesItem(
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
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesInvoicesApplyAdvance(
            request: .init(
                advanceId: "advanceId",
                invoiceId: "invoiceId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesApplyAdvance2() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "issueDate",
                  "dueDate": "dueDate",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "vatScheme": "domestic",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
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
        let expectedResponse = PostV1SalesInvoicesApplyAdvanceResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<String>.value("issueDate"),
            dueDate: Nullable<String>.value("dueDate"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            vatScheme: Nullable<PostV1SalesInvoicesApplyAdvanceResponseVatScheme>.value(.domestic),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesInvoicesApplyAdvanceResponseLinesItem(
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
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                PostV1SalesInvoicesApplyAdvanceResponseLinesItem(
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
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesInvoicesApplyAdvance(
            request: .init(
                advanceId: "x",
                invoiceId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesList1() async throws -> Void {
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
                      "series": "series",
                      "number": 1000000,
                      "fullNumber": "fullNumber",
                      "issueDate": "issueDate",
                      "dueDate": "dueDate",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "journalTransactionId",
                      "appliedToInvoiceId": "appliedToInvoiceId",
                      "creditedInvoiceId": "creditedInvoiceId",
                      "vatScheme": "domestic",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true,
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
        let expectedResponse = PostV1SalesInvoicesListResponse(
            rows: [
                PostV1SalesInvoicesListResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    type: .invoice,
                    status: .draft,
                    paymentStatus: .unpaid,
                    series: Nullable<String>.value("series"),
                    number: Nullable<Int64>.value(1000000),
                    fullNumber: Nullable<String>.value("fullNumber"),
                    issueDate: Nullable<String>.value("issueDate"),
                    dueDate: Nullable<String>.value("dueDate"),
                    currency: "currency",
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
                    creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
                    vatScheme: Nullable<PostV1SalesInvoicesListResponseRowsItemVatScheme>.value(.domestic),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.sales.postV1SalesInvoicesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesList2() async throws -> Void {
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
                      "series": "series",
                      "number": 1000000,
                      "fullNumber": "fullNumber",
                      "issueDate": "issueDate",
                      "dueDate": "dueDate",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "x",
                      "appliedToInvoiceId": "x",
                      "creditedInvoiceId": "x",
                      "vatScheme": "domestic",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true,
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
                      "series": "series",
                      "number": 1000000,
                      "fullNumber": "fullNumber",
                      "issueDate": "issueDate",
                      "dueDate": "dueDate",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "x",
                      "appliedToInvoiceId": "x",
                      "creditedInvoiceId": "x",
                      "vatScheme": "domestic",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true,
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
        let expectedResponse = PostV1SalesInvoicesListResponse(
            rows: [
                PostV1SalesInvoicesListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    type: .invoice,
                    status: .draft,
                    paymentStatus: .unpaid,
                    series: Nullable<String>.value("series"),
                    number: Nullable<Int64>.value(1000000),
                    fullNumber: Nullable<String>.value("fullNumber"),
                    issueDate: Nullable<String>.value("issueDate"),
                    dueDate: Nullable<String>.value("dueDate"),
                    currency: "currency",
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("x"),
                    appliedToInvoiceId: Nullable<String>.value("x"),
                    creditedInvoiceId: Nullable<String>.value("x"),
                    vatScheme: Nullable<PostV1SalesInvoicesListResponseRowsItemVatScheme>.value(.domestic),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1SalesInvoicesListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    type: .invoice,
                    status: .draft,
                    paymentStatus: .unpaid,
                    series: Nullable<String>.value("series"),
                    number: Nullable<Int64>.value(1000000),
                    fullNumber: Nullable<String>.value("fullNumber"),
                    issueDate: Nullable<String>.value("issueDate"),
                    dueDate: Nullable<String>.value("dueDate"),
                    currency: "currency",
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("x"),
                    appliedToInvoiceId: Nullable<String>.value("x"),
                    creditedInvoiceId: Nullable<String>.value("x"),
                    vatScheme: Nullable<PostV1SalesInvoicesListResponseRowsItemVatScheme>.value(.domestic),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.sales.postV1SalesInvoicesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesActsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "saleInvoiceId": "saleInvoiceId",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
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
                      "lineNet": "lineNet",
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
        let expectedResponse = PostV1SalesActsCreateResponse(
            id: "id",
            partnerId: "partnerId",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesActsCreateResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesActsCreate(
            request: .init(partnerId: "partnerId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesActsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "saleInvoiceId": "x",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
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
                      "lineNet": "lineNet",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "lineNet": "lineNet",
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
        let expectedResponse = PostV1SalesActsCreateResponse(
            id: "x",
            partnerId: "x",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            saleInvoiceId: Nullable<String>.value("x"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesActsCreateResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                ),
                PostV1SalesActsCreateResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesActsCreate(
            request: .init(partnerId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesActsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "saleInvoiceId": "saleInvoiceId",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
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
                      "lineNet": "lineNet",
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
        let expectedResponse = PostV1SalesActsUpdateResponse(
            id: "id",
            partnerId: "partnerId",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesActsUpdateResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesActsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesActsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "saleInvoiceId": "x",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
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
                      "lineNet": "lineNet",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "lineNet": "lineNet",
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
        let expectedResponse = PostV1SalesActsUpdateResponse(
            id: "x",
            partnerId: "x",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            saleInvoiceId: Nullable<String>.value("x"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesActsUpdateResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                ),
                PostV1SalesActsUpdateResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesActsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesActsIssue1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "saleInvoiceId": "saleInvoiceId",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
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
                      "lineNet": "lineNet",
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
        let expectedResponse = PostV1SalesActsIssueResponse(
            id: "id",
            partnerId: "partnerId",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesActsIssueResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesActsIssue(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesActsIssue2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "saleInvoiceId": "x",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
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
                      "lineNet": "lineNet",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "lineNet": "lineNet",
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
        let expectedResponse = PostV1SalesActsIssueResponse(
            id: "x",
            partnerId: "x",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            saleInvoiceId: Nullable<String>.value("x"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesActsIssueResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                ),
                PostV1SalesActsIssueResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesActsIssue(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesActsCancel1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "saleInvoiceId": "saleInvoiceId",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesActsCancelResponse(
            id: "id",
            partnerId: "partnerId",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.sales.postV1SalesActsCancel(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesActsCancel2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "saleInvoiceId": "x",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesActsCancelResponse(
            id: "x",
            partnerId: "x",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            saleInvoiceId: Nullable<String>.value("x"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.sales.postV1SalesActsCancel(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesActsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "saleInvoiceId": "saleInvoiceId",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
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
                      "lineNet": "lineNet",
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
        let expectedResponse = PostV1SalesActsGetResponse(
            id: "id",
            partnerId: "partnerId",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesActsGetResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesActsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesActsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "saleInvoiceId": "x",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
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
                      "lineNet": "lineNet",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "lineNet": "lineNet",
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
        let expectedResponse = PostV1SalesActsGetResponse(
            id: "x",
            partnerId: "x",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            saleInvoiceId: Nullable<String>.value("x"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesActsGetResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                ),
                PostV1SalesActsGetResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.postV1SalesActsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesActsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "partnerId": "partnerId",
                      "type": "goods",
                      "status": "draft",
                      "series": "series",
                      "fullNumber": "fullNumber",
                      "documentDate": "documentDate",
                      "saleInvoiceId": "saleInvoiceId",
                      "transferredByName": "transferredByName",
                      "transferredByTitle": "transferredByTitle",
                      "acceptedByName": "acceptedByName",
                      "acceptedByTitle": "acceptedByTitle",
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
        let expectedResponse = PostV1SalesActsListResponse(
            rows: [
                PostV1SalesActsListResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    type: .goods,
                    status: .draft,
                    series: "series",
                    fullNumber: Nullable<String>.value("fullNumber"),
                    documentDate: "documentDate",
                    saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
                    transferredByName: Nullable<String>.value("transferredByName"),
                    transferredByTitle: Nullable<String>.value("transferredByTitle"),
                    acceptedByName: Nullable<String>.value("acceptedByName"),
                    acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.sales.postV1SalesActsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesActsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "partnerId": "x",
                      "type": "goods",
                      "status": "draft",
                      "series": "series",
                      "fullNumber": "fullNumber",
                      "documentDate": "documentDate",
                      "saleInvoiceId": "x",
                      "transferredByName": "transferredByName",
                      "transferredByTitle": "transferredByTitle",
                      "acceptedByName": "acceptedByName",
                      "acceptedByTitle": "acceptedByTitle",
                      "notes": "notes",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "partnerId": "x",
                      "type": "goods",
                      "status": "draft",
                      "series": "series",
                      "fullNumber": "fullNumber",
                      "documentDate": "documentDate",
                      "saleInvoiceId": "x",
                      "transferredByName": "transferredByName",
                      "transferredByTitle": "transferredByTitle",
                      "acceptedByName": "acceptedByName",
                      "acceptedByTitle": "acceptedByTitle",
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
        let expectedResponse = PostV1SalesActsListResponse(
            rows: [
                PostV1SalesActsListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    type: .goods,
                    status: .draft,
                    series: "series",
                    fullNumber: Nullable<String>.value("fullNumber"),
                    documentDate: "documentDate",
                    saleInvoiceId: Nullable<String>.value("x"),
                    transferredByName: Nullable<String>.value("transferredByName"),
                    transferredByTitle: Nullable<String>.value("transferredByTitle"),
                    acceptedByName: Nullable<String>.value("acceptedByName"),
                    acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1SalesActsListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    type: .goods,
                    status: .draft,
                    series: "series",
                    fullNumber: Nullable<String>.value("fullNumber"),
                    documentDate: "documentDate",
                    saleInvoiceId: Nullable<String>.value("x"),
                    transferredByName: Nullable<String>.value("transferredByName"),
                    transferredByTitle: Nullable<String>.value("transferredByTitle"),
                    acceptedByName: Nullable<String>.value("acceptedByName"),
                    acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.sales.postV1SalesActsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesActsPdf1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesActsPdfResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data"
        )
        let response = try await client.sales.postV1SalesActsPdf(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesActsPdf2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesActsPdfResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data"
        )
        let response = try await client.sales.postV1SalesActsPdf(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}