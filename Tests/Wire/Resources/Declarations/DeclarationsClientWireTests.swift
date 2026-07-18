import Foundation
import Testing
import Api

@Suite("DeclarationsClient Wire Tests") struct DeclarationsClientWireTests {
    @Test func postV1DeclarationsLtIntrastatCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "flow": "arrivals",
                  "referencePeriod": "referencePeriod",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "fileName": "fileName",
                  "fileId": "fileId",
                  "rows": [
                    {
                      "itemNumber": 1000000,
                      "cnCode": "cnCode",
                      "description": "description",
                      "transactionNature": "transactionNature",
                      "deliveryTerms": "deliveryTerms",
                      "transportMode": "transportMode",
                      "country": "country",
                      "originCountry": "originCountry",
                      "partnerVat": "partnerVat",
                      "netMassKg": "netMassKg",
                      "supplementaryUnit": "supplementaryUnit",
                      "supplementaryQty": "supplementaryQty",
                      "invoicedValue": "invoicedValue",
                      "statisticalValue": "statisticalValue"
                    }
                  ],
                  "totals": {
                    "invoicedValue": "invoicedValue",
                    "statisticalValue": "statisticalValue",
                    "netMassKg": "netMassKg",
                    "lines": 1000000
                  },
                  "counts": {
                    "invoices": 1000000,
                    "linesIncluded": 1000000,
                    "linesSkipped": 1000000
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtIntrastatComputeResponse(
            flow: .arrivals,
            referencePeriod: "referencePeriod",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            rows: [
                PostV1DeclarationsLtIntrastatComputeResponseRowsItem(
                    itemNumber: 1000000,
                    cnCode: "cnCode",
                    description: Nullable<String>.value("description"),
                    transactionNature: "transactionNature",
                    deliveryTerms: Nullable<String>.value("deliveryTerms"),
                    transportMode: Nullable<String>.value("transportMode"),
                    country: "country",
                    originCountry: Nullable<String>.value("originCountry"),
                    partnerVat: Nullable<String>.value("partnerVat"),
                    netMassKg: "netMassKg",
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
                    supplementaryQty: Nullable<String>.value("supplementaryQty"),
                    invoicedValue: "invoicedValue",
                    statisticalValue: "statisticalValue"
                )
            ],
            totals: PostV1DeclarationsLtIntrastatComputeResponseTotals(
                invoicedValue: "invoicedValue",
                statisticalValue: "statisticalValue",
                netMassKg: "netMassKg",
                lines: 1000000
            ),
            counts: PostV1DeclarationsLtIntrastatComputeResponseCounts(
                invoices: 1000000,
                linesIncluded: 1000000,
                linesSkipped: 1000000
            ),
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtIntrastatCompute(
            request: .init(
                year: 1000000,
                month: 1000000,
                flow: .arrivals
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIntrastatCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "flow": "arrivals",
                  "referencePeriod": "referencePeriod",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "fileName": "fileName",
                  "fileId": "x",
                  "rows": [
                    {
                      "itemNumber": 1000000,
                      "cnCode": "cnCode",
                      "description": "description",
                      "transactionNature": "transactionNature",
                      "deliveryTerms": "deliveryTerms",
                      "transportMode": "transportMode",
                      "country": "country",
                      "originCountry": "originCountry",
                      "partnerVat": "partnerVat",
                      "netMassKg": "netMassKg",
                      "supplementaryUnit": "supplementaryUnit",
                      "supplementaryQty": "supplementaryQty",
                      "invoicedValue": "invoicedValue",
                      "statisticalValue": "statisticalValue"
                    },
                    {
                      "itemNumber": 1000000,
                      "cnCode": "cnCode",
                      "description": "description",
                      "transactionNature": "transactionNature",
                      "deliveryTerms": "deliveryTerms",
                      "transportMode": "transportMode",
                      "country": "country",
                      "originCountry": "originCountry",
                      "partnerVat": "partnerVat",
                      "netMassKg": "netMassKg",
                      "supplementaryUnit": "supplementaryUnit",
                      "supplementaryQty": "supplementaryQty",
                      "invoicedValue": "invoicedValue",
                      "statisticalValue": "statisticalValue"
                    }
                  ],
                  "totals": {
                    "invoicedValue": "invoicedValue",
                    "statisticalValue": "statisticalValue",
                    "netMassKg": "netMassKg",
                    "lines": 1000000
                  },
                  "counts": {
                    "invoices": 1000000,
                    "linesIncluded": 1000000,
                    "linesSkipped": 1000000
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtIntrastatComputeResponse(
            flow: .arrivals,
            referencePeriod: "referencePeriod",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            rows: [
                PostV1DeclarationsLtIntrastatComputeResponseRowsItem(
                    itemNumber: 1000000,
                    cnCode: "cnCode",
                    description: Nullable<String>.value("description"),
                    transactionNature: "transactionNature",
                    deliveryTerms: Nullable<String>.value("deliveryTerms"),
                    transportMode: Nullable<String>.value("transportMode"),
                    country: "country",
                    originCountry: Nullable<String>.value("originCountry"),
                    partnerVat: Nullable<String>.value("partnerVat"),
                    netMassKg: "netMassKg",
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
                    supplementaryQty: Nullable<String>.value("supplementaryQty"),
                    invoicedValue: "invoicedValue",
                    statisticalValue: "statisticalValue"
                ),
                PostV1DeclarationsLtIntrastatComputeResponseRowsItem(
                    itemNumber: 1000000,
                    cnCode: "cnCode",
                    description: Nullable<String>.value("description"),
                    transactionNature: "transactionNature",
                    deliveryTerms: Nullable<String>.value("deliveryTerms"),
                    transportMode: Nullable<String>.value("transportMode"),
                    country: "country",
                    originCountry: Nullable<String>.value("originCountry"),
                    partnerVat: Nullable<String>.value("partnerVat"),
                    netMassKg: "netMassKg",
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
                    supplementaryQty: Nullable<String>.value("supplementaryQty"),
                    invoicedValue: "invoicedValue",
                    statisticalValue: "statisticalValue"
                )
            ],
            totals: PostV1DeclarationsLtIntrastatComputeResponseTotals(
                invoicedValue: "invoicedValue",
                statisticalValue: "statisticalValue",
                netMassKg: "netMassKg",
                lines: 1000000
            ),
            counts: PostV1DeclarationsLtIntrastatComputeResponseCounts(
                invoices: 1000000,
                linesIncluded: 1000000,
                linesSkipped: 1000000
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtIntrastatCompute(
            request: .init(
                year: 1000000,
                month: 1000000,
                flow: .arrivals
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIvazGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "fileId": "fileId",
                  "counts": {
                    "documents": 1000000
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtIvazGenerateResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            counts: PostV1DeclarationsLtIvazGenerateResponseCounts(
                documents: 1000000
            ),
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtIvazGenerate(
            request: .init(waybillIds: [
                "waybillIds"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIvazGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "fileId": "x",
                  "counts": {
                    "documents": 1000000
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtIvazGenerateResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            counts: PostV1DeclarationsLtIvazGenerateResponseCounts(
                documents: 1000000
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtIvazGenerate(
            request: .init(waybillIds: [
                "waybillIds",
                "waybillIds"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIntrastatObligation1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "isVatPayer": true,
                  "notes": [
                    "notes"
                  ],
                  "thresholds": {
                    "arrivalsReporting": "arrivalsReporting",
                    "dispatchesReporting": "dispatchesReporting",
                    "arrivalsStatistical": "arrivalsStatistical",
                    "dispatchesStatistical": "dispatchesStatistical"
                  },
                  "arrivals": {
                    "previousYearValue": "previousYearValue",
                    "obligatedFromMonth": 1000000,
                    "statisticalValueRequired": true,
                    "monthly": [
                      {
                        "month": 1000000,
                        "value": "value",
                        "cumulative": "cumulative"
                      }
                    ]
                  },
                  "dispatches": {
                    "previousYearValue": "previousYearValue",
                    "obligatedFromMonth": 1000000,
                    "statisticalValueRequired": true,
                    "monthly": [
                      {
                        "month": 1000000,
                        "value": "value",
                        "cumulative": "cumulative"
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
        let expectedResponse = PostV1DeclarationsLtIntrastatObligationResponse(
            year: 1000000,
            isVatPayer: true,
            notes: [
                "notes"
            ],
            thresholds: PostV1DeclarationsLtIntrastatObligationResponseThresholds(
                arrivalsReporting: "arrivalsReporting",
                dispatchesReporting: "dispatchesReporting",
                arrivalsStatistical: "arrivalsStatistical",
                dispatchesStatistical: "dispatchesStatistical"
            ),
            arrivals: PostV1DeclarationsLtIntrastatObligationResponseArrivals(
                previousYearValue: "previousYearValue",
                obligatedFromMonth: Nullable<Int64>.value(1000000),
                statisticalValueRequired: true,
                monthly: [
                    PostV1DeclarationsLtIntrastatObligationResponseArrivalsMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    )
                ]
            ),
            dispatches: PostV1DeclarationsLtIntrastatObligationResponseDispatches(
                previousYearValue: "previousYearValue",
                obligatedFromMonth: Nullable<Int64>.value(1000000),
                statisticalValueRequired: true,
                monthly: [
                    PostV1DeclarationsLtIntrastatObligationResponseDispatchesMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    )
                ]
            )
        )
        let response = try await client.declarations.postV1DeclarationsLtIntrastatObligation(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIntrastatObligation2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "isVatPayer": true,
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "thresholds": {
                    "arrivalsReporting": "arrivalsReporting",
                    "dispatchesReporting": "dispatchesReporting",
                    "arrivalsStatistical": "arrivalsStatistical",
                    "dispatchesStatistical": "dispatchesStatistical"
                  },
                  "arrivals": {
                    "previousYearValue": "previousYearValue",
                    "obligatedFromMonth": 1000000,
                    "statisticalValueRequired": true,
                    "monthly": [
                      {
                        "month": 1000000,
                        "value": "value",
                        "cumulative": "cumulative"
                      },
                      {
                        "month": 1000000,
                        "value": "value",
                        "cumulative": "cumulative"
                      }
                    ]
                  },
                  "dispatches": {
                    "previousYearValue": "previousYearValue",
                    "obligatedFromMonth": 1000000,
                    "statisticalValueRequired": true,
                    "monthly": [
                      {
                        "month": 1000000,
                        "value": "value",
                        "cumulative": "cumulative"
                      },
                      {
                        "month": 1000000,
                        "value": "value",
                        "cumulative": "cumulative"
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
        let expectedResponse = PostV1DeclarationsLtIntrastatObligationResponse(
            year: 1000000,
            isVatPayer: true,
            notes: [
                "notes",
                "notes"
            ],
            thresholds: PostV1DeclarationsLtIntrastatObligationResponseThresholds(
                arrivalsReporting: "arrivalsReporting",
                dispatchesReporting: "dispatchesReporting",
                arrivalsStatistical: "arrivalsStatistical",
                dispatchesStatistical: "dispatchesStatistical"
            ),
            arrivals: PostV1DeclarationsLtIntrastatObligationResponseArrivals(
                previousYearValue: "previousYearValue",
                obligatedFromMonth: Nullable<Int64>.value(1000000),
                statisticalValueRequired: true,
                monthly: [
                    PostV1DeclarationsLtIntrastatObligationResponseArrivalsMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    ),
                    PostV1DeclarationsLtIntrastatObligationResponseArrivalsMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    )
                ]
            ),
            dispatches: PostV1DeclarationsLtIntrastatObligationResponseDispatches(
                previousYearValue: "previousYearValue",
                obligatedFromMonth: Nullable<Int64>.value(1000000),
                statisticalValueRequired: true,
                monthly: [
                    PostV1DeclarationsLtIntrastatObligationResponseDispatchesMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    ),
                    PostV1DeclarationsLtIntrastatObligationResponseDispatchesMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    )
                ]
            )
        )
        let response = try await client.declarations.postV1DeclarationsLtIntrastatObligation(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIsafGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "counts": {
                    "salesInvoices": 1000000,
                    "purchaseInvoices": 1000000,
                    "customers": 1000000,
                    "suppliers": 1000000
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtIsafGenerateResponse(
            fileName: "fileName",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            counts: PostV1DeclarationsLtIsafGenerateResponseCounts(
                salesInvoices: 1000000,
                purchaseInvoices: 1000000,
                customers: 1000000,
                suppliers: 1000000
            ),
            warnings: [
                "warnings"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtIsafGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIsafGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "counts": {
                    "salesInvoices": 1000000,
                    "purchaseInvoices": 1000000,
                    "customers": 1000000,
                    "suppliers": 1000000
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtIsafGenerateResponse(
            fileName: "fileName",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            counts: PostV1DeclarationsLtIsafGenerateResponseCounts(
                salesInvoices: 1000000,
                purchaseInvoices: 1000000,
                customers: 1000000,
                suppliers: 1000000
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtIsafGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtFr0600Compute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "deductionPercent": 1000000,
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "breakdown": [
                    {
                      "direction": "sales",
                      "taxCode": "taxCode",
                      "net": "net",
                      "vat": "vat",
                      "taxableFields": [
                        "taxableFields"
                      ],
                      "vatFields": [
                        "vatFields"
                      ]
                    }
                  ],
                  "counts": {
                    "salesInvoices": 1000000,
                    "purchaseInvoices": 1000000
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
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
        let expectedResponse = PostV1DeclarationsLtFr0600ComputeResponse(
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            deductionPercent: 1000000,
            fields: [
                PostV1DeclarationsLtFr0600ComputeResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            breakdown: [
                PostV1DeclarationsLtFr0600ComputeResponseBreakdownItem(
                    direction: .sales,
                    taxCode: Nullable<String>.value("taxCode"),
                    net: "net",
                    vat: "vat",
                    taxableFields: [
                        "taxableFields"
                    ],
                    vatFields: [
                        "vatFields"
                    ]
                )
            ],
            counts: PostV1DeclarationsLtFr0600ComputeResponseCounts(
                salesInvoices: 1000000,
                purchaseInvoices: 1000000
            ),
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtFr0600Compute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtFr0600Compute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "deductionPercent": 1000000,
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    },
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "breakdown": [
                    {
                      "direction": "sales",
                      "taxCode": "taxCode",
                      "net": "net",
                      "vat": "vat",
                      "taxableFields": [
                        "taxableFields",
                        "taxableFields"
                      ],
                      "vatFields": [
                        "vatFields",
                        "vatFields"
                      ]
                    },
                    {
                      "direction": "sales",
                      "taxCode": "taxCode",
                      "net": "net",
                      "vat": "vat",
                      "taxableFields": [
                        "taxableFields",
                        "taxableFields"
                      ],
                      "vatFields": [
                        "vatFields",
                        "vatFields"
                      ]
                    }
                  ],
                  "counts": {
                    "salesInvoices": 1000000,
                    "purchaseInvoices": 1000000
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
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
        let expectedResponse = PostV1DeclarationsLtFr0600ComputeResponse(
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            deductionPercent: 1000000,
            fields: [
                PostV1DeclarationsLtFr0600ComputeResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                PostV1DeclarationsLtFr0600ComputeResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            breakdown: [
                PostV1DeclarationsLtFr0600ComputeResponseBreakdownItem(
                    direction: .sales,
                    taxCode: Nullable<String>.value("taxCode"),
                    net: "net",
                    vat: "vat",
                    taxableFields: [
                        "taxableFields",
                        "taxableFields"
                    ],
                    vatFields: [
                        "vatFields",
                        "vatFields"
                    ]
                ),
                PostV1DeclarationsLtFr0600ComputeResponseBreakdownItem(
                    direction: .sales,
                    taxCode: Nullable<String>.value("taxCode"),
                    net: "net",
                    vat: "vat",
                    taxableFields: [
                        "taxableFields",
                        "taxableFields"
                    ],
                    vatFields: [
                        "vatFields",
                        "vatFields"
                    ]
                )
            ],
            counts: PostV1DeclarationsLtFr0600ComputeResponseCounts(
                salesInvoices: 1000000,
                purchaseInvoices: 1000000
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtFr0600Compute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtGpm313Compute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "declarationYear": 1000000,
                  "declarationMonth": 1000000,
                  "runPeriod": {
                    "year": 1000000,
                    "month": 1000000
                  },
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
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
        let expectedResponse = PostV1DeclarationsLtGpm313ComputeResponse(
            declarationYear: 1000000,
            declarationMonth: 1000000,
            runPeriod: Nullable<PostV1DeclarationsLtGpm313ComputeResponseRunPeriod>.value(PostV1DeclarationsLtGpm313ComputeResponseRunPeriod(
                year: 1000000,
                month: 1000000
            )),
            fields: [
                PostV1DeclarationsLtGpm313ComputeResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtGpm313Compute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtGpm313Compute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "declarationYear": 1000000,
                  "declarationMonth": 1000000,
                  "runPeriod": {
                    "year": 1000000,
                    "month": 1000000
                  },
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    },
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
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
        let expectedResponse = PostV1DeclarationsLtGpm313ComputeResponse(
            declarationYear: 1000000,
            declarationMonth: 1000000,
            runPeriod: Nullable<PostV1DeclarationsLtGpm313ComputeResponseRunPeriod>.value(PostV1DeclarationsLtGpm313ComputeResponseRunPeriod(
                year: 1000000,
                month: 1000000
            )),
            fields: [
                PostV1DeclarationsLtGpm313ComputeResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                PostV1DeclarationsLtGpm313ComputeResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtGpm313Compute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtSamCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "insuredCount": 1000000,
                  "insuredIncomeTotal": "insuredIncomeTotal",
                  "contributionsTotal": "contributionsTotal",
                  "persons": [
                    {
                      "employeeId": "employeeId",
                      "personalCode": "personalCode",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "insuredIncome": "insuredIncome",
                      "contributions": "contributions",
                      "tariffPercent": "tariffPercent"
                    }
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
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
        let expectedResponse = PostV1DeclarationsLtSamComputeResponse(
            year: 1000000,
            month: 1000000,
            insuredCount: 1000000,
            insuredIncomeTotal: "insuredIncomeTotal",
            contributionsTotal: "contributionsTotal",
            persons: [
                PostV1DeclarationsLtSamComputeResponsePersonsItem(
                    employeeId: "employeeId",
                    personalCode: Nullable<String>.value("personalCode"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    firstName: "firstName",
                    lastName: "lastName",
                    insuredIncome: "insuredIncome",
                    contributions: "contributions",
                    tariffPercent: "tariffPercent"
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtSamCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtSamCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "insuredCount": 1000000,
                  "insuredIncomeTotal": "insuredIncomeTotal",
                  "contributionsTotal": "contributionsTotal",
                  "persons": [
                    {
                      "employeeId": "x",
                      "personalCode": "personalCode",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "insuredIncome": "insuredIncome",
                      "contributions": "contributions",
                      "tariffPercent": "tariffPercent"
                    },
                    {
                      "employeeId": "x",
                      "personalCode": "personalCode",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "insuredIncome": "insuredIncome",
                      "contributions": "contributions",
                      "tariffPercent": "tariffPercent"
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
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
        let expectedResponse = PostV1DeclarationsLtSamComputeResponse(
            year: 1000000,
            month: 1000000,
            insuredCount: 1000000,
            insuredIncomeTotal: "insuredIncomeTotal",
            contributionsTotal: "contributionsTotal",
            persons: [
                PostV1DeclarationsLtSamComputeResponsePersonsItem(
                    employeeId: "x",
                    personalCode: Nullable<String>.value("personalCode"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    firstName: "firstName",
                    lastName: "lastName",
                    insuredIncome: "insuredIncome",
                    contributions: "contributions",
                    tariffPercent: "tariffPercent"
                ),
                PostV1DeclarationsLtSamComputeResponsePersonsItem(
                    employeeId: "x",
                    personalCode: Nullable<String>.value("personalCode"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    firstName: "firstName",
                    lastName: "lastName",
                    insuredIncome: "insuredIncome",
                    contributions: "contributions",
                    tariffPercent: "tariffPercent"
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtSamCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtSdGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "type": "1-SD",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "contractId": "contractId",
                      "contractNo": "contractNo",
                      "personalCode": "personalCode",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "date": "date",
                      "professionCode": "professionCode",
                      "endReason": "endReason",
                      "finalInsuredIncome": "finalInsuredIncome",
                      "finalContributions": "finalContributions"
                    }
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
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
        let expectedResponse = PostV1DeclarationsLtSdGenerateResponse(
            type: .oneSd,
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1DeclarationsLtSdGenerateResponseRowsItem(
                    employeeId: "employeeId",
                    contractId: "contractId",
                    contractNo: "contractNo",
                    personalCode: Nullable<String>.value("personalCode"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    firstName: "firstName",
                    lastName: "lastName",
                    date: "date",
                    professionCode: Nullable<String>.value("professionCode"),
                    endReason: Nullable<String>.value("endReason"),
                    finalInsuredIncome: Nullable<String>.value("finalInsuredIncome"),
                    finalContributions: Nullable<String>.value("finalContributions")
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtSdGenerate(
            request: .init(
                type: .oneSd,
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtSdGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "type": "1-SD",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "employeeId": "x",
                      "contractId": "x",
                      "contractNo": "contractNo",
                      "personalCode": "personalCode",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "date": "date",
                      "professionCode": "professionCode",
                      "endReason": "endReason",
                      "finalInsuredIncome": "finalInsuredIncome",
                      "finalContributions": "finalContributions"
                    },
                    {
                      "employeeId": "x",
                      "contractId": "x",
                      "contractNo": "contractNo",
                      "personalCode": "personalCode",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "date": "date",
                      "professionCode": "professionCode",
                      "endReason": "endReason",
                      "finalInsuredIncome": "finalInsuredIncome",
                      "finalContributions": "finalContributions"
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
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
        let expectedResponse = PostV1DeclarationsLtSdGenerateResponse(
            type: .oneSd,
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1DeclarationsLtSdGenerateResponseRowsItem(
                    employeeId: "x",
                    contractId: "x",
                    contractNo: "contractNo",
                    personalCode: Nullable<String>.value("personalCode"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    firstName: "firstName",
                    lastName: "lastName",
                    date: "date",
                    professionCode: Nullable<String>.value("professionCode"),
                    endReason: Nullable<String>.value("endReason"),
                    finalInsuredIncome: Nullable<String>.value("finalInsuredIncome"),
                    finalContributions: Nullable<String>.value("finalContributions")
                ),
                PostV1DeclarationsLtSdGenerateResponseRowsItem(
                    employeeId: "x",
                    contractId: "x",
                    contractNo: "contractNo",
                    personalCode: Nullable<String>.value("personalCode"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    firstName: "firstName",
                    lastName: "lastName",
                    date: "date",
                    professionCode: Nullable<String>.value("professionCode"),
                    endReason: Nullable<String>.value("endReason"),
                    finalInsuredIncome: Nullable<String>.value("finalInsuredIncome"),
                    finalContributions: Nullable<String>.value("finalContributions")
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtSdGenerate(
            request: .init(
                type: .oneSd,
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtSaftGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "fileId": "fileId",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "counts": {
                    "accounts": 1000000,
                    "customers": 1000000,
                    "suppliers": 1000000,
                    "glTransactions": 1000000,
                    "salesInvoices": 1000000,
                    "purchaseInvoices": 1000000,
                    "payments": 1000000,
                    "stockMovements": 1000000,
                    "assetTransactions": 1000000
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtSaftGenerateResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            counts: PostV1DeclarationsLtSaftGenerateResponseCounts(
                accounts: 1000000,
                customers: 1000000,
                suppliers: 1000000,
                glTransactions: 1000000,
                salesInvoices: 1000000,
                purchaseInvoices: 1000000,
                payments: 1000000,
                stockMovements: 1000000,
                assetTransactions: 1000000
            ),
            warnings: [
                "warnings"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtSaftGenerate(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtSaftGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "fileId": "x",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "counts": {
                    "accounts": 1000000,
                    "customers": 1000000,
                    "suppliers": 1000000,
                    "glTransactions": 1000000,
                    "salesInvoices": 1000000,
                    "purchaseInvoices": 1000000,
                    "payments": 1000000,
                    "stockMovements": 1000000,
                    "assetTransactions": 1000000
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtSaftGenerateResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            counts: PostV1DeclarationsLtSaftGenerateResponseCounts(
                accounts: 1000000,
                customers: 1000000,
                suppliers: 1000000,
                glTransactions: 1000000,
                salesInvoices: 1000000,
                purchaseInvoices: 1000000,
                payments: 1000000,
                stockMovements: 1000000,
                assetTransactions: 1000000
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtSaftGenerate(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuOssCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodYear": 1000000,
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "memberStateOfIdentification": "memberStateOfIdentification",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "rateType": "STANDARD",
                      "vatRatePercent": "vatRatePercent",
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    }
                  ],
                  "totals": {
                    "taxableAmount": "taxableAmount",
                    "vatAmount": "vatAmount"
                  },
                  "corrections": [
                    {
                      "countryCode": "countryCode",
                      "periodYear": 1000000,
                      "periodQuarter": 1000000,
                      "periodMonth": 1000000,
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    }
                  ],
                  "correctionsTotal": {
                    "taxableAmount": "taxableAmount",
                    "vatAmount": "vatAmount"
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "periodQuarter": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsEuOssComputeResponse(
            periodYear: 1000000,
            fromDate: "fromDate",
            toDate: "toDate",
            memberStateOfIdentification: "memberStateOfIdentification",
            rows: [
                PostV1DeclarationsEuOssComputeResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            totals: PostV1DeclarationsEuOssComputeResponseTotals(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            corrections: [
                PostV1DeclarationsEuOssComputeResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            correctionsTotal: PostV1DeclarationsEuOssComputeResponseCorrectionsTotal(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            warnings: [
                "warnings"
            ],
            periodQuarter: 1000000
        )
        let response = try await client.declarations.postV1DeclarationsEuOssCompute(
            request: .init(
                year: 1000000,
                quarter: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuOssCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodYear": 1000000,
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "memberStateOfIdentification": "memberStateOfIdentification",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "rateType": "STANDARD",
                      "vatRatePercent": "vatRatePercent",
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    },
                    {
                      "countryCode": "countryCode",
                      "rateType": "STANDARD",
                      "vatRatePercent": "vatRatePercent",
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    }
                  ],
                  "totals": {
                    "taxableAmount": "taxableAmount",
                    "vatAmount": "vatAmount"
                  },
                  "corrections": [
                    {
                      "countryCode": "countryCode",
                      "periodYear": 1000000,
                      "periodQuarter": 1000000,
                      "periodMonth": 1000000,
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    },
                    {
                      "countryCode": "countryCode",
                      "periodYear": 1000000,
                      "periodQuarter": 1000000,
                      "periodMonth": 1000000,
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    }
                  ],
                  "correctionsTotal": {
                    "taxableAmount": "taxableAmount",
                    "vatAmount": "vatAmount"
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "periodQuarter": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsEuOssComputeResponse(
            periodYear: 1000000,
            fromDate: "fromDate",
            toDate: "toDate",
            memberStateOfIdentification: "memberStateOfIdentification",
            rows: [
                PostV1DeclarationsEuOssComputeResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                ),
                PostV1DeclarationsEuOssComputeResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            totals: PostV1DeclarationsEuOssComputeResponseTotals(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            corrections: [
                PostV1DeclarationsEuOssComputeResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                ),
                PostV1DeclarationsEuOssComputeResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            correctionsTotal: PostV1DeclarationsEuOssComputeResponseCorrectionsTotal(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            periodQuarter: 1000000
        )
        let response = try await client.declarations.postV1DeclarationsEuOssCompute(
            request: .init(
                year: 1000000,
                quarter: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuIossCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodYear": 1000000,
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "memberStateOfIdentification": "memberStateOfIdentification",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "rateType": "STANDARD",
                      "vatRatePercent": "vatRatePercent",
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    }
                  ],
                  "totals": {
                    "taxableAmount": "taxableAmount",
                    "vatAmount": "vatAmount"
                  },
                  "corrections": [
                    {
                      "countryCode": "countryCode",
                      "periodYear": 1000000,
                      "periodQuarter": 1000000,
                      "periodMonth": 1000000,
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    }
                  ],
                  "correctionsTotal": {
                    "taxableAmount": "taxableAmount",
                    "vatAmount": "vatAmount"
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "periodMonth": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsEuIossComputeResponse(
            periodYear: 1000000,
            fromDate: "fromDate",
            toDate: "toDate",
            memberStateOfIdentification: "memberStateOfIdentification",
            rows: [
                PostV1DeclarationsEuIossComputeResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            totals: PostV1DeclarationsEuIossComputeResponseTotals(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            corrections: [
                PostV1DeclarationsEuIossComputeResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            correctionsTotal: PostV1DeclarationsEuIossComputeResponseCorrectionsTotal(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            warnings: [
                "warnings"
            ],
            periodMonth: 1000000
        )
        let response = try await client.declarations.postV1DeclarationsEuIossCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuIossCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodYear": 1000000,
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "memberStateOfIdentification": "memberStateOfIdentification",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "rateType": "STANDARD",
                      "vatRatePercent": "vatRatePercent",
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    },
                    {
                      "countryCode": "countryCode",
                      "rateType": "STANDARD",
                      "vatRatePercent": "vatRatePercent",
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    }
                  ],
                  "totals": {
                    "taxableAmount": "taxableAmount",
                    "vatAmount": "vatAmount"
                  },
                  "corrections": [
                    {
                      "countryCode": "countryCode",
                      "periodYear": 1000000,
                      "periodQuarter": 1000000,
                      "periodMonth": 1000000,
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    },
                    {
                      "countryCode": "countryCode",
                      "periodYear": 1000000,
                      "periodQuarter": 1000000,
                      "periodMonth": 1000000,
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    }
                  ],
                  "correctionsTotal": {
                    "taxableAmount": "taxableAmount",
                    "vatAmount": "vatAmount"
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "periodMonth": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsEuIossComputeResponse(
            periodYear: 1000000,
            fromDate: "fromDate",
            toDate: "toDate",
            memberStateOfIdentification: "memberStateOfIdentification",
            rows: [
                PostV1DeclarationsEuIossComputeResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                ),
                PostV1DeclarationsEuIossComputeResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            totals: PostV1DeclarationsEuIossComputeResponseTotals(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            corrections: [
                PostV1DeclarationsEuIossComputeResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                ),
                PostV1DeclarationsEuIossComputeResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            correctionsTotal: PostV1DeclarationsEuIossComputeResponseCorrectionsTotal(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            periodMonth: 1000000
        )
        let response = try await client.declarations.postV1DeclarationsEuIossCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuDistanceSalesThresholdGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "thresholdEur": "thresholdEur",
                  "homeCountryCode": "homeCountryCode",
                  "currentYear": {
                    "year": 1000000,
                    "totalAmount": "totalAmount",
                    "documents": 1000000
                  },
                  "precedingYear": {
                    "year": 1000000,
                    "totalAmount": "totalAmount",
                    "documents": 1000000
                  },
                  "belowThreshold": true,
                  "headroomAmount": "headroomAmount",
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
        let expectedResponse = PostV1DeclarationsEuDistanceSalesThresholdGetResponse(
            thresholdEur: "thresholdEur",
            homeCountryCode: "homeCountryCode",
            currentYear: PostV1DeclarationsEuDistanceSalesThresholdGetResponseCurrentYear(
                year: 1000000,
                totalAmount: "totalAmount",
                documents: 1000000
            ),
            precedingYear: PostV1DeclarationsEuDistanceSalesThresholdGetResponsePrecedingYear(
                year: 1000000,
                totalAmount: "totalAmount",
                documents: 1000000
            ),
            belowThreshold: true,
            headroomAmount: "headroomAmount",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuDistanceSalesThresholdGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuDistanceSalesThresholdGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "thresholdEur": "thresholdEur",
                  "homeCountryCode": "homeCountryCode",
                  "currentYear": {
                    "year": 1000000,
                    "totalAmount": "totalAmount",
                    "documents": 1000000
                  },
                  "precedingYear": {
                    "year": 1000000,
                    "totalAmount": "totalAmount",
                    "documents": 1000000
                  },
                  "belowThreshold": true,
                  "headroomAmount": "headroomAmount",
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
        let expectedResponse = PostV1DeclarationsEuDistanceSalesThresholdGetResponse(
            thresholdEur: "thresholdEur",
            homeCountryCode: "homeCountryCode",
            currentYear: PostV1DeclarationsEuDistanceSalesThresholdGetResponseCurrentYear(
                year: 1000000,
                totalAmount: "totalAmount",
                documents: 1000000
            ),
            precedingYear: PostV1DeclarationsEuDistanceSalesThresholdGetResponsePrecedingYear(
                year: 1000000,
                totalAmount: "totalAmount",
                documents: 1000000
            ),
            belowThreshold: true,
            headroomAmount: "headroomAmount",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuDistanceSalesThresholdGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuUnionTurnoverGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "capEur": "capEur",
                  "currency": "currency",
                  "isVatPayer": true,
                  "currentYear": {
                    "year": 1000000,
                    "amount": "amount",
                    "documents": 1000000
                  },
                  "previousYear": {
                    "year": 1000000,
                    "amount": "amount",
                    "documents": 1000000
                  },
                  "status": "below",
                  "headroomAmount": "headroomAmount",
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
        let expectedResponse = PostV1DeclarationsEuUnionTurnoverGetResponse(
            capEur: "capEur",
            currency: "currency",
            isVatPayer: true,
            currentYear: PostV1DeclarationsEuUnionTurnoverGetResponseCurrentYear(
                year: 1000000,
                amount: "amount",
                documents: 1000000
            ),
            previousYear: PostV1DeclarationsEuUnionTurnoverGetResponsePreviousYear(
                year: 1000000,
                amount: "amount",
                documents: 1000000
            ),
            status: .below,
            headroomAmount: Nullable<String>.value("headroomAmount"),
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuUnionTurnoverGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuUnionTurnoverGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "capEur": "capEur",
                  "currency": "currency",
                  "isVatPayer": true,
                  "currentYear": {
                    "year": 1000000,
                    "amount": "amount",
                    "documents": 1000000
                  },
                  "previousYear": {
                    "year": 1000000,
                    "amount": "amount",
                    "documents": 1000000
                  },
                  "status": "below",
                  "headroomAmount": "headroomAmount",
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
        let expectedResponse = PostV1DeclarationsEuUnionTurnoverGetResponse(
            capEur: "capEur",
            currency: "currency",
            isVatPayer: true,
            currentYear: PostV1DeclarationsEuUnionTurnoverGetResponseCurrentYear(
                year: 1000000,
                amount: "amount",
                documents: 1000000
            ),
            previousYear: PostV1DeclarationsEuUnionTurnoverGetResponsePreviousYear(
                year: 1000000,
                amount: "amount",
                documents: 1000000
            ),
            status: .below,
            headroomAmount: Nullable<String>.value("headroomAmount"),
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuUnionTurnoverGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuSmeCrossBorderReportCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "quarter": 1000000,
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "currency": "currency",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "amount": "amount",
                      "documents": 1000000
                    }
                  ],
                  "total": "total",
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
        let expectedResponse = PostV1DeclarationsEuSmeCrossBorderReportComputeResponse(
            year: 1000000,
            quarter: 1000000,
            fromDate: "fromDate",
            toDate: "toDate",
            currency: "currency",
            rows: [
                PostV1DeclarationsEuSmeCrossBorderReportComputeResponseRowsItem(
                    countryCode: "countryCode",
                    amount: "amount",
                    documents: 1000000
                )
            ],
            total: "total",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuSmeCrossBorderReportCompute(
            request: .init(
                year: 1000000,
                quarter: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuSmeCrossBorderReportCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "quarter": 1000000,
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "currency": "currency",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "amount": "amount",
                      "documents": 1000000
                    },
                    {
                      "countryCode": "countryCode",
                      "amount": "amount",
                      "documents": 1000000
                    }
                  ],
                  "total": "total",
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
        let expectedResponse = PostV1DeclarationsEuSmeCrossBorderReportComputeResponse(
            year: 1000000,
            quarter: 1000000,
            fromDate: "fromDate",
            toDate: "toDate",
            currency: "currency",
            rows: [
                PostV1DeclarationsEuSmeCrossBorderReportComputeResponseRowsItem(
                    countryCode: "countryCode",
                    amount: "amount",
                    documents: 1000000
                ),
                PostV1DeclarationsEuSmeCrossBorderReportComputeResponseRowsItem(
                    countryCode: "countryCode",
                    amount: "amount",
                    documents: 1000000
                )
            ],
            total: "total",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuSmeCrossBorderReportCompute(
            request: .init(
                year: 1000000,
                quarter: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuSmeThresholdsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "nationalCapEur": "nationalCapEur",
                  "unionTurnoverCapEur": "unionTurnoverCapEur",
                  "thresholds": [
                    {
                      "countryCode": "countryCode",
                      "currency": "currency",
                      "nationalThreshold": "nationalThreshold",
                      "sectors": [
                        {
                          "label": "label",
                          "amount": "amount"
                        }
                      ],
                      "intraEuAcquisitionsTrigger": {
                        "amount": "amount",
                        "currency": "currency",
                        "note": "note"
                      },
                      "note": "note",
                      "source": "source"
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
        let expectedResponse = PostV1DeclarationsEuSmeThresholdsListResponse(
            nationalCapEur: "nationalCapEur",
            unionTurnoverCapEur: "unionTurnoverCapEur",
            thresholds: [
                PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItem(
                    countryCode: "countryCode",
                    currency: "currency",
                    nationalThreshold: Nullable<String>.value("nationalThreshold"),
                    sectors: Optional([
                        PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemSectorsItem(
                            label: "label",
                            amount: "amount"
                        )
                    ]),
                    intraEuAcquisitionsTrigger: Optional(PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemIntraEuAcquisitionsTrigger(
                        amount: "amount",
                        currency: "currency",
                        note: "note"
                    )),
                    note: Optional("note"),
                    source: "source"
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuSmeThresholdsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuSmeThresholdsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "nationalCapEur": "nationalCapEur",
                  "unionTurnoverCapEur": "unionTurnoverCapEur",
                  "thresholds": [
                    {
                      "countryCode": "countryCode",
                      "currency": "currency",
                      "nationalThreshold": "nationalThreshold",
                      "sectors": [
                        {
                          "label": "label",
                          "amount": "amount",
                          "note": "note"
                        },
                        {
                          "label": "label",
                          "amount": "amount",
                          "note": "note"
                        }
                      ],
                      "intraEuAcquisitionsTrigger": {
                        "amount": "amount",
                        "currency": "currency",
                        "note": "note"
                      },
                      "note": "note",
                      "source": "source"
                    },
                    {
                      "countryCode": "countryCode",
                      "currency": "currency",
                      "nationalThreshold": "nationalThreshold",
                      "sectors": [
                        {
                          "label": "label",
                          "amount": "amount",
                          "note": "note"
                        },
                        {
                          "label": "label",
                          "amount": "amount",
                          "note": "note"
                        }
                      ],
                      "intraEuAcquisitionsTrigger": {
                        "amount": "amount",
                        "currency": "currency",
                        "note": "note"
                      },
                      "note": "note",
                      "source": "source"
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
        let expectedResponse = PostV1DeclarationsEuSmeThresholdsListResponse(
            nationalCapEur: "nationalCapEur",
            unionTurnoverCapEur: "unionTurnoverCapEur",
            thresholds: [
                PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItem(
                    countryCode: "countryCode",
                    currency: "currency",
                    nationalThreshold: Nullable<String>.value("nationalThreshold"),
                    sectors: Optional([
                        PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemSectorsItem(
                            label: "label",
                            amount: "amount",
                            note: Optional("note")
                        ),
                        PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemSectorsItem(
                            label: "label",
                            amount: "amount",
                            note: Optional("note")
                        )
                    ]),
                    intraEuAcquisitionsTrigger: Optional(PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemIntraEuAcquisitionsTrigger(
                        amount: "amount",
                        currency: "currency",
                        note: "note"
                    )),
                    note: Optional("note"),
                    source: "source"
                ),
                PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItem(
                    countryCode: "countryCode",
                    currency: "currency",
                    nationalThreshold: Nullable<String>.value("nationalThreshold"),
                    sectors: Optional([
                        PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemSectorsItem(
                            label: "label",
                            amount: "amount",
                            note: Optional("note")
                        ),
                        PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemSectorsItem(
                            label: "label",
                            amount: "amount",
                            note: Optional("note")
                        )
                    ]),
                    intraEuAcquisitionsTrigger: Optional(PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemIntraEuAcquisitionsTrigger(
                        amount: "amount",
                        currency: "currency",
                        note: "note"
                    )),
                    note: Optional("note"),
                    source: "source"
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuSmeThresholdsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuSmeThresholdGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "countryCode": "countryCode",
                  "isVatPayer": true,
                  "baseCurrency": "baseCurrency",
                  "year": 1000000,
                  "threshold": {
                    "currency": "currency",
                    "nationalThreshold": "nationalThreshold",
                    "sectors": [
                      {
                        "label": "label",
                        "amount": "amount"
                      }
                    ],
                    "note": "note",
                    "source": "source"
                  },
                  "turnover": {
                    "amount": "amount",
                    "currency": "currency",
                    "documents": 1000000
                  },
                  "precedingTurnover": {
                    "year": 1000000,
                    "amount": "amount",
                    "documents": 1000000
                  },
                  "status": "not_applicable",
                  "headroomAmount": "headroomAmount",
                  "intraEu": {
                    "trigger": "trigger",
                    "currency": "currency",
                    "acquisitionsFromMemberStates": "acquisitionsFromMemberStates",
                    "servicesToMemberStates": "servicesToMemberStates",
                    "total": "total",
                    "status": "below",
                    "note": "note"
                  },
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
        let expectedResponse = PostV1DeclarationsEuSmeThresholdGetResponse(
            countryCode: "countryCode",
            isVatPayer: true,
            baseCurrency: "baseCurrency",
            year: 1000000,
            threshold: Nullable<PostV1DeclarationsEuSmeThresholdGetResponseThreshold>.value(PostV1DeclarationsEuSmeThresholdGetResponseThreshold(
                currency: "currency",
                nationalThreshold: Nullable<String>.value("nationalThreshold"),
                sectors: Optional([
                    PostV1DeclarationsEuSmeThresholdGetResponseThresholdSectorsItem(
                        label: "label",
                        amount: "amount"
                    )
                ]),
                note: Optional("note"),
                source: "source"
            )),
            turnover: PostV1DeclarationsEuSmeThresholdGetResponseTurnover(
                amount: "amount",
                currency: "currency",
                documents: 1000000
            ),
            precedingTurnover: PostV1DeclarationsEuSmeThresholdGetResponsePrecedingTurnover(
                year: 1000000,
                amount: "amount",
                documents: 1000000
            ),
            status: .notApplicable,
            headroomAmount: Nullable<String>.value("headroomAmount"),
            intraEu: Nullable<PostV1DeclarationsEuSmeThresholdGetResponseIntraEu>.value(PostV1DeclarationsEuSmeThresholdGetResponseIntraEu(
                trigger: "trigger",
                currency: "currency",
                acquisitionsFromMemberStates: "acquisitionsFromMemberStates",
                servicesToMemberStates: "servicesToMemberStates",
                total: "total",
                status: .below,
                note: "note"
            )),
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuSmeThresholdGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuSmeThresholdGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "countryCode": "countryCode",
                  "isVatPayer": true,
                  "baseCurrency": "baseCurrency",
                  "year": 1000000,
                  "threshold": {
                    "currency": "currency",
                    "nationalThreshold": "nationalThreshold",
                    "sectors": [
                      {
                        "label": "label",
                        "amount": "amount",
                        "note": "note"
                      },
                      {
                        "label": "label",
                        "amount": "amount",
                        "note": "note"
                      }
                    ],
                    "note": "note",
                    "source": "source"
                  },
                  "turnover": {
                    "amount": "amount",
                    "currency": "currency",
                    "documents": 1000000
                  },
                  "precedingTurnover": {
                    "year": 1000000,
                    "amount": "amount",
                    "documents": 1000000
                  },
                  "status": "not_applicable",
                  "headroomAmount": "headroomAmount",
                  "intraEu": {
                    "trigger": "trigger",
                    "currency": "currency",
                    "acquisitionsFromMemberStates": "acquisitionsFromMemberStates",
                    "servicesToMemberStates": "servicesToMemberStates",
                    "total": "total",
                    "status": "below",
                    "note": "note"
                  },
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
        let expectedResponse = PostV1DeclarationsEuSmeThresholdGetResponse(
            countryCode: "countryCode",
            isVatPayer: true,
            baseCurrency: "baseCurrency",
            year: 1000000,
            threshold: Nullable<PostV1DeclarationsEuSmeThresholdGetResponseThreshold>.value(PostV1DeclarationsEuSmeThresholdGetResponseThreshold(
                currency: "currency",
                nationalThreshold: Nullable<String>.value("nationalThreshold"),
                sectors: Optional([
                    PostV1DeclarationsEuSmeThresholdGetResponseThresholdSectorsItem(
                        label: "label",
                        amount: "amount",
                        note: Optional("note")
                    ),
                    PostV1DeclarationsEuSmeThresholdGetResponseThresholdSectorsItem(
                        label: "label",
                        amount: "amount",
                        note: Optional("note")
                    )
                ]),
                note: Optional("note"),
                source: "source"
            )),
            turnover: PostV1DeclarationsEuSmeThresholdGetResponseTurnover(
                amount: "amount",
                currency: "currency",
                documents: 1000000
            ),
            precedingTurnover: PostV1DeclarationsEuSmeThresholdGetResponsePrecedingTurnover(
                year: 1000000,
                amount: "amount",
                documents: 1000000
            ),
            status: .notApplicable,
            headroomAmount: Nullable<String>.value("headroomAmount"),
            intraEu: Nullable<PostV1DeclarationsEuSmeThresholdGetResponseIntraEu>.value(PostV1DeclarationsEuSmeThresholdGetResponseIntraEu(
                trigger: "trigger",
                currency: "currency",
                acquisitionsFromMemberStates: "acquisitionsFromMemberStates",
                servicesToMemberStates: "servicesToMemberStates",
                total: "total",
                status: .below,
                note: "note"
            )),
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuSmeThresholdGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuVatReturnPacksList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "packs": [
                    {
                      "countryCode": "countryCode",
                      "formKey": "formKey",
                      "formName": "formName",
                      "frequency": "monthly",
                      "source": "source"
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
        let expectedResponse = PostV1DeclarationsEuVatReturnPacksListResponse(
            packs: [
                PostV1DeclarationsEuVatReturnPacksListResponsePacksItem(
                    countryCode: "countryCode",
                    formKey: "formKey",
                    formName: "formName",
                    frequency: .monthly,
                    source: "source"
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuVatReturnPacksList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuVatReturnPacksList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "packs": [
                    {
                      "countryCode": "countryCode",
                      "formKey": "formKey",
                      "formName": "formName",
                      "frequency": "monthly",
                      "source": "source"
                    },
                    {
                      "countryCode": "countryCode",
                      "formKey": "formKey",
                      "formName": "formName",
                      "frequency": "monthly",
                      "source": "source"
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
        let expectedResponse = PostV1DeclarationsEuVatReturnPacksListResponse(
            packs: [
                PostV1DeclarationsEuVatReturnPacksListResponsePacksItem(
                    countryCode: "countryCode",
                    formKey: "formKey",
                    formName: "formName",
                    frequency: .monthly,
                    source: "source"
                ),
                PostV1DeclarationsEuVatReturnPacksListResponsePacksItem(
                    countryCode: "countryCode",
                    formKey: "formKey",
                    formName: "formName",
                    frequency: .monthly,
                    source: "source"
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuVatReturnPacksList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuVatReturnCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "countryCode": "countryCode",
                  "formKey": "formKey",
                  "formName": "formName",
                  "frequency": "monthly",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "boxes": [
                    {
                      "code": "code",
                      "label": "label",
                      "amount": "amount"
                    }
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsEuVatReturnComputeResponse(
            countryCode: "countryCode",
            formKey: "formKey",
            formName: "formName",
            frequency: .monthly,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            boxes: [
                PostV1DeclarationsEuVatReturnComputeResponseBoxesItem(
                    code: "code",
                    label: "label",
                    amount: "amount"
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsEuVatReturnCompute(
            request: .init(
                countryCode: "countryCode",
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuVatReturnCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "countryCode": "countryCode",
                  "formKey": "formKey",
                  "formName": "formName",
                  "frequency": "monthly",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "boxes": [
                    {
                      "code": "code",
                      "label": "label",
                      "amount": "amount"
                    },
                    {
                      "code": "code",
                      "label": "label",
                      "amount": "amount"
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsEuVatReturnComputeResponse(
            countryCode: "countryCode",
            formKey: "formKey",
            formName: "formName",
            frequency: .monthly,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            boxes: [
                PostV1DeclarationsEuVatReturnComputeResponseBoxesItem(
                    code: "code",
                    label: "label",
                    amount: "amount"
                ),
                PostV1DeclarationsEuVatReturnComputeResponseBoxesItem(
                    code: "code",
                    label: "label",
                    amount: "amount"
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsEuVatReturnCompute(
            request: .init(
                countryCode: "xy",
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsConfigsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "system": "system",
                      "country": "country",
                      "title": "title",
                      "fields": [
                        {
                          "key": "key",
                          "kind": "text"
                        }
                      ],
                      "endpoints": [
                        {
                          "name": "name"
                        }
                      ],
                      "values": {
                        "key": "value"
                      }
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
        let expectedResponse = PostV1DeclarationsConfigsListResponse(
            rows: [
                PostV1DeclarationsConfigsListResponseRowsItem(
                    system: "system",
                    country: "country",
                    title: "title",
                    fields: [
                        PostV1DeclarationsConfigsListResponseRowsItemFieldsItem(
                            key: "key",
                            kind: .text
                        )
                    ],
                    endpoints: Optional([
                        PostV1DeclarationsConfigsListResponseRowsItemEndpointsItem(
                            name: "name"
                        )
                    ]),
                    values: [
                        "key": "value"
                    ]
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsConfigsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsConfigsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "system": "system",
                      "country": "country",
                      "title": "title",
                      "fields": [
                        {
                          "key": "key",
                          "kind": "text",
                          "multiline": true,
                          "options": [
                            "options",
                            "options"
                          ]
                        },
                        {
                          "key": "key",
                          "kind": "text",
                          "multiline": true,
                          "options": [
                            "options",
                            "options"
                          ]
                        }
                      ],
                      "endpoints": [
                        {
                          "name": "name",
                          "test": "test",
                          "production": "production"
                        },
                        {
                          "name": "name",
                          "test": "test",
                          "production": "production"
                        }
                      ],
                      "values": {
                        "values": "values"
                      }
                    },
                    {
                      "system": "system",
                      "country": "country",
                      "title": "title",
                      "fields": [
                        {
                          "key": "key",
                          "kind": "text",
                          "multiline": true,
                          "options": [
                            "options",
                            "options"
                          ]
                        },
                        {
                          "key": "key",
                          "kind": "text",
                          "multiline": true,
                          "options": [
                            "options",
                            "options"
                          ]
                        }
                      ],
                      "endpoints": [
                        {
                          "name": "name",
                          "test": "test",
                          "production": "production"
                        },
                        {
                          "name": "name",
                          "test": "test",
                          "production": "production"
                        }
                      ],
                      "values": {
                        "values": "values"
                      }
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
        let expectedResponse = PostV1DeclarationsConfigsListResponse(
            rows: [
                PostV1DeclarationsConfigsListResponseRowsItem(
                    system: "system",
                    country: "country",
                    title: "title",
                    fields: [
                        PostV1DeclarationsConfigsListResponseRowsItemFieldsItem(
                            key: "key",
                            kind: .text,
                            multiline: Optional(true),
                            options: Optional([
                                "options",
                                "options"
                            ])
                        ),
                        PostV1DeclarationsConfigsListResponseRowsItemFieldsItem(
                            key: "key",
                            kind: .text,
                            multiline: Optional(true),
                            options: Optional([
                                "options",
                                "options"
                            ])
                        )
                    ],
                    endpoints: Optional([
                        PostV1DeclarationsConfigsListResponseRowsItemEndpointsItem(
                            name: "name",
                            test: Optional("test"),
                            production: Optional("production")
                        ),
                        PostV1DeclarationsConfigsListResponseRowsItemEndpointsItem(
                            name: "name",
                            test: Optional("test"),
                            production: Optional("production")
                        )
                    ]),
                    values: [
                        "values": "values"
                    ]
                ),
                PostV1DeclarationsConfigsListResponseRowsItem(
                    system: "system",
                    country: "country",
                    title: "title",
                    fields: [
                        PostV1DeclarationsConfigsListResponseRowsItemFieldsItem(
                            key: "key",
                            kind: .text,
                            multiline: Optional(true),
                            options: Optional([
                                "options",
                                "options"
                            ])
                        ),
                        PostV1DeclarationsConfigsListResponseRowsItemFieldsItem(
                            key: "key",
                            kind: .text,
                            multiline: Optional(true),
                            options: Optional([
                                "options",
                                "options"
                            ])
                        )
                    ],
                    endpoints: Optional([
                        PostV1DeclarationsConfigsListResponseRowsItemEndpointsItem(
                            name: "name",
                            test: Optional("test"),
                            production: Optional("production")
                        ),
                        PostV1DeclarationsConfigsListResponseRowsItemEndpointsItem(
                            name: "name",
                            test: Optional("test"),
                            production: Optional("production")
                        )
                    ]),
                    values: [
                        "values": "values"
                    ]
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsConfigsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsConfigsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "system": "system",
                  "country": "country",
                  "title": "title",
                  "fields": [
                    {
                      "key": "key",
                      "kind": "text",
                      "multiline": true,
                      "options": [
                        "options"
                      ]
                    }
                  ],
                  "endpoints": [
                    {
                      "name": "name",
                      "test": "test",
                      "production": "production"
                    }
                  ],
                  "values": {
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
        let expectedResponse = PostV1DeclarationsConfigsUpdateResponse(
            system: "system",
            country: "country",
            title: "title",
            fields: [
                PostV1DeclarationsConfigsUpdateResponseFieldsItem(
                    key: "key",
                    kind: .text,
                    multiline: Optional(true),
                    options: Optional([
                        "options"
                    ])
                )
            ],
            endpoints: Optional([
                PostV1DeclarationsConfigsUpdateResponseEndpointsItem(
                    name: "name",
                    test: Optional("test"),
                    production: Optional("production")
                )
            ]),
            values: [
                "key": "value"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsConfigsUpdate(
            request: .init(
                system: "system",
                config: [
                    "key": "value"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsConfigsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "system": "system",
                  "country": "country",
                  "title": "title",
                  "fields": [
                    {
                      "key": "key",
                      "kind": "text",
                      "multiline": true,
                      "options": [
                        "options",
                        "options"
                      ]
                    },
                    {
                      "key": "key",
                      "kind": "text",
                      "multiline": true,
                      "options": [
                        "options",
                        "options"
                      ]
                    }
                  ],
                  "endpoints": [
                    {
                      "name": "name",
                      "test": "test",
                      "production": "production"
                    },
                    {
                      "name": "name",
                      "test": "test",
                      "production": "production"
                    }
                  ],
                  "values": {
                    "values": "values"
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
        let expectedResponse = PostV1DeclarationsConfigsUpdateResponse(
            system: "system",
            country: "country",
            title: "title",
            fields: [
                PostV1DeclarationsConfigsUpdateResponseFieldsItem(
                    key: "key",
                    kind: .text,
                    multiline: Optional(true),
                    options: Optional([
                        "options",
                        "options"
                    ])
                ),
                PostV1DeclarationsConfigsUpdateResponseFieldsItem(
                    key: "key",
                    kind: .text,
                    multiline: Optional(true),
                    options: Optional([
                        "options",
                        "options"
                    ])
                )
            ],
            endpoints: Optional([
                PostV1DeclarationsConfigsUpdateResponseEndpointsItem(
                    name: "name",
                    test: Optional("test"),
                    production: Optional("production")
                ),
                PostV1DeclarationsConfigsUpdateResponseEndpointsItem(
                    name: "name",
                    test: Optional("test"),
                    production: Optional("production")
                )
            ]),
            values: [
                "values": "values"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsConfigsUpdate(
            request: .init(
                system: "x",
                config: [
                    "config": "config"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsSubmissionsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "obligation": "obligation",
                  "periodYear": 1000000,
                  "periodMonth": 1000000,
                  "variant": "variant",
                  "status": "generated",
                  "fileName": "fileName",
                  "fileId": "fileId",
                  "externalRef": "externalRef",
                  "message": "message",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1DeclarationsSubmissionsCreateResponse(
            id: "id",
            obligation: "obligation",
            periodYear: 1000000,
            periodMonth: Nullable<Int64>.value(1000000),
            variant: Nullable<String>.value("variant"),
            status: .generated,
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            externalRef: Nullable<String>.value("externalRef"),
            message: Nullable<String>.value("message"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsSubmissionsCreate(
            request: .init(
                obligation: .ltIsaf,
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsSubmissionsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "obligation": "obligation",
                  "periodYear": 1000000,
                  "periodMonth": 1000000,
                  "variant": "variant",
                  "status": "generated",
                  "fileName": "fileName",
                  "fileId": "x",
                  "externalRef": "externalRef",
                  "message": "message",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1DeclarationsSubmissionsCreateResponse(
            id: "x",
            obligation: "obligation",
            periodYear: 1000000,
            periodMonth: Nullable<Int64>.value(1000000),
            variant: Nullable<String>.value("variant"),
            status: .generated,
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            externalRef: Nullable<String>.value("externalRef"),
            message: Nullable<String>.value("message"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsSubmissionsCreate(
            request: .init(
                obligation: .ltIsaf,
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsSubmissionsMark1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "obligation": "obligation",
                  "periodYear": 1000000,
                  "periodMonth": 1000000,
                  "variant": "variant",
                  "status": "generated",
                  "fileName": "fileName",
                  "fileId": "fileId",
                  "externalRef": "externalRef",
                  "message": "message",
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
        let expectedResponse = PostV1DeclarationsSubmissionsMarkResponse(
            id: "id",
            obligation: "obligation",
            periodYear: 1000000,
            periodMonth: Nullable<Int64>.value(1000000),
            variant: Nullable<String>.value("variant"),
            status: .generated,
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            externalRef: Nullable<String>.value("externalRef"),
            message: Nullable<String>.value("message"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.declarations.postV1DeclarationsSubmissionsMark(
            request: .init(
                id: "id",
                status: .submitted
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsSubmissionsMark2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "obligation": "obligation",
                  "periodYear": 1000000,
                  "periodMonth": 1000000,
                  "variant": "variant",
                  "status": "generated",
                  "fileName": "fileName",
                  "fileId": "x",
                  "externalRef": "externalRef",
                  "message": "message",
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
        let expectedResponse = PostV1DeclarationsSubmissionsMarkResponse(
            id: "x",
            obligation: "obligation",
            periodYear: 1000000,
            periodMonth: Nullable<Int64>.value(1000000),
            variant: Nullable<String>.value("variant"),
            status: .generated,
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            externalRef: Nullable<String>.value("externalRef"),
            message: Nullable<String>.value("message"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.declarations.postV1DeclarationsSubmissionsMark(
            request: .init(
                id: "x",
                status: .submitted
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsSubmissionsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "obligation": "obligation",
                      "periodYear": 1000000,
                      "periodMonth": 1000000,
                      "variant": "variant",
                      "status": "generated",
                      "fileName": "fileName",
                      "fileId": "fileId",
                      "externalRef": "externalRef",
                      "message": "message",
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
        let expectedResponse = PostV1DeclarationsSubmissionsListResponse(
            rows: [
                PostV1DeclarationsSubmissionsListResponseRowsItem(
                    id: "id",
                    obligation: "obligation",
                    periodYear: 1000000,
                    periodMonth: Nullable<Int64>.value(1000000),
                    variant: Nullable<String>.value("variant"),
                    status: .generated,
                    fileName: "fileName",
                    fileId: Nullable<String>.value("fileId"),
                    externalRef: Nullable<String>.value("externalRef"),
                    message: Nullable<String>.value("message"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.declarations.postV1DeclarationsSubmissionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsSubmissionsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "obligation": "obligation",
                      "periodYear": 1000000,
                      "periodMonth": 1000000,
                      "variant": "variant",
                      "status": "generated",
                      "fileName": "fileName",
                      "fileId": "x",
                      "externalRef": "externalRef",
                      "message": "message",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "obligation": "obligation",
                      "periodYear": 1000000,
                      "periodMonth": 1000000,
                      "variant": "variant",
                      "status": "generated",
                      "fileName": "fileName",
                      "fileId": "x",
                      "externalRef": "externalRef",
                      "message": "message",
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
        let expectedResponse = PostV1DeclarationsSubmissionsListResponse(
            rows: [
                PostV1DeclarationsSubmissionsListResponseRowsItem(
                    id: "x",
                    obligation: "obligation",
                    periodYear: 1000000,
                    periodMonth: Nullable<Int64>.value(1000000),
                    variant: Nullable<String>.value("variant"),
                    status: .generated,
                    fileName: "fileName",
                    fileId: Nullable<String>.value("x"),
                    externalRef: Nullable<String>.value("externalRef"),
                    message: Nullable<String>.value("message"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1DeclarationsSubmissionsListResponseRowsItem(
                    id: "x",
                    obligation: "obligation",
                    periodYear: 1000000,
                    periodMonth: Nullable<Int64>.value(1000000),
                    variant: Nullable<String>.value("variant"),
                    status: .generated,
                    fileName: "fileName",
                    fileId: Nullable<String>.value("x"),
                    externalRef: Nullable<String>.value("externalRef"),
                    message: Nullable<String>.value("message"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.declarations.postV1DeclarationsSubmissionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}