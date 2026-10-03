import Foundation
import Testing
import Api

@Suite("PartnersClient Wire Tests") struct PartnersClientWireTests {
    @Test func postV1PartnersAddressesCreate1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersAddressesCreateResponse(
            id: "id",
            partnerId: "partnerId",
            type: "type",
            street: Nullable<String>.value("street"),
            city: Nullable<String>.value("city"),
            postalCode: Nullable<String>.value("postalCode"),
            countryCode: Nullable<String>.value("countryCode"),
            isDefault: true,
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersAddressesCreate(
            request: .init(partnerId: "partnerId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersAddressesCreate2() async throws -> Void {
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
        let expectedResponse = PostV1PartnersAddressesCreateResponse(
            id: "x",
            partnerId: "x",
            type: "type",
            street: Nullable<String>.value("street"),
            city: Nullable<String>.value("city"),
            postalCode: Nullable<String>.value("postalCode"),
            countryCode: Nullable<String>.value("countryCode"),
            isDefault: true,
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersAddressesCreate(
            request: .init(partnerId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersAddressesUpdate1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersAddressesUpdateResponse(
            id: "id",
            partnerId: "partnerId",
            type: "type",
            street: Nullable<String>.value("street"),
            city: Nullable<String>.value("city"),
            postalCode: Nullable<String>.value("postalCode"),
            countryCode: Nullable<String>.value("countryCode"),
            isDefault: true,
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersAddressesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersAddressesUpdate2() async throws -> Void {
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
        let expectedResponse = PostV1PartnersAddressesUpdateResponse(
            id: "x",
            partnerId: "x",
            type: "type",
            street: Nullable<String>.value("street"),
            city: Nullable<String>.value("city"),
            postalCode: Nullable<String>.value("postalCode"),
            countryCode: Nullable<String>.value("countryCode"),
            isDefault: true,
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersAddressesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersAddressesDelete1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersAddressesDeleteResponse(
            deleted: true
        )
        let response = try await client.partners.postV1PartnersAddressesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersAddressesDelete2() async throws -> Void {
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
        let expectedResponse = PostV1PartnersAddressesDeleteResponse(
            deleted: true
        )
        let response = try await client.partners.postV1PartnersAddressesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersAddressesList1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersAddressesListResponse(
            rows: [
                PostV1PartnersAddressesListResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    type: "type",
                    street: Nullable<String>.value("street"),
                    city: Nullable<String>.value("city"),
                    postalCode: Nullable<String>.value("postalCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    isDefault: true,
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
        let response = try await client.partners.postV1PartnersAddressesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersAddressesList2() async throws -> Void {
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
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1PartnersAddressesListResponse(
            rows: [
                PostV1PartnersAddressesListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    type: "type",
                    street: Nullable<String>.value("street"),
                    city: Nullable<String>.value("city"),
                    postalCode: Nullable<String>.value("postalCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    isDefault: true,
                    createdAt: "createdAt"
                ),
                PostV1PartnersAddressesListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    type: "type",
                    street: Nullable<String>.value("street"),
                    city: Nullable<String>.value("city"),
                    postalCode: Nullable<String>.value("postalCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    isDefault: true,
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
        let response = try await client.partners.postV1PartnersAddressesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersContactsCreate1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersContactsCreateResponse(
            id: "id",
            partnerId: "partnerId",
            name: "name",
            role: Nullable<String>.value("role"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersContactsCreate(
            request: .init(
                name: "name",
                partnerId: "partnerId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersContactsCreate2() async throws -> Void {
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
        let expectedResponse = PostV1PartnersContactsCreateResponse(
            id: "x",
            partnerId: "x",
            name: "name",
            role: Nullable<String>.value("role"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersContactsCreate(
            request: .init(
                name: "x",
                partnerId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersContactsUpdate1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersContactsUpdateResponse(
            id: "id",
            partnerId: "partnerId",
            name: "name",
            role: Nullable<String>.value("role"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersContactsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersContactsUpdate2() async throws -> Void {
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
        let expectedResponse = PostV1PartnersContactsUpdateResponse(
            id: "x",
            partnerId: "x",
            name: "name",
            role: Nullable<String>.value("role"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersContactsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersContactsDelete1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersContactsDeleteResponse(
            deleted: true
        )
        let response = try await client.partners.postV1PartnersContactsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersContactsDelete2() async throws -> Void {
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
        let expectedResponse = PostV1PartnersContactsDeleteResponse(
            deleted: true
        )
        let response = try await client.partners.postV1PartnersContactsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersContactsList1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersContactsListResponse(
            rows: [
                PostV1PartnersContactsListResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    name: "name",
                    role: Nullable<String>.value("role"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    notes: Nullable<String>.value("notes"),
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
        let response = try await client.partners.postV1PartnersContactsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersContactsList2() async throws -> Void {
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
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "partnerId": "x",
                      "name": "name",
                      "role": "role",
                      "email": "email",
                      "phone": "phone",
                      "notes": "notes",
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
        let expectedResponse = PostV1PartnersContactsListResponse(
            rows: [
                PostV1PartnersContactsListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    name: "name",
                    role: Nullable<String>.value("role"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1PartnersContactsListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    name: "name",
                    role: Nullable<String>.value("role"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    notes: Nullable<String>.value("notes"),
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
        let response = try await client.partners.postV1PartnersContactsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersBankAccountsCreate1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersBankAccountsCreateResponse(
            id: "id",
            partnerId: "partnerId",
            iban: "iban",
            bankName: Nullable<String>.value("bankName"),
            bic: Nullable<String>.value("bic"),
            currency: "currency",
            isDefault: true,
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersBankAccountsCreate(
            request: .init(
                iban: "iban",
                partnerId: "partnerId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersBankAccountsCreate2() async throws -> Void {
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
        let expectedResponse = PostV1PartnersBankAccountsCreateResponse(
            id: "x",
            partnerId: "x",
            iban: "iban",
            bankName: Nullable<String>.value("bankName"),
            bic: Nullable<String>.value("bic"),
            currency: "currency",
            isDefault: true,
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersBankAccountsCreate(
            request: .init(
                iban: "alpha",
                partnerId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersBankAccountsUpdate1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersBankAccountsUpdateResponse(
            id: "id",
            partnerId: "partnerId",
            iban: "iban",
            bankName: Nullable<String>.value("bankName"),
            bic: Nullable<String>.value("bic"),
            currency: "currency",
            isDefault: true,
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersBankAccountsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersBankAccountsUpdate2() async throws -> Void {
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
        let expectedResponse = PostV1PartnersBankAccountsUpdateResponse(
            id: "x",
            partnerId: "x",
            iban: "iban",
            bankName: Nullable<String>.value("bankName"),
            bic: Nullable<String>.value("bic"),
            currency: "currency",
            isDefault: true,
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersBankAccountsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersBankAccountsDelete1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersBankAccountsDeleteResponse(
            deleted: true
        )
        let response = try await client.partners.postV1PartnersBankAccountsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersBankAccountsDelete2() async throws -> Void {
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
        let expectedResponse = PostV1PartnersBankAccountsDeleteResponse(
            deleted: true
        )
        let response = try await client.partners.postV1PartnersBankAccountsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersBankAccountsList1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersBankAccountsListResponse(
            rows: [
                PostV1PartnersBankAccountsListResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    iban: "iban",
                    bankName: Nullable<String>.value("bankName"),
                    bic: Nullable<String>.value("bic"),
                    currency: "currency",
                    isDefault: true,
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
        let response = try await client.partners.postV1PartnersBankAccountsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersBankAccountsList2() async throws -> Void {
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
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "partnerId": "x",
                      "iban": "iban",
                      "bankName": "bankName",
                      "bic": "bic",
                      "currency": "currency",
                      "isDefault": true,
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
        let expectedResponse = PostV1PartnersBankAccountsListResponse(
            rows: [
                PostV1PartnersBankAccountsListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    iban: "iban",
                    bankName: Nullable<String>.value("bankName"),
                    bic: Nullable<String>.value("bic"),
                    currency: "currency",
                    isDefault: true,
                    createdAt: "createdAt"
                ),
                PostV1PartnersBankAccountsListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    iban: "iban",
                    bankName: Nullable<String>.value("bankName"),
                    bic: Nullable<String>.value("bic"),
                    currency: "currency",
                    isDefault: true,
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
        let response = try await client.partners.postV1PartnersBankAccountsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersFilesList1() async throws -> Void {
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
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1PartnersFilesListResponse(
            rows: [
                PostV1PartnersFilesListResponseRowsItem(
                    id: "id",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    storageKey: "storageKey",
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.partners.postV1PartnersFilesList(
            request: .init(partnerId: "partnerId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersFilesList2() async throws -> Void {
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
                      "createdAt": "createdAt"
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
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1PartnersFilesListResponse(
            rows: [
                PostV1PartnersFilesListResponseRowsItem(
                    id: "x",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    storageKey: "storageKey",
                    createdAt: "createdAt"
                ),
                PostV1PartnersFilesListResponseRowsItem(
                    id: "x",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    storageKey: "storageKey",
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.partners.postV1PartnersFilesList(
            request: .init(partnerId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func remindersTheOvernightDebtReminderJobWouldSendTodayForThisCompany1() async throws -> Void {
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
                      "currency": "currency",
                      "invoices": [
                        {
                          "id": "id",
                          "fullNumber": "fullNumber",
                          "issueDate": "issueDate",
                          "dueDate": "dueDate",
                          "remaining": "remaining",
                          "daysLate": 1000000,
                          "interest": "interest"
                        }
                      ],
                      "totalDue": "totalDue",
                      "interestDue": "interestDue"
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
        let expectedResponse = PostV1PartnersDebtRemindersPreviewResponse(
            rows: [
                PostV1PartnersDebtRemindersPreviewResponseRowsItem(
                    partnerId: "partnerId",
                    partnerName: "partnerName",
                    email: "email",
                    locale: .en,
                    currency: "currency",
                    invoices: [
                        PostV1PartnersDebtRemindersPreviewResponseRowsItemInvoicesItem(
                            id: "id",
                            fullNumber: "fullNumber",
                            issueDate: "issueDate",
                            dueDate: "dueDate",
                            remaining: "remaining",
                            daysLate: 1000000,
                            interest: "interest"
                        )
                    ],
                    totalDue: "totalDue",
                    interestDue: "interestDue"
                )
            ]
        )
        let response = try await client.partners.remindersTheOvernightDebtReminderJobWouldSendTodayForThisCompany(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func remindersTheOvernightDebtReminderJobWouldSendTodayForThisCompany2() async throws -> Void {
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
                      "currency": "currency",
                      "invoices": [
                        {
                          "id": "x",
                          "fullNumber": "fullNumber",
                          "issueDate": "issueDate",
                          "dueDate": "dueDate",
                          "remaining": "remaining",
                          "daysLate": 1000000,
                          "interest": "interest"
                        },
                        {
                          "id": "x",
                          "fullNumber": "fullNumber",
                          "issueDate": "issueDate",
                          "dueDate": "dueDate",
                          "remaining": "remaining",
                          "daysLate": 1000000,
                          "interest": "interest"
                        }
                      ],
                      "totalDue": "totalDue",
                      "interestDue": "interestDue"
                    },
                    {
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "email": "email",
                      "locale": "en",
                      "currency": "currency",
                      "invoices": [
                        {
                          "id": "x",
                          "fullNumber": "fullNumber",
                          "issueDate": "issueDate",
                          "dueDate": "dueDate",
                          "remaining": "remaining",
                          "daysLate": 1000000,
                          "interest": "interest"
                        },
                        {
                          "id": "x",
                          "fullNumber": "fullNumber",
                          "issueDate": "issueDate",
                          "dueDate": "dueDate",
                          "remaining": "remaining",
                          "daysLate": 1000000,
                          "interest": "interest"
                        }
                      ],
                      "totalDue": "totalDue",
                      "interestDue": "interestDue"
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
        let expectedResponse = PostV1PartnersDebtRemindersPreviewResponse(
            rows: [
                PostV1PartnersDebtRemindersPreviewResponseRowsItem(
                    partnerId: "x",
                    partnerName: "partnerName",
                    email: "email",
                    locale: .en,
                    currency: "currency",
                    invoices: [
                        PostV1PartnersDebtRemindersPreviewResponseRowsItemInvoicesItem(
                            id: "x",
                            fullNumber: "fullNumber",
                            issueDate: "issueDate",
                            dueDate: "dueDate",
                            remaining: "remaining",
                            daysLate: 1000000,
                            interest: "interest"
                        ),
                        PostV1PartnersDebtRemindersPreviewResponseRowsItemInvoicesItem(
                            id: "x",
                            fullNumber: "fullNumber",
                            issueDate: "issueDate",
                            dueDate: "dueDate",
                            remaining: "remaining",
                            daysLate: 1000000,
                            interest: "interest"
                        )
                    ],
                    totalDue: "totalDue",
                    interestDue: "interestDue"
                ),
                PostV1PartnersDebtRemindersPreviewResponseRowsItem(
                    partnerId: "x",
                    partnerName: "partnerName",
                    email: "email",
                    locale: .en,
                    currency: "currency",
                    invoices: [
                        PostV1PartnersDebtRemindersPreviewResponseRowsItemInvoicesItem(
                            id: "x",
                            fullNumber: "fullNumber",
                            issueDate: "issueDate",
                            dueDate: "dueDate",
                            remaining: "remaining",
                            daysLate: 1000000,
                            interest: "interest"
                        ),
                        PostV1PartnersDebtRemindersPreviewResponseRowsItemInvoicesItem(
                            id: "x",
                            fullNumber: "fullNumber",
                            issueDate: "issueDate",
                            dueDate: "dueDate",
                            remaining: "remaining",
                            daysLate: 1000000,
                            interest: "interest"
                        )
                    ],
                    totalDue: "totalDue",
                    interestDue: "interestDue"
                )
            ]
        )
        let response = try await client.partners.remindersTheOvernightDebtReminderJobWouldSendTodayForThisCompany(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersDebtRemindersList1() async throws -> Void {
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
                      "sentAt": "sentAt"
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
        let expectedResponse = PostV1PartnersDebtRemindersListResponse(
            rows: [
                PostV1PartnersDebtRemindersListResponseRowsItem(
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
                    sentAt: "sentAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.partners.postV1PartnersDebtRemindersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersDebtRemindersList2() async throws -> Void {
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
                      "sentAt": "sentAt"
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
                      "sentAt": "sentAt"
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
        let expectedResponse = PostV1PartnersDebtRemindersListResponse(
            rows: [
                PostV1PartnersDebtRemindersListResponseRowsItem(
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
                    sentAt: "sentAt"
                ),
                PostV1PartnersDebtRemindersListResponseRowsItem(
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
                    sentAt: "sentAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.partners.postV1PartnersDebtRemindersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersValidateVat1() async throws -> Void {
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
                  "checkedAt": "checkedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PartnersValidateVatResponse(
            valid: true,
            countryCode: "countryCode",
            vatNumber: "vatNumber",
            name: Nullable<String>.value("name"),
            address: Nullable<String>.value("address"),
            requestIdentifier: Nullable<String>.value("requestIdentifier"),
            checkedAt: "checkedAt"
        )
        let response = try await client.partners.postV1PartnersValidateVat(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersValidateVat2() async throws -> Void {
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
                  "checkedAt": "checkedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PartnersValidateVatResponse(
            valid: true,
            countryCode: "countryCode",
            vatNumber: "vatNumber",
            name: Nullable<String>.value("name"),
            address: Nullable<String>.value("address"),
            requestIdentifier: Nullable<String>.value("requestIdentifier"),
            checkedAt: "checkedAt"
        )
        let response = try await client.partners.postV1PartnersValidateVat(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersVatReviewsList1() async throws -> Void {
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
                      "resolvedAt": "resolvedAt",
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
        let expectedResponse = PostV1PartnersVatReviewsListResponse(
            rows: [
                PostV1PartnersVatReviewsListResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    vatCode: "vatCode",
                    reason: .invalid,
                    status: .open,
                    resolution: Nullable<PostV1PartnersVatReviewsListResponseRowsItemResolution>.value(.confirmedValid),
                    resolutionNote: Nullable<String>.value("resolutionNote"),
                    details: Nullable<PostV1PartnersVatReviewsListResponseRowsItemDetails>.value(PostV1PartnersVatReviewsListResponseRowsItemDetails(

                    )),
                    resolvedAt: Nullable<String>.value("resolvedAt"),
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
        let response = try await client.partners.postV1PartnersVatReviewsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersVatReviewsList2() async throws -> Void {
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
                      "resolvedAt": "resolvedAt",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
                      "resolvedAt": "resolvedAt",
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
        let expectedResponse = PostV1PartnersVatReviewsListResponse(
            rows: [
                PostV1PartnersVatReviewsListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    vatCode: "vatCode",
                    reason: .invalid,
                    status: .open,
                    resolution: Nullable<PostV1PartnersVatReviewsListResponseRowsItemResolution>.value(.confirmedValid),
                    resolutionNote: Nullable<String>.value("resolutionNote"),
                    details: Nullable<PostV1PartnersVatReviewsListResponseRowsItemDetails>.value(PostV1PartnersVatReviewsListResponseRowsItemDetails(
                        message: Optional("message"),
                        partnerName: Optional("partnerName"),
                        viesName: Optional(Nullable<String>.value("viesName")),
                        viesAddress: Optional(Nullable<String>.value("viesAddress")),
                        requestIdentifier: Optional(Nullable<String>.value("requestIdentifier"))
                    )),
                    resolvedAt: Nullable<String>.value("resolvedAt"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1PartnersVatReviewsListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    vatCode: "vatCode",
                    reason: .invalid,
                    status: .open,
                    resolution: Nullable<PostV1PartnersVatReviewsListResponseRowsItemResolution>.value(.confirmedValid),
                    resolutionNote: Nullable<String>.value("resolutionNote"),
                    details: Nullable<PostV1PartnersVatReviewsListResponseRowsItemDetails>.value(PostV1PartnersVatReviewsListResponseRowsItemDetails(
                        message: Optional("message"),
                        partnerName: Optional("partnerName"),
                        viesName: Optional(Nullable<String>.value("viesName")),
                        viesAddress: Optional(Nullable<String>.value("viesAddress")),
                        requestIdentifier: Optional(Nullable<String>.value("requestIdentifier"))
                    )),
                    resolvedAt: Nullable<String>.value("resolvedAt"),
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
        let response = try await client.partners.postV1PartnersVatReviewsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersVatReviewsResolve1() async throws -> Void {
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
                  "resolvedAt": "resolvedAt",
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
        let expectedResponse = PostV1PartnersVatReviewsResolveResponse(
            id: "id",
            partnerId: "partnerId",
            vatCode: "vatCode",
            reason: .invalid,
            status: .open,
            resolution: Nullable<PostV1PartnersVatReviewsResolveResponseResolution>.value(.confirmedValid),
            resolutionNote: Nullable<String>.value("resolutionNote"),
            details: Nullable<PostV1PartnersVatReviewsResolveResponseDetails>.value(PostV1PartnersVatReviewsResolveResponseDetails(
                message: Optional("message"),
                partnerName: Optional("partnerName"),
                viesName: Optional(Nullable<String>.value("viesName")),
                viesAddress: Optional(Nullable<String>.value("viesAddress")),
                requestIdentifier: Optional(Nullable<String>.value("requestIdentifier"))
            )),
            resolvedAt: Nullable<String>.value("resolvedAt"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.partners.postV1PartnersVatReviewsResolve(
            request: .init(
                id: "id",
                resolution: .confirmedValid
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersVatReviewsResolve2() async throws -> Void {
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
                  "resolvedAt": "resolvedAt",
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
        let expectedResponse = PostV1PartnersVatReviewsResolveResponse(
            id: "x",
            partnerId: "x",
            vatCode: "vatCode",
            reason: .invalid,
            status: .open,
            resolution: Nullable<PostV1PartnersVatReviewsResolveResponseResolution>.value(.confirmedValid),
            resolutionNote: Nullable<String>.value("resolutionNote"),
            details: Nullable<PostV1PartnersVatReviewsResolveResponseDetails>.value(PostV1PartnersVatReviewsResolveResponseDetails(
                message: Optional("message"),
                partnerName: Optional("partnerName"),
                viesName: Optional(Nullable<String>.value("viesName")),
                viesAddress: Optional(Nullable<String>.value("viesAddress")),
                requestIdentifier: Optional(Nullable<String>.value("requestIdentifier"))
            )),
            resolvedAt: Nullable<String>.value("resolvedAt"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.partners.postV1PartnersVatReviewsResolve(
            request: .init(
                id: "x",
                resolution: .confirmedValid
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersCreate1() async throws -> Void {
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
                  "birthDate": "birthDate",
                  "isCustomer": true,
                  "isSupplier": true,
                  "paymentTermDays": 1000000,
                  "creditLimit": "creditLimit",
                  "priceListId": "priceListId",
                  "groupId": "groupId",
                  "statusId": "statusId",
                  "vatValid": true,
                  "vatValidatedAt": "vatValidatedAt",
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
                  "firstCallDate": "firstCallDate",
                  "lastCallDate": "lastCallDate",
                  "nextCallDate": "nextCallDate",
                  "rating": 1000000,
                  "isEmployee": true,
                  "isGroupMember": true,
                  "isActive": true,
                  "legalCountryClass": "lt",
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
        let expectedResponse = PostV1PartnersCreateResponse(
            id: "id",
            type: .company,
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            peppolId: Nullable<String>.value("peppolId"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
            birthDate: Nullable<String>.value("birthDate"),
            isCustomer: true,
            isSupplier: true,
            paymentTermDays: Nullable<Int64>.value(1000000),
            creditLimit: Nullable<String>.value("creditLimit"),
            priceListId: Nullable<String>.value("priceListId"),
            groupId: Nullable<String>.value("groupId"),
            statusId: Nullable<String>.value("statusId"),
            vatValid: Nullable<Bool>.value(true),
            vatValidatedAt: Nullable<String>.value("vatValidatedAt"),
            address: Nullable<PostV1PartnersCreateResponseAddress>.value(PostV1PartnersCreateResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            correspondenceAddress: Nullable<PostV1PartnersCreateResponseCorrespondenceAddress>.value(PostV1PartnersCreateResponseCorrespondenceAddress(
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
            firstCallDate: Nullable<String>.value("firstCallDate"),
            lastCallDate: Nullable<String>.value("lastCallDate"),
            nextCallDate: Nullable<String>.value("nextCallDate"),
            rating: Nullable<Int64>.value(1000000),
            isEmployee: true,
            isGroupMember: true,
            isActive: true,
            legalCountryClass: Nullable<PostV1PartnersCreateResponseLegalCountryClass>.value(.lt),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.partners.postV1PartnersCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersCreate2() async throws -> Void {
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
                  "birthDate": "birthDate",
                  "isCustomer": true,
                  "isSupplier": true,
                  "paymentTermDays": 1000000,
                  "creditLimit": "creditLimit",
                  "priceListId": "x",
                  "groupId": "x",
                  "statusId": "x",
                  "vatValid": true,
                  "vatValidatedAt": "vatValidatedAt",
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
                  "firstCallDate": "firstCallDate",
                  "lastCallDate": "lastCallDate",
                  "nextCallDate": "nextCallDate",
                  "rating": 1000000,
                  "isEmployee": true,
                  "isGroupMember": true,
                  "isActive": true,
                  "legalCountryClass": "lt",
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
        let expectedResponse = PostV1PartnersCreateResponse(
            id: "x",
            type: .company,
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            peppolId: Nullable<String>.value("peppolId"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
            birthDate: Nullable<String>.value("birthDate"),
            isCustomer: true,
            isSupplier: true,
            paymentTermDays: Nullable<Int64>.value(1000000),
            creditLimit: Nullable<String>.value("creditLimit"),
            priceListId: Nullable<String>.value("x"),
            groupId: Nullable<String>.value("x"),
            statusId: Nullable<String>.value("x"),
            vatValid: Nullable<Bool>.value(true),
            vatValidatedAt: Nullable<String>.value("vatValidatedAt"),
            address: Nullable<PostV1PartnersCreateResponseAddress>.value(PostV1PartnersCreateResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            correspondenceAddress: Nullable<PostV1PartnersCreateResponseCorrespondenceAddress>.value(PostV1PartnersCreateResponseCorrespondenceAddress(
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
            firstCallDate: Nullable<String>.value("firstCallDate"),
            lastCallDate: Nullable<String>.value("lastCallDate"),
            nextCallDate: Nullable<String>.value("nextCallDate"),
            rating: Nullable<Int64>.value(1000000),
            isEmployee: true,
            isGroupMember: true,
            isActive: true,
            legalCountryClass: Nullable<PostV1PartnersCreateResponseLegalCountryClass>.value(.lt),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.partners.postV1PartnersCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersFindOrCreate1() async throws -> Void {
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
                    "birthDate": "birthDate",
                    "isCustomer": true,
                    "isSupplier": true,
                    "paymentTermDays": 1000000,
                    "creditLimit": "creditLimit",
                    "priceListId": "priceListId",
                    "groupId": "groupId",
                    "statusId": "statusId",
                    "vatValid": true,
                    "vatValidatedAt": "vatValidatedAt",
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
                    "firstCallDate": "firstCallDate",
                    "lastCallDate": "lastCallDate",
                    "nextCallDate": "nextCallDate",
                    "rating": 1000000,
                    "isEmployee": true,
                    "isGroupMember": true,
                    "isActive": true,
                    "legalCountryClass": "lt",
                    "createdAt": "createdAt",
                    "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1PartnersFindOrCreateResponse(
            created: true,
            partner: PostV1PartnersFindOrCreateResponsePartner(
                id: "id",
                type: .company,
                name: "name",
                code: Nullable<String>.value("code"),
                vatCode: Nullable<String>.value("vatCode"),
                peppolId: Nullable<String>.value("peppolId"),
                email: Nullable<String>.value("email"),
                phone: Nullable<String>.value("phone"),
                selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
                birthDate: Nullable<String>.value("birthDate"),
                isCustomer: true,
                isSupplier: true,
                paymentTermDays: Nullable<Int64>.value(1000000),
                creditLimit: Nullable<String>.value("creditLimit"),
                priceListId: Nullable<String>.value("priceListId"),
                groupId: Nullable<String>.value("groupId"),
                statusId: Nullable<String>.value("statusId"),
                vatValid: Nullable<Bool>.value(true),
                vatValidatedAt: Nullable<String>.value("vatValidatedAt"),
                address: Nullable<PostV1PartnersFindOrCreateResponsePartnerAddress>.value(PostV1PartnersFindOrCreateResponsePartnerAddress(
                    street: Optional("street"),
                    city: Optional("city"),
                    municipality: Optional("municipality"),
                    county: Optional("county"),
                    postalCode: Optional("postalCode"),
                    countryCode: Optional("countryCode")
                )),
                correspondenceAddress: Nullable<PostV1PartnersFindOrCreateResponsePartnerCorrespondenceAddress>.value(PostV1PartnersFindOrCreateResponsePartnerCorrespondenceAddress(
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
                firstCallDate: Nullable<String>.value("firstCallDate"),
                lastCallDate: Nullable<String>.value("lastCallDate"),
                nextCallDate: Nullable<String>.value("nextCallDate"),
                rating: Nullable<Int64>.value(1000000),
                isEmployee: true,
                isGroupMember: true,
                isActive: true,
                legalCountryClass: Nullable<PostV1PartnersFindOrCreateResponsePartnerLegalCountryClass>.value(.lt),
                createdAt: "createdAt",
                updatedAt: "updatedAt"
            )
        )
        let response = try await client.partners.postV1PartnersFindOrCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersFindOrCreate2() async throws -> Void {
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
                    "birthDate": "birthDate",
                    "isCustomer": true,
                    "isSupplier": true,
                    "paymentTermDays": 1000000,
                    "creditLimit": "creditLimit",
                    "priceListId": "x",
                    "groupId": "x",
                    "statusId": "x",
                    "vatValid": true,
                    "vatValidatedAt": "vatValidatedAt",
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
                    "firstCallDate": "firstCallDate",
                    "lastCallDate": "lastCallDate",
                    "nextCallDate": "nextCallDate",
                    "rating": 1000000,
                    "isEmployee": true,
                    "isGroupMember": true,
                    "isActive": true,
                    "legalCountryClass": "lt",
                    "createdAt": "createdAt",
                    "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1PartnersFindOrCreateResponse(
            created: true,
            partner: PostV1PartnersFindOrCreateResponsePartner(
                id: "x",
                type: .company,
                name: "name",
                code: Nullable<String>.value("code"),
                vatCode: Nullable<String>.value("vatCode"),
                peppolId: Nullable<String>.value("peppolId"),
                email: Nullable<String>.value("email"),
                phone: Nullable<String>.value("phone"),
                selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
                birthDate: Nullable<String>.value("birthDate"),
                isCustomer: true,
                isSupplier: true,
                paymentTermDays: Nullable<Int64>.value(1000000),
                creditLimit: Nullable<String>.value("creditLimit"),
                priceListId: Nullable<String>.value("x"),
                groupId: Nullable<String>.value("x"),
                statusId: Nullable<String>.value("x"),
                vatValid: Nullable<Bool>.value(true),
                vatValidatedAt: Nullable<String>.value("vatValidatedAt"),
                address: Nullable<PostV1PartnersFindOrCreateResponsePartnerAddress>.value(PostV1PartnersFindOrCreateResponsePartnerAddress(
                    street: Optional("street"),
                    city: Optional("city"),
                    municipality: Optional("municipality"),
                    county: Optional("county"),
                    postalCode: Optional("postalCode"),
                    countryCode: Optional("xy")
                )),
                correspondenceAddress: Nullable<PostV1PartnersFindOrCreateResponsePartnerCorrespondenceAddress>.value(PostV1PartnersFindOrCreateResponsePartnerCorrespondenceAddress(
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
                firstCallDate: Nullable<String>.value("firstCallDate"),
                lastCallDate: Nullable<String>.value("lastCallDate"),
                nextCallDate: Nullable<String>.value("nextCallDate"),
                rating: Nullable<Int64>.value(1000000),
                isEmployee: true,
                isGroupMember: true,
                isActive: true,
                legalCountryClass: Nullable<PostV1PartnersFindOrCreateResponsePartnerLegalCountryClass>.value(.lt),
                createdAt: "createdAt",
                updatedAt: "updatedAt"
            )
        )
        let response = try await client.partners.postV1PartnersFindOrCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersGet1() async throws -> Void {
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
                  "birthDate": "birthDate",
                  "isCustomer": true,
                  "isSupplier": true,
                  "paymentTermDays": 1000000,
                  "creditLimit": "creditLimit",
                  "priceListId": "priceListId",
                  "groupId": "groupId",
                  "statusId": "statusId",
                  "vatValid": true,
                  "vatValidatedAt": "vatValidatedAt",
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
                  "firstCallDate": "firstCallDate",
                  "lastCallDate": "lastCallDate",
                  "nextCallDate": "nextCallDate",
                  "rating": 1000000,
                  "isEmployee": true,
                  "isGroupMember": true,
                  "isActive": true,
                  "legalCountryClass": "lt",
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
        let expectedResponse = PostV1PartnersGetResponse(
            id: "id",
            type: .company,
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            peppolId: Nullable<String>.value("peppolId"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
            birthDate: Nullable<String>.value("birthDate"),
            isCustomer: true,
            isSupplier: true,
            paymentTermDays: Nullable<Int64>.value(1000000),
            creditLimit: Nullable<String>.value("creditLimit"),
            priceListId: Nullable<String>.value("priceListId"),
            groupId: Nullable<String>.value("groupId"),
            statusId: Nullable<String>.value("statusId"),
            vatValid: Nullable<Bool>.value(true),
            vatValidatedAt: Nullable<String>.value("vatValidatedAt"),
            address: Nullable<PostV1PartnersGetResponseAddress>.value(PostV1PartnersGetResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            correspondenceAddress: Nullable<PostV1PartnersGetResponseCorrespondenceAddress>.value(PostV1PartnersGetResponseCorrespondenceAddress(
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
            firstCallDate: Nullable<String>.value("firstCallDate"),
            lastCallDate: Nullable<String>.value("lastCallDate"),
            nextCallDate: Nullable<String>.value("nextCallDate"),
            rating: Nullable<Int64>.value(1000000),
            isEmployee: true,
            isGroupMember: true,
            isActive: true,
            legalCountryClass: Nullable<PostV1PartnersGetResponseLegalCountryClass>.value(.lt),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.partners.postV1PartnersGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersGet2() async throws -> Void {
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
                  "birthDate": "birthDate",
                  "isCustomer": true,
                  "isSupplier": true,
                  "paymentTermDays": 1000000,
                  "creditLimit": "creditLimit",
                  "priceListId": "x",
                  "groupId": "x",
                  "statusId": "x",
                  "vatValid": true,
                  "vatValidatedAt": "vatValidatedAt",
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
                  "firstCallDate": "firstCallDate",
                  "lastCallDate": "lastCallDate",
                  "nextCallDate": "nextCallDate",
                  "rating": 1000000,
                  "isEmployee": true,
                  "isGroupMember": true,
                  "isActive": true,
                  "legalCountryClass": "lt",
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
        let expectedResponse = PostV1PartnersGetResponse(
            id: "x",
            type: .company,
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            peppolId: Nullable<String>.value("peppolId"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
            birthDate: Nullable<String>.value("birthDate"),
            isCustomer: true,
            isSupplier: true,
            paymentTermDays: Nullable<Int64>.value(1000000),
            creditLimit: Nullable<String>.value("creditLimit"),
            priceListId: Nullable<String>.value("x"),
            groupId: Nullable<String>.value("x"),
            statusId: Nullable<String>.value("x"),
            vatValid: Nullable<Bool>.value(true),
            vatValidatedAt: Nullable<String>.value("vatValidatedAt"),
            address: Nullable<PostV1PartnersGetResponseAddress>.value(PostV1PartnersGetResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            correspondenceAddress: Nullable<PostV1PartnersGetResponseCorrespondenceAddress>.value(PostV1PartnersGetResponseCorrespondenceAddress(
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
            firstCallDate: Nullable<String>.value("firstCallDate"),
            lastCallDate: Nullable<String>.value("lastCallDate"),
            nextCallDate: Nullable<String>.value("nextCallDate"),
            rating: Nullable<Int64>.value(1000000),
            isEmployee: true,
            isGroupMember: true,
            isActive: true,
            legalCountryClass: Nullable<PostV1PartnersGetResponseLegalCountryClass>.value(.lt),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.partners.postV1PartnersGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersUpdate1() async throws -> Void {
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
                  "birthDate": "birthDate",
                  "isCustomer": true,
                  "isSupplier": true,
                  "paymentTermDays": 1000000,
                  "creditLimit": "creditLimit",
                  "priceListId": "priceListId",
                  "groupId": "groupId",
                  "statusId": "statusId",
                  "vatValid": true,
                  "vatValidatedAt": "vatValidatedAt",
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
                  "firstCallDate": "firstCallDate",
                  "lastCallDate": "lastCallDate",
                  "nextCallDate": "nextCallDate",
                  "rating": 1000000,
                  "isEmployee": true,
                  "isGroupMember": true,
                  "isActive": true,
                  "legalCountryClass": "lt",
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
        let expectedResponse = PostV1PartnersUpdateResponse(
            id: "id",
            type: .company,
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            peppolId: Nullable<String>.value("peppolId"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
            birthDate: Nullable<String>.value("birthDate"),
            isCustomer: true,
            isSupplier: true,
            paymentTermDays: Nullable<Int64>.value(1000000),
            creditLimit: Nullable<String>.value("creditLimit"),
            priceListId: Nullable<String>.value("priceListId"),
            groupId: Nullable<String>.value("groupId"),
            statusId: Nullable<String>.value("statusId"),
            vatValid: Nullable<Bool>.value(true),
            vatValidatedAt: Nullable<String>.value("vatValidatedAt"),
            address: Nullable<PostV1PartnersUpdateResponseAddress>.value(PostV1PartnersUpdateResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            correspondenceAddress: Nullable<PostV1PartnersUpdateResponseCorrespondenceAddress>.value(PostV1PartnersUpdateResponseCorrespondenceAddress(
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
            firstCallDate: Nullable<String>.value("firstCallDate"),
            lastCallDate: Nullable<String>.value("lastCallDate"),
            nextCallDate: Nullable<String>.value("nextCallDate"),
            rating: Nullable<Int64>.value(1000000),
            isEmployee: true,
            isGroupMember: true,
            isActive: true,
            legalCountryClass: Nullable<PostV1PartnersUpdateResponseLegalCountryClass>.value(.lt),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.partners.postV1PartnersUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersUpdate2() async throws -> Void {
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
                  "birthDate": "birthDate",
                  "isCustomer": true,
                  "isSupplier": true,
                  "paymentTermDays": 1000000,
                  "creditLimit": "creditLimit",
                  "priceListId": "x",
                  "groupId": "x",
                  "statusId": "x",
                  "vatValid": true,
                  "vatValidatedAt": "vatValidatedAt",
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
                  "firstCallDate": "firstCallDate",
                  "lastCallDate": "lastCallDate",
                  "nextCallDate": "nextCallDate",
                  "rating": 1000000,
                  "isEmployee": true,
                  "isGroupMember": true,
                  "isActive": true,
                  "legalCountryClass": "lt",
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
        let expectedResponse = PostV1PartnersUpdateResponse(
            id: "x",
            type: .company,
            name: "name",
            code: Nullable<String>.value("code"),
            vatCode: Nullable<String>.value("vatCode"),
            peppolId: Nullable<String>.value("peppolId"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
            birthDate: Nullable<String>.value("birthDate"),
            isCustomer: true,
            isSupplier: true,
            paymentTermDays: Nullable<Int64>.value(1000000),
            creditLimit: Nullable<String>.value("creditLimit"),
            priceListId: Nullable<String>.value("x"),
            groupId: Nullable<String>.value("x"),
            statusId: Nullable<String>.value("x"),
            vatValid: Nullable<Bool>.value(true),
            vatValidatedAt: Nullable<String>.value("vatValidatedAt"),
            address: Nullable<PostV1PartnersUpdateResponseAddress>.value(PostV1PartnersUpdateResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                municipality: Optional("municipality"),
                county: Optional("county"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            correspondenceAddress: Nullable<PostV1PartnersUpdateResponseCorrespondenceAddress>.value(PostV1PartnersUpdateResponseCorrespondenceAddress(
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
            firstCallDate: Nullable<String>.value("firstCallDate"),
            lastCallDate: Nullable<String>.value("lastCallDate"),
            nextCallDate: Nullable<String>.value("nextCallDate"),
            rating: Nullable<Int64>.value(1000000),
            isEmployee: true,
            isGroupMember: true,
            isActive: true,
            legalCountryClass: Nullable<PostV1PartnersUpdateResponseLegalCountryClass>.value(.lt),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.partners.postV1PartnersUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersDelete1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersDeleteResponse(
            id: "id"
        )
        let response = try await client.partners.postV1PartnersDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersDelete2() async throws -> Void {
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
        let expectedResponse = PostV1PartnersDeleteResponse(
            id: "x"
        )
        let response = try await client.partners.postV1PartnersDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func blankAPartnersPersonalDataAndHideTheRecord1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersAnonymizeResponse(
            id: "id",
            anonymized: true
        )
        let response = try await client.partners.blankAPartnersPersonalDataAndHideTheRecord(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func blankAPartnersPersonalDataAndHideTheRecord2() async throws -> Void {
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
        let expectedResponse = PostV1PartnersAnonymizeResponse(
            id: "x",
            anonymized: true
        )
        let response = try await client.partners.blankAPartnersPersonalDataAndHideTheRecord(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersList1() async throws -> Void {
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
                      "birthDate": "birthDate",
                      "isCustomer": true,
                      "isSupplier": true,
                      "paymentTermDays": 1000000,
                      "creditLimit": "creditLimit",
                      "priceListId": "priceListId",
                      "groupId": "groupId",
                      "statusId": "statusId",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt",
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
                      "firstCallDate": "firstCallDate",
                      "lastCallDate": "lastCallDate",
                      "nextCallDate": "nextCallDate",
                      "rating": 1000000,
                      "isEmployee": true,
                      "isGroupMember": true,
                      "isActive": true,
                      "legalCountryClass": "lt",
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
        let expectedResponse = PostV1PartnersListResponse(
            rows: [
                PostV1PartnersListResponseRowsItem(
                    id: "id",
                    type: .company,
                    name: "name",
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    peppolId: Nullable<String>.value("peppolId"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
                    birthDate: Nullable<String>.value("birthDate"),
                    isCustomer: true,
                    isSupplier: true,
                    paymentTermDays: Nullable<Int64>.value(1000000),
                    creditLimit: Nullable<String>.value("creditLimit"),
                    priceListId: Nullable<String>.value("priceListId"),
                    groupId: Nullable<String>.value("groupId"),
                    statusId: Nullable<String>.value("statusId"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt"),
                    address: Nullable<PostV1PartnersListResponseRowsItemAddress>.value(PostV1PartnersListResponseRowsItemAddress(

                    )),
                    correspondenceAddress: Nullable<PostV1PartnersListResponseRowsItemCorrespondenceAddress>.value(PostV1PartnersListResponseRowsItemCorrespondenceAddress(

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
                    firstCallDate: Nullable<String>.value("firstCallDate"),
                    lastCallDate: Nullable<String>.value("lastCallDate"),
                    nextCallDate: Nullable<String>.value("nextCallDate"),
                    rating: Nullable<Int64>.value(1000000),
                    isEmployee: true,
                    isGroupMember: true,
                    isActive: true,
                    legalCountryClass: Nullable<PostV1PartnersListResponseRowsItemLegalCountryClass>.value(.lt),
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
        let response = try await client.partners.postV1PartnersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersList2() async throws -> Void {
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
                      "birthDate": "birthDate",
                      "isCustomer": true,
                      "isSupplier": true,
                      "paymentTermDays": 1000000,
                      "creditLimit": "creditLimit",
                      "priceListId": "x",
                      "groupId": "x",
                      "statusId": "x",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt",
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
                      "firstCallDate": "firstCallDate",
                      "lastCallDate": "lastCallDate",
                      "nextCallDate": "nextCallDate",
                      "rating": 1000000,
                      "isEmployee": true,
                      "isGroupMember": true,
                      "isActive": true,
                      "legalCountryClass": "lt",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
                      "birthDate": "birthDate",
                      "isCustomer": true,
                      "isSupplier": true,
                      "paymentTermDays": 1000000,
                      "creditLimit": "creditLimit",
                      "priceListId": "x",
                      "groupId": "x",
                      "statusId": "x",
                      "vatValid": true,
                      "vatValidatedAt": "vatValidatedAt",
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
                      "firstCallDate": "firstCallDate",
                      "lastCallDate": "lastCallDate",
                      "nextCallDate": "nextCallDate",
                      "rating": 1000000,
                      "isEmployee": true,
                      "isGroupMember": true,
                      "isActive": true,
                      "legalCountryClass": "lt",
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
        let expectedResponse = PostV1PartnersListResponse(
            rows: [
                PostV1PartnersListResponseRowsItem(
                    id: "x",
                    type: .company,
                    name: "name",
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    peppolId: Nullable<String>.value("peppolId"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
                    birthDate: Nullable<String>.value("birthDate"),
                    isCustomer: true,
                    isSupplier: true,
                    paymentTermDays: Nullable<Int64>.value(1000000),
                    creditLimit: Nullable<String>.value("creditLimit"),
                    priceListId: Nullable<String>.value("x"),
                    groupId: Nullable<String>.value("x"),
                    statusId: Nullable<String>.value("x"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt"),
                    address: Nullable<PostV1PartnersListResponseRowsItemAddress>.value(PostV1PartnersListResponseRowsItemAddress(
                        street: Optional("street"),
                        city: Optional("city"),
                        municipality: Optional("municipality"),
                        county: Optional("county"),
                        postalCode: Optional("postalCode"),
                        countryCode: Optional("xy")
                    )),
                    correspondenceAddress: Nullable<PostV1PartnersListResponseRowsItemCorrespondenceAddress>.value(PostV1PartnersListResponseRowsItemCorrespondenceAddress(
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
                    firstCallDate: Nullable<String>.value("firstCallDate"),
                    lastCallDate: Nullable<String>.value("lastCallDate"),
                    nextCallDate: Nullable<String>.value("nextCallDate"),
                    rating: Nullable<Int64>.value(1000000),
                    isEmployee: true,
                    isGroupMember: true,
                    isActive: true,
                    legalCountryClass: Nullable<PostV1PartnersListResponseRowsItemLegalCountryClass>.value(.lt),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1PartnersListResponseRowsItem(
                    id: "x",
                    type: .company,
                    name: "name",
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    peppolId: Nullable<String>.value("peppolId"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    selfEmploymentCertNo: Nullable<String>.value("selfEmploymentCertNo"),
                    birthDate: Nullable<String>.value("birthDate"),
                    isCustomer: true,
                    isSupplier: true,
                    paymentTermDays: Nullable<Int64>.value(1000000),
                    creditLimit: Nullable<String>.value("creditLimit"),
                    priceListId: Nullable<String>.value("x"),
                    groupId: Nullable<String>.value("x"),
                    statusId: Nullable<String>.value("x"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<String>.value("vatValidatedAt"),
                    address: Nullable<PostV1PartnersListResponseRowsItemAddress>.value(PostV1PartnersListResponseRowsItemAddress(
                        street: Optional("street"),
                        city: Optional("city"),
                        municipality: Optional("municipality"),
                        county: Optional("county"),
                        postalCode: Optional("postalCode"),
                        countryCode: Optional("xy")
                    )),
                    correspondenceAddress: Nullable<PostV1PartnersListResponseRowsItemCorrespondenceAddress>.value(PostV1PartnersListResponseRowsItemCorrespondenceAddress(
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
                    firstCallDate: Nullable<String>.value("firstCallDate"),
                    lastCallDate: Nullable<String>.value("lastCallDate"),
                    nextCallDate: Nullable<String>.value("nextCallDate"),
                    rating: Nullable<Int64>.value(1000000),
                    isEmployee: true,
                    isGroupMember: true,
                    isActive: true,
                    legalCountryClass: Nullable<PostV1PartnersListResponseRowsItemLegalCountryClass>.value(.lt),
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
        let response = try await client.partners.postV1PartnersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersGroupsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
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
        let expectedResponse = PostV1PartnersGroupsCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersGroupsCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersGroupsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
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
        let expectedResponse = PostV1PartnersGroupsCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersGroupsCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersGroupsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
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
        let expectedResponse = PostV1PartnersGroupsUpdateResponse(
            id: "id",
            code: "code",
            name: "name",
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersGroupsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersGroupsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
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
        let expectedResponse = PostV1PartnersGroupsUpdateResponse(
            id: "x",
            code: "code",
            name: "name",
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersGroupsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersGroupsDelete1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersGroupsDeleteResponse(
            id: "id"
        )
        let response = try await client.partners.postV1PartnersGroupsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersGroupsDelete2() async throws -> Void {
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
        let expectedResponse = PostV1PartnersGroupsDeleteResponse(
            id: "x"
        )
        let response = try await client.partners.postV1PartnersGroupsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersGroupsList1() async throws -> Void {
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
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1PartnersGroupsListResponse(
            rows: [
                PostV1PartnersGroupsListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.partners.postV1PartnersGroupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersGroupsList2() async throws -> Void {
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
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1PartnersGroupsListResponse(
            rows: [
                PostV1PartnersGroupsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    createdAt: "createdAt"
                ),
                PostV1PartnersGroupsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.partners.postV1PartnersGroupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersStatusesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "sortOrder": 1000000,
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
        let expectedResponse = PostV1PartnersStatusesCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            sortOrder: 1000000,
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersStatusesCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersStatusesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "sortOrder": 1000000,
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
        let expectedResponse = PostV1PartnersStatusesCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            sortOrder: 1000000,
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersStatusesCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersStatusesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "sortOrder": 1000000,
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
        let expectedResponse = PostV1PartnersStatusesUpdateResponse(
            id: "id",
            code: "code",
            name: "name",
            sortOrder: 1000000,
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersStatusesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersStatusesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "sortOrder": 1000000,
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
        let expectedResponse = PostV1PartnersStatusesUpdateResponse(
            id: "x",
            code: "code",
            name: "name",
            sortOrder: 1000000,
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1PartnersStatusesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersStatusesDelete1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersStatusesDeleteResponse(
            id: "id"
        )
        let response = try await client.partners.postV1PartnersStatusesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersStatusesDelete2() async throws -> Void {
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
        let expectedResponse = PostV1PartnersStatusesDeleteResponse(
            id: "x"
        )
        let response = try await client.partners.postV1PartnersStatusesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersStatusesList1() async throws -> Void {
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
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1PartnersStatusesListResponse(
            rows: [
                PostV1PartnersStatusesListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    sortOrder: 1000000,
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.partners.postV1PartnersStatusesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersStatusesList2() async throws -> Void {
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
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "sortOrder": 1000000,
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1PartnersStatusesListResponse(
            rows: [
                PostV1PartnersStatusesListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    sortOrder: 1000000,
                    createdAt: "createdAt"
                ),
                PostV1PartnersStatusesListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    sortOrder: 1000000,
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.partners.postV1PartnersStatusesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersInquiriesCreate1() async throws -> Void {
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "closedAt": "closedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PartnersInquiriesCreateResponse(
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            closedAt: Nullable<String>.value("closedAt")
        )
        let response = try await client.partners.postV1PartnersInquiriesCreate(
            request: .init(subject: "subject"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersInquiriesCreate2() async throws -> Void {
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "closedAt": "closedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PartnersInquiriesCreateResponse(
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            closedAt: Nullable<String>.value("closedAt")
        )
        let response = try await client.partners.postV1PartnersInquiriesCreate(
            request: .init(subject: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersInquiriesUpdate1() async throws -> Void {
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "closedAt": "closedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PartnersInquiriesUpdateResponse(
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            closedAt: Nullable<String>.value("closedAt")
        )
        let response = try await client.partners.postV1PartnersInquiriesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersInquiriesUpdate2() async throws -> Void {
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "closedAt": "closedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PartnersInquiriesUpdateResponse(
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            closedAt: Nullable<String>.value("closedAt")
        )
        let response = try await client.partners.postV1PartnersInquiriesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersInquiriesGet1() async throws -> Void {
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "closedAt": "closedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PartnersInquiriesGetResponse(
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            closedAt: Nullable<String>.value("closedAt")
        )
        let response = try await client.partners.postV1PartnersInquiriesGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersInquiriesGet2() async throws -> Void {
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "closedAt": "closedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PartnersInquiriesGetResponse(
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            closedAt: Nullable<String>.value("closedAt")
        )
        let response = try await client.partners.postV1PartnersInquiriesGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersInquiriesList1() async throws -> Void {
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
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt",
                      "closedAt": "closedAt"
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
        let expectedResponse = PostV1PartnersInquiriesListResponse(
            rows: [
                PostV1PartnersInquiriesListResponseRowsItem(
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
                    createdAt: "createdAt",
                    updatedAt: "updatedAt",
                    closedAt: Nullable<String>.value("closedAt")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.partners.postV1PartnersInquiriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersInquiriesList2() async throws -> Void {
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
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt",
                      "closedAt": "closedAt"
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
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt",
                      "closedAt": "closedAt"
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
        let expectedResponse = PostV1PartnersInquiriesListResponse(
            rows: [
                PostV1PartnersInquiriesListResponseRowsItem(
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
                    createdAt: "createdAt",
                    updatedAt: "updatedAt",
                    closedAt: Nullable<String>.value("closedAt")
                ),
                PostV1PartnersInquiriesListResponseRowsItem(
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
                    createdAt: "createdAt",
                    updatedAt: "updatedAt",
                    closedAt: Nullable<String>.value("closedAt")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.partners.postV1PartnersInquiriesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersCreditCheck1() async throws -> Void {
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
        let expectedResponse = PostV1PartnersCreditCheckResponse(
            partnerId: "partnerId",
            partnerName: "partnerName",
            creditLimit: Nullable<String>.value("creditLimit"),
            openReceivables: "openReceivables",
            additionalAmount: "additionalAmount",
            totalExposure: "totalExposure",
            available: Nullable<String>.value("available"),
            exceeded: true
        )
        let response = try await client.partners.postV1PartnersCreditCheck(
            request: .init(partnerId: "partnerId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PartnersCreditCheck2() async throws -> Void {
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
        let expectedResponse = PostV1PartnersCreditCheckResponse(
            partnerId: "x",
            partnerName: "partnerName",
            creditLimit: Nullable<String>.value("creditLimit"),
            openReceivables: "openReceivables",
            additionalAmount: "additionalAmount",
            totalExposure: "totalExposure",
            available: Nullable<String>.value("available"),
            exceeded: true
        )
        let response = try await client.partners.postV1PartnersCreditCheck(
            request: .init(partnerId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "contactName": "contactName",
                  "email": "email",
                  "phone": "phone",
                  "website": "website",
                  "countryCode": "countryCode",
                  "sourceId": "sourceId",
                  "sourceName": "sourceName",
                  "status": "new",
                  "estimatedValue": "estimatedValue",
                  "currency": "currency",
                  "description": "description",
                  "assignedUserId": "assignedUserId",
                  "partnerId": "partnerId",
                  "convertedAt": "convertedAt",
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
        let expectedResponse = PostV1LeadsCreateResponse(
            id: "id",
            name: "name",
            contactName: Nullable<String>.value("contactName"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            website: Nullable<String>.value("website"),
            countryCode: Nullable<String>.value("countryCode"),
            sourceId: Nullable<String>.value("sourceId"),
            sourceName: Nullable<String>.value("sourceName"),
            status: .new,
            estimatedValue: Nullable<String>.value("estimatedValue"),
            currency: "currency",
            description: Nullable<String>.value("description"),
            assignedUserId: Nullable<String>.value("assignedUserId"),
            partnerId: Nullable<String>.value("partnerId"),
            convertedAt: Nullable<String>.value("convertedAt"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.partners.postV1LeadsCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "contactName": "contactName",
                  "email": "email",
                  "phone": "phone",
                  "website": "website",
                  "countryCode": "countryCode",
                  "sourceId": "x",
                  "sourceName": "sourceName",
                  "status": "new",
                  "estimatedValue": "estimatedValue",
                  "currency": "currency",
                  "description": "description",
                  "assignedUserId": "x",
                  "partnerId": "x",
                  "convertedAt": "convertedAt",
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
        let expectedResponse = PostV1LeadsCreateResponse(
            id: "x",
            name: "name",
            contactName: Nullable<String>.value("contactName"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            website: Nullable<String>.value("website"),
            countryCode: Nullable<String>.value("countryCode"),
            sourceId: Nullable<String>.value("x"),
            sourceName: Nullable<String>.value("sourceName"),
            status: .new,
            estimatedValue: Nullable<String>.value("estimatedValue"),
            currency: "currency",
            description: Nullable<String>.value("description"),
            assignedUserId: Nullable<String>.value("x"),
            partnerId: Nullable<String>.value("x"),
            convertedAt: Nullable<String>.value("convertedAt"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.partners.postV1LeadsCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "contactName": "contactName",
                  "email": "email",
                  "phone": "phone",
                  "website": "website",
                  "countryCode": "countryCode",
                  "sourceId": "sourceId",
                  "sourceName": "sourceName",
                  "status": "new",
                  "estimatedValue": "estimatedValue",
                  "currency": "currency",
                  "description": "description",
                  "assignedUserId": "assignedUserId",
                  "partnerId": "partnerId",
                  "convertedAt": "convertedAt",
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
        let expectedResponse = PostV1LeadsGetResponse(
            id: "id",
            name: "name",
            contactName: Nullable<String>.value("contactName"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            website: Nullable<String>.value("website"),
            countryCode: Nullable<String>.value("countryCode"),
            sourceId: Nullable<String>.value("sourceId"),
            sourceName: Nullable<String>.value("sourceName"),
            status: .new,
            estimatedValue: Nullable<String>.value("estimatedValue"),
            currency: "currency",
            description: Nullable<String>.value("description"),
            assignedUserId: Nullable<String>.value("assignedUserId"),
            partnerId: Nullable<String>.value("partnerId"),
            convertedAt: Nullable<String>.value("convertedAt"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.partners.postV1LeadsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "contactName": "contactName",
                  "email": "email",
                  "phone": "phone",
                  "website": "website",
                  "countryCode": "countryCode",
                  "sourceId": "x",
                  "sourceName": "sourceName",
                  "status": "new",
                  "estimatedValue": "estimatedValue",
                  "currency": "currency",
                  "description": "description",
                  "assignedUserId": "x",
                  "partnerId": "x",
                  "convertedAt": "convertedAt",
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
        let expectedResponse = PostV1LeadsGetResponse(
            id: "x",
            name: "name",
            contactName: Nullable<String>.value("contactName"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            website: Nullable<String>.value("website"),
            countryCode: Nullable<String>.value("countryCode"),
            sourceId: Nullable<String>.value("x"),
            sourceName: Nullable<String>.value("sourceName"),
            status: .new,
            estimatedValue: Nullable<String>.value("estimatedValue"),
            currency: "currency",
            description: Nullable<String>.value("description"),
            assignedUserId: Nullable<String>.value("x"),
            partnerId: Nullable<String>.value("x"),
            convertedAt: Nullable<String>.value("convertedAt"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.partners.postV1LeadsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "contactName": "contactName",
                  "email": "email",
                  "phone": "phone",
                  "website": "website",
                  "countryCode": "countryCode",
                  "sourceId": "sourceId",
                  "sourceName": "sourceName",
                  "status": "new",
                  "estimatedValue": "estimatedValue",
                  "currency": "currency",
                  "description": "description",
                  "assignedUserId": "assignedUserId",
                  "partnerId": "partnerId",
                  "convertedAt": "convertedAt",
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
        let expectedResponse = PostV1LeadsUpdateResponse(
            id: "id",
            name: "name",
            contactName: Nullable<String>.value("contactName"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            website: Nullable<String>.value("website"),
            countryCode: Nullable<String>.value("countryCode"),
            sourceId: Nullable<String>.value("sourceId"),
            sourceName: Nullable<String>.value("sourceName"),
            status: .new,
            estimatedValue: Nullable<String>.value("estimatedValue"),
            currency: "currency",
            description: Nullable<String>.value("description"),
            assignedUserId: Nullable<String>.value("assignedUserId"),
            partnerId: Nullable<String>.value("partnerId"),
            convertedAt: Nullable<String>.value("convertedAt"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.partners.postV1LeadsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "contactName": "contactName",
                  "email": "email",
                  "phone": "phone",
                  "website": "website",
                  "countryCode": "countryCode",
                  "sourceId": "x",
                  "sourceName": "sourceName",
                  "status": "new",
                  "estimatedValue": "estimatedValue",
                  "currency": "currency",
                  "description": "description",
                  "assignedUserId": "x",
                  "partnerId": "x",
                  "convertedAt": "convertedAt",
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
        let expectedResponse = PostV1LeadsUpdateResponse(
            id: "x",
            name: "name",
            contactName: Nullable<String>.value("contactName"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            website: Nullable<String>.value("website"),
            countryCode: Nullable<String>.value("countryCode"),
            sourceId: Nullable<String>.value("x"),
            sourceName: Nullable<String>.value("sourceName"),
            status: .new,
            estimatedValue: Nullable<String>.value("estimatedValue"),
            currency: "currency",
            description: Nullable<String>.value("description"),
            assignedUserId: Nullable<String>.value("x"),
            partnerId: Nullable<String>.value("x"),
            convertedAt: Nullable<String>.value("convertedAt"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.partners.postV1LeadsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsDelete1() async throws -> Void {
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
        let expectedResponse = PostV1LeadsDeleteResponse(
            id: "id"
        )
        let response = try await client.partners.postV1LeadsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsDelete2() async throws -> Void {
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
        let expectedResponse = PostV1LeadsDeleteResponse(
            id: "x"
        )
        let response = try await client.partners.postV1LeadsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "name": "name",
                      "contactName": "contactName",
                      "email": "email",
                      "phone": "phone",
                      "website": "website",
                      "countryCode": "countryCode",
                      "sourceId": "sourceId",
                      "sourceName": "sourceName",
                      "status": "new",
                      "estimatedValue": "estimatedValue",
                      "currency": "currency",
                      "description": "description",
                      "assignedUserId": "assignedUserId",
                      "partnerId": "partnerId",
                      "convertedAt": "convertedAt",
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
        let expectedResponse = PostV1LeadsListResponse(
            rows: [
                PostV1LeadsListResponseRowsItem(
                    id: "id",
                    name: "name",
                    contactName: Nullable<String>.value("contactName"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    website: Nullable<String>.value("website"),
                    countryCode: Nullable<String>.value("countryCode"),
                    sourceId: Nullable<String>.value("sourceId"),
                    sourceName: Nullable<String>.value("sourceName"),
                    status: .new,
                    estimatedValue: Nullable<String>.value("estimatedValue"),
                    currency: "currency",
                    description: Nullable<String>.value("description"),
                    assignedUserId: Nullable<String>.value("assignedUserId"),
                    partnerId: Nullable<String>.value("partnerId"),
                    convertedAt: Nullable<String>.value("convertedAt"),
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
        let response = try await client.partners.postV1LeadsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "name": "name",
                      "contactName": "contactName",
                      "email": "email",
                      "phone": "phone",
                      "website": "website",
                      "countryCode": "countryCode",
                      "sourceId": "x",
                      "sourceName": "sourceName",
                      "status": "new",
                      "estimatedValue": "estimatedValue",
                      "currency": "currency",
                      "description": "description",
                      "assignedUserId": "x",
                      "partnerId": "x",
                      "convertedAt": "convertedAt",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "contactName": "contactName",
                      "email": "email",
                      "phone": "phone",
                      "website": "website",
                      "countryCode": "countryCode",
                      "sourceId": "x",
                      "sourceName": "sourceName",
                      "status": "new",
                      "estimatedValue": "estimatedValue",
                      "currency": "currency",
                      "description": "description",
                      "assignedUserId": "x",
                      "partnerId": "x",
                      "convertedAt": "convertedAt",
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
        let expectedResponse = PostV1LeadsListResponse(
            rows: [
                PostV1LeadsListResponseRowsItem(
                    id: "x",
                    name: "name",
                    contactName: Nullable<String>.value("contactName"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    website: Nullable<String>.value("website"),
                    countryCode: Nullable<String>.value("countryCode"),
                    sourceId: Nullable<String>.value("x"),
                    sourceName: Nullable<String>.value("sourceName"),
                    status: .new,
                    estimatedValue: Nullable<String>.value("estimatedValue"),
                    currency: "currency",
                    description: Nullable<String>.value("description"),
                    assignedUserId: Nullable<String>.value("x"),
                    partnerId: Nullable<String>.value("x"),
                    convertedAt: Nullable<String>.value("convertedAt"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1LeadsListResponseRowsItem(
                    id: "x",
                    name: "name",
                    contactName: Nullable<String>.value("contactName"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    website: Nullable<String>.value("website"),
                    countryCode: Nullable<String>.value("countryCode"),
                    sourceId: Nullable<String>.value("x"),
                    sourceName: Nullable<String>.value("sourceName"),
                    status: .new,
                    estimatedValue: Nullable<String>.value("estimatedValue"),
                    currency: "currency",
                    description: Nullable<String>.value("description"),
                    assignedUserId: Nullable<String>.value("x"),
                    partnerId: Nullable<String>.value("x"),
                    convertedAt: Nullable<String>.value("convertedAt"),
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
        let response = try await client.partners.postV1LeadsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsNotesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "leadId": "leadId",
                  "body": "body",
                  "authorId": "authorId",
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
        let expectedResponse = PostV1LeadsNotesCreateResponse(
            id: "id",
            leadId: "leadId",
            body: "body",
            authorId: Nullable<String>.value("authorId"),
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1LeadsNotesCreate(
            request: .init(
                leadId: "leadId",
                body: "body"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsNotesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "leadId": "x",
                  "body": "body",
                  "authorId": "authorId",
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
        let expectedResponse = PostV1LeadsNotesCreateResponse(
            id: "x",
            leadId: "x",
            body: "body",
            authorId: Nullable<String>.value("authorId"),
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1LeadsNotesCreate(
            request: .init(
                leadId: "x",
                body: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsNotesDelete1() async throws -> Void {
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
        let expectedResponse = PostV1LeadsNotesDeleteResponse(
            id: "id"
        )
        let response = try await client.partners.postV1LeadsNotesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsNotesDelete2() async throws -> Void {
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
        let expectedResponse = PostV1LeadsNotesDeleteResponse(
            id: "x"
        )
        let response = try await client.partners.postV1LeadsNotesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsNotesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "leadId": "leadId",
                      "body": "body",
                      "authorId": "authorId",
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1LeadsNotesListResponse(
            rows: [
                PostV1LeadsNotesListResponseRowsItem(
                    id: "id",
                    leadId: "leadId",
                    body: "body",
                    authorId: Nullable<String>.value("authorId"),
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.partners.postV1LeadsNotesList(
            request: .init(leadId: "leadId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsNotesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "leadId": "x",
                      "body": "body",
                      "authorId": "authorId",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "leadId": "x",
                      "body": "body",
                      "authorId": "authorId",
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1LeadsNotesListResponse(
            rows: [
                PostV1LeadsNotesListResponseRowsItem(
                    id: "x",
                    leadId: "x",
                    body: "body",
                    authorId: Nullable<String>.value("authorId"),
                    createdAt: "createdAt"
                ),
                PostV1LeadsNotesListResponseRowsItem(
                    id: "x",
                    leadId: "x",
                    body: "body",
                    authorId: Nullable<String>.value("authorId"),
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.partners.postV1LeadsNotesList(
            request: .init(leadId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsFilesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1LeadsFilesListResponse(
            rows: [
                PostV1LeadsFilesListResponseRowsItem(
                    id: "id",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.partners.postV1LeadsFilesList(
            request: .init(leadId: "leadId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsFilesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1LeadsFilesListResponse(
            rows: [
                PostV1LeadsFilesListResponseRowsItem(
                    id: "x",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    createdAt: "createdAt"
                ),
                PostV1LeadsFilesListResponseRowsItem(
                    id: "x",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.partners.postV1LeadsFilesList(
            request: .init(leadId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsSourcesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "isActive": true,
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
        let expectedResponse = PostV1LeadsSourcesCreateResponse(
            id: "id",
            name: "name",
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1LeadsSourcesCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsSourcesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "isActive": true,
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
        let expectedResponse = PostV1LeadsSourcesCreateResponse(
            id: "x",
            name: "name",
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1LeadsSourcesCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsSourcesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "isActive": true,
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
        let expectedResponse = PostV1LeadsSourcesUpdateResponse(
            id: "id",
            name: "name",
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1LeadsSourcesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsSourcesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "isActive": true,
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
        let expectedResponse = PostV1LeadsSourcesUpdateResponse(
            id: "x",
            name: "name",
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.partners.postV1LeadsSourcesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsSourcesDelete1() async throws -> Void {
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
        let expectedResponse = PostV1LeadsSourcesDeleteResponse(
            id: "id"
        )
        let response = try await client.partners.postV1LeadsSourcesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsSourcesDelete2() async throws -> Void {
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
        let expectedResponse = PostV1LeadsSourcesDeleteResponse(
            id: "x"
        )
        let response = try await client.partners.postV1LeadsSourcesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsSourcesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "name": "name",
                      "isActive": true,
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1LeadsSourcesListResponse(
            rows: [
                PostV1LeadsSourcesListResponseRowsItem(
                    id: "id",
                    name: "name",
                    isActive: true,
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.partners.postV1LeadsSourcesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsSourcesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "name": "name",
                      "isActive": true,
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "isActive": true,
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1LeadsSourcesListResponse(
            rows: [
                PostV1LeadsSourcesListResponseRowsItem(
                    id: "x",
                    name: "name",
                    isActive: true,
                    createdAt: "createdAt"
                ),
                PostV1LeadsSourcesListResponseRowsItem(
                    id: "x",
                    name: "name",
                    isActive: true,
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.partners.postV1LeadsSourcesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsSourcesOptions1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
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
        let expectedResponse = PostV1LeadsSourcesOptionsResponse(
            rows: [
                PostV1LeadsSourcesOptionsResponseRowsItem(
                    id: "id",
                    name: "name"
                )
            ]
        )
        let response = try await client.partners.postV1LeadsSourcesOptions(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsSourcesOptions2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "name": "name"
                    },
                    {
                      "id": "x",
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
        let expectedResponse = PostV1LeadsSourcesOptionsResponse(
            rows: [
                PostV1LeadsSourcesOptionsResponseRowsItem(
                    id: "x",
                    name: "name"
                ),
                PostV1LeadsSourcesOptionsResponseRowsItem(
                    id: "x",
                    name: "name"
                )
            ]
        )
        let response = try await client.partners.postV1LeadsSourcesOptions(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsConvert1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "lead": {
                    "id": "id",
                    "name": "name",
                    "contactName": "contactName",
                    "email": "email",
                    "phone": "phone",
                    "website": "website",
                    "countryCode": "countryCode",
                    "sourceId": "sourceId",
                    "sourceName": "sourceName",
                    "status": "new",
                    "estimatedValue": "estimatedValue",
                    "currency": "currency",
                    "description": "description",
                    "assignedUserId": "assignedUserId",
                    "partnerId": "partnerId",
                    "convertedAt": "convertedAt",
                    "createdAt": "createdAt",
                    "updatedAt": "updatedAt"
                  },
                  "partnerId": "partnerId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1LeadsConvertResponse(
            lead: PostV1LeadsConvertResponseLead(
                id: "id",
                name: "name",
                contactName: Nullable<String>.value("contactName"),
                email: Nullable<String>.value("email"),
                phone: Nullable<String>.value("phone"),
                website: Nullable<String>.value("website"),
                countryCode: Nullable<String>.value("countryCode"),
                sourceId: Nullable<String>.value("sourceId"),
                sourceName: Nullable<String>.value("sourceName"),
                status: .new,
                estimatedValue: Nullable<String>.value("estimatedValue"),
                currency: "currency",
                description: Nullable<String>.value("description"),
                assignedUserId: Nullable<String>.value("assignedUserId"),
                partnerId: Nullable<String>.value("partnerId"),
                convertedAt: Nullable<String>.value("convertedAt"),
                createdAt: "createdAt",
                updatedAt: "updatedAt"
            ),
            partnerId: "partnerId"
        )
        let response = try await client.partners.postV1LeadsConvert(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LeadsConvert2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "lead": {
                    "id": "x",
                    "name": "name",
                    "contactName": "contactName",
                    "email": "email",
                    "phone": "phone",
                    "website": "website",
                    "countryCode": "countryCode",
                    "sourceId": "x",
                    "sourceName": "sourceName",
                    "status": "new",
                    "estimatedValue": "estimatedValue",
                    "currency": "currency",
                    "description": "description",
                    "assignedUserId": "x",
                    "partnerId": "x",
                    "convertedAt": "convertedAt",
                    "createdAt": "createdAt",
                    "updatedAt": "updatedAt"
                  },
                  "partnerId": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1LeadsConvertResponse(
            lead: PostV1LeadsConvertResponseLead(
                id: "x",
                name: "name",
                contactName: Nullable<String>.value("contactName"),
                email: Nullable<String>.value("email"),
                phone: Nullable<String>.value("phone"),
                website: Nullable<String>.value("website"),
                countryCode: Nullable<String>.value("countryCode"),
                sourceId: Nullable<String>.value("x"),
                sourceName: Nullable<String>.value("sourceName"),
                status: .new,
                estimatedValue: Nullable<String>.value("estimatedValue"),
                currency: "currency",
                description: Nullable<String>.value("description"),
                assignedUserId: Nullable<String>.value("x"),
                partnerId: Nullable<String>.value("x"),
                convertedAt: Nullable<String>.value("convertedAt"),
                createdAt: "createdAt",
                updatedAt: "updatedAt"
            ),
            partnerId: "x"
        )
        let response = try await client.partners.postV1LeadsConvert(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}