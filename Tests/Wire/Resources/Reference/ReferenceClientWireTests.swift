import Foundation
import Testing
import Api

@Suite("ReferenceClient Wire Tests") struct ReferenceClientWireTests {
    @Test func exchangeRatesSync1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "date": "2026-07-01",
                  "imported": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ExchangeRatesSyncReferenceResponse(
            date: CalendarDate("2026-07-01")!,
            imported: 1000000
        )
        let response = try await client.reference.exchangeRatesSync(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func exchangeRatesSync2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "date": "2023-01-15",
                  "imported": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ExchangeRatesSyncReferenceResponse(
            date: CalendarDate("2023-01-15")!,
            imported: 1000000
        )
        let response = try await client.reference.exchangeRatesSync(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func exchangeRatesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "currencyCode": "currencyCode",
                      "date": "2026-07-01",
                      "rate": "rate"
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
        let expectedResponse = ExchangeRatesListReferenceResponse(
            rows: [
                ExchangeRatesListReferenceResponseRowsItem(
                    currencyCode: "currencyCode",
                    date: CalendarDate("2026-07-01")!,
                    rate: "rate"
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
        let response = try await client.reference.exchangeRatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func exchangeRatesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "currencyCode": "currencyCode",
                      "date": "2023-01-15",
                      "rate": "rate"
                    },
                    {
                      "currencyCode": "currencyCode",
                      "date": "2023-01-15",
                      "rate": "rate"
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
        let expectedResponse = ExchangeRatesListReferenceResponse(
            rows: [
                ExchangeRatesListReferenceResponseRowsItem(
                    currencyCode: "currencyCode",
                    date: CalendarDate("2023-01-15")!,
                    rate: "rate"
                ),
                ExchangeRatesListReferenceResponseRowsItem(
                    currencyCode: "currencyCode",
                    date: CalendarDate("2023-01-15")!,
                    rate: "rate"
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
        let response = try await client.reference.exchangeRatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func exchangeRatesSet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "currencyCode": "currencyCode",
                  "date": "2026-07-01",
                  "rate": "rate"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ExchangeRatesSetReferenceResponse(
            currencyCode: "currencyCode",
            date: CalendarDate("2026-07-01")!,
            rate: "rate"
        )
        let response = try await client.reference.exchangeRatesSet(
            request: .init(
                currency: "currency",
                date: CalendarDate("2026-07-01")!,
                rate: "121.00000000"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func exchangeRatesSet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "currencyCode": "currencyCode",
                  "date": "2023-01-15",
                  "rate": "rate"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ExchangeRatesSetReferenceResponse(
            currencyCode: "currencyCode",
            date: CalendarDate("2023-01-15")!,
            rate: "rate"
        )
        let response = try await client.reference.exchangeRatesSet(
            request: .init(
                currency: "foo",
                date: CalendarDate("2023-01-15")!,
                rate: "rate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func exchangeRatesOverridesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "currencyCode": "currencyCode",
                      "date": "2026-07-01",
                      "rate": "rate"
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
        let expectedResponse = ExchangeRatesOverridesListReferenceResponse(
            rows: [
                ExchangeRatesOverridesListReferenceResponseRowsItem(
                    currencyCode: "currencyCode",
                    date: CalendarDate("2026-07-01")!,
                    rate: "rate"
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
        let response = try await client.reference.exchangeRatesOverridesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func exchangeRatesOverridesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "currencyCode": "currencyCode",
                      "date": "2023-01-15",
                      "rate": "rate"
                    },
                    {
                      "currencyCode": "currencyCode",
                      "date": "2023-01-15",
                      "rate": "rate"
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
        let expectedResponse = ExchangeRatesOverridesListReferenceResponse(
            rows: [
                ExchangeRatesOverridesListReferenceResponseRowsItem(
                    currencyCode: "currencyCode",
                    date: CalendarDate("2023-01-15")!,
                    rate: "rate"
                ),
                ExchangeRatesOverridesListReferenceResponseRowsItem(
                    currencyCode: "currencyCode",
                    date: CalendarDate("2023-01-15")!,
                    rate: "rate"
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
        let response = try await client.reference.exchangeRatesOverridesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func exchangeRatesOverridesDelete1() async throws -> Void {
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
        let expectedResponse = ExchangeRatesOverridesDeleteReferenceResponse(
            deleted: true
        )
        let response = try await client.reference.exchangeRatesOverridesDelete(
            request: .init(
                currency: "currency",
                date: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func exchangeRatesOverridesDelete2() async throws -> Void {
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
        let expectedResponse = ExchangeRatesOverridesDeleteReferenceResponse(
            deleted: true
        )
        let response = try await client.reference.exchangeRatesOverridesDelete(
            request: .init(
                currency: "foo",
                date: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func countriesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "isEu": true,
                      "isEea": true,
                      "names": {
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
        let expectedResponse = CountriesListReferenceResponse(
            rows: [
                CountriesListReferenceResponseRowsItem(
                    code: "code",
                    isEu: true,
                    isEea: true,
                    names: [
                        "key": "value"
                    ]
                )
            ]
        )
        let response = try await client.reference.countriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func countriesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "isEu": true,
                      "isEea": true,
                      "names": {
                        "names": "names"
                      }
                    },
                    {
                      "code": "code",
                      "isEu": true,
                      "isEea": true,
                      "names": {
                        "names": "names"
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
        let expectedResponse = CountriesListReferenceResponse(
            rows: [
                CountriesListReferenceResponseRowsItem(
                    code: "code",
                    isEu: true,
                    isEea: true,
                    names: [
                        "names": "names"
                    ]
                ),
                CountriesListReferenceResponseRowsItem(
                    code: "code",
                    isEu: true,
                    isEea: true,
                    names: [
                        "names": "names"
                    ]
                )
            ]
        )
        let response = try await client.reference.countriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltCountiesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "isoCode": "isoCode",
                      "name": "name"
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
        let expectedResponse = LtCountiesListReferenceResponse(
            rows: [
                LtCountiesListReferenceResponseRowsItem(
                    code: "code",
                    isoCode: "isoCode",
                    name: "name"
                )
            ]
        )
        let response = try await client.reference.ltCountiesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltCountiesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "isoCode": "isoCode",
                      "name": "name"
                    },
                    {
                      "code": "code",
                      "isoCode": "isoCode",
                      "name": "name"
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
        let expectedResponse = LtCountiesListReferenceResponse(
            rows: [
                LtCountiesListReferenceResponseRowsItem(
                    code: "code",
                    isoCode: "isoCode",
                    name: "name"
                ),
                LtCountiesListReferenceResponseRowsItem(
                    code: "code",
                    isoCode: "isoCode",
                    name: "name"
                )
            ]
        )
        let response = try await client.reference.ltCountiesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltMunicipalitiesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "name": "name",
                      "countyCode": "countyCode"
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
        let expectedResponse = LtMunicipalitiesListReferenceResponse(
            rows: [
                LtMunicipalitiesListReferenceResponseRowsItem(
                    code: "code",
                    name: "name",
                    countyCode: "countyCode"
                )
            ]
        )
        let response = try await client.reference.ltMunicipalitiesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltMunicipalitiesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "name": "name",
                      "countyCode": "countyCode"
                    },
                    {
                      "code": "code",
                      "name": "name",
                      "countyCode": "countyCode"
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
        let expectedResponse = LtMunicipalitiesListReferenceResponse(
            rows: [
                LtMunicipalitiesListReferenceResponseRowsItem(
                    code: "code",
                    name: "name",
                    countyCode: "countyCode"
                ),
                LtMunicipalitiesListReferenceResponseRowsItem(
                    code: "code",
                    name: "name",
                    countyCode: "countyCode"
                )
            ]
        )
        let response = try await client.reference.ltMunicipalitiesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltCitiesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "name": "name",
                      "municipalityCode": "municipalityCode"
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
        let expectedResponse = LtCitiesListReferenceResponse(
            rows: [
                LtCitiesListReferenceResponseRowsItem(
                    name: "name",
                    municipalityCode: "municipalityCode"
                )
            ]
        )
        let response = try await client.reference.ltCitiesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltCitiesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "name": "name",
                      "municipalityCode": "municipalityCode"
                    },
                    {
                      "name": "name",
                      "municipalityCode": "municipalityCode"
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
        let expectedResponse = LtCitiesListReferenceResponse(
            rows: [
                LtCitiesListReferenceResponseRowsItem(
                    name: "name",
                    municipalityCode: "municipalityCode"
                ),
                LtCitiesListReferenceResponseRowsItem(
                    name: "name",
                    municipalityCode: "municipalityCode"
                )
            ]
        )
        let response = try await client.reference.ltCitiesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func banksList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "countryCode": "countryCode",
                      "name": "name",
                      "bic": "bic",
                      "bankCode": "bankCode",
                      "isActive": true
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
        let expectedResponse = BanksListReferenceResponse(
            rows: [
                BanksListReferenceResponseRowsItem(
                    id: "id",
                    countryCode: "countryCode",
                    name: "name",
                    bic: "bic",
                    bankCode: Nullable<String>.value("bankCode"),
                    isActive: true
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
        let response = try await client.reference.banksList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func banksList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "countryCode": "countryCode",
                      "name": "name",
                      "bic": "bic",
                      "bankCode": "bankCode",
                      "isActive": true
                    },
                    {
                      "id": "x",
                      "countryCode": "countryCode",
                      "name": "name",
                      "bic": "bic",
                      "bankCode": "bankCode",
                      "isActive": true
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
        let expectedResponse = BanksListReferenceResponse(
            rows: [
                BanksListReferenceResponseRowsItem(
                    id: "x",
                    countryCode: "countryCode",
                    name: "name",
                    bic: "bic",
                    bankCode: Nullable<String>.value("bankCode"),
                    isActive: true
                ),
                BanksListReferenceResponseRowsItem(
                    id: "x",
                    countryCode: "countryCode",
                    name: "name",
                    bic: "bic",
                    bankCode: Nullable<String>.value("bankCode"),
                    isActive: true
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
        let response = try await client.reference.banksList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func banksUpsert1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "countryCode": "countryCode",
                  "name": "name",
                  "bic": "bic",
                  "bankCode": "bankCode",
                  "isActive": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BanksUpsertReferenceResponse(
            id: "id",
            countryCode: "countryCode",
            name: "name",
            bic: "bic",
            bankCode: Nullable<String>.value("bankCode"),
            isActive: true
        )
        let response = try await client.reference.banksUpsert(
            request: .init(
                countryCode: "countryCode",
                name: "name",
                bic: "bic"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func banksUpsert2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "countryCode": "countryCode",
                  "name": "name",
                  "bic": "bic",
                  "bankCode": "bankCode",
                  "isActive": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = BanksUpsertReferenceResponse(
            id: "x",
            countryCode: "countryCode",
            name: "name",
            bic: "bic",
            bankCode: Nullable<String>.value("bankCode"),
            isActive: true
        )
        let response = try await client.reference.banksUpsert(
            request: .init(
                countryCode: "xy",
                name: "x",
                bic: "mandarin"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltRegionsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "isoCode": "isoCode",
                      "name": "name"
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
        let expectedResponse = LtRegionsListReferenceResponse(
            rows: [
                LtRegionsListReferenceResponseRowsItem(
                    code: "code",
                    isoCode: "isoCode",
                    name: "name"
                )
            ]
        )
        let response = try await client.reference.ltRegionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ltRegionsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "isoCode": "isoCode",
                      "name": "name"
                    },
                    {
                      "code": "code",
                      "isoCode": "isoCode",
                      "name": "name"
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
        let expectedResponse = LtRegionsListReferenceResponse(
            rows: [
                LtRegionsListReferenceResponseRowsItem(
                    code: "code",
                    isoCode: "isoCode",
                    name: "name"
                ),
                LtRegionsListReferenceResponseRowsItem(
                    code: "code",
                    isoCode: "isoCode",
                    name: "name"
                )
            ]
        )
        let response = try await client.reference.ltRegionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func currenciesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "name": "name",
                      "minorUnits": 1000000
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
        let expectedResponse = CurrenciesListReferenceResponse(
            rows: [
                CurrenciesListReferenceResponseRowsItem(
                    code: "code",
                    name: "name",
                    minorUnits: 1000000
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
        let response = try await client.reference.currenciesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func currenciesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "name": "name",
                      "minorUnits": 1000000
                    },
                    {
                      "code": "code",
                      "name": "name",
                      "minorUnits": 1000000
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
        let expectedResponse = CurrenciesListReferenceResponse(
            rows: [
                CurrenciesListReferenceResponseRowsItem(
                    code: "code",
                    name: "name",
                    minorUnits: 1000000
                ),
                CurrenciesListReferenceResponseRowsItem(
                    code: "code",
                    name: "name",
                    minorUnits: 1000000
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
        let response = try await client.reference.currenciesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vatClassifiersList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "countryCode": "countryCode",
                      "name": "name",
                      "ratePercent": "ratePercent"
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
        let expectedResponse = VatClassifiersListReferenceResponse(
            rows: [
                VatClassifiersListReferenceResponseRowsItem(
                    code: "code",
                    countryCode: "countryCode",
                    name: "name",
                    ratePercent: Nullable<String>.value("ratePercent")
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
        let response = try await client.reference.vatClassifiersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vatClassifiersList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "countryCode": "countryCode",
                      "name": "name",
                      "ratePercent": "ratePercent"
                    },
                    {
                      "code": "code",
                      "countryCode": "countryCode",
                      "name": "name",
                      "ratePercent": "ratePercent"
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
        let expectedResponse = VatClassifiersListReferenceResponse(
            rows: [
                VatClassifiersListReferenceResponseRowsItem(
                    code: "code",
                    countryCode: "countryCode",
                    name: "name",
                    ratePercent: Nullable<String>.value("ratePercent")
                ),
                VatClassifiersListReferenceResponseRowsItem(
                    code: "code",
                    countryCode: "countryCode",
                    name: "name",
                    ratePercent: Nullable<String>.value("ratePercent")
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
        let response = try await client.reference.vatClassifiersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vatClassifiersUpsert1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "upserted": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = VatClassifiersUpsertReferenceResponse(
            upserted: 1000000
        )
        let response = try await client.reference.vatClassifiersUpsert(
            request: .init(rows: [
                VatClassifiersUpsertReferenceRequestRowsItem(
                    code: "code",
                    name: "name"
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vatClassifiersUpsert2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "upserted": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = VatClassifiersUpsertReferenceResponse(
            upserted: 1000000
        )
        let response = try await client.reference.vatClassifiersUpsert(
            request: .init(rows: [
                VatClassifiersUpsertReferenceRequestRowsItem(
                    code: "x",
                    name: "x"
                ),
                VatClassifiersUpsertReferenceRequestRowsItem(
                    code: "x",
                    name: "x"
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euVatRatesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "notice": "notice",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "category": "standard",
                      "ratePercent": "ratePercent",
                      "validFrom": "validFrom",
                      "validTo": "validTo",
                      "source": "default"
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
        let expectedResponse = EuVatRatesListReferenceResponse(
            notice: "notice",
            rows: [
                EuVatRatesListReferenceResponseRowsItem(
                    countryCode: "countryCode",
                    category: .standard,
                    ratePercent: "ratePercent",
                    validFrom: Nullable<String>.value("validFrom"),
                    validTo: Nullable<String>.value("validTo"),
                    source: .default
                )
            ]
        )
        let response = try await client.reference.euVatRatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euVatRatesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "notice": "notice",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "category": "standard",
                      "ratePercent": "ratePercent",
                      "validFrom": "validFrom",
                      "validTo": "validTo",
                      "source": "default"
                    },
                    {
                      "countryCode": "countryCode",
                      "category": "standard",
                      "ratePercent": "ratePercent",
                      "validFrom": "validFrom",
                      "validTo": "validTo",
                      "source": "default"
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
        let expectedResponse = EuVatRatesListReferenceResponse(
            notice: "notice",
            rows: [
                EuVatRatesListReferenceResponseRowsItem(
                    countryCode: "countryCode",
                    category: .standard,
                    ratePercent: "ratePercent",
                    validFrom: Nullable<String>.value("validFrom"),
                    validTo: Nullable<String>.value("validTo"),
                    source: .default
                ),
                EuVatRatesListReferenceResponseRowsItem(
                    countryCode: "countryCode",
                    category: .standard,
                    ratePercent: "ratePercent",
                    validFrom: Nullable<String>.value("validFrom"),
                    validTo: Nullable<String>.value("validTo"),
                    source: .default
                )
            ]
        )
        let response = try await client.reference.euVatRatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euVatRatesSetOverrides1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "countryCode": "countryCode",
                  "source": "default",
                  "notice": "notice",
                  "rows": [
                    {
                      "category": "standard",
                      "ratePercent": "ratePercent"
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
        let expectedResponse = EuVatRatesSetOverridesReferenceResponse(
            countryCode: "countryCode",
            source: .default,
            notice: "notice",
            rows: [
                EuVatRatesSetOverridesReferenceResponseRowsItem(
                    category: .standard,
                    ratePercent: "ratePercent"
                )
            ]
        )
        let response = try await client.reference.euVatRatesSetOverrides(
            request: .init(
                countryCode: "countryCode",
                rates: [
                    EuVatRatesSetOverridesReferenceRequestRatesItem(
                        category: .standard,
                        ratePercent: "121.00"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euVatRatesSetOverrides2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "countryCode": "countryCode",
                  "source": "default",
                  "notice": "notice",
                  "rows": [
                    {
                      "category": "standard",
                      "ratePercent": "ratePercent"
                    },
                    {
                      "category": "standard",
                      "ratePercent": "ratePercent"
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
        let expectedResponse = EuVatRatesSetOverridesReferenceResponse(
            countryCode: "countryCode",
            source: .default,
            notice: "notice",
            rows: [
                EuVatRatesSetOverridesReferenceResponseRowsItem(
                    category: .standard,
                    ratePercent: "ratePercent"
                ),
                EuVatRatesSetOverridesReferenceResponseRowsItem(
                    category: .standard,
                    ratePercent: "ratePercent"
                )
            ]
        )
        let response = try await client.reference.euVatRatesSetOverrides(
            request: .init(
                countryCode: "xy",
                rates: [
                    EuVatRatesSetOverridesReferenceRequestRatesItem(
                        category: .standard,
                        ratePercent: "ratePercent"
                    ),
                    EuVatRatesSetOverridesReferenceRequestRatesItem(
                        category: .standard,
                        ratePercent: "ratePercent"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vatResolve1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "scheme": "domestic",
                  "vatCountryCode": "vatCountryCode",
                  "reverseCharge": true,
                  "deemedSupplier": true,
                  "zeroRated": true,
                  "rates": [
                    {
                      "category": "standard",
                      "ratePercent": "ratePercent"
                    }
                  ],
                  "legalBasis": "legalBasis",
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
        let expectedResponse = VatResolveReferenceResponse(
            scheme: .domestic,
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            reverseCharge: true,
            deemedSupplier: true,
            zeroRated: true,
            rates: [
                VatResolveReferenceResponseRatesItem(
                    category: .standard,
                    ratePercent: "ratePercent"
                )
            ],
            legalBasis: "legalBasis",
            notes: [
                "notes"
            ]
        )
        let response = try await client.reference.vatResolve(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vatResolve2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "scheme": "domestic",
                  "vatCountryCode": "vatCountryCode",
                  "reverseCharge": true,
                  "deemedSupplier": true,
                  "zeroRated": true,
                  "rates": [
                    {
                      "category": "standard",
                      "ratePercent": "ratePercent"
                    },
                    {
                      "category": "standard",
                      "ratePercent": "ratePercent"
                    }
                  ],
                  "legalBasis": "legalBasis",
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
        let expectedResponse = VatResolveReferenceResponse(
            scheme: .domestic,
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            reverseCharge: true,
            deemedSupplier: true,
            zeroRated: true,
            rates: [
                VatResolveReferenceResponseRatesItem(
                    category: .standard,
                    ratePercent: "ratePercent"
                ),
                VatResolveReferenceResponseRatesItem(
                    category: .standard,
                    ratePercent: "ratePercent"
                )
            ],
            legalBasis: "legalBasis",
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.reference.vatResolve(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cnCodesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "name": "name",
                      "nameLt": "nameLt",
                      "supplementaryUnit": "supplementaryUnit"
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
        let expectedResponse = CnCodesListReferenceResponse(
            rows: [
                CnCodesListReferenceResponseRowsItem(
                    code: "code",
                    name: "name",
                    nameLt: Nullable<String>.value("nameLt"),
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit")
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
        let response = try await client.reference.cnCodesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cnCodesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "name": "name",
                      "nameLt": "nameLt",
                      "supplementaryUnit": "supplementaryUnit"
                    },
                    {
                      "code": "code",
                      "name": "name",
                      "nameLt": "nameLt",
                      "supplementaryUnit": "supplementaryUnit"
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
        let expectedResponse = CnCodesListReferenceResponse(
            rows: [
                CnCodesListReferenceResponseRowsItem(
                    code: "code",
                    name: "name",
                    nameLt: Nullable<String>.value("nameLt"),
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit")
                ),
                CnCodesListReferenceResponseRowsItem(
                    code: "code",
                    name: "name",
                    nameLt: Nullable<String>.value("nameLt"),
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit")
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
        let response = try await client.reference.cnCodesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cnCodesUpsert1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "upserted": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CnCodesUpsertReferenceResponse(
            upserted: 1000000
        )
        let response = try await client.reference.cnCodesUpsert(
            request: .init(rows: [
                CnCodesUpsertReferenceRequestRowsItem(
                    code: "code",
                    name: "name"
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cnCodesUpsert2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "upserted": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CnCodesUpsertReferenceResponse(
            upserted: 1000000
        )
        let response = try await client.reference.cnCodesUpsert(
            request: .init(rows: [
                CnCodesUpsertReferenceRequestRowsItem(
                    code: "code",
                    name: "x"
                ),
                CnCodesUpsertReferenceRequestRowsItem(
                    code: "code",
                    name: "x"
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func complianceVersionsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "country": "country",
                      "system": "system",
                      "artifact": "artifact",
                      "version": "version",
                      "verifiedOn": "verifiedOn",
                      "source": "source",
                      "resource": "resource",
                      "notes": "notes"
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
        let expectedResponse = ComplianceVersionsListReferenceResponse(
            rows: [
                ComplianceVersionsListReferenceResponseRowsItem(
                    country: "country",
                    system: "system",
                    artifact: "artifact",
                    version: "version",
                    verifiedOn: "verifiedOn",
                    source: "source",
                    resource: Optional("resource"),
                    notes: Optional("notes")
                )
            ]
        )
        let response = try await client.reference.complianceVersionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func complianceVersionsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "country": "country",
                      "system": "system",
                      "artifact": "artifact",
                      "version": "version",
                      "verifiedOn": "verifiedOn",
                      "source": "source",
                      "resource": "resource",
                      "notes": "notes"
                    },
                    {
                      "country": "country",
                      "system": "system",
                      "artifact": "artifact",
                      "version": "version",
                      "verifiedOn": "verifiedOn",
                      "source": "source",
                      "resource": "resource",
                      "notes": "notes"
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
        let expectedResponse = ComplianceVersionsListReferenceResponse(
            rows: [
                ComplianceVersionsListReferenceResponseRowsItem(
                    country: "country",
                    system: "system",
                    artifact: "artifact",
                    version: "version",
                    verifiedOn: "verifiedOn",
                    source: "source",
                    resource: Optional("resource"),
                    notes: Optional("notes")
                ),
                ComplianceVersionsListReferenceResponseRowsItem(
                    country: "country",
                    system: "system",
                    artifact: "artifact",
                    version: "version",
                    verifiedOn: "verifiedOn",
                    source: "source",
                    resource: Optional("resource"),
                    notes: Optional("notes")
                )
            ]
        )
        let response = try await client.reference.complianceVersionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func intrastatThresholdsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "year": 1000000,
                      "arrivalsReporting": "arrivalsReporting",
                      "dispatchesReporting": "dispatchesReporting",
                      "arrivalsStatistical": "arrivalsStatistical",
                      "dispatchesStatistical": "dispatchesStatistical"
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
        let expectedResponse = IntrastatThresholdsListReferenceResponse(
            rows: [
                IntrastatThresholdsListReferenceResponseRowsItem(
                    year: 1000000,
                    arrivalsReporting: "arrivalsReporting",
                    dispatchesReporting: "dispatchesReporting",
                    arrivalsStatistical: "arrivalsStatistical",
                    dispatchesStatistical: "dispatchesStatistical"
                )
            ]
        )
        let response = try await client.reference.intrastatThresholdsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func intrastatThresholdsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "year": 1000000,
                      "arrivalsReporting": "arrivalsReporting",
                      "dispatchesReporting": "dispatchesReporting",
                      "arrivalsStatistical": "arrivalsStatistical",
                      "dispatchesStatistical": "dispatchesStatistical"
                    },
                    {
                      "year": 1000000,
                      "arrivalsReporting": "arrivalsReporting",
                      "dispatchesReporting": "dispatchesReporting",
                      "arrivalsStatistical": "arrivalsStatistical",
                      "dispatchesStatistical": "dispatchesStatistical"
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
        let expectedResponse = IntrastatThresholdsListReferenceResponse(
            rows: [
                IntrastatThresholdsListReferenceResponseRowsItem(
                    year: 1000000,
                    arrivalsReporting: "arrivalsReporting",
                    dispatchesReporting: "dispatchesReporting",
                    arrivalsStatistical: "arrivalsStatistical",
                    dispatchesStatistical: "dispatchesStatistical"
                ),
                IntrastatThresholdsListReferenceResponseRowsItem(
                    year: 1000000,
                    arrivalsReporting: "arrivalsReporting",
                    dispatchesReporting: "dispatchesReporting",
                    arrivalsStatistical: "arrivalsStatistical",
                    dispatchesStatistical: "dispatchesStatistical"
                )
            ]
        )
        let response = try await client.reference.intrastatThresholdsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unitsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "nameLt": "nameLt",
                      "nameEn": "nameEn"
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
        let expectedResponse = UnitsListReferenceResponse(
            rows: [
                UnitsListReferenceResponseRowsItem(
                    code: "code",
                    nameLt: "nameLt",
                    nameEn: "nameEn"
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
        let response = try await client.reference.unitsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unitsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "nameLt": "nameLt",
                      "nameEn": "nameEn"
                    },
                    {
                      "code": "code",
                      "nameLt": "nameLt",
                      "nameEn": "nameEn"
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
        let expectedResponse = UnitsListReferenceResponse(
            rows: [
                UnitsListReferenceResponseRowsItem(
                    code: "code",
                    nameLt: "nameLt",
                    nameEn: "nameEn"
                ),
                UnitsListReferenceResponseRowsItem(
                    code: "code",
                    nameLt: "nameLt",
                    nameEn: "nameEn"
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
        let response = try await client.reference.unitsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func seriesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "documentType": "documentType",
                  "prefix": "prefix",
                  "year": 1000000,
                  "nextNumber": 1000000,
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
        let expectedResponse = SeriesCreateReferenceResponse(
            id: "id",
            documentType: "documentType",
            prefix: "prefix",
            year: 1000000,
            nextNumber: 1000000,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.reference.seriesCreate(
            request: .init(
                documentType: "documentType",
                year: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func seriesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "documentType": "documentType",
                  "prefix": "prefix",
                  "year": 1000000,
                  "nextNumber": 1000000,
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
        let expectedResponse = SeriesCreateReferenceResponse(
            id: "x",
            documentType: "documentType",
            prefix: "prefix",
            year: 1000000,
            nextNumber: 1000000,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.reference.seriesCreate(
            request: .init(
                documentType: "x",
                year: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func seriesList1() async throws -> Void {
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
                      "year": 1000000,
                      "nextNumber": 1000000,
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
        let expectedResponse = SeriesListReferenceResponse(
            rows: [
                SeriesListReferenceResponseRowsItem(
                    id: "id",
                    documentType: "documentType",
                    prefix: "prefix",
                    year: 1000000,
                    nextNumber: 1000000,
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
        let response = try await client.reference.seriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func seriesList2() async throws -> Void {
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
                      "year": 1000000,
                      "nextNumber": 1000000,
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "documentType": "documentType",
                      "prefix": "prefix",
                      "year": 1000000,
                      "nextNumber": 1000000,
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
        let expectedResponse = SeriesListReferenceResponse(
            rows: [
                SeriesListReferenceResponseRowsItem(
                    id: "x",
                    documentType: "documentType",
                    prefix: "prefix",
                    year: 1000000,
                    nextNumber: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                SeriesListReferenceResponseRowsItem(
                    id: "x",
                    documentType: "documentType",
                    prefix: "prefix",
                    year: 1000000,
                    nextNumber: 1000000,
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
        let response = try await client.reference.seriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}