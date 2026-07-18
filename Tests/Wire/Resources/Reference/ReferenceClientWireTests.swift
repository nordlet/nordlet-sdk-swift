import Foundation
import Testing
import Api

@Suite("ReferenceClient Wire Tests") struct ReferenceClientWireTests {
    @Test func postV1ReferenceExchangeRatesSync1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "date": "date",
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
        let expectedResponse = PostV1ReferenceExchangeRatesSyncResponse(
            date: "date",
            imported: 1000000
        )
        let response = try await client.reference.postV1ReferenceExchangeRatesSync(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceExchangeRatesSync2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "date": "date",
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
        let expectedResponse = PostV1ReferenceExchangeRatesSyncResponse(
            date: "date",
            imported: 1000000
        )
        let response = try await client.reference.postV1ReferenceExchangeRatesSync(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceExchangeRatesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "currencyCode": "currencyCode",
                      "date": "date",
                      "rate": "rate"
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
        let expectedResponse = PostV1ReferenceExchangeRatesListResponse(
            rows: [
                PostV1ReferenceExchangeRatesListResponseRowsItem(
                    currencyCode: "currencyCode",
                    date: "date",
                    rate: "rate"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.reference.postV1ReferenceExchangeRatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceExchangeRatesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "currencyCode": "currencyCode",
                      "date": "date",
                      "rate": "rate"
                    },
                    {
                      "currencyCode": "currencyCode",
                      "date": "date",
                      "rate": "rate"
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
        let expectedResponse = PostV1ReferenceExchangeRatesListResponse(
            rows: [
                PostV1ReferenceExchangeRatesListResponseRowsItem(
                    currencyCode: "currencyCode",
                    date: "date",
                    rate: "rate"
                ),
                PostV1ReferenceExchangeRatesListResponseRowsItem(
                    currencyCode: "currencyCode",
                    date: "date",
                    rate: "rate"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.reference.postV1ReferenceExchangeRatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceExchangeRatesSet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "currencyCode": "currencyCode",
                  "date": "date",
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
        let expectedResponse = PostV1ReferenceExchangeRatesSetResponse(
            currencyCode: "currencyCode",
            date: "date",
            rate: "rate"
        )
        let response = try await client.reference.postV1ReferenceExchangeRatesSet(
            request: .init(
                currency: "currency",
                date: "date",
                rate: "rate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceExchangeRatesSet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "currencyCode": "currencyCode",
                  "date": "date",
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
        let expectedResponse = PostV1ReferenceExchangeRatesSetResponse(
            currencyCode: "currencyCode",
            date: "date",
            rate: "rate"
        )
        let response = try await client.reference.postV1ReferenceExchangeRatesSet(
            request: .init(
                currency: "foo",
                date: "date",
                rate: "rate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceExchangeRatesOverridesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "currencyCode": "currencyCode",
                      "date": "date",
                      "rate": "rate"
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
        let expectedResponse = PostV1ReferenceExchangeRatesOverridesListResponse(
            rows: [
                PostV1ReferenceExchangeRatesOverridesListResponseRowsItem(
                    currencyCode: "currencyCode",
                    date: "date",
                    rate: "rate"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.reference.postV1ReferenceExchangeRatesOverridesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceExchangeRatesOverridesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "currencyCode": "currencyCode",
                      "date": "date",
                      "rate": "rate"
                    },
                    {
                      "currencyCode": "currencyCode",
                      "date": "date",
                      "rate": "rate"
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
        let expectedResponse = PostV1ReferenceExchangeRatesOverridesListResponse(
            rows: [
                PostV1ReferenceExchangeRatesOverridesListResponseRowsItem(
                    currencyCode: "currencyCode",
                    date: "date",
                    rate: "rate"
                ),
                PostV1ReferenceExchangeRatesOverridesListResponseRowsItem(
                    currencyCode: "currencyCode",
                    date: "date",
                    rate: "rate"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.reference.postV1ReferenceExchangeRatesOverridesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceExchangeRatesOverridesDelete1() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceExchangeRatesOverridesDeleteResponse(
            deleted: true
        )
        let response = try await client.reference.postV1ReferenceExchangeRatesOverridesDelete(
            request: .init(
                currency: "currency",
                date: "date"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceExchangeRatesOverridesDelete2() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceExchangeRatesOverridesDeleteResponse(
            deleted: true
        )
        let response = try await client.reference.postV1ReferenceExchangeRatesOverridesDelete(
            request: .init(
                currency: "foo",
                date: "date"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceCountriesList1() async throws -> Void {
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
                        "lt": "lt",
                        "en": "en",
                        "ru": "ru"
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
        let expectedResponse = PostV1ReferenceCountriesListResponse(
            rows: [
                PostV1ReferenceCountriesListResponseRowsItem(
                    code: "code",
                    isEu: true,
                    isEea: true,
                    names: PostV1ReferenceCountriesListResponseRowsItemNames(
                        lt: "lt",
                        en: "en",
                        ru: "ru"
                    )
                )
            ]
        )
        let response = try await client.reference.postV1ReferenceCountriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceCountriesList2() async throws -> Void {
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
                        "lt": "lt",
                        "en": "en",
                        "ru": "ru"
                      }
                    },
                    {
                      "code": "code",
                      "isEu": true,
                      "isEea": true,
                      "names": {
                        "lt": "lt",
                        "en": "en",
                        "ru": "ru"
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
        let expectedResponse = PostV1ReferenceCountriesListResponse(
            rows: [
                PostV1ReferenceCountriesListResponseRowsItem(
                    code: "code",
                    isEu: true,
                    isEea: true,
                    names: PostV1ReferenceCountriesListResponseRowsItemNames(
                        lt: "lt",
                        en: "en",
                        ru: "ru"
                    )
                ),
                PostV1ReferenceCountriesListResponseRowsItem(
                    code: "code",
                    isEu: true,
                    isEea: true,
                    names: PostV1ReferenceCountriesListResponseRowsItemNames(
                        lt: "lt",
                        en: "en",
                        ru: "ru"
                    )
                )
            ]
        )
        let response = try await client.reference.postV1ReferenceCountriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceBanksList1() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceBanksListResponse(
            rows: [
                PostV1ReferenceBanksListResponseRowsItem(
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
            total: 1000000
        )
        let response = try await client.reference.postV1ReferenceBanksList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceBanksList2() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceBanksListResponse(
            rows: [
                PostV1ReferenceBanksListResponseRowsItem(
                    id: "x",
                    countryCode: "countryCode",
                    name: "name",
                    bic: "bic",
                    bankCode: Nullable<String>.value("bankCode"),
                    isActive: true
                ),
                PostV1ReferenceBanksListResponseRowsItem(
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
            total: 1000000
        )
        let response = try await client.reference.postV1ReferenceBanksList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceBanksUpsert1() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceBanksUpsertResponse(
            id: "id",
            countryCode: "countryCode",
            name: "name",
            bic: "bic",
            bankCode: Nullable<String>.value("bankCode"),
            isActive: true
        )
        let response = try await client.reference.postV1ReferenceBanksUpsert(
            request: .init(
                countryCode: "countryCode",
                name: "name",
                bic: "bic"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceBanksUpsert2() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceBanksUpsertResponse(
            id: "x",
            countryCode: "countryCode",
            name: "name",
            bic: "bic",
            bankCode: Nullable<String>.value("bankCode"),
            isActive: true
        )
        let response = try await client.reference.postV1ReferenceBanksUpsert(
            request: .init(
                countryCode: "xy",
                name: "x",
                bic: "mandarin"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceLtRegionsList1() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceLtRegionsListResponse(
            rows: [
                PostV1ReferenceLtRegionsListResponseRowsItem(
                    code: "code",
                    isoCode: "isoCode",
                    name: "name"
                )
            ]
        )
        let response = try await client.reference.postV1ReferenceLtRegionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceLtRegionsList2() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceLtRegionsListResponse(
            rows: [
                PostV1ReferenceLtRegionsListResponseRowsItem(
                    code: "code",
                    isoCode: "isoCode",
                    name: "name"
                ),
                PostV1ReferenceLtRegionsListResponseRowsItem(
                    code: "code",
                    isoCode: "isoCode",
                    name: "name"
                )
            ]
        )
        let response = try await client.reference.postV1ReferenceLtRegionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceCurrenciesList1() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceCurrenciesListResponse(
            rows: [
                PostV1ReferenceCurrenciesListResponseRowsItem(
                    code: "code",
                    name: "name",
                    minorUnits: 1000000
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.reference.postV1ReferenceCurrenciesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceCurrenciesList2() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceCurrenciesListResponse(
            rows: [
                PostV1ReferenceCurrenciesListResponseRowsItem(
                    code: "code",
                    name: "name",
                    minorUnits: 1000000
                ),
                PostV1ReferenceCurrenciesListResponseRowsItem(
                    code: "code",
                    name: "name",
                    minorUnits: 1000000
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.reference.postV1ReferenceCurrenciesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceVatClassifiersList1() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceVatClassifiersListResponse(
            rows: [
                PostV1ReferenceVatClassifiersListResponseRowsItem(
                    code: "code",
                    countryCode: "countryCode",
                    name: "name",
                    ratePercent: Nullable<String>.value("ratePercent")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.reference.postV1ReferenceVatClassifiersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceVatClassifiersList2() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceVatClassifiersListResponse(
            rows: [
                PostV1ReferenceVatClassifiersListResponseRowsItem(
                    code: "code",
                    countryCode: "countryCode",
                    name: "name",
                    ratePercent: Nullable<String>.value("ratePercent")
                ),
                PostV1ReferenceVatClassifiersListResponseRowsItem(
                    code: "code",
                    countryCode: "countryCode",
                    name: "name",
                    ratePercent: Nullable<String>.value("ratePercent")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.reference.postV1ReferenceVatClassifiersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceVatClassifiersUpsert1() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceVatClassifiersUpsertResponse(
            upserted: 1000000
        )
        let response = try await client.reference.postV1ReferenceVatClassifiersUpsert(
            request: .init(rows: [
                PostV1ReferenceVatClassifiersUpsertRequestRowsItem(
                    code: "code",
                    name: "name"
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceVatClassifiersUpsert2() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceVatClassifiersUpsertResponse(
            upserted: 1000000
        )
        let response = try await client.reference.postV1ReferenceVatClassifiersUpsert(
            request: .init(rows: [
                PostV1ReferenceVatClassifiersUpsertRequestRowsItem(
                    code: "x",
                    name: "x"
                ),
                PostV1ReferenceVatClassifiersUpsertRequestRowsItem(
                    code: "x",
                    name: "x"
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceEuVatRatesList1() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceEuVatRatesListResponse(
            notice: "notice",
            rows: [
                PostV1ReferenceEuVatRatesListResponseRowsItem(
                    countryCode: "countryCode",
                    category: .standard,
                    ratePercent: "ratePercent",
                    validFrom: Nullable<String>.value("validFrom"),
                    validTo: Nullable<String>.value("validTo"),
                    source: .default
                )
            ]
        )
        let response = try await client.reference.postV1ReferenceEuVatRatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceEuVatRatesList2() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceEuVatRatesListResponse(
            notice: "notice",
            rows: [
                PostV1ReferenceEuVatRatesListResponseRowsItem(
                    countryCode: "countryCode",
                    category: .standard,
                    ratePercent: "ratePercent",
                    validFrom: Nullable<String>.value("validFrom"),
                    validTo: Nullable<String>.value("validTo"),
                    source: .default
                ),
                PostV1ReferenceEuVatRatesListResponseRowsItem(
                    countryCode: "countryCode",
                    category: .standard,
                    ratePercent: "ratePercent",
                    validFrom: Nullable<String>.value("validFrom"),
                    validTo: Nullable<String>.value("validTo"),
                    source: .default
                )
            ]
        )
        let response = try await client.reference.postV1ReferenceEuVatRatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceEuVatRatesSetOverrides1() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceEuVatRatesSetOverridesResponse(
            countryCode: "countryCode",
            source: .default,
            notice: "notice",
            rows: [
                PostV1ReferenceEuVatRatesSetOverridesResponseRowsItem(
                    category: .standard,
                    ratePercent: "ratePercent"
                )
            ]
        )
        let response = try await client.reference.postV1ReferenceEuVatRatesSetOverrides(
            request: .init(
                countryCode: "countryCode",
                rates: [
                    PostV1ReferenceEuVatRatesSetOverridesRequestRatesItem(
                        category: .standard,
                        ratePercent: "ratePercent"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceEuVatRatesSetOverrides2() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceEuVatRatesSetOverridesResponse(
            countryCode: "countryCode",
            source: .default,
            notice: "notice",
            rows: [
                PostV1ReferenceEuVatRatesSetOverridesResponseRowsItem(
                    category: .standard,
                    ratePercent: "ratePercent"
                ),
                PostV1ReferenceEuVatRatesSetOverridesResponseRowsItem(
                    category: .standard,
                    ratePercent: "ratePercent"
                )
            ]
        )
        let response = try await client.reference.postV1ReferenceEuVatRatesSetOverrides(
            request: .init(
                countryCode: "xy",
                rates: [
                    PostV1ReferenceEuVatRatesSetOverridesRequestRatesItem(
                        category: .standard,
                        ratePercent: "ratePercent"
                    ),
                    PostV1ReferenceEuVatRatesSetOverridesRequestRatesItem(
                        category: .standard,
                        ratePercent: "ratePercent"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceVatResolve1() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceVatResolveResponse(
            scheme: .domestic,
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            reverseCharge: true,
            deemedSupplier: true,
            zeroRated: true,
            rates: [
                PostV1ReferenceVatResolveResponseRatesItem(
                    category: .standard,
                    ratePercent: "ratePercent"
                )
            ],
            legalBasis: "legalBasis",
            notes: [
                "notes"
            ]
        )
        let response = try await client.reference.postV1ReferenceVatResolve(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceVatResolve2() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceVatResolveResponse(
            scheme: .domestic,
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            reverseCharge: true,
            deemedSupplier: true,
            zeroRated: true,
            rates: [
                PostV1ReferenceVatResolveResponseRatesItem(
                    category: .standard,
                    ratePercent: "ratePercent"
                ),
                PostV1ReferenceVatResolveResponseRatesItem(
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
        let response = try await client.reference.postV1ReferenceVatResolve(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceCnCodesList1() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceCnCodesListResponse(
            rows: [
                PostV1ReferenceCnCodesListResponseRowsItem(
                    code: "code",
                    name: "name",
                    nameLt: Nullable<String>.value("nameLt"),
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.reference.postV1ReferenceCnCodesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceCnCodesList2() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceCnCodesListResponse(
            rows: [
                PostV1ReferenceCnCodesListResponseRowsItem(
                    code: "code",
                    name: "name",
                    nameLt: Nullable<String>.value("nameLt"),
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit")
                ),
                PostV1ReferenceCnCodesListResponseRowsItem(
                    code: "code",
                    name: "name",
                    nameLt: Nullable<String>.value("nameLt"),
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.reference.postV1ReferenceCnCodesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceCnCodesUpsert1() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceCnCodesUpsertResponse(
            upserted: 1000000
        )
        let response = try await client.reference.postV1ReferenceCnCodesUpsert(
            request: .init(rows: [
                PostV1ReferenceCnCodesUpsertRequestRowsItem(
                    code: "code",
                    name: "name"
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceCnCodesUpsert2() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceCnCodesUpsertResponse(
            upserted: 1000000
        )
        let response = try await client.reference.postV1ReferenceCnCodesUpsert(
            request: .init(rows: [
                PostV1ReferenceCnCodesUpsertRequestRowsItem(
                    code: "code",
                    name: "x"
                ),
                PostV1ReferenceCnCodesUpsertRequestRowsItem(
                    code: "code",
                    name: "x"
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceComplianceVersionsList1() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceComplianceVersionsListResponse(
            rows: [
                PostV1ReferenceComplianceVersionsListResponseRowsItem(
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
        let response = try await client.reference.postV1ReferenceComplianceVersionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceComplianceVersionsList2() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceComplianceVersionsListResponse(
            rows: [
                PostV1ReferenceComplianceVersionsListResponseRowsItem(
                    country: "country",
                    system: "system",
                    artifact: "artifact",
                    version: "version",
                    verifiedOn: "verifiedOn",
                    source: "source",
                    resource: Optional("resource"),
                    notes: Optional("notes")
                ),
                PostV1ReferenceComplianceVersionsListResponseRowsItem(
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
        let response = try await client.reference.postV1ReferenceComplianceVersionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceIntrastatThresholdsList1() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceIntrastatThresholdsListResponse(
            rows: [
                PostV1ReferenceIntrastatThresholdsListResponseRowsItem(
                    year: 1000000,
                    arrivalsReporting: "arrivalsReporting",
                    dispatchesReporting: "dispatchesReporting",
                    arrivalsStatistical: "arrivalsStatistical",
                    dispatchesStatistical: "dispatchesStatistical"
                )
            ]
        )
        let response = try await client.reference.postV1ReferenceIntrastatThresholdsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceIntrastatThresholdsList2() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceIntrastatThresholdsListResponse(
            rows: [
                PostV1ReferenceIntrastatThresholdsListResponseRowsItem(
                    year: 1000000,
                    arrivalsReporting: "arrivalsReporting",
                    dispatchesReporting: "dispatchesReporting",
                    arrivalsStatistical: "arrivalsStatistical",
                    dispatchesStatistical: "dispatchesStatistical"
                ),
                PostV1ReferenceIntrastatThresholdsListResponseRowsItem(
                    year: 1000000,
                    arrivalsReporting: "arrivalsReporting",
                    dispatchesReporting: "dispatchesReporting",
                    arrivalsStatistical: "arrivalsStatistical",
                    dispatchesStatistical: "dispatchesStatistical"
                )
            ]
        )
        let response = try await client.reference.postV1ReferenceIntrastatThresholdsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceUnitsList1() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceUnitsListResponse(
            rows: [
                PostV1ReferenceUnitsListResponseRowsItem(
                    code: "code",
                    nameLt: "nameLt",
                    nameEn: "nameEn"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.reference.postV1ReferenceUnitsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceUnitsList2() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceUnitsListResponse(
            rows: [
                PostV1ReferenceUnitsListResponseRowsItem(
                    code: "code",
                    nameLt: "nameLt",
                    nameEn: "nameEn"
                ),
                PostV1ReferenceUnitsListResponseRowsItem(
                    code: "code",
                    nameLt: "nameLt",
                    nameEn: "nameEn"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.reference.postV1ReferenceUnitsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceSeriesCreate1() async throws -> Void {
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
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ReferenceSeriesCreateResponse(
            id: "id",
            documentType: "documentType",
            prefix: "prefix",
            year: 1000000,
            nextNumber: 1000000,
            createdAt: "createdAt"
        )
        let response = try await client.reference.postV1ReferenceSeriesCreate(
            request: .init(
                documentType: "documentType",
                year: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceSeriesCreate2() async throws -> Void {
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
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ReferenceSeriesCreateResponse(
            id: "x",
            documentType: "documentType",
            prefix: "prefix",
            year: 1000000,
            nextNumber: 1000000,
            createdAt: "createdAt"
        )
        let response = try await client.reference.postV1ReferenceSeriesCreate(
            request: .init(
                documentType: "x",
                year: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceSeriesList1() async throws -> Void {
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
        let expectedResponse = PostV1ReferenceSeriesListResponse(
            rows: [
                PostV1ReferenceSeriesListResponseRowsItem(
                    id: "id",
                    documentType: "documentType",
                    prefix: "prefix",
                    year: 1000000,
                    nextNumber: 1000000,
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.reference.postV1ReferenceSeriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReferenceSeriesList2() async throws -> Void {
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
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "documentType": "documentType",
                      "prefix": "prefix",
                      "year": 1000000,
                      "nextNumber": 1000000,
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
        let expectedResponse = PostV1ReferenceSeriesListResponse(
            rows: [
                PostV1ReferenceSeriesListResponseRowsItem(
                    id: "x",
                    documentType: "documentType",
                    prefix: "prefix",
                    year: 1000000,
                    nextNumber: 1000000,
                    createdAt: "createdAt"
                ),
                PostV1ReferenceSeriesListResponseRowsItem(
                    id: "x",
                    documentType: "documentType",
                    prefix: "prefix",
                    year: 1000000,
                    nextNumber: 1000000,
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.reference.postV1ReferenceSeriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}