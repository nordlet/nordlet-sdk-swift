import Foundation
import Testing
import Api

@Suite("DeclarationsClient Wire Tests") struct DeclarationsClientWireTests {
    @Test func ltIntrastatCompute1() async throws -> Void {
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
                      "regionCode": "regionCode",
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
        let expectedResponse = LtIntrastatComputeDeclarationsResponse(
            flow: .arrivals,
            referencePeriod: "referencePeriod",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            rows: [
                LtIntrastatComputeDeclarationsResponseRowsItem(
                    itemNumber: 1000000,
                    cnCode: "cnCode",
                    description: Nullable<String>.value("description"),
                    transactionNature: "transactionNature",
                    deliveryTerms: Nullable<String>.value("deliveryTerms"),
                    transportMode: Nullable<String>.value("transportMode"),
                    regionCode: Nullable<String>.value("regionCode"),
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
            totals: LtIntrastatComputeDeclarationsResponseTotals(
                invoicedValue: "invoicedValue",
                statisticalValue: "statisticalValue",
                netMassKg: "netMassKg",
                lines: 1000000
            ),
            counts: LtIntrastatComputeDeclarationsResponseCounts(
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
        let response = try await client.declarations.ltIntrastatCompute(
            request: .init(
                year: 1000000,
                month: 1000000,
                flow: .arrivals
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltIntrastatCompute2() async throws -> Void {
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
                      "regionCode": "regionCode",
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
                      "regionCode": "regionCode",
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
        let expectedResponse = LtIntrastatComputeDeclarationsResponse(
            flow: .arrivals,
            referencePeriod: "referencePeriod",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            rows: [
                LtIntrastatComputeDeclarationsResponseRowsItem(
                    itemNumber: 1000000,
                    cnCode: "cnCode",
                    description: Nullable<String>.value("description"),
                    transactionNature: "transactionNature",
                    deliveryTerms: Nullable<String>.value("deliveryTerms"),
                    transportMode: Nullable<String>.value("transportMode"),
                    regionCode: Nullable<String>.value("regionCode"),
                    country: "country",
                    originCountry: Nullable<String>.value("originCountry"),
                    partnerVat: Nullable<String>.value("partnerVat"),
                    netMassKg: "netMassKg",
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
                    supplementaryQty: Nullable<String>.value("supplementaryQty"),
                    invoicedValue: "invoicedValue",
                    statisticalValue: "statisticalValue"
                ),
                LtIntrastatComputeDeclarationsResponseRowsItem(
                    itemNumber: 1000000,
                    cnCode: "cnCode",
                    description: Nullable<String>.value("description"),
                    transactionNature: "transactionNature",
                    deliveryTerms: Nullable<String>.value("deliveryTerms"),
                    transportMode: Nullable<String>.value("transportMode"),
                    regionCode: Nullable<String>.value("regionCode"),
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
            totals: LtIntrastatComputeDeclarationsResponseTotals(
                invoicedValue: "invoicedValue",
                statisticalValue: "statisticalValue",
                netMassKg: "netMassKg",
                lines: 1000000
            ),
            counts: LtIntrastatComputeDeclarationsResponseCounts(
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
        let response = try await client.declarations.ltIntrastatCompute(
            request: .init(
                year: 1000000,
                month: 1000000,
                flow: .arrivals
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltIvazGenerate1() async throws -> Void {
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
        let expectedResponse = LtIvazGenerateDeclarationsResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            counts: LtIvazGenerateDeclarationsResponseCounts(
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
        let response = try await client.declarations.ltIvazGenerate(
            request: .init(waybillIds: [
                "waybillIds"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltIvazGenerate2() async throws -> Void {
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
        let expectedResponse = LtIvazGenerateDeclarationsResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            counts: LtIvazGenerateDeclarationsResponseCounts(
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
        let response = try await client.declarations.ltIvazGenerate(
            request: .init(waybillIds: [
                "waybillIds",
                "waybillIds"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltIntrastatObligation1() async throws -> Void {
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
        let expectedResponse = LtIntrastatObligationDeclarationsResponse(
            year: 1000000,
            isVatPayer: true,
            notes: [
                "notes"
            ],
            thresholds: LtIntrastatObligationDeclarationsResponseThresholds(
                arrivalsReporting: "arrivalsReporting",
                dispatchesReporting: "dispatchesReporting",
                arrivalsStatistical: "arrivalsStatistical",
                dispatchesStatistical: "dispatchesStatistical"
            ),
            arrivals: LtIntrastatObligationDeclarationsResponseArrivals(
                previousYearValue: "previousYearValue",
                obligatedFromMonth: Nullable<Int64>.value(1000000),
                statisticalValueRequired: true,
                monthly: [
                    LtIntrastatObligationDeclarationsResponseArrivalsMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    )
                ]
            ),
            dispatches: LtIntrastatObligationDeclarationsResponseDispatches(
                previousYearValue: "previousYearValue",
                obligatedFromMonth: Nullable<Int64>.value(1000000),
                statisticalValueRequired: true,
                monthly: [
                    LtIntrastatObligationDeclarationsResponseDispatchesMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    )
                ]
            )
        )
        let response = try await client.declarations.ltIntrastatObligation(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltIntrastatObligation2() async throws -> Void {
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
        let expectedResponse = LtIntrastatObligationDeclarationsResponse(
            year: 1000000,
            isVatPayer: true,
            notes: [
                "notes",
                "notes"
            ],
            thresholds: LtIntrastatObligationDeclarationsResponseThresholds(
                arrivalsReporting: "arrivalsReporting",
                dispatchesReporting: "dispatchesReporting",
                arrivalsStatistical: "arrivalsStatistical",
                dispatchesStatistical: "dispatchesStatistical"
            ),
            arrivals: LtIntrastatObligationDeclarationsResponseArrivals(
                previousYearValue: "previousYearValue",
                obligatedFromMonth: Nullable<Int64>.value(1000000),
                statisticalValueRequired: true,
                monthly: [
                    LtIntrastatObligationDeclarationsResponseArrivalsMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    ),
                    LtIntrastatObligationDeclarationsResponseArrivalsMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    )
                ]
            ),
            dispatches: LtIntrastatObligationDeclarationsResponseDispatches(
                previousYearValue: "previousYearValue",
                obligatedFromMonth: Nullable<Int64>.value(1000000),
                statisticalValueRequired: true,
                monthly: [
                    LtIntrastatObligationDeclarationsResponseDispatchesMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    ),
                    LtIntrastatObligationDeclarationsResponseDispatchesMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    )
                ]
            )
        )
        let response = try await client.declarations.ltIntrastatObligation(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltIsafGenerate1() async throws -> Void {
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
        let expectedResponse = LtIsafGenerateDeclarationsResponse(
            fileName: "fileName",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            counts: LtIsafGenerateDeclarationsResponseCounts(
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
        let response = try await client.declarations.ltIsafGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltIsafGenerate2() async throws -> Void {
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
        let expectedResponse = LtIsafGenerateDeclarationsResponse(
            fileName: "fileName",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            counts: LtIsafGenerateDeclarationsResponseCounts(
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
        let response = try await client.declarations.ltIsafGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltFr0600Compute1() async throws -> Void {
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
        let expectedResponse = LtFr0600ComputeDeclarationsResponse(
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            deductionPercent: 1000000,
            fields: [
                LtFr0600ComputeDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            breakdown: [
                LtFr0600ComputeDeclarationsResponseBreakdownItem(
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
            counts: LtFr0600ComputeDeclarationsResponseCounts(
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
        let response = try await client.declarations.ltFr0600Compute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltFr0600Compute2() async throws -> Void {
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
        let expectedResponse = LtFr0600ComputeDeclarationsResponse(
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            deductionPercent: 1000000,
            fields: [
                LtFr0600ComputeDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                LtFr0600ComputeDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            breakdown: [
                LtFr0600ComputeDeclarationsResponseBreakdownItem(
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
                LtFr0600ComputeDeclarationsResponseBreakdownItem(
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
            counts: LtFr0600ComputeDeclarationsResponseCounts(
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
        let response = try await client.declarations.ltFr0600Compute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltGpm313Compute1() async throws -> Void {
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
        let expectedResponse = LtGpm313ComputeDeclarationsResponse(
            declarationYear: 1000000,
            declarationMonth: 1000000,
            runPeriod: Nullable<LtGpm313ComputeDeclarationsResponseRunPeriod>.value(LtGpm313ComputeDeclarationsResponseRunPeriod(
                year: 1000000,
                month: 1000000
            )),
            fields: [
                LtGpm313ComputeDeclarationsResponseFieldsItem(
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
        let response = try await client.declarations.ltGpm313Compute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltGpm313Compute2() async throws -> Void {
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
        let expectedResponse = LtGpm313ComputeDeclarationsResponse(
            declarationYear: 1000000,
            declarationMonth: 1000000,
            runPeriod: Nullable<LtGpm313ComputeDeclarationsResponseRunPeriod>.value(LtGpm313ComputeDeclarationsResponseRunPeriod(
                year: 1000000,
                month: 1000000
            )),
            fields: [
                LtGpm313ComputeDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                LtGpm313ComputeDeclarationsResponseFieldsItem(
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
        let response = try await client.declarations.ltGpm313Compute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltSamCompute1() async throws -> Void {
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
        let expectedResponse = LtSamComputeDeclarationsResponse(
            year: 1000000,
            month: 1000000,
            insuredCount: 1000000,
            insuredIncomeTotal: "insuredIncomeTotal",
            contributionsTotal: "contributionsTotal",
            persons: [
                LtSamComputeDeclarationsResponsePersonsItem(
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
        let response = try await client.declarations.ltSamCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltSamCompute2() async throws -> Void {
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
        let expectedResponse = LtSamComputeDeclarationsResponse(
            year: 1000000,
            month: 1000000,
            insuredCount: 1000000,
            insuredIncomeTotal: "insuredIncomeTotal",
            contributionsTotal: "contributionsTotal",
            persons: [
                LtSamComputeDeclarationsResponsePersonsItem(
                    employeeId: "x",
                    personalCode: Nullable<String>.value("personalCode"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    firstName: "firstName",
                    lastName: "lastName",
                    insuredIncome: "insuredIncome",
                    contributions: "contributions",
                    tariffPercent: "tariffPercent"
                ),
                LtSamComputeDeclarationsResponsePersonsItem(
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
        let response = try await client.declarations.ltSamCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltSdGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "type": "1-SD",
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "contractId": "contractId",
                      "contractNo": "contractNo",
                      "personalCode": "personalCode",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "date": "2026-07-01",
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
        let expectedResponse = LtSdGenerateDeclarationsResponse(
            type: .oneSd,
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            rows: [
                LtSdGenerateDeclarationsResponseRowsItem(
                    employeeId: "employeeId",
                    contractId: "contractId",
                    contractNo: "contractNo",
                    personalCode: Nullable<String>.value("personalCode"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    firstName: "firstName",
                    lastName: "lastName",
                    date: CalendarDate("2026-07-01")!,
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
        let response = try await client.declarations.ltSdGenerate(
            request: .init(
                type: .oneSd,
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltSdGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "type": "1-SD",
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
                  "rows": [
                    {
                      "employeeId": "x",
                      "contractId": "x",
                      "contractNo": "contractNo",
                      "personalCode": "personalCode",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "date": "2023-01-15",
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
                      "date": "2023-01-15",
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
        let expectedResponse = LtSdGenerateDeclarationsResponse(
            type: .oneSd,
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            rows: [
                LtSdGenerateDeclarationsResponseRowsItem(
                    employeeId: "x",
                    contractId: "x",
                    contractNo: "contractNo",
                    personalCode: Nullable<String>.value("personalCode"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    firstName: "firstName",
                    lastName: "lastName",
                    date: CalendarDate("2023-01-15")!,
                    professionCode: Nullable<String>.value("professionCode"),
                    endReason: Nullable<String>.value("endReason"),
                    finalInsuredIncome: Nullable<String>.value("finalInsuredIncome"),
                    finalContributions: Nullable<String>.value("finalContributions")
                ),
                LtSdGenerateDeclarationsResponseRowsItem(
                    employeeId: "x",
                    contractId: "x",
                    contractNo: "contractNo",
                    personalCode: Nullable<String>.value("personalCode"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    firstName: "firstName",
                    lastName: "lastName",
                    date: CalendarDate("2023-01-15")!,
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
        let response = try await client.declarations.ltSdGenerate(
            request: .init(
                type: .oneSd,
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltSaftGenerate1() async throws -> Void {
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
        let expectedResponse = LtSaftGenerateDeclarationsResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            counts: LtSaftGenerateDeclarationsResponseCounts(
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
        let response = try await client.declarations.ltSaftGenerate(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltSaftGenerate2() async throws -> Void {
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
        let expectedResponse = LtSaftGenerateDeclarationsResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            counts: LtSaftGenerateDeclarationsResponseCounts(
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
        let response = try await client.declarations.ltSaftGenerate(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltIvazAmend1() async throws -> Void {
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
        let expectedResponse = LtIvazAmendDeclarationsResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            counts: LtIvazAmendDeclarationsResponseCounts(
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
        let response = try await client.declarations.ltIvazAmend(
            request: .init(waybillIds: [
                "waybillIds"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltIvazAmend2() async throws -> Void {
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
        let expectedResponse = LtIvazAmendDeclarationsResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            counts: LtIvazAmendDeclarationsResponseCounts(
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
        let response = try await client.declarations.ltIvazAmend(
            request: .init(waybillIds: [
                "waybillIds",
                "waybillIds"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltIvazCancel1() async throws -> Void {
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
        let expectedResponse = LtIvazCancelDeclarationsResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            counts: LtIvazCancelDeclarationsResponseCounts(
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
        let response = try await client.declarations.ltIvazCancel(
            request: .init(entries: [
                LtIvazCancelDeclarationsRequestEntriesItem(
                    waybillId: "waybillId",
                    reason: .one
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltIvazCancel2() async throws -> Void {
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
        let expectedResponse = LtIvazCancelDeclarationsResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            counts: LtIvazCancelDeclarationsResponseCounts(
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
        let response = try await client.declarations.ltIvazCancel(
            request: .init(entries: [
                LtIvazCancelDeclarationsRequestEntriesItem(
                    waybillId: "x",
                    reason: .one
                ),
                LtIvazCancelDeclarationsRequestEntriesItem(
                    waybillId: "x",
                    reason: .one
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltFr0564Compute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "registrationNumber": "registrationNumber",
                  "vatCode": "vatCode",
                  "companyName": "companyName",
                  "rows": [
                    {
                      "vatCode": "vatCode",
                      "partnerName": "partnerName",
                      "countryCode": "countryCode",
                      "goods": "goods",
                      "triangular": "triangular",
                      "services": "services"
                    }
                  ],
                  "totals": {
                    "goods": "goods",
                    "triangular": "triangular",
                    "services": "services",
                    "rows": 1000000
                  },
                  "counts": {
                    "salesInvoices": 1000000
                  },
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
        let expectedResponse = LtFr0564ComputeDeclarationsResponse(
            year: 1000000,
            month: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            registrationNumber: "registrationNumber",
            vatCode: "vatCode",
            companyName: "companyName",
            rows: [
                LtFr0564ComputeDeclarationsResponseRowsItem(
                    vatCode: "vatCode",
                    partnerName: "partnerName",
                    countryCode: "countryCode",
                    goods: "goods",
                    triangular: "triangular",
                    services: "services"
                )
            ],
            totals: LtFr0564ComputeDeclarationsResponseTotals(
                goods: "goods",
                triangular: "triangular",
                services: "services",
                rows: 1000000
            ),
            counts: LtFr0564ComputeDeclarationsResponseCounts(
                salesInvoices: 1000000
            ),
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.ltFr0564Compute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltFr0564Compute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "registrationNumber": "registrationNumber",
                  "vatCode": "vatCode",
                  "companyName": "companyName",
                  "rows": [
                    {
                      "vatCode": "vatCode",
                      "partnerName": "partnerName",
                      "countryCode": "countryCode",
                      "goods": "goods",
                      "triangular": "triangular",
                      "services": "services"
                    },
                    {
                      "vatCode": "vatCode",
                      "partnerName": "partnerName",
                      "countryCode": "countryCode",
                      "goods": "goods",
                      "triangular": "triangular",
                      "services": "services"
                    }
                  ],
                  "totals": {
                    "goods": "goods",
                    "triangular": "triangular",
                    "services": "services",
                    "rows": 1000000
                  },
                  "counts": {
                    "salesInvoices": 1000000
                  },
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
        let expectedResponse = LtFr0564ComputeDeclarationsResponse(
            year: 1000000,
            month: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            registrationNumber: "registrationNumber",
            vatCode: "vatCode",
            companyName: "companyName",
            rows: [
                LtFr0564ComputeDeclarationsResponseRowsItem(
                    vatCode: "vatCode",
                    partnerName: "partnerName",
                    countryCode: "countryCode",
                    goods: "goods",
                    triangular: "triangular",
                    services: "services"
                ),
                LtFr0564ComputeDeclarationsResponseRowsItem(
                    vatCode: "vatCode",
                    partnerName: "partnerName",
                    countryCode: "countryCode",
                    goods: "goods",
                    triangular: "triangular",
                    services: "services"
                )
            ],
            totals: LtFr0564ComputeDeclarationsResponseTotals(
                goods: "goods",
                triangular: "triangular",
                services: "services",
                rows: 1000000
            ),
            counts: LtFr0564ComputeDeclarationsResponseCounts(
                salesInvoices: 1000000
            ),
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
        let response = try await client.declarations.ltFr0564Compute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltGpm312Compute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "payoutTiming": "same-month",
                  "payoutFrom": {
                    "year": 1000000,
                    "month": 1000000
                  },
                  "payoutTo": {
                    "year": 1000000,
                    "month": 1000000
                  },
                  "registrationNumber": "registrationNumber",
                  "companyName": "companyName",
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "personalCode": "personalCode",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "paymentCode": "paymentCode",
                      "paidAmount": "paidAmount",
                      "gpmWithheld": "gpmWithheld"
                    }
                  ],
                  "totals": {
                    "paidAmount": "paidAmount",
                    "gpmWithheld": "gpmWithheld",
                    "persons": 1000000
                  },
                  "runsFound": 1000000,
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
        let expectedResponse = LtGpm312ComputeDeclarationsResponse(
            year: 1000000,
            payoutTiming: .sameMonth,
            payoutFrom: LtGpm312ComputeDeclarationsResponsePayoutFrom(
                year: 1000000,
                month: 1000000
            ),
            payoutTo: LtGpm312ComputeDeclarationsResponsePayoutTo(
                year: 1000000,
                month: 1000000
            ),
            registrationNumber: "registrationNumber",
            companyName: "companyName",
            rows: [
                LtGpm312ComputeDeclarationsResponseRowsItem(
                    employeeId: "employeeId",
                    personalCode: Nullable<String>.value("personalCode"),
                    firstName: "firstName",
                    lastName: "lastName",
                    paymentCode: "paymentCode",
                    paidAmount: "paidAmount",
                    gpmWithheld: "gpmWithheld"
                )
            ],
            totals: LtGpm312ComputeDeclarationsResponseTotals(
                paidAmount: "paidAmount",
                gpmWithheld: "gpmWithheld",
                persons: 1000000
            ),
            runsFound: 1000000,
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.ltGpm312Compute(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltGpm312Compute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "payoutTiming": "same-month",
                  "payoutFrom": {
                    "year": 1000000,
                    "month": 1000000
                  },
                  "payoutTo": {
                    "year": 1000000,
                    "month": 1000000
                  },
                  "registrationNumber": "registrationNumber",
                  "companyName": "companyName",
                  "rows": [
                    {
                      "employeeId": "x",
                      "personalCode": "personalCode",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "paymentCode": "paymentCode",
                      "paidAmount": "paidAmount",
                      "gpmWithheld": "gpmWithheld"
                    },
                    {
                      "employeeId": "x",
                      "personalCode": "personalCode",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "paymentCode": "paymentCode",
                      "paidAmount": "paidAmount",
                      "gpmWithheld": "gpmWithheld"
                    }
                  ],
                  "totals": {
                    "paidAmount": "paidAmount",
                    "gpmWithheld": "gpmWithheld",
                    "persons": 1000000
                  },
                  "runsFound": 1000000,
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
        let expectedResponse = LtGpm312ComputeDeclarationsResponse(
            year: 1000000,
            payoutTiming: .sameMonth,
            payoutFrom: LtGpm312ComputeDeclarationsResponsePayoutFrom(
                year: 1000000,
                month: 1000000
            ),
            payoutTo: LtGpm312ComputeDeclarationsResponsePayoutTo(
                year: 1000000,
                month: 1000000
            ),
            registrationNumber: "registrationNumber",
            companyName: "companyName",
            rows: [
                LtGpm312ComputeDeclarationsResponseRowsItem(
                    employeeId: "x",
                    personalCode: Nullable<String>.value("personalCode"),
                    firstName: "firstName",
                    lastName: "lastName",
                    paymentCode: "paymentCode",
                    paidAmount: "paidAmount",
                    gpmWithheld: "gpmWithheld"
                ),
                LtGpm312ComputeDeclarationsResponseRowsItem(
                    employeeId: "x",
                    personalCode: Nullable<String>.value("personalCode"),
                    firstName: "firstName",
                    lastName: "lastName",
                    paymentCode: "paymentCode",
                    paidAmount: "paidAmount",
                    gpmWithheld: "gpmWithheld"
                )
            ],
            totals: LtGpm312ComputeDeclarationsResponseTotals(
                paidAmount: "paidAmount",
                gpmWithheld: "gpmWithheld",
                persons: 1000000
            ),
            runsFound: 1000000,
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
        let response = try await client.declarations.ltGpm312Compute(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltPln204Compute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "variant": "PLN204",
                  "registrationNumber": "registrationNumber",
                  "companyName": "companyName",
                  "ratePercent": "ratePercent",
                  "rateCode": "rateCode",
                  "smallEntity": true,
                  "criteria": {
                    "netTurnover": "netTurnover",
                    "avgEmployees": 1.1
                  },
                  "totalIncome": "totalIncome",
                  "boxes": {
                    "key": "value"
                  },
                  "annexS": [
                    {
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
                    }
                  ],
                  "annexZ": [
                    {
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
                    }
                  ],
                  "lines": [
                    {
                      "key": "key",
                      "label": "label",
                      "value": "value"
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
        let expectedResponse = LtPln204ComputeDeclarationsResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            variant: .pln204,
            registrationNumber: "registrationNumber",
            companyName: "companyName",
            ratePercent: "ratePercent",
            rateCode: "rateCode",
            smallEntity: true,
            criteria: LtPln204ComputeDeclarationsResponseCriteria(
                netTurnover: "netTurnover",
                avgEmployees: 1.1
            ),
            totalIncome: "totalIncome",
            boxes: [
                "key": "value"
            ],
            annexS: [
                LtPln204ComputeDeclarationsResponseAnnexSItem(
                    code: "code",
                    amount: "amount",
                    description: "description"
                )
            ],
            annexZ: [
                LtPln204ComputeDeclarationsResponseAnnexZItem(
                    code: "code",
                    amount: "amount",
                    description: "description"
                )
            ],
            lines: [
                LtPln204ComputeDeclarationsResponseLinesItem(
                    key: "key",
                    label: "label",
                    value: "value"
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
        let response = try await client.declarations.ltPln204Compute(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltPln204Compute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "variant": "PLN204",
                  "registrationNumber": "registrationNumber",
                  "companyName": "companyName",
                  "ratePercent": "ratePercent",
                  "rateCode": "rateCode",
                  "smallEntity": true,
                  "criteria": {
                    "netTurnover": "netTurnover",
                    "avgEmployees": 1.1
                  },
                  "totalIncome": "totalIncome",
                  "boxes": {
                    "boxes": "boxes"
                  },
                  "annexS": [
                    {
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
                    },
                    {
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
                    }
                  ],
                  "annexZ": [
                    {
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
                    },
                    {
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
                    }
                  ],
                  "lines": [
                    {
                      "key": "key",
                      "label": "label",
                      "value": "value"
                    },
                    {
                      "key": "key",
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
        let expectedResponse = LtPln204ComputeDeclarationsResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            variant: .pln204,
            registrationNumber: "registrationNumber",
            companyName: "companyName",
            ratePercent: "ratePercent",
            rateCode: "rateCode",
            smallEntity: true,
            criteria: LtPln204ComputeDeclarationsResponseCriteria(
                netTurnover: "netTurnover",
                avgEmployees: 1.1
            ),
            totalIncome: "totalIncome",
            boxes: [
                "boxes": "boxes"
            ],
            annexS: [
                LtPln204ComputeDeclarationsResponseAnnexSItem(
                    code: "code",
                    amount: "amount",
                    description: "description"
                ),
                LtPln204ComputeDeclarationsResponseAnnexSItem(
                    code: "code",
                    amount: "amount",
                    description: "description"
                )
            ],
            annexZ: [
                LtPln204ComputeDeclarationsResponseAnnexZItem(
                    code: "code",
                    amount: "amount",
                    description: "description"
                ),
                LtPln204ComputeDeclarationsResponseAnnexZItem(
                    code: "code",
                    amount: "amount",
                    description: "description"
                )
            ],
            lines: [
                LtPln204ComputeDeclarationsResponseLinesItem(
                    key: "key",
                    label: "label",
                    value: "value"
                ),
                LtPln204ComputeDeclarationsResponseLinesItem(
                    key: "key",
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
            ],
            source: "source"
        )
        let response = try await client.declarations.ltPln204Compute(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euOssCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodYear": 1000000,
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
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
        let expectedResponse = EuOssComputeDeclarationsResponse(
            periodYear: 1000000,
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            memberStateOfIdentification: "memberStateOfIdentification",
            rows: [
                EuOssComputeDeclarationsResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            totals: EuOssComputeDeclarationsResponseTotals(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            corrections: [
                EuOssComputeDeclarationsResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            correctionsTotal: EuOssComputeDeclarationsResponseCorrectionsTotal(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            warnings: [
                "warnings"
            ],
            periodQuarter: 1000000
        )
        let response = try await client.declarations.euOssCompute(
            request: .init(
                year: 1000000,
                quarter: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euOssCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodYear": 1000000,
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
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
        let expectedResponse = EuOssComputeDeclarationsResponse(
            periodYear: 1000000,
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            memberStateOfIdentification: "memberStateOfIdentification",
            rows: [
                EuOssComputeDeclarationsResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                ),
                EuOssComputeDeclarationsResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            totals: EuOssComputeDeclarationsResponseTotals(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            corrections: [
                EuOssComputeDeclarationsResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                ),
                EuOssComputeDeclarationsResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            correctionsTotal: EuOssComputeDeclarationsResponseCorrectionsTotal(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            periodQuarter: 1000000
        )
        let response = try await client.declarations.euOssCompute(
            request: .init(
                year: 1000000,
                quarter: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euIossCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodYear": 1000000,
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
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
        let expectedResponse = EuIossComputeDeclarationsResponse(
            periodYear: 1000000,
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            memberStateOfIdentification: "memberStateOfIdentification",
            rows: [
                EuIossComputeDeclarationsResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            totals: EuIossComputeDeclarationsResponseTotals(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            corrections: [
                EuIossComputeDeclarationsResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            correctionsTotal: EuIossComputeDeclarationsResponseCorrectionsTotal(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            warnings: [
                "warnings"
            ],
            periodMonth: 1000000
        )
        let response = try await client.declarations.euIossCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euIossCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodYear": 1000000,
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
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
        let expectedResponse = EuIossComputeDeclarationsResponse(
            periodYear: 1000000,
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            memberStateOfIdentification: "memberStateOfIdentification",
            rows: [
                EuIossComputeDeclarationsResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                ),
                EuIossComputeDeclarationsResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            totals: EuIossComputeDeclarationsResponseTotals(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            corrections: [
                EuIossComputeDeclarationsResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                ),
                EuIossComputeDeclarationsResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            correctionsTotal: EuIossComputeDeclarationsResponseCorrectionsTotal(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            periodMonth: 1000000
        )
        let response = try await client.declarations.euIossCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euOwnGoodsTransfersCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodYear": 1000000,
                  "periodMonth": 1000000,
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
                  "dueDate": "2026-07-01",
                  "memberStateOfIdentification": "memberStateOfIdentification",
                  "currency": "currency",
                  "rows": [
                    {
                      "destinationCountryCode": "destinationCountryCode",
                      "dispatchCountryCode": "dispatchCountryCode",
                      "taxableAmount": "taxableAmount",
                      "transfers": 1000000
                    }
                  ],
                  "total": "total",
                  "transfers": [
                    {
                      "movementId": "movementId",
                      "date": "2026-07-01",
                      "itemId": "itemId",
                      "itemName": "itemName",
                      "quantity": "quantity",
                      "cost": "cost",
                      "fromCountryCode": "fromCountryCode",
                      "toCountryCode": "toCountryCode"
                    }
                  ],
                  "warnings": [
                    "warnings"
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
        let expectedResponse = EuOwnGoodsTransfersComputeDeclarationsResponse(
            periodYear: 1000000,
            periodMonth: 1000000,
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            dueDate: CalendarDate("2026-07-01")!,
            memberStateOfIdentification: "memberStateOfIdentification",
            currency: "currency",
            rows: [
                EuOwnGoodsTransfersComputeDeclarationsResponseRowsItem(
                    destinationCountryCode: "destinationCountryCode",
                    dispatchCountryCode: "dispatchCountryCode",
                    taxableAmount: "taxableAmount",
                    transfers: 1000000
                )
            ],
            total: "total",
            transfers: [
                EuOwnGoodsTransfersComputeDeclarationsResponseTransfersItem(
                    movementId: "movementId",
                    date: CalendarDate("2026-07-01")!,
                    itemId: "itemId",
                    itemName: "itemName",
                    quantity: "quantity",
                    cost: "cost",
                    fromCountryCode: "fromCountryCode",
                    toCountryCode: "toCountryCode"
                )
            ],
            warnings: [
                "warnings"
            ],
            source: "source"
        )
        let response = try await client.declarations.euOwnGoodsTransfersCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euOwnGoodsTransfersCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodYear": 1000000,
                  "periodMonth": 1000000,
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
                  "dueDate": "2023-01-15",
                  "memberStateOfIdentification": "memberStateOfIdentification",
                  "currency": "currency",
                  "rows": [
                    {
                      "destinationCountryCode": "destinationCountryCode",
                      "dispatchCountryCode": "dispatchCountryCode",
                      "taxableAmount": "taxableAmount",
                      "transfers": 1000000
                    },
                    {
                      "destinationCountryCode": "destinationCountryCode",
                      "dispatchCountryCode": "dispatchCountryCode",
                      "taxableAmount": "taxableAmount",
                      "transfers": 1000000
                    }
                  ],
                  "total": "total",
                  "transfers": [
                    {
                      "movementId": "movementId",
                      "date": "2023-01-15",
                      "itemId": "itemId",
                      "itemName": "itemName",
                      "quantity": "quantity",
                      "cost": "cost",
                      "fromCountryCode": "fromCountryCode",
                      "toCountryCode": "toCountryCode"
                    },
                    {
                      "movementId": "movementId",
                      "date": "2023-01-15",
                      "itemId": "itemId",
                      "itemName": "itemName",
                      "quantity": "quantity",
                      "cost": "cost",
                      "fromCountryCode": "fromCountryCode",
                      "toCountryCode": "toCountryCode"
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
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
        let expectedResponse = EuOwnGoodsTransfersComputeDeclarationsResponse(
            periodYear: 1000000,
            periodMonth: 1000000,
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            dueDate: CalendarDate("2023-01-15")!,
            memberStateOfIdentification: "memberStateOfIdentification",
            currency: "currency",
            rows: [
                EuOwnGoodsTransfersComputeDeclarationsResponseRowsItem(
                    destinationCountryCode: "destinationCountryCode",
                    dispatchCountryCode: "dispatchCountryCode",
                    taxableAmount: "taxableAmount",
                    transfers: 1000000
                ),
                EuOwnGoodsTransfersComputeDeclarationsResponseRowsItem(
                    destinationCountryCode: "destinationCountryCode",
                    dispatchCountryCode: "dispatchCountryCode",
                    taxableAmount: "taxableAmount",
                    transfers: 1000000
                )
            ],
            total: "total",
            transfers: [
                EuOwnGoodsTransfersComputeDeclarationsResponseTransfersItem(
                    movementId: "movementId",
                    date: CalendarDate("2023-01-15")!,
                    itemId: "itemId",
                    itemName: "itemName",
                    quantity: "quantity",
                    cost: "cost",
                    fromCountryCode: "fromCountryCode",
                    toCountryCode: "toCountryCode"
                ),
                EuOwnGoodsTransfersComputeDeclarationsResponseTransfersItem(
                    movementId: "movementId",
                    date: CalendarDate("2023-01-15")!,
                    itemId: "itemId",
                    itemName: "itemName",
                    quantity: "quantity",
                    cost: "cost",
                    fromCountryCode: "fromCountryCode",
                    toCountryCode: "toCountryCode"
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            source: "source"
        )
        let response = try await client.declarations.euOwnGoodsTransfersCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euDigitalReportingList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
                  "appliesFrom": "appliesFrom",
                  "reportTo": "reportTo",
                  "transactions": [
                    {
                      "direction": "supply",
                      "article": "262(1)(a)",
                      "documentId": "documentId",
                      "documentType": "invoice",
                      "number": "number",
                      "issueDate": "2026-07-01",
                      "partnerName": "partnerName",
                      "supplierVatNumber": "supplierVatNumber",
                      "customerVatNumber": "customerVatNumber",
                      "currency": "currency",
                      "lines": [
                        {
                          "description": "description",
                          "quantity": "quantity",
                          "unit": "unit",
                          "unitPrice": null,
                          "taxableAmount": "taxableAmount",
                          "vatRatePercent": "vatRatePercent",
                          "vatAmount": "vatAmount"
                        }
                      ],
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "exemptionReference": "exemptionReference",
                      "reverseCharge": true,
                      "correctedInvoiceNumber": "correctedInvoiceNumber",
                      "supplierAccounts": [
                        "supplierAccounts"
                      ],
                      "reportTo": "reportTo",
                      "deadline": "deadline",
                      "missing": [
                        "missing"
                      ]
                    }
                  ],
                  "warnings": [
                    "warnings"
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
        let expectedResponse = EuDigitalReportingListDeclarationsResponse(
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            appliesFrom: "appliesFrom",
            reportTo: "reportTo",
            transactions: [
                EuDigitalReportingListDeclarationsResponseTransactionsItem(
                    direction: .supply,
                    article: .twoHundredSixtyTwo1A,
                    documentId: "documentId",
                    documentType: .invoice,
                    number: Nullable<String>.value("number"),
                    issueDate: CalendarDate("2026-07-01")!,
                    partnerName: "partnerName",
                    supplierVatNumber: Nullable<String>.value("supplierVatNumber"),
                    customerVatNumber: Nullable<String>.value("customerVatNumber"),
                    currency: "currency",
                    lines: [
                        EuDigitalReportingListDeclarationsResponseTransactionsItemLinesItem(
                            description: "description",
                            quantity: "quantity",
                            unit: "unit",
                            unitPrice: .null,
                            taxableAmount: "taxableAmount",
                            vatRatePercent: "vatRatePercent",
                            vatAmount: "vatAmount"
                        )
                    ],
                    taxableAmount: "taxableAmount",
                    vatAmount: Nullable<String>.value("vatAmount"),
                    exemptionReference: Nullable<String>.value("exemptionReference"),
                    reverseCharge: true,
                    correctedInvoiceNumber: Nullable<String>.value("correctedInvoiceNumber"),
                    supplierAccounts: [
                        "supplierAccounts"
                    ],
                    reportTo: "reportTo",
                    deadline: "deadline",
                    missing: [
                        "missing"
                    ]
                )
            ],
            warnings: [
                "warnings"
            ],
            source: "source"
        )
        let response = try await client.declarations.euDigitalReportingList(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euDigitalReportingList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
                  "appliesFrom": "appliesFrom",
                  "reportTo": "reportTo",
                  "transactions": [
                    {
                      "direction": "supply",
                      "article": "262(1)(a)",
                      "documentId": "documentId",
                      "documentType": "invoice",
                      "number": "number",
                      "issueDate": "2023-01-15",
                      "partnerName": "partnerName",
                      "supplierVatNumber": "supplierVatNumber",
                      "customerVatNumber": "customerVatNumber",
                      "currency": "currency",
                      "lines": [
                        {
                          "description": "description",
                          "quantity": "quantity",
                          "unit": "unit",
                          "unitPrice": "unitPrice",
                          "taxableAmount": "taxableAmount",
                          "vatRatePercent": "vatRatePercent",
                          "vatAmount": "vatAmount"
                        },
                        {
                          "description": "description",
                          "quantity": "quantity",
                          "unit": "unit",
                          "unitPrice": "unitPrice",
                          "taxableAmount": "taxableAmount",
                          "vatRatePercent": "vatRatePercent",
                          "vatAmount": "vatAmount"
                        }
                      ],
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "exemptionReference": "exemptionReference",
                      "reverseCharge": true,
                      "correctedInvoiceNumber": "correctedInvoiceNumber",
                      "supplierAccounts": [
                        "supplierAccounts",
                        "supplierAccounts"
                      ],
                      "reportTo": "reportTo",
                      "deadline": "deadline",
                      "missing": [
                        "missing",
                        "missing"
                      ]
                    },
                    {
                      "direction": "supply",
                      "article": "262(1)(a)",
                      "documentId": "documentId",
                      "documentType": "invoice",
                      "number": "number",
                      "issueDate": "2023-01-15",
                      "partnerName": "partnerName",
                      "supplierVatNumber": "supplierVatNumber",
                      "customerVatNumber": "customerVatNumber",
                      "currency": "currency",
                      "lines": [
                        {
                          "description": "description",
                          "quantity": "quantity",
                          "unit": "unit",
                          "unitPrice": "unitPrice",
                          "taxableAmount": "taxableAmount",
                          "vatRatePercent": "vatRatePercent",
                          "vatAmount": "vatAmount"
                        },
                        {
                          "description": "description",
                          "quantity": "quantity",
                          "unit": "unit",
                          "unitPrice": "unitPrice",
                          "taxableAmount": "taxableAmount",
                          "vatRatePercent": "vatRatePercent",
                          "vatAmount": "vatAmount"
                        }
                      ],
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "exemptionReference": "exemptionReference",
                      "reverseCharge": true,
                      "correctedInvoiceNumber": "correctedInvoiceNumber",
                      "supplierAccounts": [
                        "supplierAccounts",
                        "supplierAccounts"
                      ],
                      "reportTo": "reportTo",
                      "deadline": "deadline",
                      "missing": [
                        "missing",
                        "missing"
                      ]
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
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
        let expectedResponse = EuDigitalReportingListDeclarationsResponse(
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            appliesFrom: "appliesFrom",
            reportTo: "reportTo",
            transactions: [
                EuDigitalReportingListDeclarationsResponseTransactionsItem(
                    direction: .supply,
                    article: .twoHundredSixtyTwo1A,
                    documentId: "documentId",
                    documentType: .invoice,
                    number: Nullable<String>.value("number"),
                    issueDate: CalendarDate("2023-01-15")!,
                    partnerName: "partnerName",
                    supplierVatNumber: Nullable<String>.value("supplierVatNumber"),
                    customerVatNumber: Nullable<String>.value("customerVatNumber"),
                    currency: "currency",
                    lines: [
                        EuDigitalReportingListDeclarationsResponseTransactionsItemLinesItem(
                            description: "description",
                            quantity: "quantity",
                            unit: "unit",
                            unitPrice: Nullable<String>.value("unitPrice"),
                            taxableAmount: "taxableAmount",
                            vatRatePercent: "vatRatePercent",
                            vatAmount: "vatAmount"
                        ),
                        EuDigitalReportingListDeclarationsResponseTransactionsItemLinesItem(
                            description: "description",
                            quantity: "quantity",
                            unit: "unit",
                            unitPrice: Nullable<String>.value("unitPrice"),
                            taxableAmount: "taxableAmount",
                            vatRatePercent: "vatRatePercent",
                            vatAmount: "vatAmount"
                        )
                    ],
                    taxableAmount: "taxableAmount",
                    vatAmount: Nullable<String>.value("vatAmount"),
                    exemptionReference: Nullable<String>.value("exemptionReference"),
                    reverseCharge: true,
                    correctedInvoiceNumber: Nullable<String>.value("correctedInvoiceNumber"),
                    supplierAccounts: [
                        "supplierAccounts",
                        "supplierAccounts"
                    ],
                    reportTo: "reportTo",
                    deadline: "deadline",
                    missing: [
                        "missing",
                        "missing"
                    ]
                ),
                EuDigitalReportingListDeclarationsResponseTransactionsItem(
                    direction: .supply,
                    article: .twoHundredSixtyTwo1A,
                    documentId: "documentId",
                    documentType: .invoice,
                    number: Nullable<String>.value("number"),
                    issueDate: CalendarDate("2023-01-15")!,
                    partnerName: "partnerName",
                    supplierVatNumber: Nullable<String>.value("supplierVatNumber"),
                    customerVatNumber: Nullable<String>.value("customerVatNumber"),
                    currency: "currency",
                    lines: [
                        EuDigitalReportingListDeclarationsResponseTransactionsItemLinesItem(
                            description: "description",
                            quantity: "quantity",
                            unit: "unit",
                            unitPrice: Nullable<String>.value("unitPrice"),
                            taxableAmount: "taxableAmount",
                            vatRatePercent: "vatRatePercent",
                            vatAmount: "vatAmount"
                        ),
                        EuDigitalReportingListDeclarationsResponseTransactionsItemLinesItem(
                            description: "description",
                            quantity: "quantity",
                            unit: "unit",
                            unitPrice: Nullable<String>.value("unitPrice"),
                            taxableAmount: "taxableAmount",
                            vatRatePercent: "vatRatePercent",
                            vatAmount: "vatAmount"
                        )
                    ],
                    taxableAmount: "taxableAmount",
                    vatAmount: Nullable<String>.value("vatAmount"),
                    exemptionReference: Nullable<String>.value("exemptionReference"),
                    reverseCharge: true,
                    correctedInvoiceNumber: Nullable<String>.value("correctedInvoiceNumber"),
                    supplierAccounts: [
                        "supplierAccounts",
                        "supplierAccounts"
                    ],
                    reportTo: "reportTo",
                    deadline: "deadline",
                    missing: [
                        "missing",
                        "missing"
                    ]
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            source: "source"
        )
        let response = try await client.declarations.euDigitalReportingList(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euDac7Preview1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "country": "country",
                  "system": "system",
                  "sendsDirectly": true,
                  "messageTypeIndic": "messageTypeIndic",
                  "currency": "currency",
                  "sellers": [
                    {
                      "sellerId": "sellerId",
                      "name": "name",
                      "reportable": true,
                      "reason": "reason",
                      "consideration": "consideration",
                      "activities": 1000000,
                      "warnings": [
                        "warnings"
                      ]
                    }
                  ],
                  "warnings": [
                    "warnings"
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
        let expectedResponse = EuDac7PreviewDeclarationsResponse(
            year: 1000000,
            country: "country",
            system: "system",
            sendsDirectly: true,
            messageTypeIndic: "messageTypeIndic",
            currency: "currency",
            sellers: [
                EuDac7PreviewDeclarationsResponseSellersItem(
                    sellerId: "sellerId",
                    name: "name",
                    reportable: true,
                    reason: Nullable<String>.value("reason"),
                    consideration: "consideration",
                    activities: 1000000,
                    warnings: [
                        "warnings"
                    ]
                )
            ],
            warnings: [
                "warnings"
            ],
            source: "source"
        )
        let response = try await client.declarations.euDac7Preview(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euDac7Preview2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "country": "country",
                  "system": "system",
                  "sendsDirectly": true,
                  "messageTypeIndic": "messageTypeIndic",
                  "currency": "currency",
                  "sellers": [
                    {
                      "sellerId": "sellerId",
                      "name": "name",
                      "reportable": true,
                      "reason": "reason",
                      "consideration": "consideration",
                      "activities": 1000000,
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
                    },
                    {
                      "sellerId": "sellerId",
                      "name": "name",
                      "reportable": true,
                      "reason": "reason",
                      "consideration": "consideration",
                      "activities": 1000000,
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
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
        let expectedResponse = EuDac7PreviewDeclarationsResponse(
            year: 1000000,
            country: "country",
            system: "system",
            sendsDirectly: true,
            messageTypeIndic: "messageTypeIndic",
            currency: "currency",
            sellers: [
                EuDac7PreviewDeclarationsResponseSellersItem(
                    sellerId: "sellerId",
                    name: "name",
                    reportable: true,
                    reason: Nullable<String>.value("reason"),
                    consideration: "consideration",
                    activities: 1000000,
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
                ),
                EuDac7PreviewDeclarationsResponseSellersItem(
                    sellerId: "sellerId",
                    name: "name",
                    reportable: true,
                    reason: Nullable<String>.value("reason"),
                    consideration: "consideration",
                    activities: 1000000,
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            source: "source"
        )
        let response = try await client.declarations.euDac7Preview(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euDac7Xml1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
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
        let expectedResponse = EuDac7XmlDeclarationsResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.euDac7Xml(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euDac7Xml2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
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
        let expectedResponse = EuDac7XmlDeclarationsResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.euDac7Xml(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euDistanceSalesThresholdGet1() async throws -> Void {
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
        let expectedResponse = EuDistanceSalesThresholdGetDeclarationsResponse(
            thresholdEur: "thresholdEur",
            homeCountryCode: "homeCountryCode",
            currentYear: EuDistanceSalesThresholdGetDeclarationsResponseCurrentYear(
                year: 1000000,
                totalAmount: "totalAmount",
                documents: 1000000
            ),
            precedingYear: EuDistanceSalesThresholdGetDeclarationsResponsePrecedingYear(
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
        let response = try await client.declarations.euDistanceSalesThresholdGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euDistanceSalesThresholdGet2() async throws -> Void {
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
        let expectedResponse = EuDistanceSalesThresholdGetDeclarationsResponse(
            thresholdEur: "thresholdEur",
            homeCountryCode: "homeCountryCode",
            currentYear: EuDistanceSalesThresholdGetDeclarationsResponseCurrentYear(
                year: 1000000,
                totalAmount: "totalAmount",
                documents: 1000000
            ),
            precedingYear: EuDistanceSalesThresholdGetDeclarationsResponsePrecedingYear(
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
        let response = try await client.declarations.euDistanceSalesThresholdGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euUnionTurnoverGet1() async throws -> Void {
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
        let expectedResponse = EuUnionTurnoverGetDeclarationsResponse(
            capEur: "capEur",
            currency: "currency",
            isVatPayer: true,
            currentYear: EuUnionTurnoverGetDeclarationsResponseCurrentYear(
                year: 1000000,
                amount: "amount",
                documents: 1000000
            ),
            previousYear: EuUnionTurnoverGetDeclarationsResponsePreviousYear(
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
        let response = try await client.declarations.euUnionTurnoverGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euUnionTurnoverGet2() async throws -> Void {
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
        let expectedResponse = EuUnionTurnoverGetDeclarationsResponse(
            capEur: "capEur",
            currency: "currency",
            isVatPayer: true,
            currentYear: EuUnionTurnoverGetDeclarationsResponseCurrentYear(
                year: 1000000,
                amount: "amount",
                documents: 1000000
            ),
            previousYear: EuUnionTurnoverGetDeclarationsResponsePreviousYear(
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
        let response = try await client.declarations.euUnionTurnoverGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euSmeCrossBorderReportCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "quarter": 1000000,
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
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
        let expectedResponse = EuSmeCrossBorderReportComputeDeclarationsResponse(
            year: 1000000,
            quarter: 1000000,
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            currency: "currency",
            rows: [
                EuSmeCrossBorderReportComputeDeclarationsResponseRowsItem(
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
        let response = try await client.declarations.euSmeCrossBorderReportCompute(
            request: .init(
                year: 1000000,
                quarter: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euSmeCrossBorderReportCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "quarter": 1000000,
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
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
        let expectedResponse = EuSmeCrossBorderReportComputeDeclarationsResponse(
            year: 1000000,
            quarter: 1000000,
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            currency: "currency",
            rows: [
                EuSmeCrossBorderReportComputeDeclarationsResponseRowsItem(
                    countryCode: "countryCode",
                    amount: "amount",
                    documents: 1000000
                ),
                EuSmeCrossBorderReportComputeDeclarationsResponseRowsItem(
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
        let response = try await client.declarations.euSmeCrossBorderReportCompute(
            request: .init(
                year: 1000000,
                quarter: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euSmeThresholdsList1() async throws -> Void {
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
        let expectedResponse = EuSmeThresholdsListDeclarationsResponse(
            nationalCapEur: "nationalCapEur",
            unionTurnoverCapEur: "unionTurnoverCapEur",
            thresholds: [
                EuSmeThresholdsListDeclarationsResponseThresholdsItem(
                    countryCode: "countryCode",
                    currency: "currency",
                    nationalThreshold: Nullable<String>.value("nationalThreshold"),
                    sectors: Optional([
                        EuSmeThresholdsListDeclarationsResponseThresholdsItemSectorsItem(
                            label: "label",
                            amount: "amount"
                        )
                    ]),
                    intraEuAcquisitionsTrigger: Optional(EuSmeThresholdsListDeclarationsResponseThresholdsItemIntraEuAcquisitionsTrigger(
                        amount: "amount",
                        currency: "currency",
                        note: "note"
                    )),
                    note: Optional("note"),
                    source: "source"
                )
            ]
        )
        let response = try await client.declarations.euSmeThresholdsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euSmeThresholdsList2() async throws -> Void {
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
        let expectedResponse = EuSmeThresholdsListDeclarationsResponse(
            nationalCapEur: "nationalCapEur",
            unionTurnoverCapEur: "unionTurnoverCapEur",
            thresholds: [
                EuSmeThresholdsListDeclarationsResponseThresholdsItem(
                    countryCode: "countryCode",
                    currency: "currency",
                    nationalThreshold: Nullable<String>.value("nationalThreshold"),
                    sectors: Optional([
                        EuSmeThresholdsListDeclarationsResponseThresholdsItemSectorsItem(
                            label: "label",
                            amount: "amount",
                            note: Optional("note")
                        ),
                        EuSmeThresholdsListDeclarationsResponseThresholdsItemSectorsItem(
                            label: "label",
                            amount: "amount",
                            note: Optional("note")
                        )
                    ]),
                    intraEuAcquisitionsTrigger: Optional(EuSmeThresholdsListDeclarationsResponseThresholdsItemIntraEuAcquisitionsTrigger(
                        amount: "amount",
                        currency: "currency",
                        note: "note"
                    )),
                    note: Optional("note"),
                    source: "source"
                ),
                EuSmeThresholdsListDeclarationsResponseThresholdsItem(
                    countryCode: "countryCode",
                    currency: "currency",
                    nationalThreshold: Nullable<String>.value("nationalThreshold"),
                    sectors: Optional([
                        EuSmeThresholdsListDeclarationsResponseThresholdsItemSectorsItem(
                            label: "label",
                            amount: "amount",
                            note: Optional("note")
                        ),
                        EuSmeThresholdsListDeclarationsResponseThresholdsItemSectorsItem(
                            label: "label",
                            amount: "amount",
                            note: Optional("note")
                        )
                    ]),
                    intraEuAcquisitionsTrigger: Optional(EuSmeThresholdsListDeclarationsResponseThresholdsItemIntraEuAcquisitionsTrigger(
                        amount: "amount",
                        currency: "currency",
                        note: "note"
                    )),
                    note: Optional("note"),
                    source: "source"
                )
            ]
        )
        let response = try await client.declarations.euSmeThresholdsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euSmeThresholdGet1() async throws -> Void {
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
        let expectedResponse = EuSmeThresholdGetDeclarationsResponse(
            countryCode: "countryCode",
            isVatPayer: true,
            baseCurrency: "baseCurrency",
            year: 1000000,
            threshold: Nullable<EuSmeThresholdGetDeclarationsResponseThreshold>.value(EuSmeThresholdGetDeclarationsResponseThreshold(
                currency: "currency",
                nationalThreshold: Nullable<String>.value("nationalThreshold"),
                sectors: Optional([
                    EuSmeThresholdGetDeclarationsResponseThresholdSectorsItem(
                        label: "label",
                        amount: "amount"
                    )
                ]),
                note: Optional("note"),
                source: "source"
            )),
            turnover: EuSmeThresholdGetDeclarationsResponseTurnover(
                amount: "amount",
                currency: "currency",
                documents: 1000000
            ),
            precedingTurnover: EuSmeThresholdGetDeclarationsResponsePrecedingTurnover(
                year: 1000000,
                amount: "amount",
                documents: 1000000
            ),
            status: .notApplicable,
            headroomAmount: Nullable<String>.value("headroomAmount"),
            intraEu: Nullable<EuSmeThresholdGetDeclarationsResponseIntraEu>.value(EuSmeThresholdGetDeclarationsResponseIntraEu(
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
        let response = try await client.declarations.euSmeThresholdGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euSmeThresholdGet2() async throws -> Void {
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
        let expectedResponse = EuSmeThresholdGetDeclarationsResponse(
            countryCode: "countryCode",
            isVatPayer: true,
            baseCurrency: "baseCurrency",
            year: 1000000,
            threshold: Nullable<EuSmeThresholdGetDeclarationsResponseThreshold>.value(EuSmeThresholdGetDeclarationsResponseThreshold(
                currency: "currency",
                nationalThreshold: Nullable<String>.value("nationalThreshold"),
                sectors: Optional([
                    EuSmeThresholdGetDeclarationsResponseThresholdSectorsItem(
                        label: "label",
                        amount: "amount",
                        note: Optional("note")
                    ),
                    EuSmeThresholdGetDeclarationsResponseThresholdSectorsItem(
                        label: "label",
                        amount: "amount",
                        note: Optional("note")
                    )
                ]),
                note: Optional("note"),
                source: "source"
            )),
            turnover: EuSmeThresholdGetDeclarationsResponseTurnover(
                amount: "amount",
                currency: "currency",
                documents: 1000000
            ),
            precedingTurnover: EuSmeThresholdGetDeclarationsResponsePrecedingTurnover(
                year: 1000000,
                amount: "amount",
                documents: 1000000
            ),
            status: .notApplicable,
            headroomAmount: Nullable<String>.value("headroomAmount"),
            intraEu: Nullable<EuSmeThresholdGetDeclarationsResponseIntraEu>.value(EuSmeThresholdGetDeclarationsResponseIntraEu(
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
        let response = try await client.declarations.euSmeThresholdGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euVatReturnPacksList1() async throws -> Void {
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
        let expectedResponse = EuVatReturnPacksListDeclarationsResponse(
            packs: [
                EuVatReturnPacksListDeclarationsResponsePacksItem(
                    countryCode: "countryCode",
                    formKey: "formKey",
                    formName: "formName",
                    frequency: .monthly,
                    source: "source"
                )
            ]
        )
        let response = try await client.declarations.euVatReturnPacksList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euVatReturnPacksList2() async throws -> Void {
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
        let expectedResponse = EuVatReturnPacksListDeclarationsResponse(
            packs: [
                EuVatReturnPacksListDeclarationsResponsePacksItem(
                    countryCode: "countryCode",
                    formKey: "formKey",
                    formName: "formName",
                    frequency: .monthly,
                    source: "source"
                ),
                EuVatReturnPacksListDeclarationsResponsePacksItem(
                    countryCode: "countryCode",
                    formKey: "formKey",
                    formName: "formName",
                    frequency: .monthly,
                    source: "source"
                )
            ]
        )
        let response = try await client.declarations.euVatReturnPacksList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euVatReturnCompute1() async throws -> Void {
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
        let expectedResponse = EuVatReturnComputeDeclarationsResponse(
            countryCode: "countryCode",
            formKey: "formKey",
            formName: "formName",
            frequency: .monthly,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            boxes: [
                EuVatReturnComputeDeclarationsResponseBoxesItem(
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
        let response = try await client.declarations.euVatReturnCompute(
            request: .init(
                countryCode: "countryCode",
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euVatReturnCompute2() async throws -> Void {
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
        let expectedResponse = EuVatReturnComputeDeclarationsResponse(
            countryCode: "countryCode",
            formKey: "formKey",
            formName: "formName",
            frequency: .monthly,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            boxes: [
                EuVatReturnComputeDeclarationsResponseBoxesItem(
                    code: "code",
                    label: "label",
                    amount: "amount"
                ),
                EuVatReturnComputeDeclarationsResponseBoxesItem(
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
        let response = try await client.declarations.euVatReturnCompute(
            request: .init(
                countryCode: "xy",
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plJpkV7MGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "xml": "xml",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "declaration": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "counts": {
                    "salesRows": 1000000,
                    "purchaseRows": 1000000
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
        let expectedResponse = PlJpkV7MGenerateDeclarationsResponse(
            fileName: "fileName",
            xml: "xml",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            declaration: [
                PlJpkV7MGenerateDeclarationsResponseDeclarationItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            counts: PlJpkV7MGenerateDeclarationsResponseCounts(
                salesRows: 1000000,
                purchaseRows: 1000000
            ),
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.plJpkV7MGenerate(
            request: .init(
                year: 1000000,
                month: 1000000,
                kodUrzedu: "kodUrzedu",
                email: "email"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plJpkV7MGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "xml": "xml",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "declaration": [
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
                  "counts": {
                    "salesRows": 1000000,
                    "purchaseRows": 1000000
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
        let expectedResponse = PlJpkV7MGenerateDeclarationsResponse(
            fileName: "fileName",
            xml: "xml",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            declaration: [
                PlJpkV7MGenerateDeclarationsResponseDeclarationItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                PlJpkV7MGenerateDeclarationsResponseDeclarationItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            counts: PlJpkV7MGenerateDeclarationsResponseCounts(
                salesRows: 1000000,
                purchaseRows: 1000000
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
        let response = try await client.declarations.plJpkV7MGenerate(
            request: .init(
                year: 1000000,
                month: 1000000,
                kodUrzedu: "kodUrzedu",
                email: "email"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plVatUeGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "nip": "nip",
                  "companyName": "companyName",
                  "rows": [
                    {
                      "section": "C",
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "partnerName": "partnerName",
                      "amount": "amount",
                      "documents": [
                        "documents"
                      ]
                    }
                  ],
                  "totals": [
                    {
                      "section": "C",
                      "counterparties": 1000000,
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
        let expectedResponse = PlVatUeGenerateDeclarationsResponse(
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            nip: "nip",
            companyName: "companyName",
            rows: [
                PlVatUeGenerateDeclarationsResponseRowsItem(
                    section: .c,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    partnerName: "partnerName",
                    amount: "amount",
                    documents: [
                        "documents"
                    ]
                )
            ],
            totals: [
                PlVatUeGenerateDeclarationsResponseTotalsItem(
                    section: .c,
                    counterparties: 1000000,
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
        let response = try await client.declarations.plVatUeGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plVatUeGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "nip": "nip",
                  "companyName": "companyName",
                  "rows": [
                    {
                      "section": "C",
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "partnerName": "partnerName",
                      "amount": "amount",
                      "documents": [
                        "documents",
                        "documents"
                      ]
                    },
                    {
                      "section": "C",
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "partnerName": "partnerName",
                      "amount": "amount",
                      "documents": [
                        "documents",
                        "documents"
                      ]
                    }
                  ],
                  "totals": [
                    {
                      "section": "C",
                      "counterparties": 1000000,
                      "amount": "amount"
                    },
                    {
                      "section": "C",
                      "counterparties": 1000000,
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
        let expectedResponse = PlVatUeGenerateDeclarationsResponse(
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            nip: "nip",
            companyName: "companyName",
            rows: [
                PlVatUeGenerateDeclarationsResponseRowsItem(
                    section: .c,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    partnerName: "partnerName",
                    amount: "amount",
                    documents: [
                        "documents",
                        "documents"
                    ]
                ),
                PlVatUeGenerateDeclarationsResponseRowsItem(
                    section: .c,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    partnerName: "partnerName",
                    amount: "amount",
                    documents: [
                        "documents",
                        "documents"
                    ]
                )
            ],
            totals: [
                PlVatUeGenerateDeclarationsResponseTotalsItem(
                    section: .c,
                    counterparties: 1000000,
                    amount: "amount"
                ),
                PlVatUeGenerateDeclarationsResponseTotalsItem(
                    section: .c,
                    counterparties: 1000000,
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
        let response = try await client.declarations.plVatUeGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plIntrastatGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "flow": "arrivals",
                  "referencePeriod": "referencePeriod",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "nip": "nip",
                  "companyName": "companyName",
                  "detailedThreshold": true,
                  "rows": [
                    {
                      "itemNumber": 1000000,
                      "cnCode": "cnCode",
                      "description": "description",
                      "countryCode": "countryCode",
                      "originCountry": "originCountry",
                      "partnerVat": "partnerVat",
                      "transactionNature": "transactionNature",
                      "transportMode": "transportMode",
                      "deliveryTerms": "deliveryTerms",
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
                    "linesSkipped": 1000000,
                    "returns": 1000000
                  },
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
        let expectedResponse = PlIntrastatGenerateDeclarationsResponse(
            flow: .arrivals,
            referencePeriod: "referencePeriod",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            nip: "nip",
            companyName: "companyName",
            detailedThreshold: true,
            rows: [
                PlIntrastatGenerateDeclarationsResponseRowsItem(
                    itemNumber: 1000000,
                    cnCode: "cnCode",
                    description: Nullable<String>.value("description"),
                    countryCode: "countryCode",
                    originCountry: Nullable<String>.value("originCountry"),
                    partnerVat: Nullable<String>.value("partnerVat"),
                    transactionNature: "transactionNature",
                    transportMode: Nullable<String>.value("transportMode"),
                    deliveryTerms: Nullable<String>.value("deliveryTerms"),
                    netMassKg: Nullable<String>.value("netMassKg"),
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
                    supplementaryQty: Nullable<String>.value("supplementaryQty"),
                    invoicedValue: "invoicedValue",
                    statisticalValue: Nullable<String>.value("statisticalValue")
                )
            ],
            totals: PlIntrastatGenerateDeclarationsResponseTotals(
                invoicedValue: "invoicedValue",
                statisticalValue: Nullable<String>.value("statisticalValue"),
                netMassKg: "netMassKg",
                lines: 1000000
            ),
            counts: PlIntrastatGenerateDeclarationsResponseCounts(
                invoices: 1000000,
                linesIncluded: 1000000,
                linesSkipped: 1000000,
                returns: 1000000
            ),
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.plIntrastatGenerate(
            request: .init(
                year: 1000000,
                month: 1000000,
                flow: .arrivals
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plIntrastatGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "flow": "arrivals",
                  "referencePeriod": "referencePeriod",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "nip": "nip",
                  "companyName": "companyName",
                  "detailedThreshold": true,
                  "rows": [
                    {
                      "itemNumber": 1000000,
                      "cnCode": "cnCode",
                      "description": "description",
                      "countryCode": "countryCode",
                      "originCountry": "originCountry",
                      "partnerVat": "partnerVat",
                      "transactionNature": "transactionNature",
                      "transportMode": "transportMode",
                      "deliveryTerms": "deliveryTerms",
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
                      "countryCode": "countryCode",
                      "originCountry": "originCountry",
                      "partnerVat": "partnerVat",
                      "transactionNature": "transactionNature",
                      "transportMode": "transportMode",
                      "deliveryTerms": "deliveryTerms",
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
                    "linesSkipped": 1000000,
                    "returns": 1000000
                  },
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
        let expectedResponse = PlIntrastatGenerateDeclarationsResponse(
            flow: .arrivals,
            referencePeriod: "referencePeriod",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            nip: "nip",
            companyName: "companyName",
            detailedThreshold: true,
            rows: [
                PlIntrastatGenerateDeclarationsResponseRowsItem(
                    itemNumber: 1000000,
                    cnCode: "cnCode",
                    description: Nullable<String>.value("description"),
                    countryCode: "countryCode",
                    originCountry: Nullable<String>.value("originCountry"),
                    partnerVat: Nullable<String>.value("partnerVat"),
                    transactionNature: "transactionNature",
                    transportMode: Nullable<String>.value("transportMode"),
                    deliveryTerms: Nullable<String>.value("deliveryTerms"),
                    netMassKg: Nullable<String>.value("netMassKg"),
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
                    supplementaryQty: Nullable<String>.value("supplementaryQty"),
                    invoicedValue: "invoicedValue",
                    statisticalValue: Nullable<String>.value("statisticalValue")
                ),
                PlIntrastatGenerateDeclarationsResponseRowsItem(
                    itemNumber: 1000000,
                    cnCode: "cnCode",
                    description: Nullable<String>.value("description"),
                    countryCode: "countryCode",
                    originCountry: Nullable<String>.value("originCountry"),
                    partnerVat: Nullable<String>.value("partnerVat"),
                    transactionNature: "transactionNature",
                    transportMode: Nullable<String>.value("transportMode"),
                    deliveryTerms: Nullable<String>.value("deliveryTerms"),
                    netMassKg: Nullable<String>.value("netMassKg"),
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
                    supplementaryQty: Nullable<String>.value("supplementaryQty"),
                    invoicedValue: "invoicedValue",
                    statisticalValue: Nullable<String>.value("statisticalValue")
                )
            ],
            totals: PlIntrastatGenerateDeclarationsResponseTotals(
                invoicedValue: "invoicedValue",
                statisticalValue: Nullable<String>.value("statisticalValue"),
                netMassKg: "netMassKg",
                lines: 1000000
            ),
            counts: PlIntrastatGenerateDeclarationsResponseCounts(
                invoices: 1000000,
                linesIncluded: 1000000,
                linesSkipped: 1000000,
                returns: 1000000
            ),
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
        let response = try await client.declarations.plIntrastatGenerate(
            request: .init(
                year: 1000000,
                month: 1000000,
                flow: .arrivals
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plKsefReceivedList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "ksefReferenceNumber": "ksefReferenceNumber",
                      "invoiceNumber": "invoiceNumber",
                      "issuerNip": "issuerNip",
                      "issueDate": "2026-07-01",
                      "acquisitionTimestamp": "acquisitionTimestamp",
                      "grossAmount": "grossAmount",
                      "purchaseInvoiceId": "purchaseInvoiceId"
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
        let expectedResponse = PlKsefReceivedListDeclarationsResponse(
            rows: [
                PlKsefReceivedListDeclarationsResponseRowsItem(
                    ksefReferenceNumber: "ksefReferenceNumber",
                    invoiceNumber: Nullable<String>.value("invoiceNumber"),
                    issuerNip: Nullable<String>.value("issuerNip"),
                    issueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    acquisitionTimestamp: Nullable<String>.value("acquisitionTimestamp"),
                    grossAmount: Nullable<String>.value("grossAmount"),
                    purchaseInvoiceId: Nullable<String>.value("purchaseInvoiceId")
                )
            ]
        )
        let response = try await client.declarations.plKsefReceivedList(
            request: .init(
                from: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                to: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plKsefReceivedList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "ksefReferenceNumber": "ksefReferenceNumber",
                      "invoiceNumber": "invoiceNumber",
                      "issuerNip": "issuerNip",
                      "issueDate": "2023-01-15",
                      "acquisitionTimestamp": "acquisitionTimestamp",
                      "grossAmount": "grossAmount",
                      "purchaseInvoiceId": "x"
                    },
                    {
                      "ksefReferenceNumber": "ksefReferenceNumber",
                      "invoiceNumber": "invoiceNumber",
                      "issuerNip": "issuerNip",
                      "issueDate": "2023-01-15",
                      "acquisitionTimestamp": "acquisitionTimestamp",
                      "grossAmount": "grossAmount",
                      "purchaseInvoiceId": "x"
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
        let expectedResponse = PlKsefReceivedListDeclarationsResponse(
            rows: [
                PlKsefReceivedListDeclarationsResponseRowsItem(
                    ksefReferenceNumber: "ksefReferenceNumber",
                    invoiceNumber: Nullable<String>.value("invoiceNumber"),
                    issuerNip: Nullable<String>.value("issuerNip"),
                    issueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    acquisitionTimestamp: Nullable<String>.value("acquisitionTimestamp"),
                    grossAmount: Nullable<String>.value("grossAmount"),
                    purchaseInvoiceId: Nullable<String>.value("x")
                ),
                PlKsefReceivedListDeclarationsResponseRowsItem(
                    ksefReferenceNumber: "ksefReferenceNumber",
                    invoiceNumber: Nullable<String>.value("invoiceNumber"),
                    issuerNip: Nullable<String>.value("issuerNip"),
                    issueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    acquisitionTimestamp: Nullable<String>.value("acquisitionTimestamp"),
                    grossAmount: Nullable<String>.value("grossAmount"),
                    purchaseInvoiceId: Nullable<String>.value("x")
                )
            ]
        )
        let response = try await client.declarations.plKsefReceivedList(
            request: .init(
                from: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                to: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plKsefReceivedFetch1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ksefNumber": "ksefNumber",
                  "xml": "xml",
                  "attachedTo": "attachedTo"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PlKsefReceivedFetchDeclarationsResponse(
            ksefNumber: "ksefNumber",
            xml: "xml",
            attachedTo: Nullable<String>.value("attachedTo")
        )
        let response = try await client.declarations.plKsefReceivedFetch(
            request: .init(ksefNumber: "ksefNumber"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plKsefReceivedFetch2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ksefNumber": "ksefNumber",
                  "xml": "xml",
                  "attachedTo": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PlKsefReceivedFetchDeclarationsResponse(
            ksefNumber: "ksefNumber",
            xml: "xml",
            attachedTo: Nullable<String>.value("x")
        )
        let response = try await client.declarations.plKsefReceivedFetch(
            request: .init(ksefNumber: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plKsefReceipt1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "referenceNumber": "referenceNumber",
                  "state": "sent",
                  "detail": "detail",
                  "invoiceCount": 1000000,
                  "upoXml": "upoXml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PlKsefReceiptDeclarationsResponse(
            referenceNumber: "referenceNumber",
            state: .sent,
            detail: Nullable<String>.value("detail"),
            invoiceCount: Nullable<Int64>.value(1000000),
            upoXml: Nullable<String>.value("upoXml")
        )
        let response = try await client.declarations.plKsefReceipt(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plKsefReceipt2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "referenceNumber": "referenceNumber",
                  "state": "sent",
                  "detail": "detail",
                  "invoiceCount": 1000000,
                  "upoXml": "upoXml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PlKsefReceiptDeclarationsResponse(
            referenceNumber: "referenceNumber",
            state: .sent,
            detail: Nullable<String>.value("detail"),
            invoiceCount: Nullable<Int64>.value(1000000),
            upoXml: Nullable<String>.value("upoXml")
        )
        let response = try await client.declarations.plKsefReceipt(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxAdjustmentsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "year": 1000000,
                      "kind": "non_deductible",
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
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
        let expectedResponse = TaxAdjustmentsListDeclarationsResponse(
            rows: [
                TaxAdjustmentsListDeclarationsResponseRowsItem(
                    id: "id",
                    year: 1000000,
                    kind: .nonDeductible,
                    code: Nullable<String>.value("code"),
                    amount: "amount",
                    description: "description"
                )
            ]
        )
        let response = try await client.declarations.taxAdjustmentsList(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxAdjustmentsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "year": 1000000,
                      "kind": "non_deductible",
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
                    },
                    {
                      "id": "x",
                      "year": 1000000,
                      "kind": "non_deductible",
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
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
        let expectedResponse = TaxAdjustmentsListDeclarationsResponse(
            rows: [
                TaxAdjustmentsListDeclarationsResponseRowsItem(
                    id: "x",
                    year: 1000000,
                    kind: .nonDeductible,
                    code: Nullable<String>.value("code"),
                    amount: "amount",
                    description: "description"
                ),
                TaxAdjustmentsListDeclarationsResponseRowsItem(
                    id: "x",
                    year: 1000000,
                    kind: .nonDeductible,
                    code: Nullable<String>.value("code"),
                    amount: "amount",
                    description: "description"
                )
            ]
        )
        let response = try await client.declarations.taxAdjustmentsList(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxAdjustmentsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "year": 1000000,
                  "kind": "non_deductible",
                  "code": "code",
                  "amount": "amount",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaxAdjustmentsCreateDeclarationsResponse(
            id: "id",
            year: 1000000,
            kind: .nonDeductible,
            code: Nullable<String>.value("code"),
            amount: "amount",
            description: "description"
        )
        let response = try await client.declarations.taxAdjustmentsCreate(
            request: .init(
                year: 1000000,
                kind: .nonDeductible,
                amount: "121.00",
                description: "description"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxAdjustmentsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "year": 1000000,
                  "kind": "non_deductible",
                  "code": "code",
                  "amount": "amount",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaxAdjustmentsCreateDeclarationsResponse(
            id: "x",
            year: 1000000,
            kind: .nonDeductible,
            code: Nullable<String>.value("code"),
            amount: "amount",
            description: "description"
        )
        let response = try await client.declarations.taxAdjustmentsCreate(
            request: .init(
                year: 1000000,
                kind: .nonDeductible,
                amount: "amount",
                description: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxAdjustmentsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "year": 1000000,
                  "kind": "non_deductible",
                  "code": "code",
                  "amount": "amount",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaxAdjustmentsUpdateDeclarationsResponse(
            id: "id",
            year: 1000000,
            kind: .nonDeductible,
            code: Nullable<String>.value("code"),
            amount: "amount",
            description: "description"
        )
        let response = try await client.declarations.taxAdjustmentsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxAdjustmentsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "year": 1000000,
                  "kind": "non_deductible",
                  "code": "code",
                  "amount": "amount",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaxAdjustmentsUpdateDeclarationsResponse(
            id: "x",
            year: 1000000,
            kind: .nonDeductible,
            code: Nullable<String>.value("code"),
            amount: "amount",
            description: "description"
        )
        let response = try await client.declarations.taxAdjustmentsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxAdjustmentsDelete1() async throws -> Void {
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
        let expectedResponse = TaxAdjustmentsDeleteDeclarationsResponse(
            id: "id"
        )
        let response = try await client.declarations.taxAdjustmentsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxAdjustmentsDelete2() async throws -> Void {
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
        let expectedResponse = TaxAdjustmentsDeleteDeclarationsResponse(
            id: "x"
        )
        let response = try await client.declarations.taxAdjustmentsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxPaymentsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "tax": "tax",
                      "year": 1000000,
                      "month": 1000000,
                      "kind": "advance",
                      "amount": "amount",
                      "paidOn": "paidOn",
                      "reference": "reference",
                      "description": "description"
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
        let expectedResponse = TaxPaymentsListDeclarationsResponse(
            rows: [
                TaxPaymentsListDeclarationsResponseRowsItem(
                    id: "id",
                    tax: "tax",
                    year: 1000000,
                    month: Nullable<Int64>.value(1000000),
                    kind: .advance,
                    amount: "amount",
                    paidOn: "paidOn",
                    reference: Nullable<String>.value("reference"),
                    description: "description"
                )
            ]
        )
        let response = try await client.declarations.taxPaymentsList(
            request: .init(
                tax: .corporateIncomeTax,
                year: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxPaymentsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "tax": "tax",
                      "year": 1000000,
                      "month": 1000000,
                      "kind": "advance",
                      "amount": "amount",
                      "paidOn": "paidOn",
                      "reference": "reference",
                      "description": "description"
                    },
                    {
                      "id": "x",
                      "tax": "tax",
                      "year": 1000000,
                      "month": 1000000,
                      "kind": "advance",
                      "amount": "amount",
                      "paidOn": "paidOn",
                      "reference": "reference",
                      "description": "description"
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
        let expectedResponse = TaxPaymentsListDeclarationsResponse(
            rows: [
                TaxPaymentsListDeclarationsResponseRowsItem(
                    id: "x",
                    tax: "tax",
                    year: 1000000,
                    month: Nullable<Int64>.value(1000000),
                    kind: .advance,
                    amount: "amount",
                    paidOn: "paidOn",
                    reference: Nullable<String>.value("reference"),
                    description: "description"
                ),
                TaxPaymentsListDeclarationsResponseRowsItem(
                    id: "x",
                    tax: "tax",
                    year: 1000000,
                    month: Nullable<Int64>.value(1000000),
                    kind: .advance,
                    amount: "amount",
                    paidOn: "paidOn",
                    reference: Nullable<String>.value("reference"),
                    description: "description"
                )
            ]
        )
        let response = try await client.declarations.taxPaymentsList(
            request: .init(
                tax: .corporateIncomeTax,
                year: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxPaymentsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "tax": "tax",
                  "year": 1000000,
                  "month": 1000000,
                  "kind": "advance",
                  "amount": "amount",
                  "paidOn": "paidOn",
                  "reference": "reference",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaxPaymentsCreateDeclarationsResponse(
            id: "id",
            tax: "tax",
            year: 1000000,
            month: Nullable<Int64>.value(1000000),
            kind: .advance,
            amount: "amount",
            paidOn: "paidOn",
            reference: Nullable<String>.value("reference"),
            description: "description"
        )
        let response = try await client.declarations.taxPaymentsCreate(
            request: .init(
                tax: .corporateIncomeTax,
                year: 1000000,
                kind: .advance,
                amount: "121.00",
                paidOn: CalendarDate("2026-07-01")!,
                description: "description"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxPaymentsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "tax": "tax",
                  "year": 1000000,
                  "month": 1000000,
                  "kind": "advance",
                  "amount": "amount",
                  "paidOn": "paidOn",
                  "reference": "reference",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaxPaymentsCreateDeclarationsResponse(
            id: "x",
            tax: "tax",
            year: 1000000,
            month: Nullable<Int64>.value(1000000),
            kind: .advance,
            amount: "amount",
            paidOn: "paidOn",
            reference: Nullable<String>.value("reference"),
            description: "description"
        )
        let response = try await client.declarations.taxPaymentsCreate(
            request: .init(
                tax: .corporateIncomeTax,
                year: 1000000,
                kind: .advance,
                amount: "amount",
                paidOn: CalendarDate("2023-01-15")!,
                description: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxPaymentsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "tax": "tax",
                  "year": 1000000,
                  "month": 1000000,
                  "kind": "advance",
                  "amount": "amount",
                  "paidOn": "paidOn",
                  "reference": "reference",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaxPaymentsUpdateDeclarationsResponse(
            id: "id",
            tax: "tax",
            year: 1000000,
            month: Nullable<Int64>.value(1000000),
            kind: .advance,
            amount: "amount",
            paidOn: "paidOn",
            reference: Nullable<String>.value("reference"),
            description: "description"
        )
        let response = try await client.declarations.taxPaymentsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxPaymentsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "tax": "tax",
                  "year": 1000000,
                  "month": 1000000,
                  "kind": "advance",
                  "amount": "amount",
                  "paidOn": "paidOn",
                  "reference": "reference",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TaxPaymentsUpdateDeclarationsResponse(
            id: "x",
            tax: "tax",
            year: 1000000,
            month: Nullable<Int64>.value(1000000),
            kind: .advance,
            amount: "amount",
            paidOn: "paidOn",
            reference: Nullable<String>.value("reference"),
            description: "description"
        )
        let response = try await client.declarations.taxPaymentsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxPaymentsDelete1() async throws -> Void {
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
        let expectedResponse = TaxPaymentsDeleteDeclarationsResponse(
            id: "id"
        )
        let response = try await client.declarations.taxPaymentsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxPaymentsDelete2() async throws -> Void {
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
        let expectedResponse = TaxPaymentsDeleteDeclarationsResponse(
            id: "x"
        )
        let response = try await client.declarations.taxPaymentsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "approval": {
                    "id": "id",
                    "year": 1000000,
                    "adopted": true,
                    "adoptionDate": "2026-07-01",
                    "dateOfPreparation": "dateOfPreparation",
                    "audited": true,
                    "auditReportQualified": true,
                    "auditorNotElected": true,
                    "notesText": "notesText",
                    "managementReportText": "managementReportText",
                    "auditorReportText": "auditorReportText",
                    "auditorReportDate": "2026-07-01",
                    "resultToReserves": "resultToReserves",
                    "resultToLossCompensation": "resultToLossCompensation",
                    "resultToRemainder": "resultToRemainder",
                    "signatures": [
                      {
                        "id": "id",
                        "directorName": "directorName",
                        "directorType": "managing_current",
                        "signed": true,
                        "signedOn": null,
                        "signedAt": "2026-07-01T09:30:00Z",
                        "reasonNotSigned": null
                      }
                    ],
                    "distributions": [
                      {
                        "id": "id",
                        "decidedOn": "decidedOn",
                        "kind": "dividend",
                        "amount": "amount",
                        "description": null
                      }
                    ],
                    "attachments": [
                      {
                        "id": "id",
                        "kind": "full_report",
                        "name": "name",
                        "fileId": "fileId",
                        "fileName": "fileName",
                        "mimeType": "mimeType",
                        "sizeBytes": 1000000,
                        "storageKey": "storageKey"
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
        let expectedResponse = AnnualAccountsGetDeclarationsResponse(
            approval: Nullable<AnnualAccountsGetDeclarationsResponseApproval>.value(AnnualAccountsGetDeclarationsResponseApproval(
                id: "id",
                year: 1000000,
                adopted: true,
                adoptionDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                dateOfPreparation: "dateOfPreparation",
                audited: true,
                auditReportQualified: Nullable<Bool>.value(true),
                auditorNotElected: true,
                notesText: Nullable<String>.value("notesText"),
                managementReportText: Nullable<String>.value("managementReportText"),
                auditorReportText: Nullable<String>.value("auditorReportText"),
                auditorReportDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                resultToReserves: Nullable<String>.value("resultToReserves"),
                resultToLossCompensation: Nullable<String>.value("resultToLossCompensation"),
                resultToRemainder: Nullable<String>.value("resultToRemainder"),
                signatures: [
                    AnnualAccountsGetDeclarationsResponseApprovalSignaturesItem(
                        id: "id",
                        directorName: "directorName",
                        directorType: .managingCurrent,
                        signed: true,
                        signedOn: .null,
                        signedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                        reasonNotSigned: .null
                    )
                ],
                distributions: [
                    AnnualAccountsGetDeclarationsResponseApprovalDistributionsItem(
                        id: "id",
                        decidedOn: "decidedOn",
                        kind: .dividend,
                        amount: "amount",
                        description: .null
                    )
                ],
                attachments: [
                    AnnualAccountsGetDeclarationsResponseApprovalAttachmentsItem(
                        id: "id",
                        kind: .fullReport,
                        name: "name",
                        fileId: "fileId",
                        fileName: "fileName",
                        mimeType: "mimeType",
                        sizeBytes: 1000000,
                        storageKey: "storageKey"
                    )
                ]
            ))
        )
        let response = try await client.declarations.annualAccountsGet(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "approval": {
                    "id": "x",
                    "year": 1000000,
                    "adopted": true,
                    "adoptionDate": "2023-01-15",
                    "dateOfPreparation": "dateOfPreparation",
                    "audited": true,
                    "auditReportQualified": true,
                    "auditorNotElected": true,
                    "notesText": "notesText",
                    "managementReportText": "managementReportText",
                    "auditorReportText": "auditorReportText",
                    "auditorReportDate": "2023-01-15",
                    "resultToReserves": "resultToReserves",
                    "resultToLossCompensation": "resultToLossCompensation",
                    "resultToRemainder": "resultToRemainder",
                    "signatures": [
                      {
                        "id": "x",
                        "directorName": "directorName",
                        "directorType": "managing_current",
                        "signed": true,
                        "signedOn": "signedOn",
                        "signedAt": "2024-01-15T09:30:00Z",
                        "reasonNotSigned": "reasonNotSigned"
                      },
                      {
                        "id": "x",
                        "directorName": "directorName",
                        "directorType": "managing_current",
                        "signed": true,
                        "signedOn": "signedOn",
                        "signedAt": "2024-01-15T09:30:00Z",
                        "reasonNotSigned": "reasonNotSigned"
                      }
                    ],
                    "distributions": [
                      {
                        "id": "x",
                        "decidedOn": "decidedOn",
                        "kind": "dividend",
                        "amount": "amount",
                        "description": "description"
                      },
                      {
                        "id": "x",
                        "decidedOn": "decidedOn",
                        "kind": "dividend",
                        "amount": "amount",
                        "description": "description"
                      }
                    ],
                    "attachments": [
                      {
                        "id": "x",
                        "kind": "full_report",
                        "name": "name",
                        "fileId": "x",
                        "fileName": "fileName",
                        "mimeType": "mimeType",
                        "sizeBytes": 1000000,
                        "storageKey": "storageKey"
                      },
                      {
                        "id": "x",
                        "kind": "full_report",
                        "name": "name",
                        "fileId": "x",
                        "fileName": "fileName",
                        "mimeType": "mimeType",
                        "sizeBytes": 1000000,
                        "storageKey": "storageKey"
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
        let expectedResponse = AnnualAccountsGetDeclarationsResponse(
            approval: Nullable<AnnualAccountsGetDeclarationsResponseApproval>.value(AnnualAccountsGetDeclarationsResponseApproval(
                id: "x",
                year: 1000000,
                adopted: true,
                adoptionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                dateOfPreparation: "dateOfPreparation",
                audited: true,
                auditReportQualified: Nullable<Bool>.value(true),
                auditorNotElected: true,
                notesText: Nullable<String>.value("notesText"),
                managementReportText: Nullable<String>.value("managementReportText"),
                auditorReportText: Nullable<String>.value("auditorReportText"),
                auditorReportDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                resultToReserves: Nullable<String>.value("resultToReserves"),
                resultToLossCompensation: Nullable<String>.value("resultToLossCompensation"),
                resultToRemainder: Nullable<String>.value("resultToRemainder"),
                signatures: [
                    AnnualAccountsGetDeclarationsResponseApprovalSignaturesItem(
                        id: "x",
                        directorName: "directorName",
                        directorType: .managingCurrent,
                        signed: true,
                        signedOn: Nullable<String>.value("signedOn"),
                        signedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                        reasonNotSigned: Nullable<String>.value("reasonNotSigned")
                    ),
                    AnnualAccountsGetDeclarationsResponseApprovalSignaturesItem(
                        id: "x",
                        directorName: "directorName",
                        directorType: .managingCurrent,
                        signed: true,
                        signedOn: Nullable<String>.value("signedOn"),
                        signedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                        reasonNotSigned: Nullable<String>.value("reasonNotSigned")
                    )
                ],
                distributions: [
                    AnnualAccountsGetDeclarationsResponseApprovalDistributionsItem(
                        id: "x",
                        decidedOn: "decidedOn",
                        kind: .dividend,
                        amount: "amount",
                        description: Nullable<String>.value("description")
                    ),
                    AnnualAccountsGetDeclarationsResponseApprovalDistributionsItem(
                        id: "x",
                        decidedOn: "decidedOn",
                        kind: .dividend,
                        amount: "amount",
                        description: Nullable<String>.value("description")
                    )
                ],
                attachments: [
                    AnnualAccountsGetDeclarationsResponseApprovalAttachmentsItem(
                        id: "x",
                        kind: .fullReport,
                        name: "name",
                        fileId: "x",
                        fileName: "fileName",
                        mimeType: "mimeType",
                        sizeBytes: 1000000,
                        storageKey: "storageKey"
                    ),
                    AnnualAccountsGetDeclarationsResponseApprovalAttachmentsItem(
                        id: "x",
                        kind: .fullReport,
                        name: "name",
                        fileId: "x",
                        fileName: "fileName",
                        mimeType: "mimeType",
                        sizeBytes: 1000000,
                        storageKey: "storageKey"
                    )
                ]
            ))
        )
        let response = try await client.declarations.annualAccountsGet(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsSet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "year": 1000000,
                  "adopted": true,
                  "adoptionDate": "2026-07-01",
                  "dateOfPreparation": "dateOfPreparation",
                  "audited": true,
                  "auditReportQualified": true,
                  "auditorNotElected": true,
                  "notesText": "notesText",
                  "managementReportText": "managementReportText",
                  "auditorReportText": "auditorReportText",
                  "auditorReportDate": "2026-07-01",
                  "resultToReserves": "resultToReserves",
                  "resultToLossCompensation": "resultToLossCompensation",
                  "resultToRemainder": "resultToRemainder",
                  "signatures": [
                    {
                      "id": "id",
                      "directorName": "directorName",
                      "directorType": "managing_current",
                      "signed": true,
                      "signedOn": "signedOn",
                      "signedAt": "2026-07-01T09:30:00Z",
                      "reasonNotSigned": "reasonNotSigned"
                    }
                  ],
                  "distributions": [
                    {
                      "id": "id",
                      "decidedOn": "decidedOn",
                      "kind": "dividend",
                      "amount": "amount",
                      "description": "description"
                    }
                  ],
                  "attachments": [
                    {
                      "id": "id",
                      "kind": "full_report",
                      "name": "name",
                      "fileId": "fileId",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "storageKey": "storageKey"
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
        let expectedResponse = AnnualAccountsSetDeclarationsResponse(
            id: "id",
            year: 1000000,
            adopted: true,
            adoptionDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            dateOfPreparation: "dateOfPreparation",
            audited: true,
            auditReportQualified: Nullable<Bool>.value(true),
            auditorNotElected: true,
            notesText: Nullable<String>.value("notesText"),
            managementReportText: Nullable<String>.value("managementReportText"),
            auditorReportText: Nullable<String>.value("auditorReportText"),
            auditorReportDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            resultToReserves: Nullable<String>.value("resultToReserves"),
            resultToLossCompensation: Nullable<String>.value("resultToLossCompensation"),
            resultToRemainder: Nullable<String>.value("resultToRemainder"),
            signatures: [
                AnnualAccountsSetDeclarationsResponseSignaturesItem(
                    id: "id",
                    directorName: "directorName",
                    directorType: .managingCurrent,
                    signed: true,
                    signedOn: Nullable<String>.value("signedOn"),
                    signedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    reasonNotSigned: Nullable<String>.value("reasonNotSigned")
                )
            ],
            distributions: [
                AnnualAccountsSetDeclarationsResponseDistributionsItem(
                    id: "id",
                    decidedOn: "decidedOn",
                    kind: .dividend,
                    amount: "amount",
                    description: Nullable<String>.value("description")
                )
            ],
            attachments: [
                AnnualAccountsSetDeclarationsResponseAttachmentsItem(
                    id: "id",
                    kind: .fullReport,
                    name: "name",
                    fileId: "fileId",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    storageKey: "storageKey"
                )
            ]
        )
        let response = try await client.declarations.annualAccountsSet(
            request: .init(
                year: 1000000,
                adopted: true,
                dateOfPreparation: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsSet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "year": 1000000,
                  "adopted": true,
                  "adoptionDate": "2023-01-15",
                  "dateOfPreparation": "dateOfPreparation",
                  "audited": true,
                  "auditReportQualified": true,
                  "auditorNotElected": true,
                  "notesText": "notesText",
                  "managementReportText": "managementReportText",
                  "auditorReportText": "auditorReportText",
                  "auditorReportDate": "2023-01-15",
                  "resultToReserves": "resultToReserves",
                  "resultToLossCompensation": "resultToLossCompensation",
                  "resultToRemainder": "resultToRemainder",
                  "signatures": [
                    {
                      "id": "x",
                      "directorName": "directorName",
                      "directorType": "managing_current",
                      "signed": true,
                      "signedOn": "signedOn",
                      "signedAt": "2024-01-15T09:30:00Z",
                      "reasonNotSigned": "reasonNotSigned"
                    },
                    {
                      "id": "x",
                      "directorName": "directorName",
                      "directorType": "managing_current",
                      "signed": true,
                      "signedOn": "signedOn",
                      "signedAt": "2024-01-15T09:30:00Z",
                      "reasonNotSigned": "reasonNotSigned"
                    }
                  ],
                  "distributions": [
                    {
                      "id": "x",
                      "decidedOn": "decidedOn",
                      "kind": "dividend",
                      "amount": "amount",
                      "description": "description"
                    },
                    {
                      "id": "x",
                      "decidedOn": "decidedOn",
                      "kind": "dividend",
                      "amount": "amount",
                      "description": "description"
                    }
                  ],
                  "attachments": [
                    {
                      "id": "x",
                      "kind": "full_report",
                      "name": "name",
                      "fileId": "x",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "storageKey": "storageKey"
                    },
                    {
                      "id": "x",
                      "kind": "full_report",
                      "name": "name",
                      "fileId": "x",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "storageKey": "storageKey"
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
        let expectedResponse = AnnualAccountsSetDeclarationsResponse(
            id: "x",
            year: 1000000,
            adopted: true,
            adoptionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            dateOfPreparation: "dateOfPreparation",
            audited: true,
            auditReportQualified: Nullable<Bool>.value(true),
            auditorNotElected: true,
            notesText: Nullable<String>.value("notesText"),
            managementReportText: Nullable<String>.value("managementReportText"),
            auditorReportText: Nullable<String>.value("auditorReportText"),
            auditorReportDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            resultToReserves: Nullable<String>.value("resultToReserves"),
            resultToLossCompensation: Nullable<String>.value("resultToLossCompensation"),
            resultToRemainder: Nullable<String>.value("resultToRemainder"),
            signatures: [
                AnnualAccountsSetDeclarationsResponseSignaturesItem(
                    id: "x",
                    directorName: "directorName",
                    directorType: .managingCurrent,
                    signed: true,
                    signedOn: Nullable<String>.value("signedOn"),
                    signedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    reasonNotSigned: Nullable<String>.value("reasonNotSigned")
                ),
                AnnualAccountsSetDeclarationsResponseSignaturesItem(
                    id: "x",
                    directorName: "directorName",
                    directorType: .managingCurrent,
                    signed: true,
                    signedOn: Nullable<String>.value("signedOn"),
                    signedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    reasonNotSigned: Nullable<String>.value("reasonNotSigned")
                )
            ],
            distributions: [
                AnnualAccountsSetDeclarationsResponseDistributionsItem(
                    id: "x",
                    decidedOn: "decidedOn",
                    kind: .dividend,
                    amount: "amount",
                    description: Nullable<String>.value("description")
                ),
                AnnualAccountsSetDeclarationsResponseDistributionsItem(
                    id: "x",
                    decidedOn: "decidedOn",
                    kind: .dividend,
                    amount: "amount",
                    description: Nullable<String>.value("description")
                )
            ],
            attachments: [
                AnnualAccountsSetDeclarationsResponseAttachmentsItem(
                    id: "x",
                    kind: .fullReport,
                    name: "name",
                    fileId: "x",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    storageKey: "storageKey"
                ),
                AnnualAccountsSetDeclarationsResponseAttachmentsItem(
                    id: "x",
                    kind: .fullReport,
                    name: "name",
                    fileId: "x",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    storageKey: "storageKey"
                )
            ]
        )
        let response = try await client.declarations.annualAccountsSet(
            request: .init(
                year: 1000000,
                adopted: true,
                dateOfPreparation: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsSignaturesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "directorName": "directorName",
                  "directorType": "managing_current",
                  "signed": true,
                  "signedOn": "signedOn",
                  "signedAt": "2026-07-01T09:30:00Z",
                  "reasonNotSigned": "reasonNotSigned"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AnnualAccountsSignaturesCreateDeclarationsResponse(
            id: "id",
            directorName: "directorName",
            directorType: .managingCurrent,
            signed: true,
            signedOn: Nullable<String>.value("signedOn"),
            signedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            reasonNotSigned: Nullable<String>.value("reasonNotSigned")
        )
        let response = try await client.declarations.annualAccountsSignaturesCreate(
            request: .init(
                year: 1000000,
                directorName: "directorName",
                directorType: .managingCurrent,
                signed: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsSignaturesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "directorName": "directorName",
                  "directorType": "managing_current",
                  "signed": true,
                  "signedOn": "signedOn",
                  "signedAt": "2024-01-15T09:30:00Z",
                  "reasonNotSigned": "reasonNotSigned"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AnnualAccountsSignaturesCreateDeclarationsResponse(
            id: "x",
            directorName: "directorName",
            directorType: .managingCurrent,
            signed: true,
            signedOn: Nullable<String>.value("signedOn"),
            signedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            reasonNotSigned: Nullable<String>.value("reasonNotSigned")
        )
        let response = try await client.declarations.annualAccountsSignaturesCreate(
            request: .init(
                year: 1000000,
                directorName: "x",
                directorType: .managingCurrent,
                signed: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsSignaturesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "directorName": "directorName",
                  "directorType": "managing_current",
                  "signed": true,
                  "signedOn": "signedOn",
                  "signedAt": "2026-07-01T09:30:00Z",
                  "reasonNotSigned": "reasonNotSigned"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AnnualAccountsSignaturesUpdateDeclarationsResponse(
            id: "id",
            directorName: "directorName",
            directorType: .managingCurrent,
            signed: true,
            signedOn: Nullable<String>.value("signedOn"),
            signedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            reasonNotSigned: Nullable<String>.value("reasonNotSigned")
        )
        let response = try await client.declarations.annualAccountsSignaturesUpdate(
            request: .init(
                id: "id",
                directorName: "directorName",
                directorType: .managingCurrent,
                signed: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsSignaturesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "directorName": "directorName",
                  "directorType": "managing_current",
                  "signed": true,
                  "signedOn": "signedOn",
                  "signedAt": "2024-01-15T09:30:00Z",
                  "reasonNotSigned": "reasonNotSigned"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AnnualAccountsSignaturesUpdateDeclarationsResponse(
            id: "x",
            directorName: "directorName",
            directorType: .managingCurrent,
            signed: true,
            signedOn: Nullable<String>.value("signedOn"),
            signedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            reasonNotSigned: Nullable<String>.value("reasonNotSigned")
        )
        let response = try await client.declarations.annualAccountsSignaturesUpdate(
            request: .init(
                id: "x",
                directorName: "x",
                directorType: .managingCurrent,
                signed: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsSignaturesDelete1() async throws -> Void {
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
        let expectedResponse = AnnualAccountsSignaturesDeleteDeclarationsResponse(
            id: "id"
        )
        let response = try await client.declarations.annualAccountsSignaturesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsSignaturesDelete2() async throws -> Void {
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
        let expectedResponse = AnnualAccountsSignaturesDeleteDeclarationsResponse(
            id: "x"
        )
        let response = try await client.declarations.annualAccountsSignaturesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsDistributionsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "decidedOn": "decidedOn",
                  "kind": "dividend",
                  "amount": "amount",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AnnualAccountsDistributionsCreateDeclarationsResponse(
            id: "id",
            decidedOn: "decidedOn",
            kind: .dividend,
            amount: "amount",
            description: Nullable<String>.value("description")
        )
        let response = try await client.declarations.annualAccountsDistributionsCreate(
            request: .init(
                year: 1000000,
                decidedOn: CalendarDate("2026-07-01")!,
                kind: .dividend,
                amount: "121.00"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsDistributionsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "decidedOn": "decidedOn",
                  "kind": "dividend",
                  "amount": "amount",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AnnualAccountsDistributionsCreateDeclarationsResponse(
            id: "x",
            decidedOn: "decidedOn",
            kind: .dividend,
            amount: "amount",
            description: Nullable<String>.value("description")
        )
        let response = try await client.declarations.annualAccountsDistributionsCreate(
            request: .init(
                year: 1000000,
                decidedOn: CalendarDate("2023-01-15")!,
                kind: .dividend,
                amount: "amount"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsDistributionsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "decidedOn": "decidedOn",
                  "kind": "dividend",
                  "amount": "amount",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AnnualAccountsDistributionsUpdateDeclarationsResponse(
            id: "id",
            decidedOn: "decidedOn",
            kind: .dividend,
            amount: "amount",
            description: Nullable<String>.value("description")
        )
        let response = try await client.declarations.annualAccountsDistributionsUpdate(
            request: .init(
                id: "id",
                decidedOn: CalendarDate("2026-07-01")!,
                kind: .dividend,
                amount: "121.00"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsDistributionsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "decidedOn": "decidedOn",
                  "kind": "dividend",
                  "amount": "amount",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AnnualAccountsDistributionsUpdateDeclarationsResponse(
            id: "x",
            decidedOn: "decidedOn",
            kind: .dividend,
            amount: "amount",
            description: Nullable<String>.value("description")
        )
        let response = try await client.declarations.annualAccountsDistributionsUpdate(
            request: .init(
                id: "x",
                decidedOn: CalendarDate("2023-01-15")!,
                kind: .dividend,
                amount: "amount"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsDistributionsDelete1() async throws -> Void {
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
        let expectedResponse = AnnualAccountsDistributionsDeleteDeclarationsResponse(
            id: "id"
        )
        let response = try await client.declarations.annualAccountsDistributionsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsDistributionsDelete2() async throws -> Void {
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
        let expectedResponse = AnnualAccountsDistributionsDeleteDeclarationsResponse(
            id: "x"
        )
        let response = try await client.declarations.annualAccountsDistributionsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsAttachmentsAdd1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "kind": "full_report",
                  "name": "name",
                  "fileId": "fileId",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "sizeBytes": 1000000,
                  "storageKey": "storageKey"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AnnualAccountsAttachmentsAddDeclarationsResponse(
            id: "id",
            kind: .fullReport,
            name: "name",
            fileId: "fileId",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            storageKey: "storageKey"
        )
        let response = try await client.declarations.annualAccountsAttachmentsAdd(
            request: .init(
                year: 1000000,
                kind: .fullReport,
                ref: "ref"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsAttachmentsAdd2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "kind": "full_report",
                  "name": "name",
                  "fileId": "x",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "sizeBytes": 1000000,
                  "storageKey": "storageKey"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AnnualAccountsAttachmentsAddDeclarationsResponse(
            id: "x",
            kind: .fullReport,
            name: "name",
            fileId: "x",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            storageKey: "storageKey"
        )
        let response = try await client.declarations.annualAccountsAttachmentsAdd(
            request: .init(
                year: 1000000,
                kind: .fullReport,
                ref: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsAttachmentsDelete1() async throws -> Void {
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
        let expectedResponse = AnnualAccountsAttachmentsDeleteDeclarationsResponse(
            id: "id"
        )
        let response = try await client.declarations.annualAccountsAttachmentsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func annualAccountsAttachmentsDelete2() async throws -> Void {
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
        let expectedResponse = AnnualAccountsAttachmentsDeleteDeclarationsResponse(
            id: "x"
        )
        let response = try await client.declarations.annualAccountsAttachmentsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cyTd4Generate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "taxIdentificationCode": "taxIdentificationCode",
                  "fileName": "fileName",
                  "xml": "xml",
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
        let expectedResponse = CyTd4GenerateDeclarationsResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            taxIdentificationCode: "taxIdentificationCode",
            fileName: "fileName",
            xml: "xml",
            fields: [
                CyTd4GenerateDeclarationsResponseFieldsItem(
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
            ],
            source: "source"
        )
        let response = try await client.declarations.cyTd4Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cyTd4Generate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "taxIdentificationCode": "taxIdentificationCode",
                  "fileName": "fileName",
                  "xml": "xml",
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
        let expectedResponse = CyTd4GenerateDeclarationsResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            taxIdentificationCode: "taxIdentificationCode",
            fileName: "fileName",
            xml: "xml",
            fields: [
                CyTd4GenerateDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                CyTd4GenerateDeclarationsResponseFieldsItem(
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
            ],
            source: "source"
        )
        let response = try await client.declarations.cyTd4Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cyHe32Generate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "madeUpTo": "madeUpTo",
                  "registrarNumber": "registrarNumber",
                  "companyName": "companyName",
                  "fileName": "fileName",
                  "xml": "xml",
                  "pdfFileName": "pdfFileName",
                  "pdf": "pdf",
                  "formSource": "formSource",
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "members": [
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "shares": "shares",
                      "nominalValue": "nominalValue",
                      "shareClass": "shareClass"
                    }
                  ],
                  "officers": [
                    {
                      "position": "position",
                      "name": "name",
                      "identifier": "identifier"
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
        let expectedResponse = CyHe32GenerateDeclarationsResponse(
            year: 1000000,
            madeUpTo: "madeUpTo",
            registrarNumber: "registrarNumber",
            companyName: "companyName",
            fileName: "fileName",
            xml: "xml",
            pdfFileName: "pdfFileName",
            pdf: "pdf",
            formSource: "formSource",
            fields: [
                CyHe32GenerateDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            members: [
                CyHe32GenerateDeclarationsResponseMembersItem(
                    name: "name",
                    identifier: "identifier",
                    shares: "shares",
                    nominalValue: "nominalValue",
                    shareClass: "shareClass"
                )
            ],
            officers: [
                CyHe32GenerateDeclarationsResponseOfficersItem(
                    position: "position",
                    name: "name",
                    identifier: Nullable<String>.value("identifier")
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
        let response = try await client.declarations.cyHe32Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cyHe32Generate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "madeUpTo": "madeUpTo",
                  "registrarNumber": "registrarNumber",
                  "companyName": "companyName",
                  "fileName": "fileName",
                  "xml": "xml",
                  "pdfFileName": "pdfFileName",
                  "pdf": "pdf",
                  "formSource": "formSource",
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
                  "members": [
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "shares": "shares",
                      "nominalValue": "nominalValue",
                      "shareClass": "shareClass"
                    },
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "shares": "shares",
                      "nominalValue": "nominalValue",
                      "shareClass": "shareClass"
                    }
                  ],
                  "officers": [
                    {
                      "position": "position",
                      "name": "name",
                      "identifier": "identifier"
                    },
                    {
                      "position": "position",
                      "name": "name",
                      "identifier": "identifier"
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
        let expectedResponse = CyHe32GenerateDeclarationsResponse(
            year: 1000000,
            madeUpTo: "madeUpTo",
            registrarNumber: "registrarNumber",
            companyName: "companyName",
            fileName: "fileName",
            xml: "xml",
            pdfFileName: "pdfFileName",
            pdf: "pdf",
            formSource: "formSource",
            fields: [
                CyHe32GenerateDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                CyHe32GenerateDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            members: [
                CyHe32GenerateDeclarationsResponseMembersItem(
                    name: "name",
                    identifier: "identifier",
                    shares: "shares",
                    nominalValue: "nominalValue",
                    shareClass: "shareClass"
                ),
                CyHe32GenerateDeclarationsResponseMembersItem(
                    name: "name",
                    identifier: "identifier",
                    shares: "shares",
                    nominalValue: "nominalValue",
                    shareClass: "shareClass"
                )
            ],
            officers: [
                CyHe32GenerateDeclarationsResponseOfficersItem(
                    position: "position",
                    name: "name",
                    identifier: Nullable<String>.value("identifier")
                ),
                CyHe32GenerateDeclarationsResponseOfficersItem(
                    position: "position",
                    name: "name",
                    identifier: Nullable<String>.value("identifier")
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
        let response = try await client.declarations.cyHe32Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deReturnsGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "variant": "variant",
                  "content": "content",
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
        let expectedResponse = DeReturnsGenerateDeclarationsResponse(
            ruleKey: "ruleKey",
            period: "period",
            fileName: "fileName",
            mimeType: "mimeType",
            variant: Nullable<String>.value("variant"),
            content: "content",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.deReturnsGenerate(
            request: .init(
                ruleKey: .deEBilanz,
                period: "period"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deReturnsGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "variant": "variant",
                  "content": "content",
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
        let expectedResponse = DeReturnsGenerateDeclarationsResponse(
            ruleKey: "ruleKey",
            period: "period",
            fileName: "fileName",
            mimeType: "mimeType",
            variant: Nullable<String>.value("variant"),
            content: "content",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.deReturnsGenerate(
            request: .init(
                ruleKey: .deEBilanz,
                period: "buzz"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deReturnFactsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "facts": {
                    "changedShareholderIds": [
                      "changedShareholderIds"
                    ],
                    "shareholderContracts": true,
                    "contracts": [
                      {
                        "kind": "kind",
                        "date": "2026-07-01",
                        "partner": "partner",
                        "amount": "-121.00"
                      }
                    ],
                    "harmfulShareAcquisition": true,
                    "coronaAid": "-121.00",
                    "lossCarryback": "-121.00",
                    "donationCarryforward": "-121.00",
                    "contributionAccountOpening": "-121.00",
                    "contributions": [
                      {
                        "name": "name",
                        "date": "2026-07-01",
                        "kind": "cash",
                        "amount": "-121.00"
                      }
                    ],
                    "distributions": [
                      {
                        "resolutionDate": "2026-07-01",
                        "paidOn": "2026-07-01",
                        "amount": "-121.00",
                        "certifiedReduction": "-121.00"
                      }
                    ],
                    "taxBalanceEquity": "-121.00",
                    "multipleMunicipalities": true,
                    "relocation": {
                      "date": "2026-07-01",
                      "from": "from",
                      "to": "to"
                    },
                    "municipalities": [
                      {
                        "name": "name",
                        "postalCode": "postalCode",
                        "ags": "ags",
                        "hebesatz": "121.00",
                        "wages": "-121.00"
                      }
                    ],
                    "landHoldings": [
                      {
                        "fileNumber": "fileNumber",
                        "assessedValue": "-121.00",
                        "category": "rental_east"
                      }
                    ],
                    "propertyTaxExpense": "-121.00",
                    "licencesToNonResidents": "-121.00",
                    "participations": [
                      {
                        "name": "name",
                        "countryCode": "countryCode",
                        "sharePercent": "121.0000",
                        "dividends": "-121.00"
                      }
                    ],
                    "foreignIncome": [
                      {
                        "countryCode": "countryCode",
                        "kind": "dividends",
                        "income": "-121.00"
                      }
                    ],
                    "smallBusinessSwitchDate": "2026-07-01",
                    "refundProcedureApplied": true,
                    "bic": "bic",
                    "representative": {
                      "role": "agent",
                      "name": "name",
                      "street": "street",
                      "houseNumber": "houseNumber",
                      "postalCode": "postalCode",
                      "city": "city"
                    },
                    "singleTransportTax": "-121.00",
                    "distanceSales": "-121.00"
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
        let expectedResponse = DeReturnFactsGetDeclarationsResponse(
            year: 1000000,
            facts: DeReturnFactsGetDeclarationsResponseFacts(
                changedShareholderIds: Optional([
                    "changedShareholderIds"
                ]),
                shareholderContracts: Optional(true),
                contracts: Optional([
                    DeReturnFactsGetDeclarationsResponseFactsContractsItem(
                        kind: "kind",
                        date: CalendarDate("2026-07-01")!,
                        partner: "partner",
                        amount: "-121.00"
                    )
                ]),
                harmfulShareAcquisition: Optional(true),
                coronaAid: Optional("-121.00"),
                lossCarryback: Optional("-121.00"),
                donationCarryforward: Optional("-121.00"),
                contributionAccountOpening: Optional("-121.00"),
                contributions: Optional([
                    DeReturnFactsGetDeclarationsResponseFactsContributionsItem(
                        name: "name",
                        date: CalendarDate("2026-07-01")!,
                        kind: .cash,
                        amount: "-121.00"
                    )
                ]),
                distributions: Optional([
                    DeReturnFactsGetDeclarationsResponseFactsDistributionsItem(
                        resolutionDate: CalendarDate("2026-07-01")!,
                        paidOn: CalendarDate("2026-07-01")!,
                        amount: "-121.00",
                        certifiedReduction: "-121.00"
                    )
                ]),
                taxBalanceEquity: Optional("-121.00"),
                multipleMunicipalities: Optional(true),
                relocation: Optional(Nullable<DeReturnFactsGetDeclarationsResponseFactsRelocation>.value(DeReturnFactsGetDeclarationsResponseFactsRelocation(
                    date: CalendarDate("2026-07-01")!,
                    from: "from",
                    to: "to"
                ))),
                municipalities: Optional([
                    DeReturnFactsGetDeclarationsResponseFactsMunicipalitiesItem(
                        name: "name",
                        postalCode: "postalCode",
                        ags: "ags",
                        hebesatz: "121.00",
                        wages: "-121.00"
                    )
                ]),
                landHoldings: Optional([
                    DeReturnFactsGetDeclarationsResponseFactsLandHoldingsItem(
                        fileNumber: "fileNumber",
                        assessedValue: "-121.00",
                        category: .rentalEast
                    )
                ]),
                propertyTaxExpense: Optional("-121.00"),
                licencesToNonResidents: Optional("-121.00"),
                participations: Optional([
                    DeReturnFactsGetDeclarationsResponseFactsParticipationsItem(
                        name: "name",
                        countryCode: "countryCode",
                        sharePercent: "121.0000",
                        dividends: "-121.00"
                    )
                ]),
                foreignIncome: Optional([
                    DeReturnFactsGetDeclarationsResponseFactsForeignIncomeItem(
                        countryCode: "countryCode",
                        kind: .dividends,
                        income: "-121.00"
                    )
                ]),
                smallBusinessSwitchDate: Optional(Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!)),
                refundProcedureApplied: Optional(true),
                bic: Optional("bic"),
                representative: Optional(Nullable<DeReturnFactsGetDeclarationsResponseFactsRepresentative>.value(DeReturnFactsGetDeclarationsResponseFactsRepresentative(
                    role: .agent,
                    name: "name",
                    street: "street",
                    houseNumber: Optional("houseNumber"),
                    postalCode: "postalCode",
                    city: "city"
                ))),
                singleTransportTax: Optional("-121.00"),
                distanceSales: Optional("-121.00")
            )
        )
        let response = try await client.declarations.deReturnFactsGet(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deReturnFactsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "facts": {
                    "changedShareholderIds": [
                      "changedShareholderIds",
                      "changedShareholderIds"
                    ],
                    "shareholderContracts": true,
                    "contracts": [
                      {
                        "kind": "x",
                        "date": "2023-01-15",
                        "partner": "x",
                        "amount": "amount"
                      },
                      {
                        "kind": "x",
                        "date": "2023-01-15",
                        "partner": "x",
                        "amount": "amount"
                      }
                    ],
                    "harmfulShareAcquisition": true,
                    "coronaAid": "coronaAid",
                    "lossCarryback": "lossCarryback",
                    "donationCarryforward": "donationCarryforward",
                    "contributionAccountOpening": "contributionAccountOpening",
                    "contributions": [
                      {
                        "name": "x",
                        "date": "2023-01-15",
                        "kind": "cash",
                        "description": "description",
                        "amount": "amount"
                      },
                      {
                        "name": "x",
                        "date": "2023-01-15",
                        "kind": "cash",
                        "description": "description",
                        "amount": "amount"
                      }
                    ],
                    "distributions": [
                      {
                        "resolutionDate": "2023-01-15",
                        "paidOn": "2023-01-15",
                        "amount": "amount",
                        "certifiedReduction": "certifiedReduction"
                      },
                      {
                        "resolutionDate": "2023-01-15",
                        "paidOn": "2023-01-15",
                        "amount": "amount",
                        "certifiedReduction": "certifiedReduction"
                      }
                    ],
                    "taxBalanceEquity": "taxBalanceEquity",
                    "multipleMunicipalities": true,
                    "relocation": {
                      "date": "2023-01-15",
                      "from": "x",
                      "to": "x"
                    },
                    "municipalities": [
                      {
                        "name": "x",
                        "postalCode": "postalCode",
                        "ags": "ags",
                        "hebesatz": "hebesatz",
                        "wages": "wages"
                      },
                      {
                        "name": "x",
                        "postalCode": "postalCode",
                        "ags": "ags",
                        "hebesatz": "hebesatz",
                        "wages": "wages"
                      }
                    ],
                    "landHoldings": [
                      {
                        "fileNumber": "x",
                        "assessedValue": "assessedValue",
                        "category": "rental_east"
                      },
                      {
                        "fileNumber": "x",
                        "assessedValue": "assessedValue",
                        "category": "rental_east"
                      }
                    ],
                    "propertyTaxExpense": "propertyTaxExpense",
                    "licencesToNonResidents": "licencesToNonResidents",
                    "participations": [
                      {
                        "name": "x",
                        "countryCode": "countryCode",
                        "sharePercent": "sharePercent",
                        "dividends": "dividends"
                      },
                      {
                        "name": "x",
                        "countryCode": "countryCode",
                        "sharePercent": "sharePercent",
                        "dividends": "dividends"
                      }
                    ],
                    "foreignIncome": [
                      {
                        "countryCode": "countryCode",
                        "kind": "dividends",
                        "income": "income"
                      },
                      {
                        "countryCode": "countryCode",
                        "kind": "dividends",
                        "income": "income"
                      }
                    ],
                    "smallBusinessSwitchDate": "2023-01-15",
                    "refundProcedureApplied": true,
                    "bic": "bic",
                    "representative": {
                      "role": "agent",
                      "name": "x",
                      "street": "x",
                      "houseNumber": "houseNumber",
                      "postalCode": "x",
                      "city": "x"
                    },
                    "singleTransportTax": "singleTransportTax",
                    "distanceSales": "distanceSales"
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
        let expectedResponse = DeReturnFactsGetDeclarationsResponse(
            year: 1000000,
            facts: DeReturnFactsGetDeclarationsResponseFacts(
                changedShareholderIds: Optional([
                    "changedShareholderIds",
                    "changedShareholderIds"
                ]),
                shareholderContracts: Optional(true),
                contracts: Optional([
                    DeReturnFactsGetDeclarationsResponseFactsContractsItem(
                        kind: "x",
                        date: CalendarDate("2023-01-15")!,
                        partner: "x",
                        amount: "amount"
                    ),
                    DeReturnFactsGetDeclarationsResponseFactsContractsItem(
                        kind: "x",
                        date: CalendarDate("2023-01-15")!,
                        partner: "x",
                        amount: "amount"
                    )
                ]),
                harmfulShareAcquisition: Optional(true),
                coronaAid: Optional("coronaAid"),
                lossCarryback: Optional("lossCarryback"),
                donationCarryforward: Optional("donationCarryforward"),
                contributionAccountOpening: Optional("contributionAccountOpening"),
                contributions: Optional([
                    DeReturnFactsGetDeclarationsResponseFactsContributionsItem(
                        name: "x",
                        date: CalendarDate("2023-01-15")!,
                        kind: .cash,
                        description: Optional("description"),
                        amount: "amount"
                    ),
                    DeReturnFactsGetDeclarationsResponseFactsContributionsItem(
                        name: "x",
                        date: CalendarDate("2023-01-15")!,
                        kind: .cash,
                        description: Optional("description"),
                        amount: "amount"
                    )
                ]),
                distributions: Optional([
                    DeReturnFactsGetDeclarationsResponseFactsDistributionsItem(
                        resolutionDate: CalendarDate("2023-01-15")!,
                        paidOn: CalendarDate("2023-01-15")!,
                        amount: "amount",
                        certifiedReduction: "certifiedReduction"
                    ),
                    DeReturnFactsGetDeclarationsResponseFactsDistributionsItem(
                        resolutionDate: CalendarDate("2023-01-15")!,
                        paidOn: CalendarDate("2023-01-15")!,
                        amount: "amount",
                        certifiedReduction: "certifiedReduction"
                    )
                ]),
                taxBalanceEquity: Optional("taxBalanceEquity"),
                multipleMunicipalities: Optional(true),
                relocation: Optional(Nullable<DeReturnFactsGetDeclarationsResponseFactsRelocation>.value(DeReturnFactsGetDeclarationsResponseFactsRelocation(
                    date: CalendarDate("2023-01-15")!,
                    from: "x",
                    to: "x"
                ))),
                municipalities: Optional([
                    DeReturnFactsGetDeclarationsResponseFactsMunicipalitiesItem(
                        name: "x",
                        postalCode: "postalCode",
                        ags: "ags",
                        hebesatz: "hebesatz",
                        wages: "wages"
                    ),
                    DeReturnFactsGetDeclarationsResponseFactsMunicipalitiesItem(
                        name: "x",
                        postalCode: "postalCode",
                        ags: "ags",
                        hebesatz: "hebesatz",
                        wages: "wages"
                    )
                ]),
                landHoldings: Optional([
                    DeReturnFactsGetDeclarationsResponseFactsLandHoldingsItem(
                        fileNumber: "x",
                        assessedValue: "assessedValue",
                        category: .rentalEast
                    ),
                    DeReturnFactsGetDeclarationsResponseFactsLandHoldingsItem(
                        fileNumber: "x",
                        assessedValue: "assessedValue",
                        category: .rentalEast
                    )
                ]),
                propertyTaxExpense: Optional("propertyTaxExpense"),
                licencesToNonResidents: Optional("licencesToNonResidents"),
                participations: Optional([
                    DeReturnFactsGetDeclarationsResponseFactsParticipationsItem(
                        name: "x",
                        countryCode: "countryCode",
                        sharePercent: "sharePercent",
                        dividends: "dividends"
                    ),
                    DeReturnFactsGetDeclarationsResponseFactsParticipationsItem(
                        name: "x",
                        countryCode: "countryCode",
                        sharePercent: "sharePercent",
                        dividends: "dividends"
                    )
                ]),
                foreignIncome: Optional([
                    DeReturnFactsGetDeclarationsResponseFactsForeignIncomeItem(
                        countryCode: "countryCode",
                        kind: .dividends,
                        income: "income"
                    ),
                    DeReturnFactsGetDeclarationsResponseFactsForeignIncomeItem(
                        countryCode: "countryCode",
                        kind: .dividends,
                        income: "income"
                    )
                ]),
                smallBusinessSwitchDate: Optional(Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!)),
                refundProcedureApplied: Optional(true),
                bic: Optional("bic"),
                representative: Optional(Nullable<DeReturnFactsGetDeclarationsResponseFactsRepresentative>.value(DeReturnFactsGetDeclarationsResponseFactsRepresentative(
                    role: .agent,
                    name: "x",
                    street: "x",
                    houseNumber: Optional("houseNumber"),
                    postalCode: "x",
                    city: "x"
                ))),
                singleTransportTax: Optional("singleTransportTax"),
                distanceSales: Optional("distanceSales")
            )
        )
        let response = try await client.declarations.deReturnFactsGet(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deReturnFactsSet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "facts": {
                    "changedShareholderIds": [
                      "changedShareholderIds"
                    ],
                    "shareholderContracts": true,
                    "contracts": [
                      {
                        "kind": "kind",
                        "date": "2026-07-01",
                        "partner": "partner",
                        "amount": "-121.00"
                      }
                    ],
                    "harmfulShareAcquisition": true,
                    "coronaAid": "-121.00",
                    "lossCarryback": "-121.00",
                    "donationCarryforward": "-121.00",
                    "contributionAccountOpening": "-121.00",
                    "contributions": [
                      {
                        "name": "name",
                        "date": "2026-07-01",
                        "kind": "cash",
                        "amount": "-121.00"
                      }
                    ],
                    "distributions": [
                      {
                        "resolutionDate": "2026-07-01",
                        "paidOn": "2026-07-01",
                        "amount": "-121.00",
                        "certifiedReduction": "-121.00"
                      }
                    ],
                    "taxBalanceEquity": "-121.00",
                    "multipleMunicipalities": true,
                    "relocation": {
                      "date": "2026-07-01",
                      "from": "from",
                      "to": "to"
                    },
                    "municipalities": [
                      {
                        "name": "name",
                        "postalCode": "postalCode",
                        "ags": "ags",
                        "hebesatz": "121.00",
                        "wages": "-121.00"
                      }
                    ],
                    "landHoldings": [
                      {
                        "fileNumber": "fileNumber",
                        "assessedValue": "-121.00",
                        "category": "rental_east"
                      }
                    ],
                    "propertyTaxExpense": "-121.00",
                    "licencesToNonResidents": "-121.00",
                    "participations": [
                      {
                        "name": "name",
                        "countryCode": "countryCode",
                        "sharePercent": "121.0000",
                        "dividends": "-121.00"
                      }
                    ],
                    "foreignIncome": [
                      {
                        "countryCode": "countryCode",
                        "kind": "dividends",
                        "income": "-121.00"
                      }
                    ],
                    "smallBusinessSwitchDate": "2026-07-01",
                    "refundProcedureApplied": true,
                    "bic": "bic",
                    "representative": {
                      "role": "agent",
                      "name": "name",
                      "street": "street",
                      "houseNumber": "houseNumber",
                      "postalCode": "postalCode",
                      "city": "city"
                    },
                    "singleTransportTax": "-121.00",
                    "distanceSales": "-121.00"
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
        let expectedResponse = DeReturnFactsSetDeclarationsResponse(
            year: 1000000,
            facts: DeReturnFactsSetDeclarationsResponseFacts(
                changedShareholderIds: Optional([
                    "changedShareholderIds"
                ]),
                shareholderContracts: Optional(true),
                contracts: Optional([
                    DeReturnFactsSetDeclarationsResponseFactsContractsItem(
                        kind: "kind",
                        date: CalendarDate("2026-07-01")!,
                        partner: "partner",
                        amount: "-121.00"
                    )
                ]),
                harmfulShareAcquisition: Optional(true),
                coronaAid: Optional("-121.00"),
                lossCarryback: Optional("-121.00"),
                donationCarryforward: Optional("-121.00"),
                contributionAccountOpening: Optional("-121.00"),
                contributions: Optional([
                    DeReturnFactsSetDeclarationsResponseFactsContributionsItem(
                        name: "name",
                        date: CalendarDate("2026-07-01")!,
                        kind: .cash,
                        amount: "-121.00"
                    )
                ]),
                distributions: Optional([
                    DeReturnFactsSetDeclarationsResponseFactsDistributionsItem(
                        resolutionDate: CalendarDate("2026-07-01")!,
                        paidOn: CalendarDate("2026-07-01")!,
                        amount: "-121.00",
                        certifiedReduction: "-121.00"
                    )
                ]),
                taxBalanceEquity: Optional("-121.00"),
                multipleMunicipalities: Optional(true),
                relocation: Optional(Nullable<DeReturnFactsSetDeclarationsResponseFactsRelocation>.value(DeReturnFactsSetDeclarationsResponseFactsRelocation(
                    date: CalendarDate("2026-07-01")!,
                    from: "from",
                    to: "to"
                ))),
                municipalities: Optional([
                    DeReturnFactsSetDeclarationsResponseFactsMunicipalitiesItem(
                        name: "name",
                        postalCode: "postalCode",
                        ags: "ags",
                        hebesatz: "121.00",
                        wages: "-121.00"
                    )
                ]),
                landHoldings: Optional([
                    DeReturnFactsSetDeclarationsResponseFactsLandHoldingsItem(
                        fileNumber: "fileNumber",
                        assessedValue: "-121.00",
                        category: .rentalEast
                    )
                ]),
                propertyTaxExpense: Optional("-121.00"),
                licencesToNonResidents: Optional("-121.00"),
                participations: Optional([
                    DeReturnFactsSetDeclarationsResponseFactsParticipationsItem(
                        name: "name",
                        countryCode: "countryCode",
                        sharePercent: "121.0000",
                        dividends: "-121.00"
                    )
                ]),
                foreignIncome: Optional([
                    DeReturnFactsSetDeclarationsResponseFactsForeignIncomeItem(
                        countryCode: "countryCode",
                        kind: .dividends,
                        income: "-121.00"
                    )
                ]),
                smallBusinessSwitchDate: Optional(Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!)),
                refundProcedureApplied: Optional(true),
                bic: Optional("bic"),
                representative: Optional(Nullable<DeReturnFactsSetDeclarationsResponseFactsRepresentative>.value(DeReturnFactsSetDeclarationsResponseFactsRepresentative(
                    role: .agent,
                    name: "name",
                    street: "street",
                    houseNumber: Optional("houseNumber"),
                    postalCode: "postalCode",
                    city: "city"
                ))),
                singleTransportTax: Optional("-121.00"),
                distanceSales: Optional("-121.00")
            )
        )
        let response = try await client.declarations.deReturnFactsSet(
            request: .init(
                year: 1000000,
                facts: DeReturnFactsSetDeclarationsRequestFacts(

                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deReturnFactsSet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "facts": {
                    "changedShareholderIds": [
                      "changedShareholderIds",
                      "changedShareholderIds"
                    ],
                    "shareholderContracts": true,
                    "contracts": [
                      {
                        "kind": "x",
                        "date": "2023-01-15",
                        "partner": "x",
                        "amount": "amount"
                      },
                      {
                        "kind": "x",
                        "date": "2023-01-15",
                        "partner": "x",
                        "amount": "amount"
                      }
                    ],
                    "harmfulShareAcquisition": true,
                    "coronaAid": "coronaAid",
                    "lossCarryback": "lossCarryback",
                    "donationCarryforward": "donationCarryforward",
                    "contributionAccountOpening": "contributionAccountOpening",
                    "contributions": [
                      {
                        "name": "x",
                        "date": "2023-01-15",
                        "kind": "cash",
                        "description": "description",
                        "amount": "amount"
                      },
                      {
                        "name": "x",
                        "date": "2023-01-15",
                        "kind": "cash",
                        "description": "description",
                        "amount": "amount"
                      }
                    ],
                    "distributions": [
                      {
                        "resolutionDate": "2023-01-15",
                        "paidOn": "2023-01-15",
                        "amount": "amount",
                        "certifiedReduction": "certifiedReduction"
                      },
                      {
                        "resolutionDate": "2023-01-15",
                        "paidOn": "2023-01-15",
                        "amount": "amount",
                        "certifiedReduction": "certifiedReduction"
                      }
                    ],
                    "taxBalanceEquity": "taxBalanceEquity",
                    "multipleMunicipalities": true,
                    "relocation": {
                      "date": "2023-01-15",
                      "from": "x",
                      "to": "x"
                    },
                    "municipalities": [
                      {
                        "name": "x",
                        "postalCode": "postalCode",
                        "ags": "ags",
                        "hebesatz": "hebesatz",
                        "wages": "wages"
                      },
                      {
                        "name": "x",
                        "postalCode": "postalCode",
                        "ags": "ags",
                        "hebesatz": "hebesatz",
                        "wages": "wages"
                      }
                    ],
                    "landHoldings": [
                      {
                        "fileNumber": "x",
                        "assessedValue": "assessedValue",
                        "category": "rental_east"
                      },
                      {
                        "fileNumber": "x",
                        "assessedValue": "assessedValue",
                        "category": "rental_east"
                      }
                    ],
                    "propertyTaxExpense": "propertyTaxExpense",
                    "licencesToNonResidents": "licencesToNonResidents",
                    "participations": [
                      {
                        "name": "x",
                        "countryCode": "countryCode",
                        "sharePercent": "sharePercent",
                        "dividends": "dividends"
                      },
                      {
                        "name": "x",
                        "countryCode": "countryCode",
                        "sharePercent": "sharePercent",
                        "dividends": "dividends"
                      }
                    ],
                    "foreignIncome": [
                      {
                        "countryCode": "countryCode",
                        "kind": "dividends",
                        "income": "income"
                      },
                      {
                        "countryCode": "countryCode",
                        "kind": "dividends",
                        "income": "income"
                      }
                    ],
                    "smallBusinessSwitchDate": "2023-01-15",
                    "refundProcedureApplied": true,
                    "bic": "bic",
                    "representative": {
                      "role": "agent",
                      "name": "x",
                      "street": "x",
                      "houseNumber": "houseNumber",
                      "postalCode": "x",
                      "city": "x"
                    },
                    "singleTransportTax": "singleTransportTax",
                    "distanceSales": "distanceSales"
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
        let expectedResponse = DeReturnFactsSetDeclarationsResponse(
            year: 1000000,
            facts: DeReturnFactsSetDeclarationsResponseFacts(
                changedShareholderIds: Optional([
                    "changedShareholderIds",
                    "changedShareholderIds"
                ]),
                shareholderContracts: Optional(true),
                contracts: Optional([
                    DeReturnFactsSetDeclarationsResponseFactsContractsItem(
                        kind: "x",
                        date: CalendarDate("2023-01-15")!,
                        partner: "x",
                        amount: "amount"
                    ),
                    DeReturnFactsSetDeclarationsResponseFactsContractsItem(
                        kind: "x",
                        date: CalendarDate("2023-01-15")!,
                        partner: "x",
                        amount: "amount"
                    )
                ]),
                harmfulShareAcquisition: Optional(true),
                coronaAid: Optional("coronaAid"),
                lossCarryback: Optional("lossCarryback"),
                donationCarryforward: Optional("donationCarryforward"),
                contributionAccountOpening: Optional("contributionAccountOpening"),
                contributions: Optional([
                    DeReturnFactsSetDeclarationsResponseFactsContributionsItem(
                        name: "x",
                        date: CalendarDate("2023-01-15")!,
                        kind: .cash,
                        description: Optional("description"),
                        amount: "amount"
                    ),
                    DeReturnFactsSetDeclarationsResponseFactsContributionsItem(
                        name: "x",
                        date: CalendarDate("2023-01-15")!,
                        kind: .cash,
                        description: Optional("description"),
                        amount: "amount"
                    )
                ]),
                distributions: Optional([
                    DeReturnFactsSetDeclarationsResponseFactsDistributionsItem(
                        resolutionDate: CalendarDate("2023-01-15")!,
                        paidOn: CalendarDate("2023-01-15")!,
                        amount: "amount",
                        certifiedReduction: "certifiedReduction"
                    ),
                    DeReturnFactsSetDeclarationsResponseFactsDistributionsItem(
                        resolutionDate: CalendarDate("2023-01-15")!,
                        paidOn: CalendarDate("2023-01-15")!,
                        amount: "amount",
                        certifiedReduction: "certifiedReduction"
                    )
                ]),
                taxBalanceEquity: Optional("taxBalanceEquity"),
                multipleMunicipalities: Optional(true),
                relocation: Optional(Nullable<DeReturnFactsSetDeclarationsResponseFactsRelocation>.value(DeReturnFactsSetDeclarationsResponseFactsRelocation(
                    date: CalendarDate("2023-01-15")!,
                    from: "x",
                    to: "x"
                ))),
                municipalities: Optional([
                    DeReturnFactsSetDeclarationsResponseFactsMunicipalitiesItem(
                        name: "x",
                        postalCode: "postalCode",
                        ags: "ags",
                        hebesatz: "hebesatz",
                        wages: "wages"
                    ),
                    DeReturnFactsSetDeclarationsResponseFactsMunicipalitiesItem(
                        name: "x",
                        postalCode: "postalCode",
                        ags: "ags",
                        hebesatz: "hebesatz",
                        wages: "wages"
                    )
                ]),
                landHoldings: Optional([
                    DeReturnFactsSetDeclarationsResponseFactsLandHoldingsItem(
                        fileNumber: "x",
                        assessedValue: "assessedValue",
                        category: .rentalEast
                    ),
                    DeReturnFactsSetDeclarationsResponseFactsLandHoldingsItem(
                        fileNumber: "x",
                        assessedValue: "assessedValue",
                        category: .rentalEast
                    )
                ]),
                propertyTaxExpense: Optional("propertyTaxExpense"),
                licencesToNonResidents: Optional("licencesToNonResidents"),
                participations: Optional([
                    DeReturnFactsSetDeclarationsResponseFactsParticipationsItem(
                        name: "x",
                        countryCode: "countryCode",
                        sharePercent: "sharePercent",
                        dividends: "dividends"
                    ),
                    DeReturnFactsSetDeclarationsResponseFactsParticipationsItem(
                        name: "x",
                        countryCode: "countryCode",
                        sharePercent: "sharePercent",
                        dividends: "dividends"
                    )
                ]),
                foreignIncome: Optional([
                    DeReturnFactsSetDeclarationsResponseFactsForeignIncomeItem(
                        countryCode: "countryCode",
                        kind: .dividends,
                        income: "income"
                    ),
                    DeReturnFactsSetDeclarationsResponseFactsForeignIncomeItem(
                        countryCode: "countryCode",
                        kind: .dividends,
                        income: "income"
                    )
                ]),
                smallBusinessSwitchDate: Optional(Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!)),
                refundProcedureApplied: Optional(true),
                bic: Optional("bic"),
                representative: Optional(Nullable<DeReturnFactsSetDeclarationsResponseFactsRepresentative>.value(DeReturnFactsSetDeclarationsResponseFactsRepresentative(
                    role: .agent,
                    name: "x",
                    street: "x",
                    houseNumber: Optional("houseNumber"),
                    postalCode: "x",
                    city: "x"
                ))),
                singleTransportTax: Optional("singleTransportTax"),
                distanceSales: Optional("distanceSales")
            )
        )
        let response = try await client.declarations.deReturnFactsSet(
            request: .init(
                year: 1000000,
                facts: DeReturnFactsSetDeclarationsRequestFacts(

                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deDeuevGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "fileName": "fileName",
                  "content": "content",
                  "source": "source",
                  "records": [
                    {
                      "employeeId": "employeeId",
                      "name": "name",
                      "abgabegrund": "abgabegrund",
                      "versicherungsnummer": "versicherungsnummer",
                      "betriebsnummerKrankenkasse": "betriebsnummerKrankenkasse",
                      "personengruppe": "personengruppe",
                      "beitragsgruppe": "beitragsgruppe",
                      "zeitraumBeginn": "zeitraumBeginn",
                      "zeitraumEnde": "zeitraumEnde",
                      "entgelt": "entgelt",
                      "record": "record",
                      "warnings": [
                        "warnings"
                      ]
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
        let expectedResponse = DeDeuevGenerateDeclarationsResponse(
            year: 1000000,
            month: 1000000,
            fileName: "fileName",
            content: "content",
            source: "source",
            records: [
                DeDeuevGenerateDeclarationsResponseRecordsItem(
                    employeeId: "employeeId",
                    name: "name",
                    abgabegrund: "abgabegrund",
                    versicherungsnummer: "versicherungsnummer",
                    betriebsnummerKrankenkasse: "betriebsnummerKrankenkasse",
                    personengruppe: "personengruppe",
                    beitragsgruppe: "beitragsgruppe",
                    zeitraumBeginn: "zeitraumBeginn",
                    zeitraumEnde: Nullable<String>.value("zeitraumEnde"),
                    entgelt: "entgelt",
                    record: "record",
                    warnings: [
                        "warnings"
                    ]
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.deDeuevGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deDeuevGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "fileName": "fileName",
                  "content": "content",
                  "source": "source",
                  "records": [
                    {
                      "employeeId": "employeeId",
                      "name": "name",
                      "abgabegrund": "abgabegrund",
                      "versicherungsnummer": "versicherungsnummer",
                      "betriebsnummerKrankenkasse": "betriebsnummerKrankenkasse",
                      "personengruppe": "personengruppe",
                      "beitragsgruppe": "beitragsgruppe",
                      "zeitraumBeginn": "zeitraumBeginn",
                      "zeitraumEnde": "zeitraumEnde",
                      "entgelt": "entgelt",
                      "record": "record",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
                    },
                    {
                      "employeeId": "employeeId",
                      "name": "name",
                      "abgabegrund": "abgabegrund",
                      "versicherungsnummer": "versicherungsnummer",
                      "betriebsnummerKrankenkasse": "betriebsnummerKrankenkasse",
                      "personengruppe": "personengruppe",
                      "beitragsgruppe": "beitragsgruppe",
                      "zeitraumBeginn": "zeitraumBeginn",
                      "zeitraumEnde": "zeitraumEnde",
                      "entgelt": "entgelt",
                      "record": "record",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
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
        let expectedResponse = DeDeuevGenerateDeclarationsResponse(
            year: 1000000,
            month: 1000000,
            fileName: "fileName",
            content: "content",
            source: "source",
            records: [
                DeDeuevGenerateDeclarationsResponseRecordsItem(
                    employeeId: "employeeId",
                    name: "name",
                    abgabegrund: "abgabegrund",
                    versicherungsnummer: "versicherungsnummer",
                    betriebsnummerKrankenkasse: "betriebsnummerKrankenkasse",
                    personengruppe: "personengruppe",
                    beitragsgruppe: "beitragsgruppe",
                    zeitraumBeginn: "zeitraumBeginn",
                    zeitraumEnde: Nullable<String>.value("zeitraumEnde"),
                    entgelt: "entgelt",
                    record: "record",
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
                ),
                DeDeuevGenerateDeclarationsResponseRecordsItem(
                    employeeId: "employeeId",
                    name: "name",
                    abgabegrund: "abgabegrund",
                    versicherungsnummer: "versicherungsnummer",
                    betriebsnummerKrankenkasse: "betriebsnummerKrankenkasse",
                    personengruppe: "personengruppe",
                    beitragsgruppe: "beitragsgruppe",
                    zeitraumBeginn: "zeitraumBeginn",
                    zeitraumEnde: Nullable<String>.value("zeitraumEnde"),
                    entgelt: "entgelt",
                    record: "record",
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
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
        let response = try await client.declarations.deDeuevGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deBeitragsnachweisGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "fileName": "fileName",
                  "content": "content",
                  "source": "source",
                  "records": [
                    {
                      "betriebsnummerKrankenkasse": "betriebsnummerKrankenkasse",
                      "faelligkeitstag": "faelligkeitstag",
                      "kvAllgemein": "kvAllgemein",
                      "kvZusatzbeitrag": "kvZusatzbeitrag",
                      "pauschsteuer": "pauschsteuer",
                      "beitragssatzAllgemein": "beitragssatzAllgemein",
                      "summe": "summe",
                      "positionen": [
                        {
                          "beitragsgruppe": "beitragsgruppe",
                          "betrag": "betrag"
                        }
                      ],
                      "record": "record"
                    }
                  ],
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
        let expectedResponse = DeBeitragsnachweisGenerateDeclarationsResponse(
            year: 1000000,
            month: 1000000,
            fileName: "fileName",
            content: "content",
            source: "source",
            records: [
                DeBeitragsnachweisGenerateDeclarationsResponseRecordsItem(
                    betriebsnummerKrankenkasse: "betriebsnummerKrankenkasse",
                    faelligkeitstag: "faelligkeitstag",
                    kvAllgemein: "kvAllgemein",
                    kvZusatzbeitrag: "kvZusatzbeitrag",
                    pauschsteuer: "pauschsteuer",
                    beitragssatzAllgemein: "beitragssatzAllgemein",
                    summe: "summe",
                    positionen: [
                        DeBeitragsnachweisGenerateDeclarationsResponseRecordsItemPositionenItem(
                            beitragsgruppe: "beitragsgruppe",
                            betrag: "betrag"
                        )
                    ],
                    record: "record"
                )
            ],
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.deBeitragsnachweisGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deBeitragsnachweisGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "fileName": "fileName",
                  "content": "content",
                  "source": "source",
                  "records": [
                    {
                      "betriebsnummerKrankenkasse": "betriebsnummerKrankenkasse",
                      "faelligkeitstag": "faelligkeitstag",
                      "kvAllgemein": "kvAllgemein",
                      "kvZusatzbeitrag": "kvZusatzbeitrag",
                      "pauschsteuer": "pauschsteuer",
                      "beitragssatzAllgemein": "beitragssatzAllgemein",
                      "summe": "summe",
                      "positionen": [
                        {
                          "beitragsgruppe": "beitragsgruppe",
                          "betrag": "betrag"
                        },
                        {
                          "beitragsgruppe": "beitragsgruppe",
                          "betrag": "betrag"
                        }
                      ],
                      "record": "record"
                    },
                    {
                      "betriebsnummerKrankenkasse": "betriebsnummerKrankenkasse",
                      "faelligkeitstag": "faelligkeitstag",
                      "kvAllgemein": "kvAllgemein",
                      "kvZusatzbeitrag": "kvZusatzbeitrag",
                      "pauschsteuer": "pauschsteuer",
                      "beitragssatzAllgemein": "beitragssatzAllgemein",
                      "summe": "summe",
                      "positionen": [
                        {
                          "beitragsgruppe": "beitragsgruppe",
                          "betrag": "betrag"
                        },
                        {
                          "beitragsgruppe": "beitragsgruppe",
                          "betrag": "betrag"
                        }
                      ],
                      "record": "record"
                    }
                  ],
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
        let expectedResponse = DeBeitragsnachweisGenerateDeclarationsResponse(
            year: 1000000,
            month: 1000000,
            fileName: "fileName",
            content: "content",
            source: "source",
            records: [
                DeBeitragsnachweisGenerateDeclarationsResponseRecordsItem(
                    betriebsnummerKrankenkasse: "betriebsnummerKrankenkasse",
                    faelligkeitstag: "faelligkeitstag",
                    kvAllgemein: "kvAllgemein",
                    kvZusatzbeitrag: "kvZusatzbeitrag",
                    pauschsteuer: "pauschsteuer",
                    beitragssatzAllgemein: "beitragssatzAllgemein",
                    summe: "summe",
                    positionen: [
                        DeBeitragsnachweisGenerateDeclarationsResponseRecordsItemPositionenItem(
                            beitragsgruppe: "beitragsgruppe",
                            betrag: "betrag"
                        ),
                        DeBeitragsnachweisGenerateDeclarationsResponseRecordsItemPositionenItem(
                            beitragsgruppe: "beitragsgruppe",
                            betrag: "betrag"
                        )
                    ],
                    record: "record"
                ),
                DeBeitragsnachweisGenerateDeclarationsResponseRecordsItem(
                    betriebsnummerKrankenkasse: "betriebsnummerKrankenkasse",
                    faelligkeitstag: "faelligkeitstag",
                    kvAllgemein: "kvAllgemein",
                    kvZusatzbeitrag: "kvZusatzbeitrag",
                    pauschsteuer: "pauschsteuer",
                    beitragssatzAllgemein: "beitragssatzAllgemein",
                    summe: "summe",
                    positionen: [
                        DeBeitragsnachweisGenerateDeclarationsResponseRecordsItemPositionenItem(
                            beitragsgruppe: "beitragsgruppe",
                            betrag: "betrag"
                        ),
                        DeBeitragsnachweisGenerateDeclarationsResponseRecordsItemPositionenItem(
                            beitragsgruppe: "beitragsgruppe",
                            betrag: "betrag"
                        )
                    ],
                    record: "record"
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.deBeitragsnachweisGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func dkSelskabsskatGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "cvrNummer": "cvrNummer",
                  "fileName": "fileName",
                  "xml": "xml",
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
        let expectedResponse = DkSelskabsskatGenerateDeclarationsResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            cvrNummer: "cvrNummer",
            fileName: "fileName",
            xml: "xml",
            fields: [
                DkSelskabsskatGenerateDeclarationsResponseFieldsItem(
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
            ],
            source: "source"
        )
        let response = try await client.declarations.dkSelskabsskatGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func dkSelskabsskatGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "cvrNummer": "cvrNummer",
                  "fileName": "fileName",
                  "xml": "xml",
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
        let expectedResponse = DkSelskabsskatGenerateDeclarationsResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            cvrNummer: "cvrNummer",
            fileName: "fileName",
            xml: "xml",
            fields: [
                DkSelskabsskatGenerateDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                DkSelskabsskatGenerateDeclarationsResponseFieldsItem(
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
            ],
            source: "source"
        )
        let response = try await client.declarations.dkSelskabsskatGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func eeEmploymentRegisterSend1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "reference": "reference",
                  "state": "submitted",
                  "detail": "detail",
                  "fileName": "fileName",
                  "entryDate": "2026-07-01",
                  "xml": "xml",
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
        let expectedResponse = EeEmploymentRegisterSendDeclarationsResponse(
            reference: "reference",
            state: .submitted,
            detail: Nullable<String>.value("detail"),
            fileName: "fileName",
            entryDate: CalendarDate("2026-07-01")!,
            xml: "xml",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.eeEmploymentRegisterSend(
            request: .init(
                contractId: "contractId",
                event: .start
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func eeEmploymentRegisterSend2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "reference": "reference",
                  "state": "submitted",
                  "detail": "detail",
                  "fileName": "fileName",
                  "entryDate": "2023-01-15",
                  "xml": "xml",
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
        let expectedResponse = EeEmploymentRegisterSendDeclarationsResponse(
            reference: "reference",
            state: .submitted,
            detail: Nullable<String>.value("detail"),
            fileName: "fileName",
            entryDate: CalendarDate("2023-01-15")!,
            xml: "xml",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.eeEmploymentRegisterSend(
            request: .init(
                contractId: "x",
                event: .start
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func esVerifactuDeclaracionResponsable1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "content": "content",
                  "text": "text",
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
        let expectedResponse = EsVerifactuDeclaracionResponsableDeclarationsResponse(
            fileName: "fileName",
            mimeType: "mimeType",
            content: "content",
            text: "text",
            source: "source"
        )
        let response = try await client.declarations.esVerifactuDeclaracionResponsable(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func esVerifactuDeclaracionResponsable2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "content": "content",
                  "text": "text",
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
        let expectedResponse = EsVerifactuDeclaracionResponsableDeclarationsResponse(
            fileName: "fileName",
            mimeType: "mimeType",
            content: "content",
            text: "text",
            source: "source"
        )
        let response = try await client.declarations.esVerifactuDeclaracionResponsable(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ieCt1Generate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "taxRegNumber": "taxRegNumber",
                  "ct1": {
                    "fileName": "fileName",
                    "xml": "xml"
                  },
                  "accounts": {
                    "fileName": "fileName",
                    "xhtml": "xhtml"
                  },
                  "accountsBlocking": [
                    "accountsBlocking"
                  ],
                  "ixbrlMandatory": true,
                  "criteria": {
                    "balanceSheetTotal": "balanceSheetTotal",
                    "turnover": "turnover",
                    "averageEmployees": 1.1
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
        let expectedResponse = IeCt1GenerateDeclarationsResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            taxRegNumber: "taxRegNumber",
            ct1: IeCt1GenerateDeclarationsResponseCt1(
                fileName: "fileName",
                xml: "xml"
            ),
            accounts: Nullable<IeCt1GenerateDeclarationsResponseAccounts>.value(IeCt1GenerateDeclarationsResponseAccounts(
                fileName: "fileName",
                xhtml: "xhtml"
            )),
            accountsBlocking: [
                "accountsBlocking"
            ],
            ixbrlMandatory: true,
            criteria: IeCt1GenerateDeclarationsResponseCriteria(
                balanceSheetTotal: "balanceSheetTotal",
                turnover: "turnover",
                averageEmployees: 1.1
            ),
            fields: [
                IeCt1GenerateDeclarationsResponseFieldsItem(
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
            ],
            source: "source"
        )
        let response = try await client.declarations.ieCt1Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ieCt1Generate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "taxRegNumber": "taxRegNumber",
                  "ct1": {
                    "fileName": "fileName",
                    "xml": "xml"
                  },
                  "accounts": {
                    "fileName": "fileName",
                    "xhtml": "xhtml"
                  },
                  "accountsBlocking": [
                    "accountsBlocking",
                    "accountsBlocking"
                  ],
                  "ixbrlMandatory": true,
                  "criteria": {
                    "balanceSheetTotal": "balanceSheetTotal",
                    "turnover": "turnover",
                    "averageEmployees": 1.1
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
        let expectedResponse = IeCt1GenerateDeclarationsResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            taxRegNumber: "taxRegNumber",
            ct1: IeCt1GenerateDeclarationsResponseCt1(
                fileName: "fileName",
                xml: "xml"
            ),
            accounts: Nullable<IeCt1GenerateDeclarationsResponseAccounts>.value(IeCt1GenerateDeclarationsResponseAccounts(
                fileName: "fileName",
                xhtml: "xhtml"
            )),
            accountsBlocking: [
                "accountsBlocking",
                "accountsBlocking"
            ],
            ixbrlMandatory: true,
            criteria: IeCt1GenerateDeclarationsResponseCriteria(
                balanceSheetTotal: "balanceSheetTotal",
                turnover: "turnover",
                averageEmployees: 1.1
            ),
            fields: [
                IeCt1GenerateDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                IeCt1GenerateDeclarationsResponseFieldsItem(
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
            ],
            source: "source"
        )
        let response = try await client.declarations.ieCt1Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ieB1Generate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "croNumber": "croNumber",
                  "companyName": "companyName",
                  "annualReturnDate": "2026-07-01",
                  "fileName": "fileName",
                  "xml": "xml",
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "directors": [
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "appointedOn": "appointedOn"
                    }
                  ],
                  "secretary": {
                    "name": "name",
                    "identifier": "identifier"
                  },
                  "members": [
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "sharesQuantity": "sharesQuantity",
                      "sharesAmount": "sharesAmount",
                      "sharesType": "sharesType",
                      "acquisitionDate": "2026-07-01"
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
        let expectedResponse = IeB1GenerateDeclarationsResponse(
            year: 1000000,
            croNumber: "croNumber",
            companyName: "companyName",
            annualReturnDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            fileName: "fileName",
            xml: "xml",
            fields: [
                IeB1GenerateDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            directors: [
                IeB1GenerateDeclarationsResponseDirectorsItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    appointedOn: Nullable<String>.value("appointedOn")
                )
            ],
            secretary: Nullable<IeB1GenerateDeclarationsResponseSecretary>.value(IeB1GenerateDeclarationsResponseSecretary(
                name: "name",
                identifier: Nullable<String>.value("identifier")
            )),
            members: [
                IeB1GenerateDeclarationsResponseMembersItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    sharesQuantity: Nullable<String>.value("sharesQuantity"),
                    sharesAmount: Nullable<String>.value("sharesAmount"),
                    sharesType: Nullable<String>.value("sharesType"),
                    acquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!)
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
        let response = try await client.declarations.ieB1Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ieB1Generate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "croNumber": "croNumber",
                  "companyName": "companyName",
                  "annualReturnDate": "2023-01-15",
                  "fileName": "fileName",
                  "xml": "xml",
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
                  "directors": [
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "appointedOn": "appointedOn"
                    },
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "appointedOn": "appointedOn"
                    }
                  ],
                  "secretary": {
                    "name": "name",
                    "identifier": "identifier"
                  },
                  "members": [
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "sharesQuantity": "sharesQuantity",
                      "sharesAmount": "sharesAmount",
                      "sharesType": "sharesType",
                      "acquisitionDate": "2023-01-15"
                    },
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "sharesQuantity": "sharesQuantity",
                      "sharesAmount": "sharesAmount",
                      "sharesType": "sharesType",
                      "acquisitionDate": "2023-01-15"
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
        let expectedResponse = IeB1GenerateDeclarationsResponse(
            year: 1000000,
            croNumber: "croNumber",
            companyName: "companyName",
            annualReturnDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            fileName: "fileName",
            xml: "xml",
            fields: [
                IeB1GenerateDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                IeB1GenerateDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            directors: [
                IeB1GenerateDeclarationsResponseDirectorsItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    appointedOn: Nullable<String>.value("appointedOn")
                ),
                IeB1GenerateDeclarationsResponseDirectorsItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    appointedOn: Nullable<String>.value("appointedOn")
                )
            ],
            secretary: Nullable<IeB1GenerateDeclarationsResponseSecretary>.value(IeB1GenerateDeclarationsResponseSecretary(
                name: "name",
                identifier: Nullable<String>.value("identifier")
            )),
            members: [
                IeB1GenerateDeclarationsResponseMembersItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    sharesQuantity: Nullable<String>.value("sharesQuantity"),
                    sharesAmount: Nullable<String>.value("sharesAmount"),
                    sharesType: Nullable<String>.value("sharesType"),
                    acquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!)
                ),
                IeB1GenerateDeclarationsResponseMembersItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    sharesQuantity: Nullable<String>.value("sharesQuantity"),
                    sharesAmount: Nullable<String>.value("sharesAmount"),
                    sharesType: Nullable<String>.value("sharesType"),
                    acquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!)
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
        let response = try await client.declarations.ieB1Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itSdiPurchaseSend1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true,
                  "system": "system",
                  "transport": "bridge",
                  "tipoDocumento": "TD16",
                  "messageId": "messageId",
                  "nationalNumber": "nationalNumber",
                  "status": "sent",
                  "detail": "detail",
                  "fileId": "fileId",
                  "net": "net",
                  "vat": "vat",
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
        let expectedResponse = ItSdiPurchaseSendDeclarationsResponse(
            sent: true,
            system: "system",
            transport: .bridge,
            tipoDocumento: .td16,
            messageId: "messageId",
            nationalNumber: Nullable<String>.value("nationalNumber"),
            status: .sent,
            detail: Nullable<String>.value("detail"),
            fileId: "fileId",
            net: "net",
            vat: "vat",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.itSdiPurchaseSend(
            request: .init(purchaseInvoiceId: "purchaseInvoiceId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itSdiPurchaseSend2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true,
                  "system": "system",
                  "transport": "bridge",
                  "tipoDocumento": "TD16",
                  "messageId": "messageId",
                  "nationalNumber": "nationalNumber",
                  "status": "sent",
                  "detail": "detail",
                  "fileId": "x",
                  "net": "net",
                  "vat": "vat",
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
        let expectedResponse = ItSdiPurchaseSendDeclarationsResponse(
            sent: true,
            system: "system",
            transport: .bridge,
            tipoDocumento: .td16,
            messageId: "messageId",
            nationalNumber: Nullable<String>.value("nationalNumber"),
            status: .sent,
            detail: Nullable<String>.value("detail"),
            fileId: "x",
            net: "net",
            vat: "vat",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.itSdiPurchaseSend(
            request: .init(purchaseInvoiceId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itSdiPurchasePreview1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "tipoDocumento": "TD16",
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "net": "net",
                  "vat": "vat",
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
        let expectedResponse = ItSdiPurchasePreviewDeclarationsResponse(
            tipoDocumento: .td16,
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            net: "net",
            vat: "vat",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.itSdiPurchasePreview(
            request: .init(purchaseInvoiceId: "purchaseInvoiceId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itSdiPurchasePreview2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "tipoDocumento": "TD16",
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "net": "net",
                  "vat": "vat",
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
        let expectedResponse = ItSdiPurchasePreviewDeclarationsResponse(
            tipoDocumento: .td16,
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            net: "net",
            vat: "vat",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.itSdiPurchasePreview(
            request: .init(purchaseInvoiceId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltSaftSend1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "submissionId": "submissionId",
                  "caseId": "caseId",
                  "state": "submitted",
                  "detail": "detail",
                  "fileName": "fileName",
                  "confirmed": true,
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
        let expectedResponse = LtSaftSendDeclarationsResponse(
            submissionId: "submissionId",
            caseId: "caseId",
            state: .submitted,
            detail: Nullable<String>.value("detail"),
            fileName: "fileName",
            confirmed: true,
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.ltSaftSend(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltSaftSend2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "submissionId": "x",
                  "caseId": "caseId",
                  "state": "submitted",
                  "detail": "detail",
                  "fileName": "fileName",
                  "confirmed": true,
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
        let expectedResponse = LtSaftSendDeclarationsResponse(
            submissionId: "x",
            caseId: "caseId",
            state: .submitted,
            detail: Nullable<String>.value("detail"),
            fileName: "fileName",
            confirmed: true,
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.ltSaftSend(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltSdFfdata1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "type": "1-SD",
                  "fileName": "fileName",
                  "xml": "xml",
                  "rows": 1000000,
                  "pageCount": 1000000,
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
        let expectedResponse = LtSdFfdataDeclarationsResponse(
            type: .oneSd,
            fileName: "fileName",
            xml: "xml",
            rows: 1000000,
            pageCount: 1000000,
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.ltSdFfdata(
            request: .init(
                type: .oneSd,
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltSdFfdata2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "type": "1-SD",
                  "fileName": "fileName",
                  "xml": "xml",
                  "rows": 1000000,
                  "pageCount": 1000000,
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
        let expectedResponse = LtSdFfdataDeclarationsResponse(
            type: .oneSd,
            fileName: "fileName",
            xml: "xml",
            rows: 1000000,
            pageCount: 1000000,
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.ltSdFfdata(
            request: .init(
                type: .oneSd,
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltPln204Ffdata1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "fileName": "fileName",
                  "xml": "xml",
                  "ratePercent": "ratePercent",
                  "rateCode": "rateCode",
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
        let expectedResponse = LtPln204FfdataDeclarationsResponse(
            year: 1000000,
            fileName: "fileName",
            xml: "xml",
            ratePercent: "ratePercent",
            rateCode: "rateCode",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.ltPln204Ffdata(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltPln204Ffdata2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "fileName": "fileName",
                  "xml": "xml",
                  "ratePercent": "ratePercent",
                  "rateCode": "rateCode",
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
        let expectedResponse = LtPln204FfdataDeclarationsResponse(
            year: 1000000,
            fileName: "fileName",
            xml: "xml",
            ratePercent: "ratePercent",
            rateCode: "rateCode",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.ltPln204Ffdata(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func mtCompanyTaxGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "yearOfAssessment": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "incomeTaxNumber": "incomeTaxNumber",
                  "fileName": "fileName",
                  "xml": "xml",
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "taxAccounts": [
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
        let expectedResponse = MtCompanyTaxGenerateDeclarationsResponse(
            year: 1000000,
            yearOfAssessment: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            incomeTaxNumber: "incomeTaxNumber",
            fileName: "fileName",
            xml: "xml",
            fields: [
                MtCompanyTaxGenerateDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            taxAccounts: [
                MtCompanyTaxGenerateDeclarationsResponseTaxAccountsItem(
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
        let response = try await client.declarations.mtCompanyTaxGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func mtCompanyTaxGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "yearOfAssessment": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "incomeTaxNumber": "incomeTaxNumber",
                  "fileName": "fileName",
                  "xml": "xml",
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
                  "taxAccounts": [
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
        let expectedResponse = MtCompanyTaxGenerateDeclarationsResponse(
            year: 1000000,
            yearOfAssessment: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            incomeTaxNumber: "incomeTaxNumber",
            fileName: "fileName",
            xml: "xml",
            fields: [
                MtCompanyTaxGenerateDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                MtCompanyTaxGenerateDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            taxAccounts: [
                MtCompanyTaxGenerateDeclarationsResponseTaxAccountsItem(
                    code: "code",
                    label: "label",
                    amount: "amount"
                ),
                MtCompanyTaxGenerateDeclarationsResponseTaxAccountsItem(
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
        let response = try await client.declarations.mtCompanyTaxGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func mtAnnualReturnGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "madeUpTo": "madeUpTo",
                  "mbrNumber": "mbrNumber",
                  "companyName": "companyName",
                  "fileName": "fileName",
                  "xml": "xml",
                  "pdfFileName": "pdfFileName",
                  "pdf": "pdf",
                  "formSource": "formSource",
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "members": [
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "shares": "shares",
                      "nominalValue": "nominalValue",
                      "shareClass": "shareClass"
                    }
                  ],
                  "officers": [
                    {
                      "position": "position",
                      "name": "name",
                      "identifier": "identifier"
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
        let expectedResponse = MtAnnualReturnGenerateDeclarationsResponse(
            year: 1000000,
            madeUpTo: Nullable<String>.value("madeUpTo"),
            mbrNumber: "mbrNumber",
            companyName: "companyName",
            fileName: "fileName",
            xml: "xml",
            pdfFileName: "pdfFileName",
            pdf: "pdf",
            formSource: "formSource",
            fields: [
                MtAnnualReturnGenerateDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            members: [
                MtAnnualReturnGenerateDeclarationsResponseMembersItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    shares: "shares",
                    nominalValue: "nominalValue",
                    shareClass: "shareClass"
                )
            ],
            officers: [
                MtAnnualReturnGenerateDeclarationsResponseOfficersItem(
                    position: "position",
                    name: "name",
                    identifier: Nullable<String>.value("identifier")
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
        let response = try await client.declarations.mtAnnualReturnGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func mtAnnualReturnGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "madeUpTo": "madeUpTo",
                  "mbrNumber": "mbrNumber",
                  "companyName": "companyName",
                  "fileName": "fileName",
                  "xml": "xml",
                  "pdfFileName": "pdfFileName",
                  "pdf": "pdf",
                  "formSource": "formSource",
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
                  "members": [
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "shares": "shares",
                      "nominalValue": "nominalValue",
                      "shareClass": "shareClass"
                    },
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "shares": "shares",
                      "nominalValue": "nominalValue",
                      "shareClass": "shareClass"
                    }
                  ],
                  "officers": [
                    {
                      "position": "position",
                      "name": "name",
                      "identifier": "identifier"
                    },
                    {
                      "position": "position",
                      "name": "name",
                      "identifier": "identifier"
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
        let expectedResponse = MtAnnualReturnGenerateDeclarationsResponse(
            year: 1000000,
            madeUpTo: Nullable<String>.value("madeUpTo"),
            mbrNumber: "mbrNumber",
            companyName: "companyName",
            fileName: "fileName",
            xml: "xml",
            pdfFileName: "pdfFileName",
            pdf: "pdf",
            formSource: "formSource",
            fields: [
                MtAnnualReturnGenerateDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                MtAnnualReturnGenerateDeclarationsResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            members: [
                MtAnnualReturnGenerateDeclarationsResponseMembersItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    shares: "shares",
                    nominalValue: "nominalValue",
                    shareClass: "shareClass"
                ),
                MtAnnualReturnGenerateDeclarationsResponseMembersItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    shares: "shares",
                    nominalValue: "nominalValue",
                    shareClass: "shareClass"
                )
            ],
            officers: [
                MtAnnualReturnGenerateDeclarationsResponseOfficersItem(
                    position: "position",
                    name: "name",
                    identifier: Nullable<String>.value("identifier")
                ),
                MtAnnualReturnGenerateDeclarationsResponseOfficersItem(
                    position: "position",
                    name: "name",
                    identifier: Nullable<String>.value("identifier")
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
        let response = try await client.declarations.mtAnnualReturnGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plJpkFaGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "xml": "xml",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source",
                  "counts": {
                    "invoices": 1000000,
                    "lines": 1000000
                  },
                  "totals": {
                    "invoices": "invoices",
                    "lines": "lines"
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
        let expectedResponse = PlJpkFaGenerateDeclarationsResponse(
            fileName: "fileName",
            xml: "xml",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source",
            counts: PlJpkFaGenerateDeclarationsResponseCounts(
                invoices: 1000000,
                lines: 1000000
            ),
            totals: PlJpkFaGenerateDeclarationsResponseTotals(
                invoices: "invoices",
                lines: "lines"
            )
        )
        let response = try await client.declarations.plJpkFaGenerate(
            request: .init(
                dateFrom: CalendarDate("2026-07-01")!,
                dateTo: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plJpkFaGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "xml": "xml",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source",
                  "counts": {
                    "invoices": 1000000,
                    "lines": 1000000
                  },
                  "totals": {
                    "invoices": "invoices",
                    "lines": "lines"
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
        let expectedResponse = PlJpkFaGenerateDeclarationsResponse(
            fileName: "fileName",
            xml: "xml",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source",
            counts: PlJpkFaGenerateDeclarationsResponseCounts(
                invoices: 1000000,
                lines: 1000000
            ),
            totals: PlJpkFaGenerateDeclarationsResponseTotals(
                invoices: "invoices",
                lines: "lines"
            )
        )
        let response = try await client.declarations.plJpkFaGenerate(
            request: .init(
                dateFrom: CalendarDate("2023-01-15")!,
                dateTo: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plJpkKrGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "xml": "xml",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source",
                  "counts": {
                    "accounts": 1000000,
                    "journalRows": 1000000,
                    "entryRows": 1000000
                  },
                  "totals": {
                    "operations": "operations",
                    "debit": "debit",
                    "credit": "credit"
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
        let expectedResponse = PlJpkKrGenerateDeclarationsResponse(
            fileName: "fileName",
            xml: "xml",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source",
            counts: PlJpkKrGenerateDeclarationsResponseCounts(
                accounts: 1000000,
                journalRows: 1000000,
                entryRows: 1000000
            ),
            totals: PlJpkKrGenerateDeclarationsResponseTotals(
                operations: "operations",
                debit: "debit",
                credit: "credit"
            )
        )
        let response = try await client.declarations.plJpkKrGenerate(
            request: .init(
                dateFrom: CalendarDate("2026-07-01")!,
                dateTo: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plJpkKrGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "xml": "xml",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source",
                  "counts": {
                    "accounts": 1000000,
                    "journalRows": 1000000,
                    "entryRows": 1000000
                  },
                  "totals": {
                    "operations": "operations",
                    "debit": "debit",
                    "credit": "credit"
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
        let expectedResponse = PlJpkKrGenerateDeclarationsResponse(
            fileName: "fileName",
            xml: "xml",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source",
            counts: PlJpkKrGenerateDeclarationsResponseCounts(
                accounts: 1000000,
                journalRows: 1000000,
                entryRows: 1000000
            ),
            totals: PlJpkKrGenerateDeclarationsResponseTotals(
                operations: "operations",
                debit: "debit",
                credit: "credit"
            )
        )
        let response = try await client.declarations.plJpkKrGenerate(
            request: .init(
                dateFrom: CalendarDate("2023-01-15")!,
                dateTo: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plJpkMagGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "xml": "xml",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source",
                  "warehouseCode": "warehouseCode",
                  "counts": {
                    "pz": 1000000,
                    "pw": 1000000,
                    "wz": 1000000,
                    "rw": 1000000,
                    "rows": 1000000
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
        let expectedResponse = PlJpkMagGenerateDeclarationsResponse(
            fileName: "fileName",
            xml: "xml",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source",
            warehouseCode: "warehouseCode",
            counts: PlJpkMagGenerateDeclarationsResponseCounts(
                pz: 1000000,
                pw: 1000000,
                wz: 1000000,
                rw: 1000000,
                rows: 1000000
            )
        )
        let response = try await client.declarations.plJpkMagGenerate(
            request: .init(
                dateFrom: CalendarDate("2026-07-01")!,
                dateTo: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plJpkMagGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "xml": "xml",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source",
                  "warehouseCode": "warehouseCode",
                  "counts": {
                    "pz": 1000000,
                    "pw": 1000000,
                    "wz": 1000000,
                    "rw": 1000000,
                    "rows": 1000000
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
        let expectedResponse = PlJpkMagGenerateDeclarationsResponse(
            fileName: "fileName",
            xml: "xml",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source",
            warehouseCode: "warehouseCode",
            counts: PlJpkMagGenerateDeclarationsResponseCounts(
                pz: 1000000,
                pw: 1000000,
                wz: 1000000,
                rw: 1000000,
                rows: 1000000
            )
        )
        let response = try await client.declarations.plJpkMagGenerate(
            request: .init(
                dateFrom: CalendarDate("2023-01-15")!,
                dateTo: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plPit11Generate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "source": "source",
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "persons": [
                    {
                      "employeeId": "employeeId",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "pesel": "pesel",
                      "revenue": "revenue",
                      "deductibleCosts": "deductibleCosts",
                      "advanceWithheld": "advanceWithheld",
                      "socialContributions": "socialContributions",
                      "healthContributions": "healthContributions",
                      "fileName": "fileName",
                      "xml": "xml",
                      "warnings": [
                        "warnings"
                      ]
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
        let expectedResponse = PlPit11GenerateDeclarationsResponse(
            year: 1000000,
            source: "source",
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            persons: [
                PlPit11GenerateDeclarationsResponsePersonsItem(
                    employeeId: "employeeId",
                    firstName: "firstName",
                    lastName: "lastName",
                    pesel: Nullable<String>.value("pesel"),
                    revenue: "revenue",
                    deductibleCosts: "deductibleCosts",
                    advanceWithheld: "advanceWithheld",
                    socialContributions: "socialContributions",
                    healthContributions: "healthContributions",
                    fileName: "fileName",
                    xml: "xml",
                    warnings: [
                        "warnings"
                    ]
                )
            ]
        )
        let response = try await client.declarations.plPit11Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plPit11Generate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "source": "source",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "persons": [
                    {
                      "employeeId": "x",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "pesel": "pesel",
                      "revenue": "revenue",
                      "deductibleCosts": "deductibleCosts",
                      "advanceWithheld": "advanceWithheld",
                      "socialContributions": "socialContributions",
                      "healthContributions": "healthContributions",
                      "fileName": "fileName",
                      "xml": "xml",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
                    },
                    {
                      "employeeId": "x",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "pesel": "pesel",
                      "revenue": "revenue",
                      "deductibleCosts": "deductibleCosts",
                      "advanceWithheld": "advanceWithheld",
                      "socialContributions": "socialContributions",
                      "healthContributions": "healthContributions",
                      "fileName": "fileName",
                      "xml": "xml",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
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
        let expectedResponse = PlPit11GenerateDeclarationsResponse(
            year: 1000000,
            source: "source",
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            persons: [
                PlPit11GenerateDeclarationsResponsePersonsItem(
                    employeeId: "x",
                    firstName: "firstName",
                    lastName: "lastName",
                    pesel: Nullable<String>.value("pesel"),
                    revenue: "revenue",
                    deductibleCosts: "deductibleCosts",
                    advanceWithheld: "advanceWithheld",
                    socialContributions: "socialContributions",
                    healthContributions: "healthContributions",
                    fileName: "fileName",
                    xml: "xml",
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
                ),
                PlPit11GenerateDeclarationsResponsePersonsItem(
                    employeeId: "x",
                    firstName: "firstName",
                    lastName: "lastName",
                    pesel: Nullable<String>.value("pesel"),
                    revenue: "revenue",
                    deductibleCosts: "deductibleCosts",
                    advanceWithheld: "advanceWithheld",
                    socialContributions: "socialContributions",
                    healthContributions: "healthContributions",
                    fileName: "fileName",
                    xml: "xml",
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
                )
            ]
        )
        let response = try await client.declarations.plPit11Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plCit8Generate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "fileName": "fileName",
                  "xml": "xml",
                  "positions": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "annexes": [
                    "annexes"
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
        let expectedResponse = PlCit8GenerateDeclarationsResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            fileName: "fileName",
            xml: "xml",
            positions: [
                PlCit8GenerateDeclarationsResponsePositionsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            annexes: [
                "annexes"
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.plCit8Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plCit8Generate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "fileName": "fileName",
                  "xml": "xml",
                  "positions": [
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
                  "annexes": [
                    "annexes",
                    "annexes"
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
        let expectedResponse = PlCit8GenerateDeclarationsResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            fileName: "fileName",
            xml: "xml",
            positions: [
                PlCit8GenerateDeclarationsResponsePositionsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                PlCit8GenerateDeclarationsResponsePositionsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            annexes: [
                "annexes",
                "annexes"
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
        let response = try await client.declarations.plCit8Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plZusDraCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "source": "source",
                  "runStatus": "runStatus",
                  "insuredCount": 1000000,
                  "rows": [
                    {
                      "code": "code",
                      "label": "label",
                      "insured": "insured",
                      "payer": "payer",
                      "total": "total"
                    }
                  ],
                  "socialTotal": "socialTotal",
                  "healthTotal": "healthTotal",
                  "fundsTotal": "fundsTotal",
                  "total": "total",
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
        let expectedResponse = PlZusDraComputeDeclarationsResponse(
            year: 1000000,
            month: 1000000,
            source: "source",
            runStatus: Nullable<String>.value("runStatus"),
            insuredCount: 1000000,
            rows: [
                PlZusDraComputeDeclarationsResponseRowsItem(
                    code: "code",
                    label: "label",
                    insured: "insured",
                    payer: "payer",
                    total: "total"
                )
            ],
            socialTotal: "socialTotal",
            healthTotal: "healthTotal",
            fundsTotal: "fundsTotal",
            total: "total",
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.plZusDraCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plZusDraCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "source": "source",
                  "runStatus": "runStatus",
                  "insuredCount": 1000000,
                  "rows": [
                    {
                      "code": "code",
                      "label": "label",
                      "insured": "insured",
                      "payer": "payer",
                      "total": "total"
                    },
                    {
                      "code": "code",
                      "label": "label",
                      "insured": "insured",
                      "payer": "payer",
                      "total": "total"
                    }
                  ],
                  "socialTotal": "socialTotal",
                  "healthTotal": "healthTotal",
                  "fundsTotal": "fundsTotal",
                  "total": "total",
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
        let expectedResponse = PlZusDraComputeDeclarationsResponse(
            year: 1000000,
            month: 1000000,
            source: "source",
            runStatus: Nullable<String>.value("runStatus"),
            insuredCount: 1000000,
            rows: [
                PlZusDraComputeDeclarationsResponseRowsItem(
                    code: "code",
                    label: "label",
                    insured: "insured",
                    payer: "payer",
                    total: "total"
                ),
                PlZusDraComputeDeclarationsResponseRowsItem(
                    code: "code",
                    label: "label",
                    insured: "insured",
                    payer: "payer",
                    total: "total"
                )
            ],
            socialTotal: "socialTotal",
            healthTotal: "healthTotal",
            fundsTotal: "fundsTotal",
            total: "total",
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.declarations.plZusDraCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plZusDraKedu1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "fileName": "fileName",
                  "xml": "xml",
                  "source": "source",
                  "insured": [
                    {
                      "employeeId": "employeeId",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "pesel": "pesel",
                      "kodTytulu": {
                        "p1": "p1",
                        "p2": "p2",
                        "p3": "p3"
                      },
                      "pensionBase": "pensionBase",
                      "healthBase": "healthBase"
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
        let expectedResponse = PlZusDraKeduDeclarationsResponse(
            year: 1000000,
            month: 1000000,
            fileName: "fileName",
            xml: "xml",
            source: "source",
            insured: [
                PlZusDraKeduDeclarationsResponseInsuredItem(
                    employeeId: "employeeId",
                    firstName: "firstName",
                    lastName: "lastName",
                    pesel: "pesel",
                    kodTytulu: PlZusDraKeduDeclarationsResponseInsuredItemKodTytulu(
                        p1: "p1",
                        p2: "p2",
                        p3: "p3"
                    ),
                    pensionBase: "pensionBase",
                    healthBase: "healthBase"
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.plZusDraKedu(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plZusDraKedu2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "fileName": "fileName",
                  "xml": "xml",
                  "source": "source",
                  "insured": [
                    {
                      "employeeId": "x",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "pesel": "pesel",
                      "kodTytulu": {
                        "p1": "p1",
                        "p2": "p2",
                        "p3": "p3"
                      },
                      "pensionBase": "pensionBase",
                      "healthBase": "healthBase"
                    },
                    {
                      "employeeId": "x",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "pesel": "pesel",
                      "kodTytulu": {
                        "p1": "p1",
                        "p2": "p2",
                        "p3": "p3"
                      },
                      "pensionBase": "pensionBase",
                      "healthBase": "healthBase"
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
        let expectedResponse = PlZusDraKeduDeclarationsResponse(
            year: 1000000,
            month: 1000000,
            fileName: "fileName",
            xml: "xml",
            source: "source",
            insured: [
                PlZusDraKeduDeclarationsResponseInsuredItem(
                    employeeId: "x",
                    firstName: "firstName",
                    lastName: "lastName",
                    pesel: "pesel",
                    kodTytulu: PlZusDraKeduDeclarationsResponseInsuredItemKodTytulu(
                        p1: "p1",
                        p2: "p2",
                        p3: "p3"
                    ),
                    pensionBase: "pensionBase",
                    healthBase: "healthBase"
                ),
                PlZusDraKeduDeclarationsResponseInsuredItem(
                    employeeId: "x",
                    firstName: "firstName",
                    lastName: "lastName",
                    pesel: "pesel",
                    kodTytulu: PlZusDraKeduDeclarationsResponseInsuredItemKodTytulu(
                        p1: "p1",
                        p2: "p2",
                        p3: "p3"
                    ),
                    pensionBase: "pensionBase",
                    healthBase: "healthBase"
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
        let response = try await client.declarations.plZusDraKedu(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plZusDraPdf1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "source": "source",
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
        let expectedResponse = PlZusDraPdfDeclarationsResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            source: "source",
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.plZusDraPdf(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func plZusDraPdf2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "source": "source",
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
        let expectedResponse = PlZusDraPdfDeclarationsResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            source: "source",
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.declarations.plZusDraPdf(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func roEtransportBuild1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "waybillId": "waybillId",
                  "fileId": "fileId",
                  "fileName": "fileName",
                  "xml": "xml",
                  "operationType": "operationType",
                  "vehiclePlate": "vehiclePlate",
                  "blockers": [
                    "blockers"
                  ],
                  "goods": 1000000,
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
        let expectedResponse = RoEtransportBuildDeclarationsResponse(
            waybillId: "waybillId",
            fileId: "fileId",
            fileName: "fileName",
            xml: "xml",
            operationType: "operationType",
            vehiclePlate: "vehiclePlate",
            blockers: [
                "blockers"
            ],
            goods: 1000000,
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.roEtransportBuild(
            request: .init(waybillId: "waybillId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func roEtransportBuild2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "waybillId": "x",
                  "fileId": "x",
                  "fileName": "fileName",
                  "xml": "xml",
                  "operationType": "operationType",
                  "vehiclePlate": "vehiclePlate",
                  "blockers": [
                    "blockers",
                    "blockers"
                  ],
                  "goods": 1000000,
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
        let expectedResponse = RoEtransportBuildDeclarationsResponse(
            waybillId: "x",
            fileId: "x",
            fileName: "fileName",
            xml: "xml",
            operationType: "operationType",
            vehiclePlate: "vehiclePlate",
            blockers: [
                "blockers",
                "blockers"
            ],
            goods: 1000000,
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
        let response = try await client.declarations.roEtransportBuild(
            request: .init(waybillId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func roEtransportSubmit1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "waybillId": "waybillId",
                  "reference": "reference",
                  "state": "submitted",
                  "uit": "uit",
                  "detail": "detail",
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
        let expectedResponse = RoEtransportSubmitDeclarationsResponse(
            waybillId: "waybillId",
            reference: "reference",
            state: .submitted,
            uit: Nullable<String>.value("uit"),
            detail: Nullable<String>.value("detail"),
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.roEtransportSubmit(
            request: .init(waybillId: "waybillId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func roEtransportSubmit2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "waybillId": "x",
                  "reference": "reference",
                  "state": "submitted",
                  "uit": "uit",
                  "detail": "detail",
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
        let expectedResponse = RoEtransportSubmitDeclarationsResponse(
            waybillId: "x",
            reference: "reference",
            state: .submitted,
            uit: Nullable<String>.value("uit"),
            detail: Nullable<String>.value("detail"),
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.roEtransportSubmit(
            request: .init(waybillId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func roEtransportStatus1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "reference": "reference",
                  "state": "submitted",
                  "uit": "uit",
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
        let expectedResponse = RoEtransportStatusDeclarationsResponse(
            reference: "reference",
            state: .submitted,
            uit: Nullable<String>.value("uit"),
            detail: Nullable<String>.value("detail")
        )
        let response = try await client.declarations.roEtransportStatus(
            request: .init(reference: "reference"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func roEtransportStatus2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "reference": "reference",
                  "state": "submitted",
                  "uit": "uit",
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
        let expectedResponse = RoEtransportStatusDeclarationsResponse(
            reference: "reference",
            state: .submitted,
            uit: Nullable<String>.value("uit"),
            detail: Nullable<String>.value("detail")
        )
        let response = try await client.declarations.roEtransportStatus(
            request: .init(reference: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func liLohndeklarationGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "fileName": "fileName",
                  "content": "content",
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "versichertennummer": "versichertennummer",
                      "vorname": "vorname",
                      "name": "name",
                      "geschlecht": "geschlecht",
                      "heimatstaat": "heimatstaat",
                      "eintrittsdatum": "eintrittsdatum",
                      "austrittsdatum": "austrittsdatum",
                      "beschaeftigtVon": "beschaeftigtVon",
                      "beschaeftigtBis": "beschaeftigtBis",
                      "beschaeftigungsgrad": "beschaeftigungsgrad",
                      "ahvLohn": "ahvLohn",
                      "alv": "alv",
                      "warnings": [
                        "warnings"
                      ]
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
        let expectedResponse = LiLohndeklarationGenerateDeclarationsResponse(
            year: 1000000,
            fileName: "fileName",
            content: "content",
            rows: [
                LiLohndeklarationGenerateDeclarationsResponseRowsItem(
                    employeeId: "employeeId",
                    versichertennummer: "versichertennummer",
                    vorname: "vorname",
                    name: "name",
                    geschlecht: "geschlecht",
                    heimatstaat: "heimatstaat",
                    eintrittsdatum: "eintrittsdatum",
                    austrittsdatum: "austrittsdatum",
                    beschaeftigtVon: "beschaeftigtVon",
                    beschaeftigtBis: "beschaeftigtBis",
                    beschaeftigungsgrad: "beschaeftigungsgrad",
                    ahvLohn: "ahvLohn",
                    alv: "alv",
                    warnings: [
                        "warnings"
                    ]
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
        let response = try await client.declarations.liLohndeklarationGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func liLohndeklarationGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "fileName": "fileName",
                  "content": "content",
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "versichertennummer": "versichertennummer",
                      "vorname": "vorname",
                      "name": "name",
                      "geschlecht": "geschlecht",
                      "heimatstaat": "heimatstaat",
                      "eintrittsdatum": "eintrittsdatum",
                      "austrittsdatum": "austrittsdatum",
                      "beschaeftigtVon": "beschaeftigtVon",
                      "beschaeftigtBis": "beschaeftigtBis",
                      "beschaeftigungsgrad": "beschaeftigungsgrad",
                      "ahvLohn": "ahvLohn",
                      "alv": "alv",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
                    },
                    {
                      "employeeId": "employeeId",
                      "versichertennummer": "versichertennummer",
                      "vorname": "vorname",
                      "name": "name",
                      "geschlecht": "geschlecht",
                      "heimatstaat": "heimatstaat",
                      "eintrittsdatum": "eintrittsdatum",
                      "austrittsdatum": "austrittsdatum",
                      "beschaeftigtVon": "beschaeftigtVon",
                      "beschaeftigtBis": "beschaeftigtBis",
                      "beschaeftigungsgrad": "beschaeftigungsgrad",
                      "ahvLohn": "ahvLohn",
                      "alv": "alv",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
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
        let expectedResponse = LiLohndeklarationGenerateDeclarationsResponse(
            year: 1000000,
            fileName: "fileName",
            content: "content",
            rows: [
                LiLohndeklarationGenerateDeclarationsResponseRowsItem(
                    employeeId: "employeeId",
                    versichertennummer: "versichertennummer",
                    vorname: "vorname",
                    name: "name",
                    geschlecht: "geschlecht",
                    heimatstaat: "heimatstaat",
                    eintrittsdatum: "eintrittsdatum",
                    austrittsdatum: "austrittsdatum",
                    beschaeftigtVon: "beschaeftigtVon",
                    beschaeftigtBis: "beschaeftigtBis",
                    beschaeftigungsgrad: "beschaeftigungsgrad",
                    ahvLohn: "ahvLohn",
                    alv: "alv",
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
                ),
                LiLohndeklarationGenerateDeclarationsResponseRowsItem(
                    employeeId: "employeeId",
                    versichertennummer: "versichertennummer",
                    vorname: "vorname",
                    name: "name",
                    geschlecht: "geschlecht",
                    heimatstaat: "heimatstaat",
                    eintrittsdatum: "eintrittsdatum",
                    austrittsdatum: "austrittsdatum",
                    beschaeftigtVon: "beschaeftigtVon",
                    beschaeftigtBis: "beschaeftigtBis",
                    beschaeftigungsgrad: "beschaeftigungsgrad",
                    ahvLohn: "ahvLohn",
                    alv: "alv",
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
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
        let response = try await client.declarations.liLohndeklarationGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func liLohnlistenGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "fileName": "fileName",
                  "content": "content",
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "peid": "peid",
                      "name": "name",
                      "vorname": "vorname",
                      "geburtsdatum": "geburtsdatum",
                      "strasse": "strasse",
                      "hausnummer": "hausnummer",
                      "plz": "plz",
                      "ort": "ort",
                      "wohnland": "wohnland",
                      "brutto": "brutto",
                      "lohnsteuer": "lohnsteuer",
                      "abrechnungVon": "abrechnungVon",
                      "abrechnungBis": "abrechnungBis",
                      "warnings": [
                        "warnings"
                      ]
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
        let expectedResponse = LiLohnlistenGenerateDeclarationsResponse(
            year: 1000000,
            fileName: "fileName",
            content: "content",
            rows: [
                LiLohnlistenGenerateDeclarationsResponseRowsItem(
                    employeeId: "employeeId",
                    peid: "peid",
                    name: "name",
                    vorname: "vorname",
                    geburtsdatum: "geburtsdatum",
                    strasse: "strasse",
                    hausnummer: "hausnummer",
                    plz: "plz",
                    ort: "ort",
                    wohnland: "wohnland",
                    brutto: "brutto",
                    lohnsteuer: "lohnsteuer",
                    abrechnungVon: "abrechnungVon",
                    abrechnungBis: "abrechnungBis",
                    warnings: [
                        "warnings"
                    ]
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
        let response = try await client.declarations.liLohnlistenGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func liLohnlistenGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "fileName": "fileName",
                  "content": "content",
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "peid": "peid",
                      "name": "name",
                      "vorname": "vorname",
                      "geburtsdatum": "geburtsdatum",
                      "strasse": "strasse",
                      "hausnummer": "hausnummer",
                      "plz": "plz",
                      "ort": "ort",
                      "wohnland": "wohnland",
                      "brutto": "brutto",
                      "lohnsteuer": "lohnsteuer",
                      "abrechnungVon": "abrechnungVon",
                      "abrechnungBis": "abrechnungBis",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
                    },
                    {
                      "employeeId": "employeeId",
                      "peid": "peid",
                      "name": "name",
                      "vorname": "vorname",
                      "geburtsdatum": "geburtsdatum",
                      "strasse": "strasse",
                      "hausnummer": "hausnummer",
                      "plz": "plz",
                      "ort": "ort",
                      "wohnland": "wohnland",
                      "brutto": "brutto",
                      "lohnsteuer": "lohnsteuer",
                      "abrechnungVon": "abrechnungVon",
                      "abrechnungBis": "abrechnungBis",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
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
        let expectedResponse = LiLohnlistenGenerateDeclarationsResponse(
            year: 1000000,
            fileName: "fileName",
            content: "content",
            rows: [
                LiLohnlistenGenerateDeclarationsResponseRowsItem(
                    employeeId: "employeeId",
                    peid: "peid",
                    name: "name",
                    vorname: "vorname",
                    geburtsdatum: "geburtsdatum",
                    strasse: "strasse",
                    hausnummer: "hausnummer",
                    plz: "plz",
                    ort: "ort",
                    wohnland: "wohnland",
                    brutto: "brutto",
                    lohnsteuer: "lohnsteuer",
                    abrechnungVon: "abrechnungVon",
                    abrechnungBis: "abrechnungBis",
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
                ),
                LiLohnlistenGenerateDeclarationsResponseRowsItem(
                    employeeId: "employeeId",
                    peid: "peid",
                    name: "name",
                    vorname: "vorname",
                    geburtsdatum: "geburtsdatum",
                    strasse: "strasse",
                    hausnummer: "hausnummer",
                    plz: "plz",
                    ort: "ort",
                    wohnland: "wohnland",
                    brutto: "brutto",
                    lohnsteuer: "lohnsteuer",
                    abrechnungVon: "abrechnungVon",
                    abrechnungBis: "abrechnungBis",
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
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
        let response = try await client.declarations.liLohnlistenGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func configsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "companyCountry": "companyCountry",
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
                      },
                      "acceptsCertificate": true
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
        let expectedResponse = ConfigsListDeclarationsResponse(
            companyCountry: "companyCountry",
            rows: [
                ConfigsListDeclarationsResponseRowsItem(
                    system: "system",
                    country: "country",
                    title: "title",
                    fields: [
                        ConfigsListDeclarationsResponseRowsItemFieldsItem(
                            key: "key",
                            kind: .text
                        )
                    ],
                    endpoints: Optional([
                        ConfigsListDeclarationsResponseRowsItemEndpointsItem(
                            name: "name"
                        )
                    ]),
                    values: [
                        "key": "value"
                    ],
                    acceptsCertificate: true
                )
            ]
        )
        let response = try await client.declarations.configsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func configsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "companyCountry": "companyCountry",
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
                      },
                      "acceptsCertificate": true
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
                      },
                      "acceptsCertificate": true
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
        let expectedResponse = ConfigsListDeclarationsResponse(
            companyCountry: "companyCountry",
            rows: [
                ConfigsListDeclarationsResponseRowsItem(
                    system: "system",
                    country: "country",
                    title: "title",
                    fields: [
                        ConfigsListDeclarationsResponseRowsItemFieldsItem(
                            key: "key",
                            kind: .text,
                            multiline: Optional(true),
                            options: Optional([
                                "options",
                                "options"
                            ])
                        ),
                        ConfigsListDeclarationsResponseRowsItemFieldsItem(
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
                        ConfigsListDeclarationsResponseRowsItemEndpointsItem(
                            name: "name",
                            test: Optional("test"),
                            production: Optional("production")
                        ),
                        ConfigsListDeclarationsResponseRowsItemEndpointsItem(
                            name: "name",
                            test: Optional("test"),
                            production: Optional("production")
                        )
                    ]),
                    values: [
                        "values": "values"
                    ],
                    acceptsCertificate: true
                ),
                ConfigsListDeclarationsResponseRowsItem(
                    system: "system",
                    country: "country",
                    title: "title",
                    fields: [
                        ConfigsListDeclarationsResponseRowsItemFieldsItem(
                            key: "key",
                            kind: .text,
                            multiline: Optional(true),
                            options: Optional([
                                "options",
                                "options"
                            ])
                        ),
                        ConfigsListDeclarationsResponseRowsItemFieldsItem(
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
                        ConfigsListDeclarationsResponseRowsItemEndpointsItem(
                            name: "name",
                            test: Optional("test"),
                            production: Optional("production")
                        ),
                        ConfigsListDeclarationsResponseRowsItemEndpointsItem(
                            name: "name",
                            test: Optional("test"),
                            production: Optional("production")
                        )
                    ]),
                    values: [
                        "values": "values"
                    ],
                    acceptsCertificate: true
                )
            ]
        )
        let response = try await client.declarations.configsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func configsUpdate1() async throws -> Void {
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
                  },
                  "acceptsCertificate": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ConfigsUpdateDeclarationsResponse(
            system: "system",
            country: "country",
            title: "title",
            fields: [
                ConfigsUpdateDeclarationsResponseFieldsItem(
                    key: "key",
                    kind: .text,
                    multiline: Optional(true),
                    options: Optional([
                        "options"
                    ])
                )
            ],
            endpoints: Optional([
                ConfigsUpdateDeclarationsResponseEndpointsItem(
                    name: "name",
                    test: Optional("test"),
                    production: Optional("production")
                )
            ]),
            values: [
                "key": "value"
            ],
            acceptsCertificate: true
        )
        let response = try await client.declarations.configsUpdate(
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

    @Test func configsUpdate2() async throws -> Void {
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
                  },
                  "acceptsCertificate": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ConfigsUpdateDeclarationsResponse(
            system: "system",
            country: "country",
            title: "title",
            fields: [
                ConfigsUpdateDeclarationsResponseFieldsItem(
                    key: "key",
                    kind: .text,
                    multiline: Optional(true),
                    options: Optional([
                        "options",
                        "options"
                    ])
                ),
                ConfigsUpdateDeclarationsResponseFieldsItem(
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
                ConfigsUpdateDeclarationsResponseEndpointsItem(
                    name: "name",
                    test: Optional("test"),
                    production: Optional("production")
                ),
                ConfigsUpdateDeclarationsResponseEndpointsItem(
                    name: "name",
                    test: Optional("test"),
                    production: Optional("production")
                )
            ]),
            values: [
                "values": "values"
            ],
            acceptsCertificate: true
        )
        let response = try await client.declarations.configsUpdate(
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

    @Test func certificatesUpload1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = CertificatesUploadDeclarationsResponse(
            rows: [
                CertificatesUploadDeclarationsResponseRowsItem(
                    id: "id",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.declarations.certificatesUpload(
            request: .init(
                system: "system",
                fileName: "fileName",
                content: "content"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func certificatesUpload2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = CertificatesUploadDeclarationsResponse(
            rows: [
                CertificatesUploadDeclarationsResponseRowsItem(
                    id: "x",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                CertificatesUploadDeclarationsResponseRowsItem(
                    id: "x",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.declarations.certificatesUpload(
            request: .init(
                system: "x",
                fileName: "x",
                content: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func certificatesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = CertificatesListDeclarationsResponse(
            rows: [
                CertificatesListDeclarationsResponseRowsItem(
                    id: "id",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.declarations.certificatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func certificatesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = CertificatesListDeclarationsResponse(
            rows: [
                CertificatesListDeclarationsResponseRowsItem(
                    id: "x",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                CertificatesListDeclarationsResponseRowsItem(
                    id: "x",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.declarations.certificatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func certificatesDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = CertificatesDeleteDeclarationsResponse(
            rows: [
                CertificatesDeleteDeclarationsResponseRowsItem(
                    id: "id",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.declarations.certificatesDelete(
            request: .init(
                system: "system",
                fieldKey: .certificate
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func certificatesDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = CertificatesDeleteDeclarationsResponse(
            rows: [
                CertificatesDeleteDeclarationsResponseRowsItem(
                    id: "x",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                CertificatesDeleteDeclarationsResponseRowsItem(
                    id: "x",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.declarations.certificatesDelete(
            request: .init(
                system: "x",
                fieldKey: .certificate
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func automationList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "ruleKey": "ruleKey",
                      "title": "title",
                      "country": "country",
                      "system": "system",
                      "enabled": true,
                      "applies": true,
                      "configured": true,
                      "certificate": "ok",
                      "environment": "test"
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
        let expectedResponse = AutomationListDeclarationsResponse(
            rows: [
                AutomationListDeclarationsResponseRowsItem(
                    ruleKey: "ruleKey",
                    title: "title",
                    country: "country",
                    system: "system",
                    enabled: true,
                    applies: true,
                    configured: true,
                    certificate: .ok,
                    environment: .test
                )
            ]
        )
        let response = try await client.declarations.automationList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func automationList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "ruleKey": "ruleKey",
                      "title": "title",
                      "country": "country",
                      "system": "system",
                      "enabled": true,
                      "applies": true,
                      "configured": true,
                      "certificate": "ok",
                      "environment": "test"
                    },
                    {
                      "ruleKey": "ruleKey",
                      "title": "title",
                      "country": "country",
                      "system": "system",
                      "enabled": true,
                      "applies": true,
                      "configured": true,
                      "certificate": "ok",
                      "environment": "test"
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
        let expectedResponse = AutomationListDeclarationsResponse(
            rows: [
                AutomationListDeclarationsResponseRowsItem(
                    ruleKey: "ruleKey",
                    title: "title",
                    country: "country",
                    system: "system",
                    enabled: true,
                    applies: true,
                    configured: true,
                    certificate: .ok,
                    environment: .test
                ),
                AutomationListDeclarationsResponseRowsItem(
                    ruleKey: "ruleKey",
                    title: "title",
                    country: "country",
                    system: "system",
                    enabled: true,
                    applies: true,
                    configured: true,
                    certificate: .ok,
                    environment: .test
                )
            ]
        )
        let response = try await client.declarations.automationList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func automationUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "ruleKey": "ruleKey",
                      "title": "title",
                      "country": "country",
                      "system": "system",
                      "enabled": true,
                      "applies": true,
                      "configured": true,
                      "certificate": "ok",
                      "environment": "test"
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
        let expectedResponse = AutomationUpdateDeclarationsResponse(
            rows: [
                AutomationUpdateDeclarationsResponseRowsItem(
                    ruleKey: "ruleKey",
                    title: "title",
                    country: "country",
                    system: "system",
                    enabled: true,
                    applies: true,
                    configured: true,
                    certificate: .ok,
                    environment: .test
                )
            ]
        )
        let response = try await client.declarations.automationUpdate(
            request: .init(
                ruleKey: "ruleKey",
                enabled: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func automationUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "ruleKey": "ruleKey",
                      "title": "title",
                      "country": "country",
                      "system": "system",
                      "enabled": true,
                      "applies": true,
                      "configured": true,
                      "certificate": "ok",
                      "environment": "test"
                    },
                    {
                      "ruleKey": "ruleKey",
                      "title": "title",
                      "country": "country",
                      "system": "system",
                      "enabled": true,
                      "applies": true,
                      "configured": true,
                      "certificate": "ok",
                      "environment": "test"
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
        let expectedResponse = AutomationUpdateDeclarationsResponse(
            rows: [
                AutomationUpdateDeclarationsResponseRowsItem(
                    ruleKey: "ruleKey",
                    title: "title",
                    country: "country",
                    system: "system",
                    enabled: true,
                    applies: true,
                    configured: true,
                    certificate: .ok,
                    environment: .test
                ),
                AutomationUpdateDeclarationsResponseRowsItem(
                    ruleKey: "ruleKey",
                    title: "title",
                    country: "country",
                    system: "system",
                    enabled: true,
                    applies: true,
                    configured: true,
                    certificate: .ok,
                    environment: .test
                )
            ]
        )
        let response = try await client.declarations.automationUpdate(
            request: .init(
                ruleKey: "x",
                enabled: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func submissionsRetry1() async throws -> Void {
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
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "documentKey": "documentKey",
                  "amendment": 1000000,
                  "origin": "origin",
                  "transportSystem": "transportSystem",
                  "environment": "test",
                  "submittedAt": "2026-07-01T09:30:00Z",
                  "acceptedAt": "2026-07-01T09:30:00Z",
                  "rejectedAt": "2026-07-01T09:30:00Z",
                  "checkedAt": "2026-07-01T09:30:00Z",
                  "nextCheckAt": "2026-07-01T09:30:00Z",
                  "attempts": 1000000,
                  "deliveryError": "deliveryError",
                  "sentSha256": "sentSha256",
                  "certificateFingerprint": "certificateFingerprint",
                  "submittedByActorType": "submittedByActorType",
                  "submittedByActorId": "submittedByActorId",
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
        let expectedResponse = SubmissionsRetryDeclarationsResponse(
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
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            documentKey: Nullable<String>.value("documentKey"),
            amendment: 1000000,
            origin: "origin",
            transportSystem: Nullable<String>.value("transportSystem"),
            environment: Nullable<SubmissionsRetryDeclarationsResponseEnvironment>.value(.test),
            submittedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            acceptedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            rejectedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            checkedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            nextCheckAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            attempts: 1000000,
            deliveryError: Nullable<String>.value("deliveryError"),
            sentSha256: Nullable<String>.value("sentSha256"),
            certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
            submittedByActorType: Nullable<String>.value("submittedByActorType"),
            submittedByActorId: Nullable<String>.value("submittedByActorId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.declarations.submissionsRetry(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func submissionsRetry2() async throws -> Void {
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
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "documentKey": "documentKey",
                  "amendment": 1000000,
                  "origin": "origin",
                  "transportSystem": "transportSystem",
                  "environment": "test",
                  "submittedAt": "2024-01-15T09:30:00Z",
                  "acceptedAt": "2024-01-15T09:30:00Z",
                  "rejectedAt": "2024-01-15T09:30:00Z",
                  "checkedAt": "2024-01-15T09:30:00Z",
                  "nextCheckAt": "2024-01-15T09:30:00Z",
                  "attempts": 1000000,
                  "deliveryError": "deliveryError",
                  "sentSha256": "sentSha256",
                  "certificateFingerprint": "certificateFingerprint",
                  "submittedByActorType": "submittedByActorType",
                  "submittedByActorId": "submittedByActorId",
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
        let expectedResponse = SubmissionsRetryDeclarationsResponse(
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
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            documentKey: Nullable<String>.value("documentKey"),
            amendment: 1000000,
            origin: "origin",
            transportSystem: Nullable<String>.value("transportSystem"),
            environment: Nullable<SubmissionsRetryDeclarationsResponseEnvironment>.value(.test),
            submittedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            acceptedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            rejectedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            checkedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            nextCheckAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            attempts: 1000000,
            deliveryError: Nullable<String>.value("deliveryError"),
            sentSha256: Nullable<String>.value("sentSha256"),
            certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
            submittedByActorType: Nullable<String>.value("submittedByActorType"),
            submittedByActorId: Nullable<String>.value("submittedByActorId"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.declarations.submissionsRetry(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func submissionsCreate1() async throws -> Void {
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
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "documentKey": "documentKey",
                  "amendment": 1000000,
                  "origin": "origin",
                  "transportSystem": "transportSystem",
                  "environment": "test",
                  "submittedAt": "2026-07-01T09:30:00Z",
                  "acceptedAt": "2026-07-01T09:30:00Z",
                  "rejectedAt": "2026-07-01T09:30:00Z",
                  "checkedAt": "2026-07-01T09:30:00Z",
                  "nextCheckAt": "2026-07-01T09:30:00Z",
                  "attempts": 1000000,
                  "deliveryError": "deliveryError",
                  "sentSha256": "sentSha256",
                  "certificateFingerprint": "certificateFingerprint",
                  "submittedByActorType": "submittedByActorType",
                  "submittedByActorId": "submittedByActorId",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = SubmissionsCreateDeclarationsResponse(
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
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            documentKey: Nullable<String>.value("documentKey"),
            amendment: 1000000,
            origin: "origin",
            transportSystem: Nullable<String>.value("transportSystem"),
            environment: Nullable<SubmissionsCreateDeclarationsResponseEnvironment>.value(.test),
            submittedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            acceptedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            rejectedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            checkedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            nextCheckAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            attempts: 1000000,
            deliveryError: Nullable<String>.value("deliveryError"),
            sentSha256: Nullable<String>.value("sentSha256"),
            certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
            submittedByActorType: Nullable<String>.value("submittedByActorType"),
            submittedByActorId: Nullable<String>.value("submittedByActorId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.submissionsCreate(
            request: .init(
                obligation: .ltIsaf,
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func submissionsCreate2() async throws -> Void {
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
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "documentKey": "documentKey",
                  "amendment": 1000000,
                  "origin": "origin",
                  "transportSystem": "transportSystem",
                  "environment": "test",
                  "submittedAt": "2024-01-15T09:30:00Z",
                  "acceptedAt": "2024-01-15T09:30:00Z",
                  "rejectedAt": "2024-01-15T09:30:00Z",
                  "checkedAt": "2024-01-15T09:30:00Z",
                  "nextCheckAt": "2024-01-15T09:30:00Z",
                  "attempts": 1000000,
                  "deliveryError": "deliveryError",
                  "sentSha256": "sentSha256",
                  "certificateFingerprint": "certificateFingerprint",
                  "submittedByActorType": "submittedByActorType",
                  "submittedByActorId": "submittedByActorId",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = SubmissionsCreateDeclarationsResponse(
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
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            documentKey: Nullable<String>.value("documentKey"),
            amendment: 1000000,
            origin: "origin",
            transportSystem: Nullable<String>.value("transportSystem"),
            environment: Nullable<SubmissionsCreateDeclarationsResponseEnvironment>.value(.test),
            submittedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            acceptedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            rejectedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            checkedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            nextCheckAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            attempts: 1000000,
            deliveryError: Nullable<String>.value("deliveryError"),
            sentSha256: Nullable<String>.value("sentSha256"),
            certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
            submittedByActorType: Nullable<String>.value("submittedByActorType"),
            submittedByActorId: Nullable<String>.value("submittedByActorId"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.submissionsCreate(
            request: .init(
                obligation: .ltIsaf,
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func submissionsMark1() async throws -> Void {
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
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "documentKey": "documentKey",
                  "amendment": 1000000,
                  "origin": "origin",
                  "transportSystem": "transportSystem",
                  "environment": "test",
                  "submittedAt": "2026-07-01T09:30:00Z",
                  "acceptedAt": "2026-07-01T09:30:00Z",
                  "rejectedAt": "2026-07-01T09:30:00Z",
                  "checkedAt": "2026-07-01T09:30:00Z",
                  "nextCheckAt": "2026-07-01T09:30:00Z",
                  "attempts": 1000000,
                  "deliveryError": "deliveryError",
                  "sentSha256": "sentSha256",
                  "certificateFingerprint": "certificateFingerprint",
                  "submittedByActorType": "submittedByActorType",
                  "submittedByActorId": "submittedByActorId",
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
        let expectedResponse = SubmissionsMarkDeclarationsResponse(
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
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            documentKey: Nullable<String>.value("documentKey"),
            amendment: 1000000,
            origin: "origin",
            transportSystem: Nullable<String>.value("transportSystem"),
            environment: Nullable<SubmissionsMarkDeclarationsResponseEnvironment>.value(.test),
            submittedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            acceptedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            rejectedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            checkedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            nextCheckAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            attempts: 1000000,
            deliveryError: Nullable<String>.value("deliveryError"),
            sentSha256: Nullable<String>.value("sentSha256"),
            certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
            submittedByActorType: Nullable<String>.value("submittedByActorType"),
            submittedByActorId: Nullable<String>.value("submittedByActorId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.declarations.submissionsMark(
            request: .init(
                id: "id",
                status: .submitted
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func submissionsMark2() async throws -> Void {
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
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "documentKey": "documentKey",
                  "amendment": 1000000,
                  "origin": "origin",
                  "transportSystem": "transportSystem",
                  "environment": "test",
                  "submittedAt": "2024-01-15T09:30:00Z",
                  "acceptedAt": "2024-01-15T09:30:00Z",
                  "rejectedAt": "2024-01-15T09:30:00Z",
                  "checkedAt": "2024-01-15T09:30:00Z",
                  "nextCheckAt": "2024-01-15T09:30:00Z",
                  "attempts": 1000000,
                  "deliveryError": "deliveryError",
                  "sentSha256": "sentSha256",
                  "certificateFingerprint": "certificateFingerprint",
                  "submittedByActorType": "submittedByActorType",
                  "submittedByActorId": "submittedByActorId",
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
        let expectedResponse = SubmissionsMarkDeclarationsResponse(
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
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            documentKey: Nullable<String>.value("documentKey"),
            amendment: 1000000,
            origin: "origin",
            transportSystem: Nullable<String>.value("transportSystem"),
            environment: Nullable<SubmissionsMarkDeclarationsResponseEnvironment>.value(.test),
            submittedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            acceptedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            rejectedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            checkedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            nextCheckAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            attempts: 1000000,
            deliveryError: Nullable<String>.value("deliveryError"),
            sentSha256: Nullable<String>.value("sentSha256"),
            certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
            submittedByActorType: Nullable<String>.value("submittedByActorType"),
            submittedByActorId: Nullable<String>.value("submittedByActorId"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.declarations.submissionsMark(
            request: .init(
                id: "x",
                status: .submitted
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func submissionsList1() async throws -> Void {
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
                      "ruleKey": "ruleKey",
                      "period": "period",
                      "documentKey": "documentKey",
                      "amendment": 1000000,
                      "origin": "origin",
                      "transportSystem": "transportSystem",
                      "environment": "test",
                      "submittedAt": "2026-07-01T09:30:00Z",
                      "acceptedAt": "2026-07-01T09:30:00Z",
                      "rejectedAt": "2026-07-01T09:30:00Z",
                      "checkedAt": "2026-07-01T09:30:00Z",
                      "nextCheckAt": "2026-07-01T09:30:00Z",
                      "attempts": 1000000,
                      "deliveryError": "deliveryError",
                      "sentSha256": "sentSha256",
                      "certificateFingerprint": "certificateFingerprint",
                      "submittedByActorType": "submittedByActorType",
                      "submittedByActorId": "submittedByActorId",
                      "createdAt": "2026-07-01T09:30:00Z",
                      "updatedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = SubmissionsListDeclarationsResponse(
            rows: [
                SubmissionsListDeclarationsResponseRowsItem(
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
                    ruleKey: Nullable<String>.value("ruleKey"),
                    period: Nullable<String>.value("period"),
                    documentKey: Nullable<String>.value("documentKey"),
                    amendment: 1000000,
                    origin: "origin",
                    transportSystem: Nullable<String>.value("transportSystem"),
                    environment: Nullable<SubmissionsListDeclarationsResponseRowsItemEnvironment>.value(.test),
                    submittedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    acceptedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    rejectedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    checkedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    nextCheckAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    attempts: 1000000,
                    deliveryError: Nullable<String>.value("deliveryError"),
                    sentSha256: Nullable<String>.value("sentSha256"),
                    certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
                    submittedByActorType: Nullable<String>.value("submittedByActorType"),
                    submittedByActorId: Nullable<String>.value("submittedByActorId"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
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
        let response = try await client.declarations.submissionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func submissionsList2() async throws -> Void {
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
                      "ruleKey": "ruleKey",
                      "period": "period",
                      "documentKey": "documentKey",
                      "amendment": 1000000,
                      "origin": "origin",
                      "transportSystem": "transportSystem",
                      "environment": "test",
                      "submittedAt": "2024-01-15T09:30:00Z",
                      "acceptedAt": "2024-01-15T09:30:00Z",
                      "rejectedAt": "2024-01-15T09:30:00Z",
                      "checkedAt": "2024-01-15T09:30:00Z",
                      "nextCheckAt": "2024-01-15T09:30:00Z",
                      "attempts": 1000000,
                      "deliveryError": "deliveryError",
                      "sentSha256": "sentSha256",
                      "certificateFingerprint": "certificateFingerprint",
                      "submittedByActorType": "submittedByActorType",
                      "submittedByActorId": "submittedByActorId",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
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
                      "ruleKey": "ruleKey",
                      "period": "period",
                      "documentKey": "documentKey",
                      "amendment": 1000000,
                      "origin": "origin",
                      "transportSystem": "transportSystem",
                      "environment": "test",
                      "submittedAt": "2024-01-15T09:30:00Z",
                      "acceptedAt": "2024-01-15T09:30:00Z",
                      "rejectedAt": "2024-01-15T09:30:00Z",
                      "checkedAt": "2024-01-15T09:30:00Z",
                      "nextCheckAt": "2024-01-15T09:30:00Z",
                      "attempts": 1000000,
                      "deliveryError": "deliveryError",
                      "sentSha256": "sentSha256",
                      "certificateFingerprint": "certificateFingerprint",
                      "submittedByActorType": "submittedByActorType",
                      "submittedByActorId": "submittedByActorId",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = SubmissionsListDeclarationsResponse(
            rows: [
                SubmissionsListDeclarationsResponseRowsItem(
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
                    ruleKey: Nullable<String>.value("ruleKey"),
                    period: Nullable<String>.value("period"),
                    documentKey: Nullable<String>.value("documentKey"),
                    amendment: 1000000,
                    origin: "origin",
                    transportSystem: Nullable<String>.value("transportSystem"),
                    environment: Nullable<SubmissionsListDeclarationsResponseRowsItemEnvironment>.value(.test),
                    submittedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    acceptedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    rejectedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    checkedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    nextCheckAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    attempts: 1000000,
                    deliveryError: Nullable<String>.value("deliveryError"),
                    sentSha256: Nullable<String>.value("sentSha256"),
                    certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
                    submittedByActorType: Nullable<String>.value("submittedByActorType"),
                    submittedByActorId: Nullable<String>.value("submittedByActorId"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                SubmissionsListDeclarationsResponseRowsItem(
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
                    ruleKey: Nullable<String>.value("ruleKey"),
                    period: Nullable<String>.value("period"),
                    documentKey: Nullable<String>.value("documentKey"),
                    amendment: 1000000,
                    origin: "origin",
                    transportSystem: Nullable<String>.value("transportSystem"),
                    environment: Nullable<SubmissionsListDeclarationsResponseRowsItemEnvironment>.value(.test),
                    submittedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    acceptedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    rejectedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    checkedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    nextCheckAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    attempts: 1000000,
                    deliveryError: Nullable<String>.value("deliveryError"),
                    sentSha256: Nullable<String>.value("sentSha256"),
                    certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
                    submittedByActorType: Nullable<String>.value("submittedByActorType"),
                    submittedByActorId: Nullable<String>.value("submittedByActorId"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
        let response = try await client.declarations.submissionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}