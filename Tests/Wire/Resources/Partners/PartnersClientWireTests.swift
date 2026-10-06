import Foundation
import Testing
import Api

@Suite("PartnersClient Wire Tests") struct PartnersClientWireTests {
    @Test func addressesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "type",
                  "street": "street",
                  "city": "city",
                  "postalCode": "postalCode",
                  "countryCode": "countryCode",
                  "isDefault": true,
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
        let expectedResponse = AddressesCreatePartnersResponse(
            id: "id",
            partnerId: "partnerId",
            type: "type",
            street: Nullable<String>.value("street"),
            city: Nullable<String>.value("city"),
            postalCode: Nullable<String>.value("postalCode"),
            countryCode: Nullable<String>.value("countryCode"),
            isDefault: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.addressesCreate(
            request: .init(partnerId: "partnerId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addressesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "type",
                  "street": "street",
                  "city": "city",
                  "postalCode": "postalCode",
                  "countryCode": "countryCode",
                  "isDefault": true,
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
        let expectedResponse = AddressesCreatePartnersResponse(
            id: "x",
            partnerId: "x",
            type: "type",
            street: Nullable<String>.value("street"),
            city: Nullable<String>.value("city"),
            postalCode: Nullable<String>.value("postalCode"),
            countryCode: Nullable<String>.value("countryCode"),
            isDefault: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.addressesCreate(
            request: .init(partnerId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addressesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "type",
                  "street": "street",
                  "city": "city",
                  "postalCode": "postalCode",
                  "countryCode": "countryCode",
                  "isDefault": true,
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
        let expectedResponse = AddressesUpdatePartnersResponse(
            id: "id",
            partnerId: "partnerId",
            type: "type",
            street: Nullable<String>.value("street"),
            city: Nullable<String>.value("city"),
            postalCode: Nullable<String>.value("postalCode"),
            countryCode: Nullable<String>.value("countryCode"),
            isDefault: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.addressesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addressesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "type",
                  "street": "street",
                  "city": "city",
                  "postalCode": "postalCode",
                  "countryCode": "countryCode",
                  "isDefault": true,
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
        let expectedResponse = AddressesUpdatePartnersResponse(
            id: "x",
            partnerId: "x",
            type: "type",
            street: Nullable<String>.value("street"),
            city: Nullable<String>.value("city"),
            postalCode: Nullable<String>.value("postalCode"),
            countryCode: Nullable<String>.value("countryCode"),
            isDefault: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.addressesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addressesDelete1() async throws -> Void {
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
        let expectedResponse = AddressesDeletePartnersResponse(
            deleted: true
        )
        let response = try await client.partners.addressesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addressesDelete2() async throws -> Void {
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
        let expectedResponse = AddressesDeletePartnersResponse(
            deleted: true
        )
        let response = try await client.partners.addressesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addressesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "partnerId": "partnerId",
                      "type": "type",
                      "street": "street",
                      "city": "city",
                      "postalCode": "postalCode",
                      "countryCode": "countryCode",
                      "isDefault": true,
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
        let expectedResponse = AddressesListPartnersResponse(
            rows: [
                AddressesListPartnersResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    type: "type",
                    street: Nullable<String>.value("street"),
                    city: Nullable<String>.value("city"),
                    postalCode: Nullable<String>.value("postalCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    isDefault: true,
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
        let response = try await client.partners.addressesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func addressesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "partnerId": "x",
                      "type": "type",
                      "street": "street",
                      "city": "city",
                      "postalCode": "postalCode",
                      "countryCode": "countryCode",
                      "isDefault": true,
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "partnerId": "x",
                      "type": "type",
                      "street": "street",
                      "city": "city",
                      "postalCode": "postalCode",
                      "countryCode": "countryCode",
                      "isDefault": true,
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
        let expectedResponse = AddressesListPartnersResponse(
            rows: [
                AddressesListPartnersResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    type: "type",
                    street: Nullable<String>.value("street"),
                    city: Nullable<String>.value("city"),
                    postalCode: Nullable<String>.value("postalCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    isDefault: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                AddressesListPartnersResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    type: "type",
                    street: Nullable<String>.value("street"),
                    city: Nullable<String>.value("city"),
                    postalCode: Nullable<String>.value("postalCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    isDefault: true,
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
        let response = try await client.partners.addressesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func contactsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "name": "name",
                  "role": "role",
                  "email": "email",
                  "phone": "phone",
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
        let expectedResponse = ContactsCreatePartnersResponse(
            id: "id",
            partnerId: "partnerId",
            name: "name",
            role: Nullable<String>.value("role"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.contactsCreate(
            request: .init(
                name: "name",
                partnerId: "partnerId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func contactsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "name": "name",
                  "role": "role",
                  "email": "email",
                  "phone": "phone",
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
        let expectedResponse = ContactsCreatePartnersResponse(
            id: "x",
            partnerId: "x",
            name: "name",
            role: Nullable<String>.value("role"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.contactsCreate(
            request: .init(
                name: "x",
                partnerId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func contactsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "name": "name",
                  "role": "role",
                  "email": "email",
                  "phone": "phone",
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
        let expectedResponse = ContactsUpdatePartnersResponse(
            id: "id",
            partnerId: "partnerId",
            name: "name",
            role: Nullable<String>.value("role"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.contactsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func contactsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "name": "name",
                  "role": "role",
                  "email": "email",
                  "phone": "phone",
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
        let expectedResponse = ContactsUpdatePartnersResponse(
            id: "x",
            partnerId: "x",
            name: "name",
            role: Nullable<String>.value("role"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.contactsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func contactsDelete1() async throws -> Void {
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
        let expectedResponse = ContactsDeletePartnersResponse(
            deleted: true
        )
        let response = try await client.partners.contactsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func contactsDelete2() async throws -> Void {
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
        let expectedResponse = ContactsDeletePartnersResponse(
            deleted: true
        )
        let response = try await client.partners.contactsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func contactsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "partnerId": "partnerId",
                      "name": "name",
                      "role": "role",
                      "email": "email",
                      "phone": "phone",
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
        let expectedResponse = ContactsListPartnersResponse(
            rows: [
                ContactsListPartnersResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    name: "name",
                    role: Nullable<String>.value("role"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
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
        let response = try await client.partners.contactsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func contactsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "partnerId": "x",
                      "name": "name",
                      "role": "role",
                      "email": "email",
                      "phone": "phone",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "partnerId": "x",
                      "name": "name",
                      "role": "role",
                      "email": "email",
                      "phone": "phone",
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
        let expectedResponse = ContactsListPartnersResponse(
            rows: [
                ContactsListPartnersResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    name: "name",
                    role: Nullable<String>.value("role"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ContactsListPartnersResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    name: "name",
                    role: Nullable<String>.value("role"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
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
        let response = try await client.partners.contactsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func bankAccountsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "iban": "iban",
                  "bankName": "bankName",
                  "bic": "bic",
                  "currency": "currency",
                  "isDefault": true,
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
        let expectedResponse = BankAccountsCreatePartnersResponse(
            id: "id",
            partnerId: "partnerId",
            iban: "iban",
            bankName: Nullable<String>.value("bankName"),
            bic: Nullable<String>.value("bic"),
            currency: "currency",
            isDefault: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.bankAccountsCreate(
            request: .init(
                iban: "iban",
                partnerId: "partnerId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func bankAccountsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "iban": "iban",
                  "bankName": "bankName",
                  "bic": "bic",
                  "currency": "currency",
                  "isDefault": true,
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
        let expectedResponse = BankAccountsCreatePartnersResponse(
            id: "x",
            partnerId: "x",
            iban: "iban",
            bankName: Nullable<String>.value("bankName"),
            bic: Nullable<String>.value("bic"),
            currency: "currency",
            isDefault: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.bankAccountsCreate(
            request: .init(
                iban: "alpha",
                partnerId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func bankAccountsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "iban": "iban",
                  "bankName": "bankName",
                  "bic": "bic",
                  "currency": "currency",
                  "isDefault": true,
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
        let expectedResponse = BankAccountsUpdatePartnersResponse(
            id: "id",
            partnerId: "partnerId",
            iban: "iban",
            bankName: Nullable<String>.value("bankName"),
            bic: Nullable<String>.value("bic"),
            currency: "currency",
            isDefault: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.bankAccountsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func bankAccountsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "iban": "iban",
                  "bankName": "bankName",
                  "bic": "bic",
                  "currency": "currency",
                  "isDefault": true,
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
        let expectedResponse = BankAccountsUpdatePartnersResponse(
            id: "x",
            partnerId: "x",
            iban: "iban",
            bankName: Nullable<String>.value("bankName"),
            bic: Nullable<String>.value("bic"),
            currency: "currency",
            isDefault: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.bankAccountsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func bankAccountsDelete1() async throws -> Void {
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
        let expectedResponse = BankAccountsDeletePartnersResponse(
            deleted: true
        )
        let response = try await client.partners.bankAccountsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func bankAccountsDelete2() async throws -> Void {
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
        let expectedResponse = BankAccountsDeletePartnersResponse(
            deleted: true
        )
        let response = try await client.partners.bankAccountsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func bankAccountsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "partnerId": "partnerId",
                      "iban": "iban",
                      "bankName": "bankName",
                      "bic": "bic",
                      "currency": "currency",
                      "isDefault": true,
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
        let expectedResponse = BankAccountsListPartnersResponse(
            rows: [
                BankAccountsListPartnersResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    iban: "iban",
                    bankName: Nullable<String>.value("bankName"),
                    bic: Nullable<String>.value("bic"),
                    currency: "currency",
                    isDefault: true,
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
        let response = try await client.partners.bankAccountsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func bankAccountsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "partnerId": "x",
                      "iban": "iban",
                      "bankName": "bankName",
                      "bic": "bic",
                      "currency": "currency",
                      "isDefault": true,
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "partnerId": "x",
                      "iban": "iban",
                      "bankName": "bankName",
                      "bic": "bic",
                      "currency": "currency",
                      "isDefault": true,
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
        let expectedResponse = BankAccountsListPartnersResponse(
            rows: [
                BankAccountsListPartnersResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    iban: "iban",
                    bankName: Nullable<String>.value("bankName"),
                    bic: Nullable<String>.value("bic"),
                    currency: "currency",
                    isDefault: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                BankAccountsListPartnersResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    iban: "iban",
                    bankName: Nullable<String>.value("bankName"),
                    bic: Nullable<String>.value("bic"),
                    currency: "currency",
                    isDefault: true,
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
        let response = try await client.partners.bankAccountsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func filesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "entity": "entity",
                      "entityId": "entityId",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "sha256": "sha256",
                      "storageKey": "storageKey",
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = FilesListPartnersResponse(
            rows: [
                FilesListPartnersResponseRowsItem(
                    id: "id",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    storageKey: "storageKey",
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.partners.filesList(
            request: .init(partnerId: "partnerId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func filesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "entity": "entity",
                      "entityId": "entityId",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "sha256": "sha256",
                      "storageKey": "storageKey",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "entity": "entity",
                      "entityId": "entityId",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "sha256": "sha256",
                      "storageKey": "storageKey",
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = FilesListPartnersResponse(
            rows: [
                FilesListPartnersResponseRowsItem(
                    id: "x",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    storageKey: "storageKey",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                FilesListPartnersResponseRowsItem(
                    id: "x",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    storageKey: "storageKey",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.partners.filesList(
            request: .init(partnerId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func debtRemindersPreview1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "partnerId": "partnerId",
                      "partnerName": "partnerName",
                      "email": "email",
                      "locale": "en",
                      "invoices": [
                        {
                          "id": "id",
                          "fullNumber": "fullNumber",
                          "issueDate": "2026-07-01",
                          "dueDate": "2026-07-01",
                          "currency": "currency",
                          "remaining": "remaining",
                          "daysLate": 1000000,
                          "interest": "interest"
                        }
                      ],
                      "totals": [
                        {
                          "currency": "currency",
                          "totalDue": "totalDue",
                          "interestDue": "interestDue"
                        }
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
        let expectedResponse = DebtRemindersPreviewPartnersResponse(
            rows: [
                DebtRemindersPreviewPartnersResponseRowsItem(
                    partnerId: "partnerId",
                    partnerName: "partnerName",
                    email: "email",
                    locale: .en,
                    invoices: [
                        DebtRemindersPreviewPartnersResponseRowsItemInvoicesItem(
                            id: "id",
                            fullNumber: "fullNumber",
                            issueDate: CalendarDate("2026-07-01")!,
                            dueDate: CalendarDate("2026-07-01")!,
                            currency: "currency",
                            remaining: "remaining",
                            daysLate: 1000000,
                            interest: "interest"
                        )
                    ],
                    totals: [
                        DebtRemindersPreviewPartnersResponseRowsItemTotalsItem(
                            currency: "currency",
                            totalDue: "totalDue",
                            interestDue: "interestDue"
                        )
                    ]
                )
            ]
        )
        let response = try await client.partners.debtRemindersPreview(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func debtRemindersPreview2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "email": "email",
                      "locale": "en",
                      "invoices": [
                        {
                          "id": "x",
                          "fullNumber": "fullNumber",
                          "issueDate": "2023-01-15",
                          "dueDate": "2023-01-15",
                          "currency": "currency",
                          "remaining": "remaining",
                          "daysLate": 1000000,
                          "interest": "interest"
                        },
                        {
                          "id": "x",
                          "fullNumber": "fullNumber",
                          "issueDate": "2023-01-15",
                          "dueDate": "2023-01-15",
                          "currency": "currency",
                          "remaining": "remaining",
                          "daysLate": 1000000,
                          "interest": "interest"
                        }
                      ],
                      "totals": [
                        {
                          "currency": "currency",
                          "totalDue": "totalDue",
                          "interestDue": "interestDue"
                        },
                        {
                          "currency": "currency",
                          "totalDue": "totalDue",
                          "interestDue": "interestDue"
                        }
                      ]
                    },
                    {
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "email": "email",
                      "locale": "en",
                      "invoices": [
                        {
                          "id": "x",
                          "fullNumber": "fullNumber",
                          "issueDate": "2023-01-15",
                          "dueDate": "2023-01-15",
                          "currency": "currency",
                          "remaining": "remaining",
                          "daysLate": 1000000,
                          "interest": "interest"
                        },
                        {
                          "id": "x",
                          "fullNumber": "fullNumber",
                          "issueDate": "2023-01-15",
                          "dueDate": "2023-01-15",
                          "currency": "currency",
                          "remaining": "remaining",
                          "daysLate": 1000000,
                          "interest": "interest"
                        }
                      ],
                      "totals": [
                        {
                          "currency": "currency",
                          "totalDue": "totalDue",
                          "interestDue": "interestDue"
                        },
                        {
                          "currency": "currency",
                          "totalDue": "totalDue",
                          "interestDue": "interestDue"
                        }
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
        let expectedResponse = DebtRemindersPreviewPartnersResponse(
            rows: [
                DebtRemindersPreviewPartnersResponseRowsItem(
                    partnerId: "x",
                    partnerName: "partnerName",
                    email: "email",
                    locale: .en,
                    invoices: [
                        DebtRemindersPreviewPartnersResponseRowsItemInvoicesItem(
                            id: "x",
                            fullNumber: "fullNumber",
                            issueDate: CalendarDate("2023-01-15")!,
                            dueDate: CalendarDate("2023-01-15")!,
                            currency: "currency",
                            remaining: "remaining",
                            daysLate: 1000000,
                            interest: "interest"
                        ),
                        DebtRemindersPreviewPartnersResponseRowsItemInvoicesItem(
                            id: "x",
                            fullNumber: "fullNumber",
                            issueDate: CalendarDate("2023-01-15")!,
                            dueDate: CalendarDate("2023-01-15")!,
                            currency: "currency",
                            remaining: "remaining",
                            daysLate: 1000000,
                            interest: "interest"
                        )
                    ],
                    totals: [
                        DebtRemindersPreviewPartnersResponseRowsItemTotalsItem(
                            currency: "currency",
                            totalDue: "totalDue",
                            interestDue: "interestDue"
                        ),
                        DebtRemindersPreviewPartnersResponseRowsItemTotalsItem(
                            currency: "currency",
                            totalDue: "totalDue",
                            interestDue: "interestDue"
                        )
                    ]
                ),
                DebtRemindersPreviewPartnersResponseRowsItem(
                    partnerId: "x",
                    partnerName: "partnerName",
                    email: "email",
                    locale: .en,
                    invoices: [
                        DebtRemindersPreviewPartnersResponseRowsItemInvoicesItem(
                            id: "x",
                            fullNumber: "fullNumber",
                            issueDate: CalendarDate("2023-01-15")!,
                            dueDate: CalendarDate("2023-01-15")!,
                            currency: "currency",
                            remaining: "remaining",
                            daysLate: 1000000,
                            interest: "interest"
                        ),
                        DebtRemindersPreviewPartnersResponseRowsItemInvoicesItem(
                            id: "x",
                            fullNumber: "fullNumber",
                            issueDate: CalendarDate("2023-01-15")!,
                            dueDate: CalendarDate("2023-01-15")!,
                            currency: "currency",
                            remaining: "remaining",
                            daysLate: 1000000,
                            interest: "interest"
                        )
                    ],
                    totals: [
                        DebtRemindersPreviewPartnersResponseRowsItemTotalsItem(
                            currency: "currency",
                            totalDue: "totalDue",
                            interestDue: "interestDue"
                        ),
                        DebtRemindersPreviewPartnersResponseRowsItemTotalsItem(
                            currency: "currency",
                            totalDue: "totalDue",
                            interestDue: "interestDue"
                        )
                    ]
                )
            ]
        )
        let response = try await client.partners.debtRemindersPreview(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func debtRemindersList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "partnerId": "partnerId",
                      "sentTo": "sentTo",
                      "invoiceCount": 1000000,
                      "totalDue": "totalDue",
                      "interestDue": "interestDue",
                      "currency": "currency",
                      "invoiceIds": [
                        "invoiceIds"
                      ],
                      "sentAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = DebtRemindersListPartnersResponse(
            rows: [
                DebtRemindersListPartnersResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    sentTo: "sentTo",
                    invoiceCount: 1000000,
                    totalDue: "totalDue",
                    interestDue: "interestDue",
                    currency: "currency",
                    invoiceIds: [
                        "invoiceIds"
                    ],
                    sentAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
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
        let response = try await client.partners.debtRemindersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func debtRemindersList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "partnerId": "x",
                      "sentTo": "sentTo",
                      "invoiceCount": 1000000,
                      "totalDue": "totalDue",
                      "interestDue": "interestDue",
                      "currency": "currency",
                      "invoiceIds": [
                        "invoiceIds",
                        "invoiceIds"
                      ],
                      "sentAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "partnerId": "x",
                      "sentTo": "sentTo",
                      "invoiceCount": 1000000,
                      "totalDue": "totalDue",
                      "interestDue": "interestDue",
                      "currency": "currency",
                      "invoiceIds": [
                        "invoiceIds",
                        "invoiceIds"
                      ],
                      "sentAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = DebtRemindersListPartnersResponse(
            rows: [
                DebtRemindersListPartnersResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    sentTo: "sentTo",
                    invoiceCount: 1000000,
                    totalDue: "totalDue",
                    interestDue: "interestDue",
                    currency: "currency",
                    invoiceIds: [
                        "invoiceIds",
                        "invoiceIds"
                    ],
                    sentAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                DebtRemindersListPartnersResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    sentTo: "sentTo",
                    invoiceCount: 1000000,
                    totalDue: "totalDue",
                    interestDue: "interestDue",
                    currency: "currency",
                    invoiceIds: [
                        "invoiceIds",
                        "invoiceIds"
                    ],
                    sentAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
        let response = try await client.partners.debtRemindersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func validateVat1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "valid": true,
                  "countryCode": "countryCode",
                  "vatNumber": "vatNumber",
                  "name": "name",
                  "address": "address",
                  "requestIdentifier": "requestIdentifier",
                  "checkedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ValidateVatPartnersResponse(
            valid: true,
            countryCode: "countryCode",
            vatNumber: "vatNumber",
            name: Nullable<String>.value("name"),
            address: Nullable<String>.value("address"),
            requestIdentifier: Nullable<String>.value("requestIdentifier"),
            checkedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.validateVat(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func validateVat2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "valid": true,
                  "countryCode": "countryCode",
                  "vatNumber": "vatNumber",
                  "name": "name",
                  "address": "address",
                  "requestIdentifier": "requestIdentifier",
                  "checkedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ValidateVatPartnersResponse(
            valid: true,
            countryCode: "countryCode",
            vatNumber: "vatNumber",
            name: Nullable<String>.value("name"),
            address: Nullable<String>.value("address"),
            requestIdentifier: Nullable<String>.value("requestIdentifier"),
            checkedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.validateVat(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vatReviewsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "partnerId": "partnerId",
                      "vatCode": "vatCode",
                      "reason": "invalid",
                      "status": "open",
                      "resolution": "confirmed_valid",
                      "resolutionNote": "resolutionNote",
                      "details": {},
                      "resolvedAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = VatReviewsListPartnersResponse(
            rows: [
                VatReviewsListPartnersResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    vatCode: "vatCode",
                    reason: .invalid,
                    status: .open,
                    resolution: Nullable<VatReviewsListPartnersResponseRowsItemResolution>.value(.confirmedValid),
                    resolutionNote: Nullable<String>.value("resolutionNote"),
                    details: Nullable<VatReviewsListPartnersResponseRowsItemDetails>.value(VatReviewsListPartnersResponseRowsItemDetails(

                    )),
                    resolvedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
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
        let response = try await client.partners.vatReviewsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vatReviewsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "partnerId": "x",
                      "vatCode": "vatCode",
                      "reason": "invalid",
                      "status": "open",
                      "resolution": "confirmed_valid",
                      "resolutionNote": "resolutionNote",
                      "details": {
                        "message": "message",
                        "partnerName": "partnerName",
                        "viesName": "viesName",
                        "viesAddress": "viesAddress",
                        "requestIdentifier": "requestIdentifier"
                      },
                      "resolvedAt": "2024-01-15T09:30:00Z",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "partnerId": "x",
                      "vatCode": "vatCode",
                      "reason": "invalid",
                      "status": "open",
                      "resolution": "confirmed_valid",
                      "resolutionNote": "resolutionNote",
                      "details": {
                        "message": "message",
                        "partnerName": "partnerName",
                        "viesName": "viesName",
                        "viesAddress": "viesAddress",
                        "requestIdentifier": "requestIdentifier"
                      },
                      "resolvedAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = VatReviewsListPartnersResponse(
            rows: [
                VatReviewsListPartnersResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    vatCode: "vatCode",
                    reason: .invalid,
                    status: .open,
                    resolution: Nullable<VatReviewsListPartnersResponseRowsItemResolution>.value(.confirmedValid),
                    resolutionNote: Nullable<String>.value("resolutionNote"),
                    details: Nullable<VatReviewsListPartnersResponseRowsItemDetails>.value(VatReviewsListPartnersResponseRowsItemDetails(
                        message: Optional("message"),
                        partnerName: Optional("partnerName"),
                        viesName: Optional(Nullable<String>.value("viesName")),
                        viesAddress: Optional(Nullable<String>.value("viesAddress")),
                        requestIdentifier: Optional(Nullable<String>.value("requestIdentifier"))
                    )),
                    resolvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                VatReviewsListPartnersResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    vatCode: "vatCode",
                    reason: .invalid,
                    status: .open,
                    resolution: Nullable<VatReviewsListPartnersResponseRowsItemResolution>.value(.confirmedValid),
                    resolutionNote: Nullable<String>.value("resolutionNote"),
                    details: Nullable<VatReviewsListPartnersResponseRowsItemDetails>.value(VatReviewsListPartnersResponseRowsItemDetails(
                        message: Optional("message"),
                        partnerName: Optional("partnerName"),
                        viesName: Optional(Nullable<String>.value("viesName")),
                        viesAddress: Optional(Nullable<String>.value("viesAddress")),
                        requestIdentifier: Optional(Nullable<String>.value("requestIdentifier"))
                    )),
                    resolvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
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
        let response = try await client.partners.vatReviewsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vatReviewsResolve1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "vatCode": "vatCode",
                  "reason": "invalid",
                  "status": "open",
                  "resolution": "confirmed_valid",
                  "resolutionNote": "resolutionNote",
                  "details": {
                    "message": "message",
                    "partnerName": "partnerName",
                    "viesName": "viesName",
                    "viesAddress": "viesAddress",
                    "requestIdentifier": "requestIdentifier"
                  },
                  "resolvedAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = VatReviewsResolvePartnersResponse(
            id: "id",
            partnerId: "partnerId",
            vatCode: "vatCode",
            reason: .invalid,
            status: .open,
            resolution: Nullable<VatReviewsResolvePartnersResponseResolution>.value(.confirmedValid),
            resolutionNote: Nullable<String>.value("resolutionNote"),
            details: Nullable<VatReviewsResolvePartnersResponseDetails>.value(VatReviewsResolvePartnersResponseDetails(
                message: Optional("message"),
                partnerName: Optional("partnerName"),
                viesName: Optional(Nullable<String>.value("viesName")),
                viesAddress: Optional(Nullable<String>.value("viesAddress")),
                requestIdentifier: Optional(Nullable<String>.value("requestIdentifier"))
            )),
            resolvedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.vatReviewsResolve(
            request: .init(
                id: "id",
                resolution: .confirmedValid
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vatReviewsResolve2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "vatCode": "vatCode",
                  "reason": "invalid",
                  "status": "open",
                  "resolution": "confirmed_valid",
                  "resolutionNote": "resolutionNote",
                  "details": {
                    "message": "message",
                    "partnerName": "partnerName",
                    "viesName": "viesName",
                    "viesAddress": "viesAddress",
                    "requestIdentifier": "requestIdentifier"
                  },
                  "resolvedAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = VatReviewsResolvePartnersResponse(
            id: "x",
            partnerId: "x",
            vatCode: "vatCode",
            reason: .invalid,
            status: .open,
            resolution: Nullable<VatReviewsResolvePartnersResponseResolution>.value(.confirmedValid),
            resolutionNote: Nullable<String>.value("resolutionNote"),
            details: Nullable<VatReviewsResolvePartnersResponseDetails>.value(VatReviewsResolvePartnersResponseDetails(
                message: Optional("message"),
                partnerName: Optional("partnerName"),
                viesName: Optional(Nullable<String>.value("viesName")),
                viesAddress: Optional(Nullable<String>.value("viesAddress")),
                requestIdentifier: Optional(Nullable<String>.value("requestIdentifier"))
            )),
            resolvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.vatReviewsResolve(
            request: .init(
                id: "x",
                resolution: .confirmedValid
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func create1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "type": "company",
                  "name": "name",
                  "code": "code",
                  "vatCode": "vatCode",
                  "peppolId": "peppolId",
                  "email": "email",
                  "phone": "phone",
                  "selfEmploymentCertNo": "selfEmploymentCertNo",
                  "birthDate": "2026-07-01",
                  "isCustomer": true,
                  "isSupplier": true,
                  "paymentTermDays": 1000000,
                  "creditLimit": "creditLimit",
                  "priceListId": "priceListId",
                  "groupId": "groupId",
                  "statusId": "statusId",
                  "vatValid": true,
                  "vatValidatedAt": "2026-07-01T09:30:00Z",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "municipality": "municipality",
                    "county": "county",
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
                  "correspondenceAddress": {
                    "street": "street",
                    "city": "city",
                    "municipality": "municipality",
                    "county": "county",
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "shortName": "shortName",
                  "website": "website",
                  "fax": "fax",
                  "eoriCode": "eoriCode",
                  "otherCode": "otherCode",
                  "foreignTaxNumber": "foreignTaxNumber",
                  "autoDebtReminder": true,
                  "lateInterestPercent": "lateInterestPercent",
                  "firstCallDate": "2026-07-01",
                  "lastCallDate": "2026-07-01",
                  "nextCallDate": "2026-07-01",
                  "rating": 1000000,
                  "isEmployee": true,
                  "isGroupMember": true,
                  "isActive": true,
                  "legalCountryClass": "lt",
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
        let expectedResponse = CreatePartnersResponse(
            id: "id",
            type: .company,
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            peppolId: Nullable<String>.value("peppolId"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            isCustomer: true,
            isSupplier: true,
            paymentTermDays: Nullable<Int64>.value(1000000),
            creditLimit: Nullable<String>.value("creditLimit"),
            priceListId: Nullable<String>.value("priceListId"),
            groupId: Nullable<String>.value("groupId"),
            statusId: Nullable<String>.value("statusId"),
            vatValid: Nullable<Bool>.value(true),
            vatValidatedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            address: Nullable<CreatePartnersResponseAddress>.value(CreatePartnersResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            correspondenceAddress: Nullable<CreatePartnersResponseCorrespondenceAddress>.value(CreatePartnersResponseCorrespondenceAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            shortName: Nullable<String>.value("shortName"),
            website: Nullable<String>.value("website"),
            fax: Nullable<String>.value("fax"),
            eoriCode: Nullable<String>.value("eoriCode"),
            otherCode: Nullable<String>.value("otherCode"),
            foreignTaxNumber: Nullable<String>.value("foreignTaxNumber"),
            autoDebtReminder: true,
            lateInterestPercent: Nullable<String>.value("lateInterestPercent"),
            firstCallDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            lastCallDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            nextCallDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            rating: Nullable<Int64>.value(1000000),
            isEmployee: true,
            isGroupMember: true,
            isActive: true,
            legalCountryClass: Nullable<CreatePartnersResponseLegalCountryClass>.value(.lt),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.create(
            request: .init(name: "name"),
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
                  "type": "company",
                  "name": "name",
                  "code": "code",
                  "vatCode": "vatCode",
                  "peppolId": "peppolId",
                  "email": "email",
                  "phone": "phone",
                  "selfEmploymentCertNo": "selfEmploymentCertNo",
                  "birthDate": "2023-01-15",
                  "isCustomer": true,
                  "isSupplier": true,
                  "paymentTermDays": 1000000,
                  "creditLimit": "creditLimit",
                  "priceListId": "x",
                  "groupId": "x",
                  "statusId": "x",
                  "vatValid": true,
                  "vatValidatedAt": "2024-01-15T09:30:00Z",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "municipality": "municipality",
                    "county": "county",
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
                  "correspondenceAddress": {
                    "street": "street",
                    "city": "city",
                    "municipality": "municipality",
                    "county": "county",
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "shortName": "shortName",
                  "website": "website",
                  "fax": "fax",
                  "eoriCode": "eoriCode",
                  "otherCode": "otherCode",
                  "foreignTaxNumber": "foreignTaxNumber",
                  "autoDebtReminder": true,
                  "lateInterestPercent": "lateInterestPercent",
                  "firstCallDate": "2023-01-15",
                  "lastCallDate": "2023-01-15",
                  "nextCallDate": "2023-01-15",
                  "rating": 1000000,
                  "isEmployee": true,
                  "isGroupMember": true,
                  "isActive": true,
                  "legalCountryClass": "lt",
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
        let expectedResponse = CreatePartnersResponse(
            id: "x",
            type: .company,
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            peppolId: Nullable<String>.value("peppolId"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            isCustomer: true,
            isSupplier: true,
            paymentTermDays: Nullable<Int64>.value(1000000),
            creditLimit: Nullable<String>.value("creditLimit"),
            priceListId: Nullable<String>.value("x"),
            groupId: Nullable<String>.value("x"),
            statusId: Nullable<String>.value("x"),
            vatValid: Nullable<Bool>.value(true),
            vatValidatedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            address: Nullable<CreatePartnersResponseAddress>.value(CreatePartnersResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            correspondenceAddress: Nullable<CreatePartnersResponseCorrespondenceAddress>.value(CreatePartnersResponseCorrespondenceAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            shortName: Nullable<String>.value("shortName"),
            website: Nullable<String>.value("website"),
            fax: Nullable<String>.value("fax"),
            eoriCode: Nullable<String>.value("eoriCode"),
            otherCode: Nullable<String>.value("otherCode"),
            foreignTaxNumber: Nullable<String>.value("foreignTaxNumber"),
            autoDebtReminder: true,
            lateInterestPercent: Nullable<String>.value("lateInterestPercent"),
            firstCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            lastCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            nextCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            rating: Nullable<Int64>.value(1000000),
            isEmployee: true,
            isGroupMember: true,
            isActive: true,
            legalCountryClass: Nullable<CreatePartnersResponseLegalCountryClass>.value(.lt),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.create(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func findOrCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "created": true,
                  "partner": {
                    "id": "id",
                    "type": "company",
                    "name": "name",
                    "code": "code",
                    "vatCode": "vatCode",
                    "peppolId": "peppolId",
                    "email": "email",
                    "phone": "phone",
                    "selfEmploymentCertNo": "selfEmploymentCertNo",
                    "birthDate": "2026-07-01",
                    "isCustomer": true,
                    "isSupplier": true,
                    "paymentTermDays": 1000000,
                    "creditLimit": "creditLimit",
                    "priceListId": "priceListId",
                    "groupId": "groupId",
                    "statusId": "statusId",
                    "vatValid": true,
                    "vatValidatedAt": "2026-07-01T09:30:00Z",
                    "address": {
                      "street": "street",
                      "city": "city",
                      "municipality": "municipality",
                      "county": "county",
                      "postalCode": "postalCode",
                      "countryCode": "countryCode"
                    },
                    "correspondenceAddress": {
                      "street": "street",
                      "city": "city",
                      "municipality": "municipality",
                      "county": "county",
                      "postalCode": "postalCode",
                      "countryCode": "countryCode"
                    },
                    "notes": "notes",
                    "documentRef": "documentRef",
                    "shortName": "shortName",
                    "website": "website",
                    "fax": "fax",
                    "eoriCode": "eoriCode",
                    "otherCode": "otherCode",
                    "foreignTaxNumber": "foreignTaxNumber",
                    "autoDebtReminder": true,
                    "lateInterestPercent": "lateInterestPercent",
                    "firstCallDate": "2026-07-01",
                    "lastCallDate": "2026-07-01",
                    "nextCallDate": "2026-07-01",
                    "rating": 1000000,
                    "isEmployee": true,
                    "isGroupMember": true,
                    "isActive": true,
                    "legalCountryClass": "lt",
                    "createdAt": "2026-07-01T09:30:00Z",
                    "updatedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = FindOrCreatePartnersResponse(
            created: true,
            partner: FindOrCreatePartnersResponsePartner(
                id: "id",
                type: .company,
                name: "name",
                code: Nullable<String>.value("code"),
                vatCode: Nullable<String>.value("vatCode"),
                peppolId: Nullable<String>.value("peppolId"),
                email: Nullable<String>.value("email"),
                phone: Nullable<String>.value("phone"),
                selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
                birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                isCustomer: true,
                isSupplier: true,
                paymentTermDays: Nullable<Int64>.value(1000000),
                creditLimit: Nullable<String>.value("creditLimit"),
                priceListId: Nullable<String>.value("priceListId"),
                groupId: Nullable<String>.value("groupId"),
                statusId: Nullable<String>.value("statusId"),
                vatValid: Nullable<Bool>.value(true),
                vatValidatedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                address: Nullable<FindOrCreatePartnersResponsePartnerAddress>.value(FindOrCreatePartnersResponsePartnerAddress(
                    street: Optional("street"),
                    city: Optional("city"),
                    municipality: Optional("municipality"),
                    county: Optional("county"),
                    postalCode: Optional("postalCode"),
                    countryCode: Optional("countryCode")
                )),
                correspondenceAddress: Nullable<FindOrCreatePartnersResponsePartnerCorrespondenceAddress>.value(FindOrCreatePartnersResponsePartnerCorrespondenceAddress(
                    street: Optional("street"),
                    city: Optional("city"),
                    municipality: Optional("municipality"),
                    county: Optional("county"),
                    postalCode: Optional("postalCode"),
                    countryCode: Optional("countryCode")
                )),
                notes: Nullable<String>.value("notes"),
                documentRef: Nullable<String>.value("documentRef"),
                shortName: Nullable<String>.value("shortName"),
                website: Nullable<String>.value("website"),
                fax: Nullable<String>.value("fax"),
                eoriCode: Nullable<String>.value("eoriCode"),
                otherCode: Nullable<String>.value("otherCode"),
                foreignTaxNumber: Nullable<String>.value("foreignTaxNumber"),
                autoDebtReminder: true,
                lateInterestPercent: Nullable<String>.value("lateInterestPercent"),
                firstCallDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                lastCallDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                nextCallDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                rating: Nullable<Int64>.value(1000000),
                isEmployee: true,
                isGroupMember: true,
                isActive: true,
                legalCountryClass: Nullable<FindOrCreatePartnersResponsePartnerLegalCountryClass>.value(.lt),
                createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
            )
        )
        let response = try await client.partners.findOrCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func findOrCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "created": true,
                  "partner": {
                    "id": "x",
                    "type": "company",
                    "name": "name",
                    "code": "code",
                    "vatCode": "vatCode",
                    "peppolId": "peppolId",
                    "email": "email",
                    "phone": "phone",
                    "selfEmploymentCertNo": "selfEmploymentCertNo",
                    "birthDate": "2023-01-15",
                    "isCustomer": true,
                    "isSupplier": true,
                    "paymentTermDays": 1000000,
                    "creditLimit": "creditLimit",
                    "priceListId": "x",
                    "groupId": "x",
                    "statusId": "x",
                    "vatValid": true,
                    "vatValidatedAt": "2024-01-15T09:30:00Z",
                    "address": {
                      "street": "street",
                      "city": "city",
                      "municipality": "municipality",
                      "county": "county",
                      "postalCode": "postalCode",
                      "countryCode": "xy"
                    },
                    "correspondenceAddress": {
                      "street": "street",
                      "city": "city",
                      "municipality": "municipality",
                      "county": "county",
                      "postalCode": "postalCode",
                      "countryCode": "xy"
                    },
                    "notes": "notes",
                    "documentRef": "documentRef",
                    "shortName": "shortName",
                    "website": "website",
                    "fax": "fax",
                    "eoriCode": "eoriCode",
                    "otherCode": "otherCode",
                    "foreignTaxNumber": "foreignTaxNumber",
                    "autoDebtReminder": true,
                    "lateInterestPercent": "lateInterestPercent",
                    "firstCallDate": "2023-01-15",
                    "lastCallDate": "2023-01-15",
                    "nextCallDate": "2023-01-15",
                    "rating": 1000000,
                    "isEmployee": true,
                    "isGroupMember": true,
                    "isActive": true,
                    "legalCountryClass": "lt",
                    "createdAt": "2024-01-15T09:30:00Z",
                    "updatedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = FindOrCreatePartnersResponse(
            created: true,
            partner: FindOrCreatePartnersResponsePartner(
                id: "x",
                type: .company,
                name: "name",
                code: Nullable<String>.value("code"),
                vatCode: Nullable<String>.value("vatCode"),
                peppolId: Nullable<String>.value("peppolId"),
                email: Nullable<String>.value("email"),
                phone: Nullable<String>.value("phone"),
                selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
                birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                isCustomer: true,
                isSupplier: true,
                paymentTermDays: Nullable<Int64>.value(1000000),
                creditLimit: Nullable<String>.value("creditLimit"),
                priceListId: Nullable<String>.value("x"),
                groupId: Nullable<String>.value("x"),
                statusId: Nullable<String>.value("x"),
                vatValid: Nullable<Bool>.value(true),
                vatValidatedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                address: Nullable<FindOrCreatePartnersResponsePartnerAddress>.value(FindOrCreatePartnersResponsePartnerAddress(
                    street: Optional("street"),
                    city: Optional("city"),
                    municipality: Optional("municipality"),
                    county: Optional("county"),
                    postalCode: Optional("postalCode"),
                    countryCode: Optional("xy")
                )),
                correspondenceAddress: Nullable<FindOrCreatePartnersResponsePartnerCorrespondenceAddress>.value(FindOrCreatePartnersResponsePartnerCorrespondenceAddress(
                    street: Optional("street"),
                    city: Optional("city"),
                    municipality: Optional("municipality"),
                    county: Optional("county"),
                    postalCode: Optional("postalCode"),
                    countryCode: Optional("xy")
                )),
                notes: Nullable<String>.value("notes"),
                documentRef: Nullable<String>.value("documentRef"),
                shortName: Nullable<String>.value("shortName"),
                website: Nullable<String>.value("website"),
                fax: Nullable<String>.value("fax"),
                eoriCode: Nullable<String>.value("eoriCode"),
                otherCode: Nullable<String>.value("otherCode"),
                foreignTaxNumber: Nullable<String>.value("foreignTaxNumber"),
                autoDebtReminder: true,
                lateInterestPercent: Nullable<String>.value("lateInterestPercent"),
                firstCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                lastCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                nextCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                rating: Nullable<Int64>.value(1000000),
                isEmployee: true,
                isGroupMember: true,
                isActive: true,
                legalCountryClass: Nullable<FindOrCreatePartnersResponsePartnerLegalCountryClass>.value(.lt),
                createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            )
        )
        let response = try await client.partners.findOrCreate(
            request: .init(name: "x"),
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
                  "type": "company",
                  "name": "name",
                  "code": "code",
                  "vatCode": "vatCode",
                  "peppolId": "peppolId",
                  "email": "email",
                  "phone": "phone",
                  "selfEmploymentCertNo": "selfEmploymentCertNo",
                  "birthDate": "2026-07-01",
                  "isCustomer": true,
                  "isSupplier": true,
                  "paymentTermDays": 1000000,
                  "creditLimit": "creditLimit",
                  "priceListId": "priceListId",
                  "groupId": "groupId",
                  "statusId": "statusId",
                  "vatValid": true,
                  "vatValidatedAt": "2026-07-01T09:30:00Z",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "municipality": "municipality",
                    "county": "county",
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
                  "correspondenceAddress": {
                    "street": "street",
                    "city": "city",
                    "municipality": "municipality",
                    "county": "county",
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "shortName": "shortName",
                  "website": "website",
                  "fax": "fax",
                  "eoriCode": "eoriCode",
                  "otherCode": "otherCode",
                  "foreignTaxNumber": "foreignTaxNumber",
                  "autoDebtReminder": true,
                  "lateInterestPercent": "lateInterestPercent",
                  "firstCallDate": "2026-07-01",
                  "lastCallDate": "2026-07-01",
                  "nextCallDate": "2026-07-01",
                  "rating": 1000000,
                  "isEmployee": true,
                  "isGroupMember": true,
                  "isActive": true,
                  "legalCountryClass": "lt",
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
        let expectedResponse = GetPartnersResponse(
            id: "id",
            type: .company,
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            peppolId: Nullable<String>.value("peppolId"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            isCustomer: true,
            isSupplier: true,
            paymentTermDays: Nullable<Int64>.value(1000000),
            creditLimit: Nullable<String>.value("creditLimit"),
            priceListId: Nullable<String>.value("priceListId"),
            groupId: Nullable<String>.value("groupId"),
            statusId: Nullable<String>.value("statusId"),
            vatValid: Nullable<Bool>.value(true),
            vatValidatedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            address: Nullable<GetPartnersResponseAddress>.value(GetPartnersResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            correspondenceAddress: Nullable<GetPartnersResponseCorrespondenceAddress>.value(GetPartnersResponseCorrespondenceAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            shortName: Nullable<String>.value("shortName"),
            website: Nullable<String>.value("website"),
            fax: Nullable<String>.value("fax"),
            eoriCode: Nullable<String>.value("eoriCode"),
            otherCode: Nullable<String>.value("otherCode"),
            foreignTaxNumber: Nullable<String>.value("foreignTaxNumber"),
            autoDebtReminder: true,
            lateInterestPercent: Nullable<String>.value("lateInterestPercent"),
            firstCallDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            lastCallDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            nextCallDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            rating: Nullable<Int64>.value(1000000),
            isEmployee: true,
            isGroupMember: true,
            isActive: true,
            legalCountryClass: Nullable<GetPartnersResponseLegalCountryClass>.value(.lt),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.get(
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
                  "type": "company",
                  "name": "name",
                  "code": "code",
                  "vatCode": "vatCode",
                  "peppolId": "peppolId",
                  "email": "email",
                  "phone": "phone",
                  "selfEmploymentCertNo": "selfEmploymentCertNo",
                  "birthDate": "2023-01-15",
                  "isCustomer": true,
                  "isSupplier": true,
                  "paymentTermDays": 1000000,
                  "creditLimit": "creditLimit",
                  "priceListId": "x",
                  "groupId": "x",
                  "statusId": "x",
                  "vatValid": true,
                  "vatValidatedAt": "2024-01-15T09:30:00Z",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "municipality": "municipality",
                    "county": "county",
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
                  "correspondenceAddress": {
                    "street": "street",
                    "city": "city",
                    "municipality": "municipality",
                    "county": "county",
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "shortName": "shortName",
                  "website": "website",
                  "fax": "fax",
                  "eoriCode": "eoriCode",
                  "otherCode": "otherCode",
                  "foreignTaxNumber": "foreignTaxNumber",
                  "autoDebtReminder": true,
                  "lateInterestPercent": "lateInterestPercent",
                  "firstCallDate": "2023-01-15",
                  "lastCallDate": "2023-01-15",
                  "nextCallDate": "2023-01-15",
                  "rating": 1000000,
                  "isEmployee": true,
                  "isGroupMember": true,
                  "isActive": true,
                  "legalCountryClass": "lt",
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
        let expectedResponse = GetPartnersResponse(
            id: "x",
            type: .company,
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            peppolId: Nullable<String>.value("peppolId"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            isCustomer: true,
            isSupplier: true,
            paymentTermDays: Nullable<Int64>.value(1000000),
            creditLimit: Nullable<String>.value("creditLimit"),
            priceListId: Nullable<String>.value("x"),
            groupId: Nullable<String>.value("x"),
            statusId: Nullable<String>.value("x"),
            vatValid: Nullable<Bool>.value(true),
            vatValidatedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            address: Nullable<GetPartnersResponseAddress>.value(GetPartnersResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            correspondenceAddress: Nullable<GetPartnersResponseCorrespondenceAddress>.value(GetPartnersResponseCorrespondenceAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            shortName: Nullable<String>.value("shortName"),
            website: Nullable<String>.value("website"),
            fax: Nullable<String>.value("fax"),
            eoriCode: Nullable<String>.value("eoriCode"),
            otherCode: Nullable<String>.value("otherCode"),
            foreignTaxNumber: Nullable<String>.value("foreignTaxNumber"),
            autoDebtReminder: true,
            lateInterestPercent: Nullable<String>.value("lateInterestPercent"),
            firstCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            lastCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            nextCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            rating: Nullable<Int64>.value(1000000),
            isEmployee: true,
            isGroupMember: true,
            isActive: true,
            legalCountryClass: Nullable<GetPartnersResponseLegalCountryClass>.value(.lt),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.get(
            request: .init(id: "x"),
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
                  "type": "company",
                  "name": "name",
                  "code": "code",
                  "vatCode": "vatCode",
                  "peppolId": "peppolId",
                  "email": "email",
                  "phone": "phone",
                  "selfEmploymentCertNo": "selfEmploymentCertNo",
                  "birthDate": "2026-07-01",
                  "isCustomer": true,
                  "isSupplier": true,
                  "paymentTermDays": 1000000,
                  "creditLimit": "creditLimit",
                  "priceListId": "priceListId",
                  "groupId": "groupId",
                  "statusId": "statusId",
                  "vatValid": true,
                  "vatValidatedAt": "2026-07-01T09:30:00Z",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "municipality": "municipality",
                    "county": "county",
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
                  "correspondenceAddress": {
                    "street": "street",
                    "city": "city",
                    "municipality": "municipality",
                    "county": "county",
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "shortName": "shortName",
                  "website": "website",
                  "fax": "fax",
                  "eoriCode": "eoriCode",
                  "otherCode": "otherCode",
                  "foreignTaxNumber": "foreignTaxNumber",
                  "autoDebtReminder": true,
                  "lateInterestPercent": "lateInterestPercent",
                  "firstCallDate": "2026-07-01",
                  "lastCallDate": "2026-07-01",
                  "nextCallDate": "2026-07-01",
                  "rating": 1000000,
                  "isEmployee": true,
                  "isGroupMember": true,
                  "isActive": true,
                  "legalCountryClass": "lt",
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
        let expectedResponse = UpdatePartnersResponse(
            id: "id",
            type: .company,
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            peppolId: Nullable<String>.value("peppolId"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            isCustomer: true,
            isSupplier: true,
            paymentTermDays: Nullable<Int64>.value(1000000),
            creditLimit: Nullable<String>.value("creditLimit"),
            priceListId: Nullable<String>.value("priceListId"),
            groupId: Nullable<String>.value("groupId"),
            statusId: Nullable<String>.value("statusId"),
            vatValid: Nullable<Bool>.value(true),
            vatValidatedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            address: Nullable<UpdatePartnersResponseAddress>.value(UpdatePartnersResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            correspondenceAddress: Nullable<UpdatePartnersResponseCorrespondenceAddress>.value(UpdatePartnersResponseCorrespondenceAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            shortName: Nullable<String>.value("shortName"),
            website: Nullable<String>.value("website"),
            fax: Nullable<String>.value("fax"),
            eoriCode: Nullable<String>.value("eoriCode"),
            otherCode: Nullable<String>.value("otherCode"),
            foreignTaxNumber: Nullable<String>.value("foreignTaxNumber"),
            autoDebtReminder: true,
            lateInterestPercent: Nullable<String>.value("lateInterestPercent"),
            firstCallDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            lastCallDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            nextCallDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            rating: Nullable<Int64>.value(1000000),
            isEmployee: true,
            isGroupMember: true,
            isActive: true,
            legalCountryClass: Nullable<UpdatePartnersResponseLegalCountryClass>.value(.lt),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.update(
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
                  "type": "company",
                  "name": "name",
                  "code": "code",
                  "vatCode": "vatCode",
                  "peppolId": "peppolId",
                  "email": "email",
                  "phone": "phone",
                  "selfEmploymentCertNo": "selfEmploymentCertNo",
                  "birthDate": "2023-01-15",
                  "isCustomer": true,
                  "isSupplier": true,
                  "paymentTermDays": 1000000,
                  "creditLimit": "creditLimit",
                  "priceListId": "x",
                  "groupId": "x",
                  "statusId": "x",
                  "vatValid": true,
                  "vatValidatedAt": "2024-01-15T09:30:00Z",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "municipality": "municipality",
                    "county": "county",
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
                  "correspondenceAddress": {
                    "street": "street",
                    "city": "city",
                    "municipality": "municipality",
                    "county": "county",
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "shortName": "shortName",
                  "website": "website",
                  "fax": "fax",
                  "eoriCode": "eoriCode",
                  "otherCode": "otherCode",
                  "foreignTaxNumber": "foreignTaxNumber",
                  "autoDebtReminder": true,
                  "lateInterestPercent": "lateInterestPercent",
                  "firstCallDate": "2023-01-15",
                  "lastCallDate": "2023-01-15",
                  "nextCallDate": "2023-01-15",
                  "rating": 1000000,
                  "isEmployee": true,
                  "isGroupMember": true,
                  "isActive": true,
                  "legalCountryClass": "lt",
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
        let expectedResponse = UpdatePartnersResponse(
            id: "x",
            type: .company,
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            peppolId: Nullable<String>.value("peppolId"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            isCustomer: true,
            isSupplier: true,
            paymentTermDays: Nullable<Int64>.value(1000000),
            creditLimit: Nullable<String>.value("creditLimit"),
            priceListId: Nullable<String>.value("x"),
            groupId: Nullable<String>.value("x"),
            statusId: Nullable<String>.value("x"),
            vatValid: Nullable<Bool>.value(true),
            vatValidatedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            address: Nullable<UpdatePartnersResponseAddress>.value(UpdatePartnersResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            correspondenceAddress: Nullable<UpdatePartnersResponseCorrespondenceAddress>.value(UpdatePartnersResponseCorrespondenceAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            shortName: Nullable<String>.value("shortName"),
            website: Nullable<String>.value("website"),
            fax: Nullable<String>.value("fax"),
            eoriCode: Nullable<String>.value("eoriCode"),
            otherCode: Nullable<String>.value("otherCode"),
            foreignTaxNumber: Nullable<String>.value("foreignTaxNumber"),
            autoDebtReminder: true,
            lateInterestPercent: Nullable<String>.value("lateInterestPercent"),
            firstCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            lastCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            nextCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            rating: Nullable<Int64>.value(1000000),
            isEmployee: true,
            isGroupMember: true,
            isActive: true,
            legalCountryClass: Nullable<UpdatePartnersResponseLegalCountryClass>.value(.lt),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.update(
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
        let expectedResponse = DeletePartnersResponse(
            id: "id"
        )
        let response = try await client.partners.delete(
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
        let expectedResponse = DeletePartnersResponse(
            id: "x"
        )
        let response = try await client.partners.delete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func anonymize1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "anonymized": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AnonymizePartnersResponse(
            id: "id",
            anonymized: true
        )
        let response = try await client.partners.anonymize(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func anonymize2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "anonymized": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AnonymizePartnersResponse(
            id: "x",
            anonymized: true
        )
        let response = try await client.partners.anonymize(
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
                      "type": "company",
                      "name": "name",
                      "code": "code",
                      "vatCode": "vatCode",
                      "peppolId": "peppolId",
                      "email": "email",
                      "phone": "phone",
                      "selfEmploymentCertNo": "selfEmploymentCertNo",
                      "birthDate": "2026-07-01",
                      "isCustomer": true,
                      "isSupplier": true,
                      "paymentTermDays": 1000000,
                      "creditLimit": "creditLimit",
                      "priceListId": "priceListId",
                      "groupId": "groupId",
                      "statusId": "statusId",
                      "vatValid": true,
                      "vatValidatedAt": "2026-07-01T09:30:00Z",
                      "address": {},
                      "correspondenceAddress": {},
                      "notes": "notes",
                      "documentRef": "documentRef",
                      "shortName": "shortName",
                      "website": "website",
                      "fax": "fax",
                      "eoriCode": "eoriCode",
                      "otherCode": "otherCode",
                      "foreignTaxNumber": "foreignTaxNumber",
                      "autoDebtReminder": true,
                      "lateInterestPercent": "lateInterestPercent",
                      "firstCallDate": "2026-07-01",
                      "lastCallDate": "2026-07-01",
                      "nextCallDate": "2026-07-01",
                      "rating": 1000000,
                      "isEmployee": true,
                      "isGroupMember": true,
                      "isActive": true,
                      "legalCountryClass": "lt",
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
        let expectedResponse = ListPartnersResponse(
            rows: [
                ListPartnersResponseRowsItem(
                    id: "id",
                    type: .company,
                    name: "name",
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    peppolId: Nullable<String>.value("peppolId"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
                    birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    isCustomer: true,
                    isSupplier: true,
                    paymentTermDays: Nullable<Int64>.value(1000000),
                    creditLimit: Nullable<String>.value("creditLimit"),
                    priceListId: Nullable<String>.value("priceListId"),
                    groupId: Nullable<String>.value("groupId"),
                    statusId: Nullable<String>.value("statusId"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    address: Nullable<ListPartnersResponseRowsItemAddress>.value(ListPartnersResponseRowsItemAddress(

                    )),
                    correspondenceAddress: Nullable<ListPartnersResponseRowsItemCorrespondenceAddress>.value(ListPartnersResponseRowsItemCorrespondenceAddress(

                    )),
                    notes: Nullable<String>.value("notes"),
                    documentRef: Nullable<String>.value("documentRef"),
                    shortName: Nullable<String>.value("shortName"),
                    website: Nullable<String>.value("website"),
                    fax: Nullable<String>.value("fax"),
                    eoriCode: Nullable<String>.value("eoriCode"),
                    otherCode: Nullable<String>.value("otherCode"),
                    foreignTaxNumber: Nullable<String>.value("foreignTaxNumber"),
                    autoDebtReminder: true,
                    lateInterestPercent: Nullable<String>.value("lateInterestPercent"),
                    firstCallDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    lastCallDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    nextCallDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    rating: Nullable<Int64>.value(1000000),
                    isEmployee: true,
                    isGroupMember: true,
                    isActive: true,
                    legalCountryClass: Nullable<ListPartnersResponseRowsItemLegalCountryClass>.value(.lt),
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
        let response = try await client.partners.list(
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
                      "type": "company",
                      "name": "name",
                      "code": "code",
                      "vatCode": "vatCode",
                      "peppolId": "peppolId",
                      "email": "email",
                      "phone": "phone",
                      "selfEmploymentCertNo": "selfEmploymentCertNo",
                      "birthDate": "2023-01-15",
                      "isCustomer": true,
                      "isSupplier": true,
                      "paymentTermDays": 1000000,
                      "creditLimit": "creditLimit",
                      "priceListId": "x",
                      "groupId": "x",
                      "statusId": "x",
                      "vatValid": true,
                      "vatValidatedAt": "2024-01-15T09:30:00Z",
                      "address": {
                        "street": "street",
                        "city": "city",
                        "municipality": "municipality",
                        "county": "county",
                        "postalCode": "postalCode",
                        "countryCode": "xy"
                      },
                      "correspondenceAddress": {
                        "street": "street",
                        "city": "city",
                        "municipality": "municipality",
                        "county": "county",
                        "postalCode": "postalCode",
                        "countryCode": "xy"
                      },
                      "notes": "notes",
                      "documentRef": "documentRef",
                      "shortName": "shortName",
                      "website": "website",
                      "fax": "fax",
                      "eoriCode": "eoriCode",
                      "otherCode": "otherCode",
                      "foreignTaxNumber": "foreignTaxNumber",
                      "autoDebtReminder": true,
                      "lateInterestPercent": "lateInterestPercent",
                      "firstCallDate": "2023-01-15",
                      "lastCallDate": "2023-01-15",
                      "nextCallDate": "2023-01-15",
                      "rating": 1000000,
                      "isEmployee": true,
                      "isGroupMember": true,
                      "isActive": true,
                      "legalCountryClass": "lt",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "type": "company",
                      "name": "name",
                      "code": "code",
                      "vatCode": "vatCode",
                      "peppolId": "peppolId",
                      "email": "email",
                      "phone": "phone",
                      "selfEmploymentCertNo": "selfEmploymentCertNo",
                      "birthDate": "2023-01-15",
                      "isCustomer": true,
                      "isSupplier": true,
                      "paymentTermDays": 1000000,
                      "creditLimit": "creditLimit",
                      "priceListId": "x",
                      "groupId": "x",
                      "statusId": "x",
                      "vatValid": true,
                      "vatValidatedAt": "2024-01-15T09:30:00Z",
                      "address": {
                        "street": "street",
                        "city": "city",
                        "municipality": "municipality",
                        "county": "county",
                        "postalCode": "postalCode",
                        "countryCode": "xy"
                      },
                      "correspondenceAddress": {
                        "street": "street",
                        "city": "city",
                        "municipality": "municipality",
                        "county": "county",
                        "postalCode": "postalCode",
                        "countryCode": "xy"
                      },
                      "notes": "notes",
                      "documentRef": "documentRef",
                      "shortName": "shortName",
                      "website": "website",
                      "fax": "fax",
                      "eoriCode": "eoriCode",
                      "otherCode": "otherCode",
                      "foreignTaxNumber": "foreignTaxNumber",
                      "autoDebtReminder": true,
                      "lateInterestPercent": "lateInterestPercent",
                      "firstCallDate": "2023-01-15",
                      "lastCallDate": "2023-01-15",
                      "nextCallDate": "2023-01-15",
                      "rating": 1000000,
                      "isEmployee": true,
                      "isGroupMember": true,
                      "isActive": true,
                      "legalCountryClass": "lt",
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
        let expectedResponse = ListPartnersResponse(
            rows: [
                ListPartnersResponseRowsItem(
                    id: "x",
                    type: .company,
                    name: "name",
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    peppolId: Nullable<String>.value("peppolId"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
                    birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    isCustomer: true,
                    isSupplier: true,
                    paymentTermDays: Nullable<Int64>.value(1000000),
                    creditLimit: Nullable<String>.value("creditLimit"),
                    priceListId: Nullable<String>.value("x"),
                    groupId: Nullable<String>.value("x"),
                    statusId: Nullable<String>.value("x"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    address: Nullable<ListPartnersResponseRowsItemAddress>.value(ListPartnersResponseRowsItemAddress(
                        street: Optional("street"),
                        city: Optional("city"),
                        municipality: Optional("municipality"),
                        county: Optional("county"),
                        postalCode: Optional("postalCode"),
                        countryCode: Optional("xy")
                    )),
                    correspondenceAddress: Nullable<ListPartnersResponseRowsItemCorrespondenceAddress>.value(ListPartnersResponseRowsItemCorrespondenceAddress(
                        street: Optional("street"),
                        city: Optional("city"),
                        municipality: Optional("municipality"),
                        county: Optional("county"),
                        postalCode: Optional("postalCode"),
                        countryCode: Optional("xy")
                    )),
                    notes: Nullable<String>.value("notes"),
                    documentRef: Nullable<String>.value("documentRef"),
                    shortName: Nullable<String>.value("shortName"),
                    website: Nullable<String>.value("website"),
                    fax: Nullable<String>.value("fax"),
                    eoriCode: Nullable<String>.value("eoriCode"),
                    otherCode: Nullable<String>.value("otherCode"),
                    foreignTaxNumber: Nullable<String>.value("foreignTaxNumber"),
                    autoDebtReminder: true,
                    lateInterestPercent: Nullable<String>.value("lateInterestPercent"),
                    firstCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    lastCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    nextCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    rating: Nullable<Int64>.value(1000000),
                    isEmployee: true,
                    isGroupMember: true,
                    isActive: true,
                    legalCountryClass: Nullable<ListPartnersResponseRowsItemLegalCountryClass>.value(.lt),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ListPartnersResponseRowsItem(
                    id: "x",
                    type: .company,
                    name: "name",
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    peppolId: Nullable<String>.value("peppolId"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
                    birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    isCustomer: true,
                    isSupplier: true,
                    paymentTermDays: Nullable<Int64>.value(1000000),
                    creditLimit: Nullable<String>.value("creditLimit"),
                    priceListId: Nullable<String>.value("x"),
                    groupId: Nullable<String>.value("x"),
                    statusId: Nullable<String>.value("x"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    address: Nullable<ListPartnersResponseRowsItemAddress>.value(ListPartnersResponseRowsItemAddress(
                        street: Optional("street"),
                        city: Optional("city"),
                        municipality: Optional("municipality"),
                        county: Optional("county"),
                        postalCode: Optional("postalCode"),
                        countryCode: Optional("xy")
                    )),
                    correspondenceAddress: Nullable<ListPartnersResponseRowsItemCorrespondenceAddress>.value(ListPartnersResponseRowsItemCorrespondenceAddress(
                        street: Optional("street"),
                        city: Optional("city"),
                        municipality: Optional("municipality"),
                        county: Optional("county"),
                        postalCode: Optional("postalCode"),
                        countryCode: Optional("xy")
                    )),
                    notes: Nullable<String>.value("notes"),
                    documentRef: Nullable<String>.value("documentRef"),
                    shortName: Nullable<String>.value("shortName"),
                    website: Nullable<String>.value("website"),
                    fax: Nullable<String>.value("fax"),
                    eoriCode: Nullable<String>.value("eoriCode"),
                    otherCode: Nullable<String>.value("otherCode"),
                    foreignTaxNumber: Nullable<String>.value("foreignTaxNumber"),
                    autoDebtReminder: true,
                    lateInterestPercent: Nullable<String>.value("lateInterestPercent"),
                    firstCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    lastCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    nextCallDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    rating: Nullable<Int64>.value(1000000),
                    isEmployee: true,
                    isGroupMember: true,
                    isActive: true,
                    legalCountryClass: Nullable<ListPartnersResponseRowsItemLegalCountryClass>.value(.lt),
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
        let response = try await client.partners.list(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
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
        let expectedResponse = GroupsCreatePartnersResponse(
            id: "id",
            code: "code",
            name: "name",
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.groupsCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
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
        let expectedResponse = GroupsCreatePartnersResponse(
            id: "x",
            code: "code",
            name: "name",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.groupsCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
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
        let expectedResponse = GroupsUpdatePartnersResponse(
            id: "id",
            code: "code",
            name: "name",
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.groupsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
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
        let expectedResponse = GroupsUpdatePartnersResponse(
            id: "x",
            code: "code",
            name: "name",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.groupsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsDelete1() async throws -> Void {
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
        let expectedResponse = GroupsDeletePartnersResponse(
            id: "id"
        )
        let response = try await client.partners.groupsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsDelete2() async throws -> Void {
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
        let expectedResponse = GroupsDeletePartnersResponse(
            id: "x"
        )
        let response = try await client.partners.groupsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsList1() async throws -> Void {
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
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = GroupsListPartnersResponse(
            rows: [
                GroupsListPartnersResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.partners.groupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func groupsList2() async throws -> Void {
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
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = GroupsListPartnersResponse(
            rows: [
                GroupsListPartnersResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                GroupsListPartnersResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.partners.groupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statusesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "sortOrder": 1000000,
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
        let expectedResponse = StatusesCreatePartnersResponse(
            id: "id",
            code: "code",
            name: "name",
            sortOrder: 1000000,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.statusesCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statusesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "sortOrder": 1000000,
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
        let expectedResponse = StatusesCreatePartnersResponse(
            id: "x",
            code: "code",
            name: "name",
            sortOrder: 1000000,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.statusesCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statusesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "sortOrder": 1000000,
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
        let expectedResponse = StatusesUpdatePartnersResponse(
            id: "id",
            code: "code",
            name: "name",
            sortOrder: 1000000,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.statusesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statusesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "sortOrder": 1000000,
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
        let expectedResponse = StatusesUpdatePartnersResponse(
            id: "x",
            code: "code",
            name: "name",
            sortOrder: 1000000,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.partners.statusesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statusesDelete1() async throws -> Void {
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
        let expectedResponse = StatusesDeletePartnersResponse(
            id: "id"
        )
        let response = try await client.partners.statusesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statusesDelete2() async throws -> Void {
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
        let expectedResponse = StatusesDeletePartnersResponse(
            id: "x"
        )
        let response = try await client.partners.statusesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statusesList1() async throws -> Void {
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
                      "sortOrder": 1000000,
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = StatusesListPartnersResponse(
            rows: [
                StatusesListPartnersResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    sortOrder: 1000000,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.partners.statusesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statusesList2() async throws -> Void {
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
                      "sortOrder": 1000000,
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "sortOrder": 1000000,
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = StatusesListPartnersResponse(
            rows: [
                StatusesListPartnersResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    sortOrder: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                StatusesListPartnersResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    sortOrder: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.partners.statusesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func inquiriesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "partnerName": "partnerName",
                  "contactName": "contactName",
                  "contactEmail": "contactEmail",
                  "contactPhone": "contactPhone",
                  "subject": "subject",
                  "body": "body",
                  "channel": "channel",
                  "status": "new",
                  "assignedUserId": "assignedUserId",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "closedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InquiriesCreatePartnersResponse(
            id: "id",
            partnerId: Nullable<String>.value("partnerId"),
            partnerName: Nullable<String>.value("partnerName"),
            contactName: Nullable<String>.value("contactName"),
            contactEmail: Nullable<String>.value("contactEmail"),
            contactPhone: Nullable<String>.value("contactPhone"),
            subject: "subject",
            body: Nullable<String>.value("body"),
            channel: "channel",
            status: .new,
            assignedUserId: Nullable<String>.value("assignedUserId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            closedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.partners.inquiriesCreate(
            request: .init(subject: "subject"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func inquiriesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "partnerName": "partnerName",
                  "contactName": "contactName",
                  "contactEmail": "contactEmail",
                  "contactPhone": "contactPhone",
                  "subject": "subject",
                  "body": "body",
                  "channel": "channel",
                  "status": "new",
                  "assignedUserId": "x",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "closedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InquiriesCreatePartnersResponse(
            id: "x",
            partnerId: Nullable<String>.value("x"),
            partnerName: Nullable<String>.value("partnerName"),
            contactName: Nullable<String>.value("contactName"),
            contactEmail: Nullable<String>.value("contactEmail"),
            contactPhone: Nullable<String>.value("contactPhone"),
            subject: "subject",
            body: Nullable<String>.value("body"),
            channel: "channel",
            status: .new,
            assignedUserId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            closedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.partners.inquiriesCreate(
            request: .init(subject: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func inquiriesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "partnerName": "partnerName",
                  "contactName": "contactName",
                  "contactEmail": "contactEmail",
                  "contactPhone": "contactPhone",
                  "subject": "subject",
                  "body": "body",
                  "channel": "channel",
                  "status": "new",
                  "assignedUserId": "assignedUserId",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "closedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InquiriesUpdatePartnersResponse(
            id: "id",
            partnerId: Nullable<String>.value("partnerId"),
            partnerName: Nullable<String>.value("partnerName"),
            contactName: Nullable<String>.value("contactName"),
            contactEmail: Nullable<String>.value("contactEmail"),
            contactPhone: Nullable<String>.value("contactPhone"),
            subject: "subject",
            body: Nullable<String>.value("body"),
            channel: "channel",
            status: .new,
            assignedUserId: Nullable<String>.value("assignedUserId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            closedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.partners.inquiriesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func inquiriesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "partnerName": "partnerName",
                  "contactName": "contactName",
                  "contactEmail": "contactEmail",
                  "contactPhone": "contactPhone",
                  "subject": "subject",
                  "body": "body",
                  "channel": "channel",
                  "status": "new",
                  "assignedUserId": "x",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "closedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InquiriesUpdatePartnersResponse(
            id: "x",
            partnerId: Nullable<String>.value("x"),
            partnerName: Nullable<String>.value("partnerName"),
            contactName: Nullable<String>.value("contactName"),
            contactEmail: Nullable<String>.value("contactEmail"),
            contactPhone: Nullable<String>.value("contactPhone"),
            subject: "subject",
            body: Nullable<String>.value("body"),
            channel: "channel",
            status: .new,
            assignedUserId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            closedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.partners.inquiriesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func inquiriesGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "partnerName": "partnerName",
                  "contactName": "contactName",
                  "contactEmail": "contactEmail",
                  "contactPhone": "contactPhone",
                  "subject": "subject",
                  "body": "body",
                  "channel": "channel",
                  "status": "new",
                  "assignedUserId": "assignedUserId",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "closedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InquiriesGetPartnersResponse(
            id: "id",
            partnerId: Nullable<String>.value("partnerId"),
            partnerName: Nullable<String>.value("partnerName"),
            contactName: Nullable<String>.value("contactName"),
            contactEmail: Nullable<String>.value("contactEmail"),
            contactPhone: Nullable<String>.value("contactPhone"),
            subject: "subject",
            body: Nullable<String>.value("body"),
            channel: "channel",
            status: .new,
            assignedUserId: Nullable<String>.value("assignedUserId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            closedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.partners.inquiriesGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func inquiriesGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "partnerName": "partnerName",
                  "contactName": "contactName",
                  "contactEmail": "contactEmail",
                  "contactPhone": "contactPhone",
                  "subject": "subject",
                  "body": "body",
                  "channel": "channel",
                  "status": "new",
                  "assignedUserId": "x",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "closedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InquiriesGetPartnersResponse(
            id: "x",
            partnerId: Nullable<String>.value("x"),
            partnerName: Nullable<String>.value("partnerName"),
            contactName: Nullable<String>.value("contactName"),
            contactEmail: Nullable<String>.value("contactEmail"),
            contactPhone: Nullable<String>.value("contactPhone"),
            subject: "subject",
            body: Nullable<String>.value("body"),
            channel: "channel",
            status: .new,
            assignedUserId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            closedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.partners.inquiriesGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func inquiriesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "partnerId": "partnerId",
                      "partnerName": "partnerName",
                      "contactName": "contactName",
                      "contactEmail": "contactEmail",
                      "contactPhone": "contactPhone",
                      "subject": "subject",
                      "body": "body",
                      "channel": "channel",
                      "status": "new",
                      "assignedUserId": "assignedUserId",
                      "notes": "notes",
                      "createdAt": "2026-07-01T09:30:00Z",
                      "updatedAt": "2026-07-01T09:30:00Z",
                      "closedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = InquiriesListPartnersResponse(
            rows: [
                InquiriesListPartnersResponseRowsItem(
                    id: "id",
                    partnerId: Nullable<String>.value("partnerId"),
                    partnerName: Nullable<String>.value("partnerName"),
                    contactName: Nullable<String>.value("contactName"),
                    contactEmail: Nullable<String>.value("contactEmail"),
                    contactPhone: Nullable<String>.value("contactPhone"),
                    subject: "subject",
                    body: Nullable<String>.value("body"),
                    channel: "channel",
                    status: .new,
                    assignedUserId: Nullable<String>.value("assignedUserId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    closedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
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
        let response = try await client.partners.inquiriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func inquiriesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "contactName": "contactName",
                      "contactEmail": "contactEmail",
                      "contactPhone": "contactPhone",
                      "subject": "subject",
                      "body": "body",
                      "channel": "channel",
                      "status": "new",
                      "assignedUserId": "x",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z",
                      "closedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "contactName": "contactName",
                      "contactEmail": "contactEmail",
                      "contactPhone": "contactPhone",
                      "subject": "subject",
                      "body": "body",
                      "channel": "channel",
                      "status": "new",
                      "assignedUserId": "x",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z",
                      "closedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = InquiriesListPartnersResponse(
            rows: [
                InquiriesListPartnersResponseRowsItem(
                    id: "x",
                    partnerId: Nullable<String>.value("x"),
                    partnerName: Nullable<String>.value("partnerName"),
                    contactName: Nullable<String>.value("contactName"),
                    contactEmail: Nullable<String>.value("contactEmail"),
                    contactPhone: Nullable<String>.value("contactPhone"),
                    subject: "subject",
                    body: Nullable<String>.value("body"),
                    channel: "channel",
                    status: .new,
                    assignedUserId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    closedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                InquiriesListPartnersResponseRowsItem(
                    id: "x",
                    partnerId: Nullable<String>.value("x"),
                    partnerName: Nullable<String>.value("partnerName"),
                    contactName: Nullable<String>.value("contactName"),
                    contactEmail: Nullable<String>.value("contactEmail"),
                    contactPhone: Nullable<String>.value("contactPhone"),
                    subject: "subject",
                    body: Nullable<String>.value("body"),
                    channel: "channel",
                    status: .new,
                    assignedUserId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    closedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
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
        let response = try await client.partners.inquiriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func creditCheck1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "partnerId": "partnerId",
                  "partnerName": "partnerName",
                  "creditLimit": "creditLimit",
                  "openReceivables": "openReceivables",
                  "additionalAmount": "additionalAmount",
                  "totalExposure": "totalExposure",
                  "available": "available",
                  "exceeded": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreditCheckPartnersResponse(
            partnerId: "partnerId",
            partnerName: "partnerName",
            creditLimit: Nullable<String>.value("creditLimit"),
            openReceivables: "openReceivables",
            additionalAmount: "additionalAmount",
            totalExposure: "totalExposure",
            available: Nullable<String>.value("available"),
            exceeded: true
        )
        let response = try await client.partners.creditCheck(
            request: .init(partnerId: "partnerId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func creditCheck2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "partnerId": "x",
                  "partnerName": "partnerName",
                  "creditLimit": "creditLimit",
                  "openReceivables": "openReceivables",
                  "additionalAmount": "additionalAmount",
                  "totalExposure": "totalExposure",
                  "available": "available",
                  "exceeded": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreditCheckPartnersResponse(
            partnerId: "x",
            partnerName: "partnerName",
            creditLimit: Nullable<String>.value("creditLimit"),
            openReceivables: "openReceivables",
            additionalAmount: "additionalAmount",
            totalExposure: "totalExposure",
            available: Nullable<String>.value("available"),
            exceeded: true
        )
        let response = try await client.partners.creditCheck(
            request: .init(partnerId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}