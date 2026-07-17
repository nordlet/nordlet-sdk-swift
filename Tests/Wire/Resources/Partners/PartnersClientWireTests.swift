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
            total: 1000000
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
            total: 1000000
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
            total: 1000000
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
            total: 1000000
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
            total: 1000000
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
            total: 1000000
        )
        let response = try await client.partners.postV1PartnersBankAccountsList(
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
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
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
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            notes: Nullable<String>.value("notes"),
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
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
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
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            notes: Nullable<String>.value("notes"),
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
                      "postalCode": "postalCode",
                      "countryCode": "countryCode"
                    },
                    "notes": "notes",
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
                    postalCode: Optional("postalCode"),
                    countryCode: Optional("countryCode")
                )),
                notes: Nullable<String>.value("notes"),
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
                      "postalCode": "postalCode",
                      "countryCode": "xy"
                    },
                    "notes": "notes",
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
                    postalCode: Optional("postalCode"),
                    countryCode: Optional("xy")
                )),
                notes: Nullable<String>.value("notes"),
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
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
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
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            notes: Nullable<String>.value("notes"),
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
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
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
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            notes: Nullable<String>.value("notes"),
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
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
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
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            notes: Nullable<String>.value("notes"),
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
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
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
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            notes: Nullable<String>.value("notes"),
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
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
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
                        "postalCode": "postalCode",
                        "countryCode": "xy"
                      },
                      "notes": "notes",
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
                        "postalCode": "postalCode",
                        "countryCode": "xy"
                      },
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
                        postalCode: Optional("postalCode"),
                        countryCode: Optional("xy")
                    )),
                    notes: Nullable<String>.value("notes"),
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
                        postalCode: Optional("postalCode"),
                        countryCode: Optional("xy")
                    )),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
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
            total: 1000000
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
            total: 1000000
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
}