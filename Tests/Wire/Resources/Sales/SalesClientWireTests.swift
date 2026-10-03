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
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "agreementId": "agreementId",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "operationTypeId",
                  "documentSeriesId": "documentSeriesId",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "lockedAt",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "einvoiceSentAt",
                  "einvoiceCheckedAt": "einvoiceCheckedAt",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": null,
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "capturedAt",
                    "issueDate": "issueDate",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "id",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "checkedAt"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "importId",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "startedAt"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": null
                      }
                    ]
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
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            agreementId: Nullable<String>.value("agreementId"),
            vatScheme: Nullable<PostV1SalesInvoicesCreateResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            documentSeriesId: Nullable<String>.value("documentSeriesId"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<String>.value("lockedAt"),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
            einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
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
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesCreateResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesCreateResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: .null,
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<PostV1SalesInvoicesCreateResponseVatEvidence>.value(PostV1SalesInvoicesCreateResponseVatEvidence(
                capturedAt: "capturedAt",
                issueDate: "issueDate",
                scheme: PostV1SalesInvoicesCreateResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: PostV1SalesInvoicesCreateResponseVatEvidencePartner(
                    id: "id",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt")
                ),
                vies: Nullable<PostV1SalesInvoicesCreateResponseVatEvidenceVies>.value(PostV1SalesInvoicesCreateResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: "checkedAt"
                )),
                location: PostV1SalesInvoicesCreateResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<PostV1SalesInvoicesCreateResponseVatEvidenceRateTable>.value(PostV1SalesInvoicesCreateResponseVatEvidenceRateTable(
                    importId: "importId",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: "startedAt"
                )),
                rates: [
                    PostV1SalesInvoicesCreateResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: .null
                    )
                ]
            ))
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
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "agreementId": "x",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "x",
                  "documentSeriesId": "x",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "lockedAt",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "einvoiceSentAt",
                  "einvoiceCheckedAt": "einvoiceCheckedAt",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "capturedAt",
                    "issueDate": "issueDate",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "x",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "checkedAt"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "x",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "startedAt"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      },
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      }
                    ]
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
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            agreementId: Nullable<String>.value("x"),
            vatScheme: Nullable<PostV1SalesInvoicesCreateResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("x"),
            documentSeriesId: Nullable<String>.value("x"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<String>.value("lockedAt"),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
            einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
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
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesCreateResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesCreateResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        ),
                        PostV1SalesInvoicesCreateResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
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
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesCreateResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesCreateResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        ),
                        PostV1SalesInvoicesCreateResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<PostV1SalesInvoicesCreateResponseVatEvidence>.value(PostV1SalesInvoicesCreateResponseVatEvidence(
                capturedAt: "capturedAt",
                issueDate: "issueDate",
                scheme: PostV1SalesInvoicesCreateResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: PostV1SalesInvoicesCreateResponseVatEvidencePartner(
                    id: "x",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt")
                ),
                vies: Nullable<PostV1SalesInvoicesCreateResponseVatEvidenceVies>.value(PostV1SalesInvoicesCreateResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: "checkedAt"
                )),
                location: PostV1SalesInvoicesCreateResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<PostV1SalesInvoicesCreateResponseVatEvidenceRateTable>.value(PostV1SalesInvoicesCreateResponseVatEvidenceRateTable(
                    importId: "x",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: "startedAt"
                )),
                rates: [
                    PostV1SalesInvoicesCreateResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    ),
                    PostV1SalesInvoicesCreateResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    )
                ]
            ))
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
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "agreementId": "agreementId",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "operationTypeId",
                  "documentSeriesId": "documentSeriesId",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "lockedAt",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "einvoiceSentAt",
                  "einvoiceCheckedAt": "einvoiceCheckedAt",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": null,
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "capturedAt",
                    "issueDate": "issueDate",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "id",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "checkedAt"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "importId",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "startedAt"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": null
                      }
                    ]
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
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            agreementId: Nullable<String>.value("agreementId"),
            vatScheme: Nullable<PostV1SalesInvoicesGetResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            documentSeriesId: Nullable<String>.value("documentSeriesId"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<String>.value("lockedAt"),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
            einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
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
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesGetResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesGetResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: .null,
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<PostV1SalesInvoicesGetResponseVatEvidence>.value(PostV1SalesInvoicesGetResponseVatEvidence(
                capturedAt: "capturedAt",
                issueDate: "issueDate",
                scheme: PostV1SalesInvoicesGetResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: PostV1SalesInvoicesGetResponseVatEvidencePartner(
                    id: "id",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt")
                ),
                vies: Nullable<PostV1SalesInvoicesGetResponseVatEvidenceVies>.value(PostV1SalesInvoicesGetResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: "checkedAt"
                )),
                location: PostV1SalesInvoicesGetResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<PostV1SalesInvoicesGetResponseVatEvidenceRateTable>.value(PostV1SalesInvoicesGetResponseVatEvidenceRateTable(
                    importId: "importId",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: "startedAt"
                )),
                rates: [
                    PostV1SalesInvoicesGetResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: .null
                    )
                ]
            ))
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
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "agreementId": "x",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "x",
                  "documentSeriesId": "x",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "lockedAt",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "einvoiceSentAt",
                  "einvoiceCheckedAt": "einvoiceCheckedAt",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "capturedAt",
                    "issueDate": "issueDate",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "x",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "checkedAt"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "x",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "startedAt"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      },
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      }
                    ]
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
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            agreementId: Nullable<String>.value("x"),
            vatScheme: Nullable<PostV1SalesInvoicesGetResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("x"),
            documentSeriesId: Nullable<String>.value("x"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<String>.value("lockedAt"),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
            einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
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
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesGetResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesGetResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        ),
                        PostV1SalesInvoicesGetResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
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
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesGetResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesGetResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        ),
                        PostV1SalesInvoicesGetResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<PostV1SalesInvoicesGetResponseVatEvidence>.value(PostV1SalesInvoicesGetResponseVatEvidence(
                capturedAt: "capturedAt",
                issueDate: "issueDate",
                scheme: PostV1SalesInvoicesGetResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: PostV1SalesInvoicesGetResponseVatEvidencePartner(
                    id: "x",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt")
                ),
                vies: Nullable<PostV1SalesInvoicesGetResponseVatEvidenceVies>.value(PostV1SalesInvoicesGetResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: "checkedAt"
                )),
                location: PostV1SalesInvoicesGetResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<PostV1SalesInvoicesGetResponseVatEvidenceRateTable>.value(PostV1SalesInvoicesGetResponseVatEvidenceRateTable(
                    importId: "x",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: "startedAt"
                )),
                rates: [
                    PostV1SalesInvoicesGetResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    ),
                    PostV1SalesInvoicesGetResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    )
                ]
            ))
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

    @Test func postV1SalesInvoicesEinvoiceXml1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "format": "format",
                  "system": "system",
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "warnings": [
                    "warnings"
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
        let expectedResponse = PostV1SalesInvoicesEinvoiceXmlResponse(
            format: "format",
            system: "system",
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.sales.postV1SalesInvoicesEinvoiceXml(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesEinvoiceXml2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "format": "format",
                  "system": "system",
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "warnings": [
                    "warnings",
                    "warnings"
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
        let expectedResponse = PostV1SalesInvoicesEinvoiceXmlResponse(
            format: "format",
            system: "system",
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.sales.postV1SalesInvoicesEinvoiceXml(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesEinvoiceSend1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true,
                  "system": "system",
                  "format": "format",
                  "transport": "bridge",
                  "messageId": "messageId",
                  "nationalNumber": "nationalNumber",
                  "status": "sent",
                  "detail": "detail",
                  "fileId": "fileId",
                  "warnings": [
                    "warnings"
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
        let expectedResponse = PostV1SalesInvoicesEinvoiceSendResponse(
            sent: true,
            system: "system",
            format: "format",
            transport: .bridge,
            messageId: "messageId",
            nationalNumber: Nullable<String>.value("nationalNumber"),
            status: .sent,
            detail: Nullable<String>.value("detail"),
            fileId: "fileId",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.sales.postV1SalesInvoicesEinvoiceSend(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesEinvoiceSend2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true,
                  "system": "system",
                  "format": "format",
                  "transport": "bridge",
                  "messageId": "messageId",
                  "nationalNumber": "nationalNumber",
                  "status": "sent",
                  "detail": "detail",
                  "fileId": "x",
                  "warnings": [
                    "warnings",
                    "warnings"
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
        let expectedResponse = PostV1SalesInvoicesEinvoiceSendResponse(
            sent: true,
            system: "system",
            format: "format",
            transport: .bridge,
            messageId: "messageId",
            nationalNumber: Nullable<String>.value("nationalNumber"),
            status: .sent,
            detail: Nullable<String>.value("detail"),
            fileId: "x",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.sales.postV1SalesInvoicesEinvoiceSend(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesEinvoiceStatus1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "system": "system",
                  "transport": "bridge",
                  "messageId": "messageId",
                  "nationalNumber": "nationalNumber",
                  "status": "sent",
                  "detail": "detail"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesInvoicesEinvoiceStatusResponse(
            system: "system",
            transport: .bridge,
            messageId: "messageId",
            nationalNumber: Nullable<String>.value("nationalNumber"),
            status: .sent,
            detail: Nullable<String>.value("detail")
        )
        let response = try await client.sales.postV1SalesInvoicesEinvoiceStatus(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesEinvoiceStatus2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "system": "system",
                  "transport": "bridge",
                  "messageId": "messageId",
                  "nationalNumber": "nationalNumber",
                  "status": "sent",
                  "detail": "detail"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesInvoicesEinvoiceStatusResponse(
            system: "system",
            transport: .bridge,
            messageId: "messageId",
            nationalNumber: Nullable<String>.value("nationalNumber"),
            status: .sent,
            detail: Nullable<String>.value("detail")
        )
        let response = try await client.sales.postV1SalesInvoicesEinvoiceStatus(
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
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "agreementId": "agreementId",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "operationTypeId",
                  "documentSeriesId": "documentSeriesId",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "lockedAt",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "einvoiceSentAt",
                  "einvoiceCheckedAt": "einvoiceCheckedAt",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": null,
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "capturedAt",
                    "issueDate": "issueDate",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "id",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "checkedAt"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "importId",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "startedAt"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": null
                      }
                    ]
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
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            agreementId: Nullable<String>.value("agreementId"),
            vatScheme: Nullable<PostV1SalesInvoicesUpdateResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            documentSeriesId: Nullable<String>.value("documentSeriesId"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<String>.value("lockedAt"),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
            einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
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
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesUpdateResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesUpdateResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: .null,
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<PostV1SalesInvoicesUpdateResponseVatEvidence>.value(PostV1SalesInvoicesUpdateResponseVatEvidence(
                capturedAt: "capturedAt",
                issueDate: "issueDate",
                scheme: PostV1SalesInvoicesUpdateResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: PostV1SalesInvoicesUpdateResponseVatEvidencePartner(
                    id: "id",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt")
                ),
                vies: Nullable<PostV1SalesInvoicesUpdateResponseVatEvidenceVies>.value(PostV1SalesInvoicesUpdateResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: "checkedAt"
                )),
                location: PostV1SalesInvoicesUpdateResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<PostV1SalesInvoicesUpdateResponseVatEvidenceRateTable>.value(PostV1SalesInvoicesUpdateResponseVatEvidenceRateTable(
                    importId: "importId",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: "startedAt"
                )),
                rates: [
                    PostV1SalesInvoicesUpdateResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: .null
                    )
                ]
            ))
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
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "agreementId": "x",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "x",
                  "documentSeriesId": "x",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "lockedAt",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "einvoiceSentAt",
                  "einvoiceCheckedAt": "einvoiceCheckedAt",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "capturedAt",
                    "issueDate": "issueDate",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "x",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "checkedAt"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "x",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "startedAt"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      },
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      }
                    ]
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
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            agreementId: Nullable<String>.value("x"),
            vatScheme: Nullable<PostV1SalesInvoicesUpdateResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("x"),
            documentSeriesId: Nullable<String>.value("x"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<String>.value("lockedAt"),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
            einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
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
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesUpdateResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesUpdateResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        ),
                        PostV1SalesInvoicesUpdateResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
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
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesUpdateResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesUpdateResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        ),
                        PostV1SalesInvoicesUpdateResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<PostV1SalesInvoicesUpdateResponseVatEvidence>.value(PostV1SalesInvoicesUpdateResponseVatEvidence(
                capturedAt: "capturedAt",
                issueDate: "issueDate",
                scheme: PostV1SalesInvoicesUpdateResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: PostV1SalesInvoicesUpdateResponseVatEvidencePartner(
                    id: "x",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt")
                ),
                vies: Nullable<PostV1SalesInvoicesUpdateResponseVatEvidenceVies>.value(PostV1SalesInvoicesUpdateResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: "checkedAt"
                )),
                location: PostV1SalesInvoicesUpdateResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<PostV1SalesInvoicesUpdateResponseVatEvidenceRateTable>.value(PostV1SalesInvoicesUpdateResponseVatEvidenceRateTable(
                    importId: "x",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: "startedAt"
                )),
                rates: [
                    PostV1SalesInvoicesUpdateResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    ),
                    PostV1SalesInvoicesUpdateResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    )
                ]
            ))
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
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "agreementId": "agreementId",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "operationTypeId",
                  "documentSeriesId": "documentSeriesId",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "lockedAt",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "einvoiceSentAt",
                  "einvoiceCheckedAt": "einvoiceCheckedAt",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": null,
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "capturedAt",
                    "issueDate": "issueDate",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "id",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "checkedAt"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "importId",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "startedAt"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": null
                      }
                    ]
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
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            agreementId: Nullable<String>.value("agreementId"),
            vatScheme: Nullable<PostV1SalesInvoicesIssueResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            documentSeriesId: Nullable<String>.value("documentSeriesId"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<String>.value("lockedAt"),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
            einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
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
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesIssueResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesIssueResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: .null,
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<PostV1SalesInvoicesIssueResponseVatEvidence>.value(PostV1SalesInvoicesIssueResponseVatEvidence(
                capturedAt: "capturedAt",
                issueDate: "issueDate",
                scheme: PostV1SalesInvoicesIssueResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: PostV1SalesInvoicesIssueResponseVatEvidencePartner(
                    id: "id",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt")
                ),
                vies: Nullable<PostV1SalesInvoicesIssueResponseVatEvidenceVies>.value(PostV1SalesInvoicesIssueResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: "checkedAt"
                )),
                location: PostV1SalesInvoicesIssueResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<PostV1SalesInvoicesIssueResponseVatEvidenceRateTable>.value(PostV1SalesInvoicesIssueResponseVatEvidenceRateTable(
                    importId: "importId",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: "startedAt"
                )),
                rates: [
                    PostV1SalesInvoicesIssueResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: .null
                    )
                ]
            ))
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
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "agreementId": "x",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "x",
                  "documentSeriesId": "x",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "lockedAt",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "einvoiceSentAt",
                  "einvoiceCheckedAt": "einvoiceCheckedAt",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "capturedAt",
                    "issueDate": "issueDate",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "x",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "checkedAt"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "x",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "startedAt"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      },
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      }
                    ]
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
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            agreementId: Nullable<String>.value("x"),
            vatScheme: Nullable<PostV1SalesInvoicesIssueResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("x"),
            documentSeriesId: Nullable<String>.value("x"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<String>.value("lockedAt"),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
            einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
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
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesIssueResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesIssueResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        ),
                        PostV1SalesInvoicesIssueResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
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
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesIssueResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesIssueResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        ),
                        PostV1SalesInvoicesIssueResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<PostV1SalesInvoicesIssueResponseVatEvidence>.value(PostV1SalesInvoicesIssueResponseVatEvidence(
                capturedAt: "capturedAt",
                issueDate: "issueDate",
                scheme: PostV1SalesInvoicesIssueResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: PostV1SalesInvoicesIssueResponseVatEvidencePartner(
                    id: "x",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt")
                ),
                vies: Nullable<PostV1SalesInvoicesIssueResponseVatEvidenceVies>.value(PostV1SalesInvoicesIssueResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: "checkedAt"
                )),
                location: PostV1SalesInvoicesIssueResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<PostV1SalesInvoicesIssueResponseVatEvidenceRateTable>.value(PostV1SalesInvoicesIssueResponseVatEvidenceRateTable(
                    importId: "x",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: "startedAt"
                )),
                rates: [
                    PostV1SalesInvoicesIssueResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    ),
                    PostV1SalesInvoicesIssueResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    )
                ]
            ))
        )
        let response = try await client.sales.postV1SalesInvoicesIssue(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesLock1() async throws -> Void {
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
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "agreementId": "agreementId",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "operationTypeId",
                  "documentSeriesId": "documentSeriesId",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "lockedAt",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "einvoiceSentAt",
                  "einvoiceCheckedAt": "einvoiceCheckedAt",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": null,
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "capturedAt",
                    "issueDate": "issueDate",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "id",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "checkedAt"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "importId",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "startedAt"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": null
                      }
                    ]
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
        let expectedResponse = PostV1SalesInvoicesLockResponse(
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
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            agreementId: Nullable<String>.value("agreementId"),
            vatScheme: Nullable<PostV1SalesInvoicesLockResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            documentSeriesId: Nullable<String>.value("documentSeriesId"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<String>.value("lockedAt"),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
            einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesInvoicesLockResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesLockResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesLockResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: .null,
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<PostV1SalesInvoicesLockResponseVatEvidence>.value(PostV1SalesInvoicesLockResponseVatEvidence(
                capturedAt: "capturedAt",
                issueDate: "issueDate",
                scheme: PostV1SalesInvoicesLockResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: PostV1SalesInvoicesLockResponseVatEvidencePartner(
                    id: "id",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt")
                ),
                vies: Nullable<PostV1SalesInvoicesLockResponseVatEvidenceVies>.value(PostV1SalesInvoicesLockResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: "checkedAt"
                )),
                location: PostV1SalesInvoicesLockResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<PostV1SalesInvoicesLockResponseVatEvidenceRateTable>.value(PostV1SalesInvoicesLockResponseVatEvidenceRateTable(
                    importId: "importId",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: "startedAt"
                )),
                rates: [
                    PostV1SalesInvoicesLockResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: .null
                    )
                ]
            ))
        )
        let response = try await client.sales.postV1SalesInvoicesLock(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesLock2() async throws -> Void {
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
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "agreementId": "x",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "x",
                  "documentSeriesId": "x",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "lockedAt",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "einvoiceSentAt",
                  "einvoiceCheckedAt": "einvoiceCheckedAt",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "capturedAt",
                    "issueDate": "issueDate",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "x",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "checkedAt"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "x",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "startedAt"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      },
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      }
                    ]
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
        let expectedResponse = PostV1SalesInvoicesLockResponse(
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
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            agreementId: Nullable<String>.value("x"),
            vatScheme: Nullable<PostV1SalesInvoicesLockResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("x"),
            documentSeriesId: Nullable<String>.value("x"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<String>.value("lockedAt"),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
            einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesInvoicesLockResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesLockResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesLockResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        ),
                        PostV1SalesInvoicesLockResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                ),
                PostV1SalesInvoicesLockResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesLockResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesLockResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        ),
                        PostV1SalesInvoicesLockResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<PostV1SalesInvoicesLockResponseVatEvidence>.value(PostV1SalesInvoicesLockResponseVatEvidence(
                capturedAt: "capturedAt",
                issueDate: "issueDate",
                scheme: PostV1SalesInvoicesLockResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: PostV1SalesInvoicesLockResponseVatEvidencePartner(
                    id: "x",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt")
                ),
                vies: Nullable<PostV1SalesInvoicesLockResponseVatEvidenceVies>.value(PostV1SalesInvoicesLockResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: "checkedAt"
                )),
                location: PostV1SalesInvoicesLockResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<PostV1SalesInvoicesLockResponseVatEvidenceRateTable>.value(PostV1SalesInvoicesLockResponseVatEvidenceRateTable(
                    importId: "x",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: "startedAt"
                )),
                rates: [
                    PostV1SalesInvoicesLockResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    ),
                    PostV1SalesInvoicesLockResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    )
                ]
            ))
        )
        let response = try await client.sales.postV1SalesInvoicesLock(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesUnlock1() async throws -> Void {
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
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "agreementId": "agreementId",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "operationTypeId",
                  "documentSeriesId": "documentSeriesId",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "lockedAt",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "einvoiceSentAt",
                  "einvoiceCheckedAt": "einvoiceCheckedAt",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": null,
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "capturedAt",
                    "issueDate": "issueDate",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "id",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "checkedAt"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "importId",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "startedAt"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": null
                      }
                    ]
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
        let expectedResponse = PostV1SalesInvoicesUnlockResponse(
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
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            agreementId: Nullable<String>.value("agreementId"),
            vatScheme: Nullable<PostV1SalesInvoicesUnlockResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            documentSeriesId: Nullable<String>.value("documentSeriesId"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<String>.value("lockedAt"),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
            einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesInvoicesUnlockResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesUnlockResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesUnlockResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: .null,
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<PostV1SalesInvoicesUnlockResponseVatEvidence>.value(PostV1SalesInvoicesUnlockResponseVatEvidence(
                capturedAt: "capturedAt",
                issueDate: "issueDate",
                scheme: PostV1SalesInvoicesUnlockResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: PostV1SalesInvoicesUnlockResponseVatEvidencePartner(
                    id: "id",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt")
                ),
                vies: Nullable<PostV1SalesInvoicesUnlockResponseVatEvidenceVies>.value(PostV1SalesInvoicesUnlockResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: "checkedAt"
                )),
                location: PostV1SalesInvoicesUnlockResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<PostV1SalesInvoicesUnlockResponseVatEvidenceRateTable>.value(PostV1SalesInvoicesUnlockResponseVatEvidenceRateTable(
                    importId: "importId",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: "startedAt"
                )),
                rates: [
                    PostV1SalesInvoicesUnlockResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: .null
                    )
                ]
            ))
        )
        let response = try await client.sales.postV1SalesInvoicesUnlock(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesUnlock2() async throws -> Void {
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
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "agreementId": "x",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "x",
                  "documentSeriesId": "x",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "lockedAt",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "einvoiceSentAt",
                  "einvoiceCheckedAt": "einvoiceCheckedAt",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "capturedAt",
                    "issueDate": "issueDate",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "x",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "checkedAt"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "x",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "startedAt"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      },
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      }
                    ]
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
        let expectedResponse = PostV1SalesInvoicesUnlockResponse(
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
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            agreementId: Nullable<String>.value("x"),
            vatScheme: Nullable<PostV1SalesInvoicesUnlockResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("x"),
            documentSeriesId: Nullable<String>.value("x"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<String>.value("lockedAt"),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
            einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1SalesInvoicesUnlockResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesUnlockResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesUnlockResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        ),
                        PostV1SalesInvoicesUnlockResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                ),
                PostV1SalesInvoicesUnlockResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesUnlockResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesUnlockResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        ),
                        PostV1SalesInvoicesUnlockResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<PostV1SalesInvoicesUnlockResponseVatEvidence>.value(PostV1SalesInvoicesUnlockResponseVatEvidence(
                capturedAt: "capturedAt",
                issueDate: "issueDate",
                scheme: PostV1SalesInvoicesUnlockResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: PostV1SalesInvoicesUnlockResponseVatEvidencePartner(
                    id: "x",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt")
                ),
                vies: Nullable<PostV1SalesInvoicesUnlockResponseVatEvidenceVies>.value(PostV1SalesInvoicesUnlockResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: "checkedAt"
                )),
                location: PostV1SalesInvoicesUnlockResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<PostV1SalesInvoicesUnlockResponseVatEvidenceRateTable>.value(PostV1SalesInvoicesUnlockResponseVatEvidenceRateTable(
                    importId: "x",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: "startedAt"
                )),
                rates: [
                    PostV1SalesInvoicesUnlockResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    ),
                    PostV1SalesInvoicesUnlockResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    )
                ]
            ))
        )
        let response = try await client.sales.postV1SalesInvoicesUnlock(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesPaymentLink1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "url": "url",
                  "source": "template"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesInvoicesPaymentLinkResponse(
            url: Nullable<String>.value("url"),
            source: Nullable<PostV1SalesInvoicesPaymentLinkResponseSource>.value(.template)
        )
        let response = try await client.sales.postV1SalesInvoicesPaymentLink(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesPaymentLink2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "url": "url",
                  "source": "template"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesInvoicesPaymentLinkResponse(
            url: Nullable<String>.value("url"),
            source: Nullable<PostV1SalesInvoicesPaymentLinkResponseSource>.value(.template)
        )
        let response = try await client.sales.postV1SalesInvoicesPaymentLink(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesPaymentSettingsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "paymentLinkTemplate": "paymentLinkTemplate"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesInvoicesPaymentSettingsGetResponse(
            paymentLinkTemplate: Nullable<String>.value("paymentLinkTemplate")
        )
        let response = try await client.sales.postV1SalesInvoicesPaymentSettingsGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesPaymentSettingsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "paymentLinkTemplate": "paymentLinkTemplate"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesInvoicesPaymentSettingsGetResponse(
            paymentLinkTemplate: Nullable<String>.value("paymentLinkTemplate")
        )
        let response = try await client.sales.postV1SalesInvoicesPaymentSettingsGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesPaymentSettingsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "paymentLinkTemplate": "paymentLinkTemplate"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesInvoicesPaymentSettingsUpdateResponse(
            paymentLinkTemplate: Nullable<String>.value("paymentLinkTemplate")
        )
        let response = try await client.sales.postV1SalesInvoicesPaymentSettingsUpdate(
            request: .init(paymentLinkTemplate: .null),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesInvoicesPaymentSettingsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "paymentLinkTemplate": "paymentLinkTemplate"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesInvoicesPaymentSettingsUpdateResponse(
            paymentLinkTemplate: Nullable<String>.value("paymentLinkTemplate")
        )
        let response = try await client.sales.postV1SalesInvoicesPaymentSettingsUpdate(
            request: .init(paymentLinkTemplate: .null),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRecognitionSchedulesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "invoiceId": "invoiceId",
                      "invoiceLineId": "invoiceLineId",
                      "method": "point_in_time",
                      "status": "pending",
                      "scheduleDate": "scheduleDate",
                      "description": "description",
                      "amount": "amount",
                      "journalTransactionId": "journalTransactionId",
                      "recognizedAt": "recognizedAt",
                      "sortOrder": 1000000,
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
        let expectedResponse = PostV1SalesRecognitionSchedulesListResponse(
            rows: [
                PostV1SalesRecognitionSchedulesListResponseRowsItem(
                    id: "id",
                    invoiceId: "invoiceId",
                    invoiceLineId: "invoiceLineId",
                    method: .pointInTime,
                    status: .pending,
                    scheduleDate: Nullable<String>.value("scheduleDate"),
                    description: Nullable<String>.value("description"),
                    amount: "amount",
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    recognizedAt: Nullable<String>.value("recognizedAt"),
                    sortOrder: 1000000,
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
        let response = try await client.sales.postV1SalesRecognitionSchedulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRecognitionSchedulesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "invoiceId": "x",
                      "invoiceLineId": "x",
                      "method": "point_in_time",
                      "status": "pending",
                      "scheduleDate": "scheduleDate",
                      "description": "description",
                      "amount": "amount",
                      "journalTransactionId": "x",
                      "recognizedAt": "recognizedAt",
                      "sortOrder": 1000000,
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "invoiceId": "x",
                      "invoiceLineId": "x",
                      "method": "point_in_time",
                      "status": "pending",
                      "scheduleDate": "scheduleDate",
                      "description": "description",
                      "amount": "amount",
                      "journalTransactionId": "x",
                      "recognizedAt": "recognizedAt",
                      "sortOrder": 1000000,
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
        let expectedResponse = PostV1SalesRecognitionSchedulesListResponse(
            rows: [
                PostV1SalesRecognitionSchedulesListResponseRowsItem(
                    id: "x",
                    invoiceId: "x",
                    invoiceLineId: "x",
                    method: .pointInTime,
                    status: .pending,
                    scheduleDate: Nullable<String>.value("scheduleDate"),
                    description: Nullable<String>.value("description"),
                    amount: "amount",
                    journalTransactionId: Nullable<String>.value("x"),
                    recognizedAt: Nullable<String>.value("recognizedAt"),
                    sortOrder: 1000000,
                    createdAt: "createdAt"
                ),
                PostV1SalesRecognitionSchedulesListResponseRowsItem(
                    id: "x",
                    invoiceId: "x",
                    invoiceLineId: "x",
                    method: .pointInTime,
                    status: .pending,
                    scheduleDate: Nullable<String>.value("scheduleDate"),
                    description: Nullable<String>.value("description"),
                    amount: "amount",
                    journalTransactionId: Nullable<String>.value("x"),
                    recognizedAt: Nullable<String>.value("recognizedAt"),
                    sortOrder: 1000000,
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
        let response = try await client.sales.postV1SalesRecognitionSchedulesList(
            request: .init(),
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
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "agreementId": "agreementId",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "operationTypeId",
                  "documentSeriesId": "documentSeriesId",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "lockedAt",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "einvoiceSentAt",
                  "einvoiceCheckedAt": "einvoiceCheckedAt",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": null,
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "capturedAt",
                    "issueDate": "issueDate",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "id",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "checkedAt"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "importId",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "startedAt"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": null
                      }
                    ]
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
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            agreementId: Nullable<String>.value("agreementId"),
            vatScheme: Nullable<PostV1SalesInvoicesApplyAdvanceResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            documentSeriesId: Nullable<String>.value("documentSeriesId"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<String>.value("lockedAt"),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
            einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
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
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesApplyAdvanceResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesApplyAdvanceResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: .null,
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<PostV1SalesInvoicesApplyAdvanceResponseVatEvidence>.value(PostV1SalesInvoicesApplyAdvanceResponseVatEvidence(
                capturedAt: "capturedAt",
                issueDate: "issueDate",
                scheme: PostV1SalesInvoicesApplyAdvanceResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: PostV1SalesInvoicesApplyAdvanceResponseVatEvidencePartner(
                    id: "id",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt")
                ),
                vies: Nullable<PostV1SalesInvoicesApplyAdvanceResponseVatEvidenceVies>.value(PostV1SalesInvoicesApplyAdvanceResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: "checkedAt"
                )),
                location: PostV1SalesInvoicesApplyAdvanceResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<PostV1SalesInvoicesApplyAdvanceResponseVatEvidenceRateTable>.value(PostV1SalesInvoicesApplyAdvanceResponseVatEvidenceRateTable(
                    importId: "importId",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: "startedAt"
                )),
                rates: [
                    PostV1SalesInvoicesApplyAdvanceResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: .null
                    )
                ]
            ))
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
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "agreementId": "x",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "x",
                  "documentSeriesId": "x",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "lockedAt",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "einvoiceSentAt",
                  "einvoiceCheckedAt": "einvoiceCheckedAt",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "recognitionStartDate",
                      "recognitionEndDate": "recognitionEndDate",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "expectedDate",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "capturedAt",
                    "issueDate": "issueDate",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "x",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "checkedAt"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "x",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "startedAt"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      },
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      }
                    ]
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
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            agreementId: Nullable<String>.value("x"),
            vatScheme: Nullable<PostV1SalesInvoicesApplyAdvanceResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("x"),
            documentSeriesId: Nullable<String>.value("x"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<String>.value("lockedAt"),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
            einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
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
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesApplyAdvanceResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesApplyAdvanceResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        ),
                        PostV1SalesInvoicesApplyAdvanceResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
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
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<String>.value("recognitionStartDate"),
                    recognitionEndDate: Nullable<String>.value("recognitionEndDate"),
                    recognitionMilestones: Nullable<[PostV1SalesInvoicesApplyAdvanceResponseLinesItemRecognitionMilestonesItem]>.value([
                        PostV1SalesInvoicesApplyAdvanceResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        ),
                        PostV1SalesInvoicesApplyAdvanceResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<String>.value("expectedDate"),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<PostV1SalesInvoicesApplyAdvanceResponseVatEvidence>.value(PostV1SalesInvoicesApplyAdvanceResponseVatEvidence(
                capturedAt: "capturedAt",
                issueDate: "issueDate",
                scheme: PostV1SalesInvoicesApplyAdvanceResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: PostV1SalesInvoicesApplyAdvanceResponseVatEvidencePartner(
                    id: "x",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt")
                ),
                vies: Nullable<PostV1SalesInvoicesApplyAdvanceResponseVatEvidenceVies>.value(PostV1SalesInvoicesApplyAdvanceResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: "checkedAt"
                )),
                location: PostV1SalesInvoicesApplyAdvanceResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<PostV1SalesInvoicesApplyAdvanceResponseVatEvidenceRateTable>.value(PostV1SalesInvoicesApplyAdvanceResponseVatEvidenceRateTable(
                    importId: "x",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: "startedAt"
                )),
                rates: [
                    PostV1SalesInvoicesApplyAdvanceResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    ),
                    PostV1SalesInvoicesApplyAdvanceResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    )
                ]
            ))
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
                      "fxRate": "fxRate",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "journalTransactionId",
                      "appliedToInvoiceId": "appliedToInvoiceId",
                      "creditedInvoiceId": "creditedInvoiceId",
                      "agreementId": "agreementId",
                      "vatScheme": "domestic",
                      "intrastatTransportMode": "intrastatTransportMode",
                      "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                      "intrastatRegion": "intrastatRegion",
                      "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true,
                      "notes": "notes",
                      "documentRef": "documentRef",
                      "operationTypeId": "operationTypeId",
                      "documentSeriesId": "documentSeriesId",
                      "seriesLabel": "seriesLabel",
                      "discountPercent": "discountPercent",
                      "orderNumber": "orderNumber",
                      "issuedByName": "issuedByName",
                      "issuedByTitle": "issuedByTitle",
                      "receivedByName": "receivedByName",
                      "receivedByTitle": "receivedByTitle",
                      "lockedAt": "lockedAt",
                      "lockedBy": "lockedBy",
                      "payToken": "payToken",
                      "einvoiceSystem": "einvoiceSystem",
                      "einvoiceTransport": "einvoiceTransport",
                      "einvoiceMessageId": "einvoiceMessageId",
                      "einvoiceNumber": "einvoiceNumber",
                      "einvoiceStatus": "einvoiceStatus",
                      "einvoiceDetail": "einvoiceDetail",
                      "einvoiceSentAt": "einvoiceSentAt",
                      "einvoiceCheckedAt": "einvoiceCheckedAt",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
                    fxRate: Nullable<String>.value("fxRate"),
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
                    creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
                    agreementId: Nullable<String>.value("agreementId"),
                    vatScheme: Nullable<PostV1SalesInvoicesListResponseRowsItemVatScheme>.value(.domestic),
                    intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
                    intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
                    intrastatRegion: Nullable<String>.value("intrastatRegion"),
                    intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true,
                    notes: Nullable<String>.value("notes"),
                    documentRef: Nullable<String>.value("documentRef"),
                    operationTypeId: Nullable<String>.value("operationTypeId"),
                    documentSeriesId: Nullable<String>.value("documentSeriesId"),
                    seriesLabel: Nullable<String>.value("seriesLabel"),
                    discountPercent: "discountPercent",
                    orderNumber: Nullable<String>.value("orderNumber"),
                    issuedByName: Nullable<String>.value("issuedByName"),
                    issuedByTitle: Nullable<String>.value("issuedByTitle"),
                    receivedByName: Nullable<String>.value("receivedByName"),
                    receivedByTitle: Nullable<String>.value("receivedByTitle"),
                    lockedAt: Nullable<String>.value("lockedAt"),
                    lockedBy: Nullable<String>.value("lockedBy"),
                    payToken: Nullable<String>.value("payToken"),
                    einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
                    einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
                    einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
                    einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
                    einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
                    einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
                    einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
                    einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
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
                      "fxRate": "fxRate",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "x",
                      "appliedToInvoiceId": "x",
                      "creditedInvoiceId": "x",
                      "agreementId": "x",
                      "vatScheme": "domestic",
                      "intrastatTransportMode": "intrastatTransportMode",
                      "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                      "intrastatRegion": "intrastatRegion",
                      "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true,
                      "notes": "notes",
                      "documentRef": "documentRef",
                      "operationTypeId": "x",
                      "documentSeriesId": "x",
                      "seriesLabel": "seriesLabel",
                      "discountPercent": "discountPercent",
                      "orderNumber": "orderNumber",
                      "issuedByName": "issuedByName",
                      "issuedByTitle": "issuedByTitle",
                      "receivedByName": "receivedByName",
                      "receivedByTitle": "receivedByTitle",
                      "lockedAt": "lockedAt",
                      "lockedBy": "lockedBy",
                      "payToken": "payToken",
                      "einvoiceSystem": "einvoiceSystem",
                      "einvoiceTransport": "einvoiceTransport",
                      "einvoiceMessageId": "einvoiceMessageId",
                      "einvoiceNumber": "einvoiceNumber",
                      "einvoiceStatus": "einvoiceStatus",
                      "einvoiceDetail": "einvoiceDetail",
                      "einvoiceSentAt": "einvoiceSentAt",
                      "einvoiceCheckedAt": "einvoiceCheckedAt",
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
                      "fxRate": "fxRate",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "x",
                      "appliedToInvoiceId": "x",
                      "creditedInvoiceId": "x",
                      "agreementId": "x",
                      "vatScheme": "domestic",
                      "intrastatTransportMode": "intrastatTransportMode",
                      "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                      "intrastatRegion": "intrastatRegion",
                      "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true,
                      "notes": "notes",
                      "documentRef": "documentRef",
                      "operationTypeId": "x",
                      "documentSeriesId": "x",
                      "seriesLabel": "seriesLabel",
                      "discountPercent": "discountPercent",
                      "orderNumber": "orderNumber",
                      "issuedByName": "issuedByName",
                      "issuedByTitle": "issuedByTitle",
                      "receivedByName": "receivedByName",
                      "receivedByTitle": "receivedByTitle",
                      "lockedAt": "lockedAt",
                      "lockedBy": "lockedBy",
                      "payToken": "payToken",
                      "einvoiceSystem": "einvoiceSystem",
                      "einvoiceTransport": "einvoiceTransport",
                      "einvoiceMessageId": "einvoiceMessageId",
                      "einvoiceNumber": "einvoiceNumber",
                      "einvoiceStatus": "einvoiceStatus",
                      "einvoiceDetail": "einvoiceDetail",
                      "einvoiceSentAt": "einvoiceSentAt",
                      "einvoiceCheckedAt": "einvoiceCheckedAt",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
                    fxRate: Nullable<String>.value("fxRate"),
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("x"),
                    appliedToInvoiceId: Nullable<String>.value("x"),
                    creditedInvoiceId: Nullable<String>.value("x"),
                    agreementId: Nullable<String>.value("x"),
                    vatScheme: Nullable<PostV1SalesInvoicesListResponseRowsItemVatScheme>.value(.domestic),
                    intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
                    intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
                    intrastatRegion: Nullable<String>.value("intrastatRegion"),
                    intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true,
                    notes: Nullable<String>.value("notes"),
                    documentRef: Nullable<String>.value("documentRef"),
                    operationTypeId: Nullable<String>.value("x"),
                    documentSeriesId: Nullable<String>.value("x"),
                    seriesLabel: Nullable<String>.value("seriesLabel"),
                    discountPercent: "discountPercent",
                    orderNumber: Nullable<String>.value("orderNumber"),
                    issuedByName: Nullable<String>.value("issuedByName"),
                    issuedByTitle: Nullable<String>.value("issuedByTitle"),
                    receivedByName: Nullable<String>.value("receivedByName"),
                    receivedByTitle: Nullable<String>.value("receivedByTitle"),
                    lockedAt: Nullable<String>.value("lockedAt"),
                    lockedBy: Nullable<String>.value("lockedBy"),
                    payToken: Nullable<String>.value("payToken"),
                    einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
                    einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
                    einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
                    einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
                    einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
                    einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
                    einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
                    einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
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
                    fxRate: Nullable<String>.value("fxRate"),
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("x"),
                    appliedToInvoiceId: Nullable<String>.value("x"),
                    creditedInvoiceId: Nullable<String>.value("x"),
                    agreementId: Nullable<String>.value("x"),
                    vatScheme: Nullable<PostV1SalesInvoicesListResponseRowsItemVatScheme>.value(.domestic),
                    intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
                    intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
                    intrastatRegion: Nullable<String>.value("intrastatRegion"),
                    intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true,
                    notes: Nullable<String>.value("notes"),
                    documentRef: Nullable<String>.value("documentRef"),
                    operationTypeId: Nullable<String>.value("x"),
                    documentSeriesId: Nullable<String>.value("x"),
                    seriesLabel: Nullable<String>.value("seriesLabel"),
                    discountPercent: "discountPercent",
                    orderNumber: Nullable<String>.value("orderNumber"),
                    issuedByName: Nullable<String>.value("issuedByName"),
                    issuedByTitle: Nullable<String>.value("issuedByTitle"),
                    receivedByName: Nullable<String>.value("receivedByName"),
                    receivedByTitle: Nullable<String>.value("receivedByTitle"),
                    lockedAt: Nullable<String>.value("lockedAt"),
                    lockedBy: Nullable<String>.value("lockedBy"),
                    payToken: Nullable<String>.value("payToken"),
                    einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
                    einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
                    einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
                    einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
                    einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
                    einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
                    einvoiceSentAt: Nullable<String>.value("einvoiceSentAt"),
                    einvoiceCheckedAt: Nullable<String>.value("einvoiceCheckedAt"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
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
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
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
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
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

    @Test func postV1OperationTypesCreate1() async throws -> Void {
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
        let expectedResponse = PostV1OperationTypesCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            invoiceType: Nullable<PostV1OperationTypesCreateResponseInvoiceType>.value(.invoice),
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
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.sales.postV1OperationTypesCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1OperationTypesCreate2() async throws -> Void {
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
        let expectedResponse = PostV1OperationTypesCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            invoiceType: Nullable<PostV1OperationTypesCreateResponseInvoiceType>.value(.invoice),
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
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.sales.postV1OperationTypesCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1OperationTypesUpdate1() async throws -> Void {
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
        let expectedResponse = PostV1OperationTypesUpdateResponse(
            id: "id",
            code: "code",
            name: "name",
            invoiceType: Nullable<PostV1OperationTypesUpdateResponseInvoiceType>.value(.invoice),
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
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.sales.postV1OperationTypesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1OperationTypesUpdate2() async throws -> Void {
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
        let expectedResponse = PostV1OperationTypesUpdateResponse(
            id: "x",
            code: "code",
            name: "name",
            invoiceType: Nullable<PostV1OperationTypesUpdateResponseInvoiceType>.value(.invoice),
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
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.sales.postV1OperationTypesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1OperationTypesGet1() async throws -> Void {
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
        let expectedResponse = PostV1OperationTypesGetResponse(
            id: "id",
            code: "code",
            name: "name",
            invoiceType: Nullable<PostV1OperationTypesGetResponseInvoiceType>.value(.invoice),
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
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.sales.postV1OperationTypesGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1OperationTypesGet2() async throws -> Void {
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
        let expectedResponse = PostV1OperationTypesGetResponse(
            id: "x",
            code: "code",
            name: "name",
            invoiceType: Nullable<PostV1OperationTypesGetResponseInvoiceType>.value(.invoice),
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
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.sales.postV1OperationTypesGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1OperationTypesDelete1() async throws -> Void {
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
        let expectedResponse = PostV1OperationTypesDeleteResponse(
            deleted: true
        )
        let response = try await client.sales.postV1OperationTypesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1OperationTypesDelete2() async throws -> Void {
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
        let expectedResponse = PostV1OperationTypesDeleteResponse(
            deleted: true
        )
        let response = try await client.sales.postV1OperationTypesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1OperationTypesList1() async throws -> Void {
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
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1OperationTypesListResponse(
            rows: [
                PostV1OperationTypesListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    invoiceType: Nullable<PostV1OperationTypesListResponseRowsItemInvoiceType>.value(.invoice),
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
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.sales.postV1OperationTypesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1OperationTypesList2() async throws -> Void {
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
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1OperationTypesListResponse(
            rows: [
                PostV1OperationTypesListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    invoiceType: Nullable<PostV1OperationTypesListResponseRowsItemInvoiceType>.value(.invoice),
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
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1OperationTypesListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    invoiceType: Nullable<PostV1OperationTypesListResponseRowsItemInvoiceType>.value(.invoice),
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
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.sales.postV1OperationTypesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DocumentSeriesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "documentType": "documentType",
                  "prefix": "prefix",
                  "name": "name",
                  "label": "label",
                  "operationTypeId": "operationTypeId",
                  "numberLength": 1000000,
                  "nextNumber": 1000000,
                  "allocatedFrom": 1000000,
                  "allocatedTo": 1000000,
                  "warehouseId": "warehouseId",
                  "printSeries": true,
                  "isDefault": true,
                  "isActive": true,
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
        let expectedResponse = PostV1DocumentSeriesCreateResponse(
            id: "id",
            documentType: "documentType",
            prefix: "prefix",
            name: Nullable<String>.value("name"),
            label: Nullable<String>.value("label"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            numberLength: 1000000,
            nextNumber: 1000000,
            allocatedFrom: Nullable<Int64>.value(1000000),
            allocatedTo: Nullable<Int64>.value(1000000),
            warehouseId: Nullable<String>.value("warehouseId"),
            printSeries: true,
            isDefault: true,
            isActive: true,
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.sales.postV1DocumentSeriesCreate(
            request: .init(prefix: "prefix"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DocumentSeriesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "documentType": "documentType",
                  "prefix": "prefix",
                  "name": "name",
                  "label": "label",
                  "operationTypeId": "x",
                  "numberLength": 1000000,
                  "nextNumber": 1000000,
                  "allocatedFrom": 1000000,
                  "allocatedTo": 1000000,
                  "warehouseId": "x",
                  "printSeries": true,
                  "isDefault": true,
                  "isActive": true,
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
        let expectedResponse = PostV1DocumentSeriesCreateResponse(
            id: "x",
            documentType: "documentType",
            prefix: "prefix",
            name: Nullable<String>.value("name"),
            label: Nullable<String>.value("label"),
            operationTypeId: Nullable<String>.value("x"),
            numberLength: 1000000,
            nextNumber: 1000000,
            allocatedFrom: Nullable<Int64>.value(1000000),
            allocatedTo: Nullable<Int64>.value(1000000),
            warehouseId: Nullable<String>.value("x"),
            printSeries: true,
            isDefault: true,
            isActive: true,
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.sales.postV1DocumentSeriesCreate(
            request: .init(prefix: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DocumentSeriesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "documentType": "documentType",
                  "prefix": "prefix",
                  "name": "name",
                  "label": "label",
                  "operationTypeId": "operationTypeId",
                  "numberLength": 1000000,
                  "nextNumber": 1000000,
                  "allocatedFrom": 1000000,
                  "allocatedTo": 1000000,
                  "warehouseId": "warehouseId",
                  "printSeries": true,
                  "isDefault": true,
                  "isActive": true,
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
        let expectedResponse = PostV1DocumentSeriesUpdateResponse(
            id: "id",
            documentType: "documentType",
            prefix: "prefix",
            name: Nullable<String>.value("name"),
            label: Nullable<String>.value("label"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            numberLength: 1000000,
            nextNumber: 1000000,
            allocatedFrom: Nullable<Int64>.value(1000000),
            allocatedTo: Nullable<Int64>.value(1000000),
            warehouseId: Nullable<String>.value("warehouseId"),
            printSeries: true,
            isDefault: true,
            isActive: true,
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.sales.postV1DocumentSeriesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DocumentSeriesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "documentType": "documentType",
                  "prefix": "prefix",
                  "name": "name",
                  "label": "label",
                  "operationTypeId": "x",
                  "numberLength": 1000000,
                  "nextNumber": 1000000,
                  "allocatedFrom": 1000000,
                  "allocatedTo": 1000000,
                  "warehouseId": "x",
                  "printSeries": true,
                  "isDefault": true,
                  "isActive": true,
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
        let expectedResponse = PostV1DocumentSeriesUpdateResponse(
            id: "x",
            documentType: "documentType",
            prefix: "prefix",
            name: Nullable<String>.value("name"),
            label: Nullable<String>.value("label"),
            operationTypeId: Nullable<String>.value("x"),
            numberLength: 1000000,
            nextNumber: 1000000,
            allocatedFrom: Nullable<Int64>.value(1000000),
            allocatedTo: Nullable<Int64>.value(1000000),
            warehouseId: Nullable<String>.value("x"),
            printSeries: true,
            isDefault: true,
            isActive: true,
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.sales.postV1DocumentSeriesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DocumentSeriesGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "documentType": "documentType",
                  "prefix": "prefix",
                  "name": "name",
                  "label": "label",
                  "operationTypeId": "operationTypeId",
                  "numberLength": 1000000,
                  "nextNumber": 1000000,
                  "allocatedFrom": 1000000,
                  "allocatedTo": 1000000,
                  "warehouseId": "warehouseId",
                  "printSeries": true,
                  "isDefault": true,
                  "isActive": true,
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
        let expectedResponse = PostV1DocumentSeriesGetResponse(
            id: "id",
            documentType: "documentType",
            prefix: "prefix",
            name: Nullable<String>.value("name"),
            label: Nullable<String>.value("label"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            numberLength: 1000000,
            nextNumber: 1000000,
            allocatedFrom: Nullable<Int64>.value(1000000),
            allocatedTo: Nullable<Int64>.value(1000000),
            warehouseId: Nullable<String>.value("warehouseId"),
            printSeries: true,
            isDefault: true,
            isActive: true,
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.sales.postV1DocumentSeriesGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DocumentSeriesGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "documentType": "documentType",
                  "prefix": "prefix",
                  "name": "name",
                  "label": "label",
                  "operationTypeId": "x",
                  "numberLength": 1000000,
                  "nextNumber": 1000000,
                  "allocatedFrom": 1000000,
                  "allocatedTo": 1000000,
                  "warehouseId": "x",
                  "printSeries": true,
                  "isDefault": true,
                  "isActive": true,
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
        let expectedResponse = PostV1DocumentSeriesGetResponse(
            id: "x",
            documentType: "documentType",
            prefix: "prefix",
            name: Nullable<String>.value("name"),
            label: Nullable<String>.value("label"),
            operationTypeId: Nullable<String>.value("x"),
            numberLength: 1000000,
            nextNumber: 1000000,
            allocatedFrom: Nullable<Int64>.value(1000000),
            allocatedTo: Nullable<Int64>.value(1000000),
            warehouseId: Nullable<String>.value("x"),
            printSeries: true,
            isDefault: true,
            isActive: true,
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.sales.postV1DocumentSeriesGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DocumentSeriesDelete1() async throws -> Void {
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
        let expectedResponse = PostV1DocumentSeriesDeleteResponse(
            deleted: true
        )
        let response = try await client.sales.postV1DocumentSeriesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DocumentSeriesDelete2() async throws -> Void {
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
        let expectedResponse = PostV1DocumentSeriesDeleteResponse(
            deleted: true
        )
        let response = try await client.sales.postV1DocumentSeriesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DocumentSeriesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "documentType": "documentType",
                      "prefix": "prefix",
                      "name": "name",
                      "label": "label",
                      "operationTypeId": "operationTypeId",
                      "numberLength": 1000000,
                      "nextNumber": 1000000,
                      "allocatedFrom": 1000000,
                      "allocatedTo": 1000000,
                      "warehouseId": "warehouseId",
                      "printSeries": true,
                      "isDefault": true,
                      "isActive": true,
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1DocumentSeriesListResponse(
            rows: [
                PostV1DocumentSeriesListResponseRowsItem(
                    id: "id",
                    documentType: "documentType",
                    prefix: "prefix",
                    name: Nullable<String>.value("name"),
                    label: Nullable<String>.value("label"),
                    operationTypeId: Nullable<String>.value("operationTypeId"),
                    numberLength: 1000000,
                    nextNumber: 1000000,
                    allocatedFrom: Nullable<Int64>.value(1000000),
                    allocatedTo: Nullable<Int64>.value(1000000),
                    warehouseId: Nullable<String>.value("warehouseId"),
                    printSeries: true,
                    isDefault: true,
                    isActive: true,
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.sales.postV1DocumentSeriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DocumentSeriesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "documentType": "documentType",
                      "prefix": "prefix",
                      "name": "name",
                      "label": "label",
                      "operationTypeId": "x",
                      "numberLength": 1000000,
                      "nextNumber": 1000000,
                      "allocatedFrom": 1000000,
                      "allocatedTo": 1000000,
                      "warehouseId": "x",
                      "printSeries": true,
                      "isDefault": true,
                      "isActive": true,
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "documentType": "documentType",
                      "prefix": "prefix",
                      "name": "name",
                      "label": "label",
                      "operationTypeId": "x",
                      "numberLength": 1000000,
                      "nextNumber": 1000000,
                      "allocatedFrom": 1000000,
                      "allocatedTo": 1000000,
                      "warehouseId": "x",
                      "printSeries": true,
                      "isDefault": true,
                      "isActive": true,
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1DocumentSeriesListResponse(
            rows: [
                PostV1DocumentSeriesListResponseRowsItem(
                    id: "x",
                    documentType: "documentType",
                    prefix: "prefix",
                    name: Nullable<String>.value("name"),
                    label: Nullable<String>.value("label"),
                    operationTypeId: Nullable<String>.value("x"),
                    numberLength: 1000000,
                    nextNumber: 1000000,
                    allocatedFrom: Nullable<Int64>.value(1000000),
                    allocatedTo: Nullable<Int64>.value(1000000),
                    warehouseId: Nullable<String>.value("x"),
                    printSeries: true,
                    isDefault: true,
                    isActive: true,
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1DocumentSeriesListResponseRowsItem(
                    id: "x",
                    documentType: "documentType",
                    prefix: "prefix",
                    name: Nullable<String>.value("name"),
                    label: Nullable<String>.value("label"),
                    operationTypeId: Nullable<String>.value("x"),
                    numberLength: 1000000,
                    nextNumber: 1000000,
                    allocatedFrom: Nullable<Int64>.value(1000000),
                    allocatedTo: Nullable<Int64>.value(1000000),
                    warehouseId: Nullable<String>.value("x"),
                    printSeries: true,
                    isDefault: true,
                    isActive: true,
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.sales.postV1DocumentSeriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRecognitionCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "asOfDate": "asOfDate",
                  "totalAmount": "totalAmount",
                  "rows": [
                    {
                      "scheduleId": "scheduleId",
                      "invoiceId": "invoiceId",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "invoiceLineId": "invoiceLineId",
                      "lineDescription": "lineDescription",
                      "scheduleDate": "scheduleDate",
                      "description": "description",
                      "amount": "amount"
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
        let expectedResponse = PostV1SalesRecognitionComputeResponse(
            asOfDate: "asOfDate",
            totalAmount: "totalAmount",
            rows: [
                PostV1SalesRecognitionComputeResponseRowsItem(
                    scheduleId: "scheduleId",
                    invoiceId: "invoiceId",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    invoiceLineId: "invoiceLineId",
                    lineDescription: "lineDescription",
                    scheduleDate: Nullable<String>.value("scheduleDate"),
                    description: Nullable<String>.value("description"),
                    amount: "amount"
                )
            ]
        )
        let response = try await client.sales.postV1SalesRecognitionCompute(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRecognitionCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "asOfDate": "asOfDate",
                  "totalAmount": "totalAmount",
                  "rows": [
                    {
                      "scheduleId": "x",
                      "invoiceId": "x",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "invoiceLineId": "x",
                      "lineDescription": "lineDescription",
                      "scheduleDate": "scheduleDate",
                      "description": "description",
                      "amount": "amount"
                    },
                    {
                      "scheduleId": "x",
                      "invoiceId": "x",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "invoiceLineId": "x",
                      "lineDescription": "lineDescription",
                      "scheduleDate": "scheduleDate",
                      "description": "description",
                      "amount": "amount"
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
        let expectedResponse = PostV1SalesRecognitionComputeResponse(
            asOfDate: "asOfDate",
            totalAmount: "totalAmount",
            rows: [
                PostV1SalesRecognitionComputeResponseRowsItem(
                    scheduleId: "x",
                    invoiceId: "x",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    invoiceLineId: "x",
                    lineDescription: "lineDescription",
                    scheduleDate: Nullable<String>.value("scheduleDate"),
                    description: Nullable<String>.value("description"),
                    amount: "amount"
                ),
                PostV1SalesRecognitionComputeResponseRowsItem(
                    scheduleId: "x",
                    invoiceId: "x",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    invoiceLineId: "x",
                    lineDescription: "lineDescription",
                    scheduleDate: Nullable<String>.value("scheduleDate"),
                    description: Nullable<String>.value("description"),
                    amount: "amount"
                )
            ]
        )
        let response = try await client.sales.postV1SalesRecognitionCompute(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRecognitionRun1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "runId": "runId",
                  "runDate": "runDate",
                  "trigger": "manual",
                  "scheduleCount": 1000000,
                  "totalAmount": "totalAmount",
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
        let expectedResponse = PostV1SalesRecognitionRunResponse(
            runId: "runId",
            runDate: "runDate",
            trigger: .manual,
            scheduleCount: 1000000,
            totalAmount: "totalAmount",
            journalTransactionId: "journalTransactionId"
        )
        let response = try await client.sales.postV1SalesRecognitionRun(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRecognitionRun2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "runId": "x",
                  "runDate": "runDate",
                  "trigger": "manual",
                  "scheduleCount": 1000000,
                  "totalAmount": "totalAmount",
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
        let expectedResponse = PostV1SalesRecognitionRunResponse(
            runId: "x",
            runDate: "runDate",
            trigger: .manual,
            scheduleCount: 1000000,
            totalAmount: "totalAmount",
            journalTransactionId: "x"
        )
        let response = try await client.sales.postV1SalesRecognitionRun(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRecognitionProgress1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "runId": "runId",
                  "runDate": "runDate",
                  "scheduleCount": 1000000,
                  "totalAmount": "totalAmount",
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
        let expectedResponse = PostV1SalesRecognitionProgressResponse(
            runId: "runId",
            runDate: "runDate",
            scheduleCount: 1000000,
            totalAmount: "totalAmount",
            journalTransactionId: "journalTransactionId"
        )
        let response = try await client.sales.postV1SalesRecognitionProgress(
            request: .init(
                invoiceLineId: "invoiceLineId",
                percentComplete: "percentComplete"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRecognitionProgress2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "runId": "x",
                  "runDate": "runDate",
                  "scheduleCount": 1000000,
                  "totalAmount": "totalAmount",
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
        let expectedResponse = PostV1SalesRecognitionProgressResponse(
            runId: "x",
            runDate: "runDate",
            scheduleCount: 1000000,
            totalAmount: "totalAmount",
            journalTransactionId: "x"
        )
        let response = try await client.sales.postV1SalesRecognitionProgress(
            request: .init(
                invoiceLineId: "x",
                percentComplete: "percentComplete"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRecognitionModify1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "invoiceLineId": "invoiceLineId",
                  "approach": "prospective",
                  "cancelledCount": 1000000,
                  "newPendingCount": 1000000,
                  "catchUpAmount": "catchUpAmount",
                  "journalTransactionId": "journalTransactionId",
                  "newEndDate": "newEndDate"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesRecognitionModifyResponse(
            invoiceLineId: "invoiceLineId",
            approach: .prospective,
            cancelledCount: 1000000,
            newPendingCount: 1000000,
            catchUpAmount: "catchUpAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            newEndDate: Nullable<String>.value("newEndDate")
        )
        let response = try await client.sales.postV1SalesRecognitionModify(
            request: .init(
                invoiceLineId: "invoiceLineId",
                approach: .prospective
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRecognitionModify2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "invoiceLineId": "x",
                  "approach": "prospective",
                  "cancelledCount": 1000000,
                  "newPendingCount": 1000000,
                  "catchUpAmount": "catchUpAmount",
                  "journalTransactionId": "x",
                  "newEndDate": "newEndDate"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1SalesRecognitionModifyResponse(
            invoiceLineId: "x",
            approach: .prospective,
            cancelledCount: 1000000,
            newPendingCount: 1000000,
            catchUpAmount: "catchUpAmount",
            journalTransactionId: Nullable<String>.value("x"),
            newEndDate: Nullable<String>.value("newEndDate")
        )
        let response = try await client.sales.postV1SalesRecognitionModify(
            request: .init(
                invoiceLineId: "x",
                approach: .prospective
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRecognitionRunsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "runDate": "runDate",
                      "trigger": "manual",
                      "scheduleCount": 1000000,
                      "totalAmount": "totalAmount",
                      "journalTransactionId": "journalTransactionId",
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
        let expectedResponse = PostV1SalesRecognitionRunsListResponse(
            rows: [
                PostV1SalesRecognitionRunsListResponseRowsItem(
                    id: "id",
                    runDate: "runDate",
                    trigger: .manual,
                    scheduleCount: 1000000,
                    totalAmount: "totalAmount",
                    journalTransactionId: "journalTransactionId",
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
        let response = try await client.sales.postV1SalesRecognitionRunsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRecognitionRunsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "runDate": "runDate",
                      "trigger": "manual",
                      "scheduleCount": 1000000,
                      "totalAmount": "totalAmount",
                      "journalTransactionId": "x",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "runDate": "runDate",
                      "trigger": "manual",
                      "scheduleCount": 1000000,
                      "totalAmount": "totalAmount",
                      "journalTransactionId": "x",
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
        let expectedResponse = PostV1SalesRecognitionRunsListResponse(
            rows: [
                PostV1SalesRecognitionRunsListResponseRowsItem(
                    id: "x",
                    runDate: "runDate",
                    trigger: .manual,
                    scheduleCount: 1000000,
                    totalAmount: "totalAmount",
                    journalTransactionId: "x",
                    createdAt: "createdAt"
                ),
                PostV1SalesRecognitionRunsListResponseRowsItem(
                    id: "x",
                    runDate: "runDate",
                    trigger: .manual,
                    scheduleCount: 1000000,
                    totalAmount: "totalAmount",
                    journalTransactionId: "x",
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
        let response = try await client.sales.postV1SalesRecognitionRunsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRecognitionSummary1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "invoiceId": "invoiceId",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "invoiceLineId": "invoiceLineId",
                      "lineDescription": "lineDescription",
                      "method": "point_in_time",
                      "deferredTotal": "deferredTotal",
                      "recognizedToDate": "recognizedToDate",
                      "remaining": "remaining",
                      "pendingCount": 1000000,
                      "nextScheduleDate": "nextScheduleDate"
                    }
                  ],
                  "totals": {
                    "deferredTotal": "deferredTotal",
                    "recognizedToDate": "recognizedToDate",
                    "remaining": "remaining"
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
        let expectedResponse = PostV1SalesRecognitionSummaryResponse(
            rows: [
                PostV1SalesRecognitionSummaryResponseRowsItem(
                    invoiceId: "invoiceId",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    invoiceLineId: "invoiceLineId",
                    lineDescription: "lineDescription",
                    method: .pointInTime,
                    deferredTotal: "deferredTotal",
                    recognizedToDate: "recognizedToDate",
                    remaining: "remaining",
                    pendingCount: 1000000,
                    nextScheduleDate: Nullable<String>.value("nextScheduleDate")
                )
            ],
            totals: PostV1SalesRecognitionSummaryResponseTotals(
                deferredTotal: "deferredTotal",
                recognizedToDate: "recognizedToDate",
                remaining: "remaining"
            )
        )
        let response = try await client.sales.postV1SalesRecognitionSummary(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRecognitionSummary2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "invoiceId": "x",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "invoiceLineId": "x",
                      "lineDescription": "lineDescription",
                      "method": "point_in_time",
                      "deferredTotal": "deferredTotal",
                      "recognizedToDate": "recognizedToDate",
                      "remaining": "remaining",
                      "pendingCount": 1000000,
                      "nextScheduleDate": "nextScheduleDate"
                    },
                    {
                      "invoiceId": "x",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "invoiceLineId": "x",
                      "lineDescription": "lineDescription",
                      "method": "point_in_time",
                      "deferredTotal": "deferredTotal",
                      "recognizedToDate": "recognizedToDate",
                      "remaining": "remaining",
                      "pendingCount": 1000000,
                      "nextScheduleDate": "nextScheduleDate"
                    }
                  ],
                  "totals": {
                    "deferredTotal": "deferredTotal",
                    "recognizedToDate": "recognizedToDate",
                    "remaining": "remaining"
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
        let expectedResponse = PostV1SalesRecognitionSummaryResponse(
            rows: [
                PostV1SalesRecognitionSummaryResponseRowsItem(
                    invoiceId: "x",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    invoiceLineId: "x",
                    lineDescription: "lineDescription",
                    method: .pointInTime,
                    deferredTotal: "deferredTotal",
                    recognizedToDate: "recognizedToDate",
                    remaining: "remaining",
                    pendingCount: 1000000,
                    nextScheduleDate: Nullable<String>.value("nextScheduleDate")
                ),
                PostV1SalesRecognitionSummaryResponseRowsItem(
                    invoiceId: "x",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    invoiceLineId: "x",
                    lineDescription: "lineDescription",
                    method: .pointInTime,
                    deferredTotal: "deferredTotal",
                    recognizedToDate: "recognizedToDate",
                    remaining: "remaining",
                    pendingCount: 1000000,
                    nextScheduleDate: Nullable<String>.value("nextScheduleDate")
                )
            ],
            totals: PostV1SalesRecognitionSummaryResponseTotals(
                deferredTotal: "deferredTotal",
                recognizedToDate: "recognizedToDate",
                remaining: "remaining"
            )
        )
        let response = try await client.sales.postV1SalesRecognitionSummary(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRefundLiabilityList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "invoiceId": "invoiceId",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "estimated": "estimated",
                      "consumed": "consumed",
                      "settlementRefunds": "settlementRefunds",
                      "remaining": "remaining",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1SalesRefundLiabilityListResponse(
            rows: [
                PostV1SalesRefundLiabilityListResponseRowsItem(
                    id: "id",
                    invoiceId: "invoiceId",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    estimated: "estimated",
                    consumed: "consumed",
                    settlementRefunds: "settlementRefunds",
                    remaining: "remaining",
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.sales.postV1SalesRefundLiabilityList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRefundLiabilityList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "invoiceId": "x",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "estimated": "estimated",
                      "consumed": "consumed",
                      "settlementRefunds": "settlementRefunds",
                      "remaining": "remaining",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "invoiceId": "x",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "estimated": "estimated",
                      "consumed": "consumed",
                      "settlementRefunds": "settlementRefunds",
                      "remaining": "remaining",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1SalesRefundLiabilityListResponse(
            rows: [
                PostV1SalesRefundLiabilityListResponseRowsItem(
                    id: "x",
                    invoiceId: "x",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    estimated: "estimated",
                    consumed: "consumed",
                    settlementRefunds: "settlementRefunds",
                    remaining: "remaining",
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1SalesRefundLiabilityListResponseRowsItem(
                    id: "x",
                    invoiceId: "x",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    estimated: "estimated",
                    consumed: "consumed",
                    settlementRefunds: "settlementRefunds",
                    remaining: "remaining",
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.sales.postV1SalesRefundLiabilityList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRefundLiabilityTrueUp1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "invoiceId": "invoiceId",
                  "estimated": "estimated",
                  "consumed": "consumed",
                  "remaining": "remaining",
                  "delta": "delta",
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
        let expectedResponse = PostV1SalesRefundLiabilityTrueUpResponse(
            invoiceId: "invoiceId",
            estimated: "estimated",
            consumed: "consumed",
            remaining: "remaining",
            delta: "delta",
            journalTransactionId: "journalTransactionId"
        )
        let response = try await client.sales.postV1SalesRefundLiabilityTrueUp(
            request: .init(
                invoiceId: "invoiceId",
                estimatedTotal: "estimatedTotal"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1SalesRefundLiabilityTrueUp2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "invoiceId": "x",
                  "estimated": "estimated",
                  "consumed": "consumed",
                  "remaining": "remaining",
                  "delta": "delta",
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
        let expectedResponse = PostV1SalesRefundLiabilityTrueUpResponse(
            invoiceId: "x",
            estimated: "estimated",
            consumed: "consumed",
            remaining: "remaining",
            delta: "delta",
            journalTransactionId: "x"
        )
        let response = try await client.sales.postV1SalesRefundLiabilityTrueUp(
            request: .init(
                invoiceId: "x",
                estimatedTotal: "estimatedTotal"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}