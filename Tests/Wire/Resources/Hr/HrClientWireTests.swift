import Foundation
import Testing
import Api

@Suite("HrClient Wire Tests") struct HrClientWireTests {
    @Test func postV1HrPositionsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "translations": {
                    "key": {
                      "name": "name"
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
        let expectedResponse = PostV1HrPositionsCreateResponse(
            id: "id",
            code: Nullable<String>.value("code"),
            name: "name",
            translations: Nullable<[String: Nullable<PostV1HrPositionsCreateResponseTranslationsValue>]>.value([
                "key": Nullable<PostV1HrPositionsCreateResponseTranslationsValue>.value(PostV1HrPositionsCreateResponseTranslationsValue(
                    name: "name"
                ))
            ])
        )
        let response = try await client.hr.postV1HrPositionsCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrPositionsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "translations": {
                    "translations": {
                      "name": "x"
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
        let expectedResponse = PostV1HrPositionsCreateResponse(
            id: "x",
            code: Nullable<String>.value("code"),
            name: "name",
            translations: Nullable<[String: Nullable<PostV1HrPositionsCreateResponseTranslationsValue>]>.value([
                "translations": Nullable<PostV1HrPositionsCreateResponseTranslationsValue>.value(PostV1HrPositionsCreateResponseTranslationsValue(
                    name: "x"
                ))
            ])
        )
        let response = try await client.hr.postV1HrPositionsCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrPositionsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "translations": {
                    "key": {
                      "name": "name"
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
        let expectedResponse = PostV1HrPositionsUpdateResponse(
            id: "id",
            code: Nullable<String>.value("code"),
            name: "name",
            translations: Nullable<[String: Nullable<PostV1HrPositionsUpdateResponseTranslationsValue>]>.value([
                "key": Nullable<PostV1HrPositionsUpdateResponseTranslationsValue>.value(PostV1HrPositionsUpdateResponseTranslationsValue(
                    name: "name"
                ))
            ])
        )
        let response = try await client.hr.postV1HrPositionsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrPositionsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "translations": {
                    "translations": {
                      "name": "x"
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
        let expectedResponse = PostV1HrPositionsUpdateResponse(
            id: "x",
            code: Nullable<String>.value("code"),
            name: "name",
            translations: Nullable<[String: Nullable<PostV1HrPositionsUpdateResponseTranslationsValue>]>.value([
                "translations": Nullable<PostV1HrPositionsUpdateResponseTranslationsValue>.value(PostV1HrPositionsUpdateResponseTranslationsValue(
                    name: "x"
                ))
            ])
        )
        let response = try await client.hr.postV1HrPositionsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrPositionsList1() async throws -> Void {
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
                      "translations": {}
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
        let expectedResponse = PostV1HrPositionsListResponse(
            rows: [
                PostV1HrPositionsListResponseRowsItem(
                    id: "id",
                    code: Nullable<String>.value("code"),
                    name: "name",
                    translations: Nullable<[String: Nullable<PostV1HrPositionsListResponseRowsItemTranslationsValue>]>.value([:])
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.hr.postV1HrPositionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrPositionsList2() async throws -> Void {
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
                      "translations": {
                        "translations": {
                          "name": "x"
                        }
                      }
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "translations": {
                        "translations": {
                          "name": "x"
                        }
                      }
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
        let expectedResponse = PostV1HrPositionsListResponse(
            rows: [
                PostV1HrPositionsListResponseRowsItem(
                    id: "x",
                    code: Nullable<String>.value("code"),
                    name: "name",
                    translations: Nullable<[String: Nullable<PostV1HrPositionsListResponseRowsItemTranslationsValue>]>.value([
                        "translations": Nullable<PostV1HrPositionsListResponseRowsItemTranslationsValue>.value(PostV1HrPositionsListResponseRowsItemTranslationsValue(
                            name: "x"
                        ))
                    ])
                ),
                PostV1HrPositionsListResponseRowsItem(
                    id: "x",
                    code: Nullable<String>.value("code"),
                    name: "name",
                    translations: Nullable<[String: Nullable<PostV1HrPositionsListResponseRowsItemTranslationsValue>]>.value([
                        "translations": Nullable<PostV1HrPositionsListResponseRowsItemTranslationsValue>.value(PostV1HrPositionsListResponseRowsItemTranslationsValue(
                            name: "x"
                        ))
                    ])
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.hr.postV1HrPositionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "firstName": "firstName",
                  "lastName": "lastName",
                  "personalCode": "personalCode",
                  "birthDate": "birthDate",
                  "email": "email",
                  "phone": "phone",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
                  "iban": "iban",
                  "socialInsuranceNo": "socialInsuranceNo",
                  "socialInsuranceStart": "socialInsuranceStart",
                  "hireDate": "hireDate",
                  "terminationDate": "terminationDate",
                  "applyNpd": true,
                  "npdOverride": "npdOverride",
                  "pensionAccumulation": true,
                  "status": "active",
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
        let expectedResponse = PostV1HrEmployeesCreateResponse(
            id: "id",
            code: Nullable<String>.value("code"),
            firstName: "firstName",
            lastName: "lastName",
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<String>.value("birthDate"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            address: Nullable<PostV1HrEmployeesCreateResponseAddress>.value(PostV1HrEmployeesCreateResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            iban: Nullable<String>.value("iban"),
            socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
            socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
            hireDate: Nullable<String>.value("hireDate"),
            terminationDate: Nullable<String>.value("terminationDate"),
            applyNpd: true,
            npdOverride: Nullable<String>.value("npdOverride"),
            pensionAccumulation: true,
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.hr.postV1HrEmployeesCreate(
            request: .init(
                firstName: "firstName",
                lastName: "lastName"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "firstName": "firstName",
                  "lastName": "lastName",
                  "personalCode": "personalCode",
                  "birthDate": "birthDate",
                  "email": "email",
                  "phone": "phone",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
                  "iban": "iban",
                  "socialInsuranceNo": "socialInsuranceNo",
                  "socialInsuranceStart": "socialInsuranceStart",
                  "hireDate": "hireDate",
                  "terminationDate": "terminationDate",
                  "applyNpd": true,
                  "npdOverride": "npdOverride",
                  "pensionAccumulation": true,
                  "status": "active",
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
        let expectedResponse = PostV1HrEmployeesCreateResponse(
            id: "x",
            code: Nullable<String>.value("code"),
            firstName: "firstName",
            lastName: "lastName",
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<String>.value("birthDate"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            address: Nullable<PostV1HrEmployeesCreateResponseAddress>.value(PostV1HrEmployeesCreateResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            iban: Nullable<String>.value("iban"),
            socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
            socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
            hireDate: Nullable<String>.value("hireDate"),
            terminationDate: Nullable<String>.value("terminationDate"),
            applyNpd: true,
            npdOverride: Nullable<String>.value("npdOverride"),
            pensionAccumulation: true,
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.hr.postV1HrEmployeesCreate(
            request: .init(
                firstName: "x",
                lastName: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "firstName": "firstName",
                  "lastName": "lastName",
                  "personalCode": "personalCode",
                  "birthDate": "birthDate",
                  "email": "email",
                  "phone": "phone",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
                  "iban": "iban",
                  "socialInsuranceNo": "socialInsuranceNo",
                  "socialInsuranceStart": "socialInsuranceStart",
                  "hireDate": "hireDate",
                  "terminationDate": "terminationDate",
                  "applyNpd": true,
                  "npdOverride": "npdOverride",
                  "pensionAccumulation": true,
                  "status": "active",
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
        let expectedResponse = PostV1HrEmployeesUpdateResponse(
            id: "id",
            code: Nullable<String>.value("code"),
            firstName: "firstName",
            lastName: "lastName",
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<String>.value("birthDate"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            address: Nullable<PostV1HrEmployeesUpdateResponseAddress>.value(PostV1HrEmployeesUpdateResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            iban: Nullable<String>.value("iban"),
            socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
            socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
            hireDate: Nullable<String>.value("hireDate"),
            terminationDate: Nullable<String>.value("terminationDate"),
            applyNpd: true,
            npdOverride: Nullable<String>.value("npdOverride"),
            pensionAccumulation: true,
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.hr.postV1HrEmployeesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "firstName": "firstName",
                  "lastName": "lastName",
                  "personalCode": "personalCode",
                  "birthDate": "birthDate",
                  "email": "email",
                  "phone": "phone",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
                  "iban": "iban",
                  "socialInsuranceNo": "socialInsuranceNo",
                  "socialInsuranceStart": "socialInsuranceStart",
                  "hireDate": "hireDate",
                  "terminationDate": "terminationDate",
                  "applyNpd": true,
                  "npdOverride": "npdOverride",
                  "pensionAccumulation": true,
                  "status": "active",
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
        let expectedResponse = PostV1HrEmployeesUpdateResponse(
            id: "x",
            code: Nullable<String>.value("code"),
            firstName: "firstName",
            lastName: "lastName",
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<String>.value("birthDate"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            address: Nullable<PostV1HrEmployeesUpdateResponseAddress>.value(PostV1HrEmployeesUpdateResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            iban: Nullable<String>.value("iban"),
            socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
            socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
            hireDate: Nullable<String>.value("hireDate"),
            terminationDate: Nullable<String>.value("terminationDate"),
            applyNpd: true,
            npdOverride: Nullable<String>.value("npdOverride"),
            pensionAccumulation: true,
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.hr.postV1HrEmployeesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "firstName": "firstName",
                  "lastName": "lastName",
                  "personalCode": "personalCode",
                  "birthDate": "birthDate",
                  "email": "email",
                  "phone": "phone",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
                  "iban": "iban",
                  "socialInsuranceNo": "socialInsuranceNo",
                  "socialInsuranceStart": "socialInsuranceStart",
                  "hireDate": "hireDate",
                  "terminationDate": "terminationDate",
                  "applyNpd": true,
                  "npdOverride": "npdOverride",
                  "pensionAccumulation": true,
                  "status": "active",
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
        let expectedResponse = PostV1HrEmployeesGetResponse(
            id: "id",
            code: Nullable<String>.value("code"),
            firstName: "firstName",
            lastName: "lastName",
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<String>.value("birthDate"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            address: Nullable<PostV1HrEmployeesGetResponseAddress>.value(PostV1HrEmployeesGetResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            iban: Nullable<String>.value("iban"),
            socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
            socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
            hireDate: Nullable<String>.value("hireDate"),
            terminationDate: Nullable<String>.value("terminationDate"),
            applyNpd: true,
            npdOverride: Nullable<String>.value("npdOverride"),
            pensionAccumulation: true,
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.hr.postV1HrEmployeesGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "firstName": "firstName",
                  "lastName": "lastName",
                  "personalCode": "personalCode",
                  "birthDate": "birthDate",
                  "email": "email",
                  "phone": "phone",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
                  "iban": "iban",
                  "socialInsuranceNo": "socialInsuranceNo",
                  "socialInsuranceStart": "socialInsuranceStart",
                  "hireDate": "hireDate",
                  "terminationDate": "terminationDate",
                  "applyNpd": true,
                  "npdOverride": "npdOverride",
                  "pensionAccumulation": true,
                  "status": "active",
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
        let expectedResponse = PostV1HrEmployeesGetResponse(
            id: "x",
            code: Nullable<String>.value("code"),
            firstName: "firstName",
            lastName: "lastName",
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<String>.value("birthDate"),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            address: Nullable<PostV1HrEmployeesGetResponseAddress>.value(PostV1HrEmployeesGetResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            iban: Nullable<String>.value("iban"),
            socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
            socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
            hireDate: Nullable<String>.value("hireDate"),
            terminationDate: Nullable<String>.value("terminationDate"),
            applyNpd: true,
            npdOverride: Nullable<String>.value("npdOverride"),
            pensionAccumulation: true,
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.hr.postV1HrEmployeesGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "code": "code",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "personalCode": "personalCode",
                      "birthDate": "birthDate",
                      "email": "email",
                      "phone": "phone",
                      "address": {},
                      "iban": "iban",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "socialInsuranceStart": "socialInsuranceStart",
                      "hireDate": "hireDate",
                      "terminationDate": "terminationDate",
                      "applyNpd": true,
                      "npdOverride": "npdOverride",
                      "pensionAccumulation": true,
                      "status": "active",
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
        let expectedResponse = PostV1HrEmployeesListResponse(
            rows: [
                PostV1HrEmployeesListResponseRowsItem(
                    id: "id",
                    code: Nullable<String>.value("code"),
                    firstName: "firstName",
                    lastName: "lastName",
                    personalCode: Nullable<String>.value("personalCode"),
                    birthDate: Nullable<String>.value("birthDate"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    address: Nullable<PostV1HrEmployeesListResponseRowsItemAddress>.value(PostV1HrEmployeesListResponseRowsItemAddress(

                    )),
                    iban: Nullable<String>.value("iban"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
                    hireDate: Nullable<String>.value("hireDate"),
                    terminationDate: Nullable<String>.value("terminationDate"),
                    applyNpd: true,
                    npdOverride: Nullable<String>.value("npdOverride"),
                    pensionAccumulation: true,
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.hr.postV1HrEmployeesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "code": "code",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "personalCode": "personalCode",
                      "birthDate": "birthDate",
                      "email": "email",
                      "phone": "phone",
                      "address": {
                        "street": "street",
                        "city": "city",
                        "postalCode": "postalCode",
                        "countryCode": "xy"
                      },
                      "iban": "iban",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "socialInsuranceStart": "socialInsuranceStart",
                      "hireDate": "hireDate",
                      "terminationDate": "terminationDate",
                      "applyNpd": true,
                      "npdOverride": "npdOverride",
                      "pensionAccumulation": true,
                      "status": "active",
                      "notes": "notes",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "personalCode": "personalCode",
                      "birthDate": "birthDate",
                      "email": "email",
                      "phone": "phone",
                      "address": {
                        "street": "street",
                        "city": "city",
                        "postalCode": "postalCode",
                        "countryCode": "xy"
                      },
                      "iban": "iban",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "socialInsuranceStart": "socialInsuranceStart",
                      "hireDate": "hireDate",
                      "terminationDate": "terminationDate",
                      "applyNpd": true,
                      "npdOverride": "npdOverride",
                      "pensionAccumulation": true,
                      "status": "active",
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
        let expectedResponse = PostV1HrEmployeesListResponse(
            rows: [
                PostV1HrEmployeesListResponseRowsItem(
                    id: "x",
                    code: Nullable<String>.value("code"),
                    firstName: "firstName",
                    lastName: "lastName",
                    personalCode: Nullable<String>.value("personalCode"),
                    birthDate: Nullable<String>.value("birthDate"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    address: Nullable<PostV1HrEmployeesListResponseRowsItemAddress>.value(PostV1HrEmployeesListResponseRowsItemAddress(
                        street: Optional("street"),
                        city: Optional("city"),
                        postalCode: Optional("postalCode"),
                        countryCode: Optional("xy")
                    )),
                    iban: Nullable<String>.value("iban"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
                    hireDate: Nullable<String>.value("hireDate"),
                    terminationDate: Nullable<String>.value("terminationDate"),
                    applyNpd: true,
                    npdOverride: Nullable<String>.value("npdOverride"),
                    pensionAccumulation: true,
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1HrEmployeesListResponseRowsItem(
                    id: "x",
                    code: Nullable<String>.value("code"),
                    firstName: "firstName",
                    lastName: "lastName",
                    personalCode: Nullable<String>.value("personalCode"),
                    birthDate: Nullable<String>.value("birthDate"),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    address: Nullable<PostV1HrEmployeesListResponseRowsItemAddress>.value(PostV1HrEmployeesListResponseRowsItemAddress(
                        street: Optional("street"),
                        city: Optional("city"),
                        postalCode: Optional("postalCode"),
                        countryCode: Optional("xy")
                    )),
                    iban: Nullable<String>.value("iban"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
                    hireDate: Nullable<String>.value("hireDate"),
                    terminationDate: Nullable<String>.value("terminationDate"),
                    applyNpd: true,
                    npdOverride: Nullable<String>.value("npdOverride"),
                    pensionAccumulation: true,
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.hr.postV1HrEmployeesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrContractsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "employeeId": "employeeId",
                  "positionId": "positionId",
                  "departmentId": "departmentId",
                  "scheduleId": "scheduleId",
                  "contractNo": "contractNo",
                  "type": "permanent",
                  "startDate": "startDate",
                  "endDate": "endDate",
                  "endReason": "endReason",
                  "baseSalary": "baseSalary",
                  "salaryType": "monthly",
                  "workHoursPerWeek": "workHoursPerWeek",
                  "status": "active",
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
        let expectedResponse = PostV1HrContractsCreateResponse(
            id: "id",
            employeeId: "employeeId",
            positionId: Nullable<String>.value("positionId"),
            departmentId: Nullable<String>.value("departmentId"),
            scheduleId: Nullable<String>.value("scheduleId"),
            contractNo: "contractNo",
            type: .permanent,
            startDate: "startDate",
            endDate: Nullable<String>.value("endDate"),
            endReason: Nullable<String>.value("endReason"),
            baseSalary: "baseSalary",
            salaryType: .monthly,
            workHoursPerWeek: "workHoursPerWeek",
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.hr.postV1HrContractsCreate(
            request: .init(
                employeeId: "employeeId",
                contractNo: "contractNo",
                startDate: "startDate",
                baseSalary: "baseSalary"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrContractsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "employeeId": "x",
                  "positionId": "x",
                  "departmentId": "x",
                  "scheduleId": "x",
                  "contractNo": "contractNo",
                  "type": "permanent",
                  "startDate": "startDate",
                  "endDate": "endDate",
                  "endReason": "endReason",
                  "baseSalary": "baseSalary",
                  "salaryType": "monthly",
                  "workHoursPerWeek": "workHoursPerWeek",
                  "status": "active",
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
        let expectedResponse = PostV1HrContractsCreateResponse(
            id: "x",
            employeeId: "x",
            positionId: Nullable<String>.value("x"),
            departmentId: Nullable<String>.value("x"),
            scheduleId: Nullable<String>.value("x"),
            contractNo: "contractNo",
            type: .permanent,
            startDate: "startDate",
            endDate: Nullable<String>.value("endDate"),
            endReason: Nullable<String>.value("endReason"),
            baseSalary: "baseSalary",
            salaryType: .monthly,
            workHoursPerWeek: "workHoursPerWeek",
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.hr.postV1HrContractsCreate(
            request: .init(
                employeeId: "x",
                contractNo: "x",
                startDate: "startDate",
                baseSalary: "baseSalary"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrContractsEnd1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "employeeId": "employeeId",
                  "positionId": "positionId",
                  "departmentId": "departmentId",
                  "scheduleId": "scheduleId",
                  "contractNo": "contractNo",
                  "type": "permanent",
                  "startDate": "startDate",
                  "endDate": "endDate",
                  "endReason": "endReason",
                  "baseSalary": "baseSalary",
                  "salaryType": "monthly",
                  "workHoursPerWeek": "workHoursPerWeek",
                  "status": "active",
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
        let expectedResponse = PostV1HrContractsEndResponse(
            id: "id",
            employeeId: "employeeId",
            positionId: Nullable<String>.value("positionId"),
            departmentId: Nullable<String>.value("departmentId"),
            scheduleId: Nullable<String>.value("scheduleId"),
            contractNo: "contractNo",
            type: .permanent,
            startDate: "startDate",
            endDate: Nullable<String>.value("endDate"),
            endReason: Nullable<String>.value("endReason"),
            baseSalary: "baseSalary",
            salaryType: .monthly,
            workHoursPerWeek: "workHoursPerWeek",
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.hr.postV1HrContractsEnd(
            request: .init(
                id: "id",
                endDate: "endDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrContractsEnd2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "employeeId": "x",
                  "positionId": "x",
                  "departmentId": "x",
                  "scheduleId": "x",
                  "contractNo": "contractNo",
                  "type": "permanent",
                  "startDate": "startDate",
                  "endDate": "endDate",
                  "endReason": "endReason",
                  "baseSalary": "baseSalary",
                  "salaryType": "monthly",
                  "workHoursPerWeek": "workHoursPerWeek",
                  "status": "active",
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
        let expectedResponse = PostV1HrContractsEndResponse(
            id: "x",
            employeeId: "x",
            positionId: Nullable<String>.value("x"),
            departmentId: Nullable<String>.value("x"),
            scheduleId: Nullable<String>.value("x"),
            contractNo: "contractNo",
            type: .permanent,
            startDate: "startDate",
            endDate: Nullable<String>.value("endDate"),
            endReason: Nullable<String>.value("endReason"),
            baseSalary: "baseSalary",
            salaryType: .monthly,
            workHoursPerWeek: "workHoursPerWeek",
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.hr.postV1HrContractsEnd(
            request: .init(
                id: "x",
                endDate: "endDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrContractsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "employeeId": "employeeId",
                      "positionId": "positionId",
                      "departmentId": "departmentId",
                      "scheduleId": "scheduleId",
                      "contractNo": "contractNo",
                      "type": "permanent",
                      "startDate": "startDate",
                      "endDate": "endDate",
                      "endReason": "endReason",
                      "baseSalary": "baseSalary",
                      "salaryType": "monthly",
                      "workHoursPerWeek": "workHoursPerWeek",
                      "status": "active",
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
        let expectedResponse = PostV1HrContractsListResponse(
            rows: [
                PostV1HrContractsListResponseRowsItem(
                    id: "id",
                    employeeId: "employeeId",
                    positionId: Nullable<String>.value("positionId"),
                    departmentId: Nullable<String>.value("departmentId"),
                    scheduleId: Nullable<String>.value("scheduleId"),
                    contractNo: "contractNo",
                    type: .permanent,
                    startDate: "startDate",
                    endDate: Nullable<String>.value("endDate"),
                    endReason: Nullable<String>.value("endReason"),
                    baseSalary: "baseSalary",
                    salaryType: .monthly,
                    workHoursPerWeek: "workHoursPerWeek",
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.hr.postV1HrContractsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrContractsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "employeeId": "x",
                      "positionId": "x",
                      "departmentId": "x",
                      "scheduleId": "x",
                      "contractNo": "contractNo",
                      "type": "permanent",
                      "startDate": "startDate",
                      "endDate": "endDate",
                      "endReason": "endReason",
                      "baseSalary": "baseSalary",
                      "salaryType": "monthly",
                      "workHoursPerWeek": "workHoursPerWeek",
                      "status": "active",
                      "notes": "notes",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "employeeId": "x",
                      "positionId": "x",
                      "departmentId": "x",
                      "scheduleId": "x",
                      "contractNo": "contractNo",
                      "type": "permanent",
                      "startDate": "startDate",
                      "endDate": "endDate",
                      "endReason": "endReason",
                      "baseSalary": "baseSalary",
                      "salaryType": "monthly",
                      "workHoursPerWeek": "workHoursPerWeek",
                      "status": "active",
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
        let expectedResponse = PostV1HrContractsListResponse(
            rows: [
                PostV1HrContractsListResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    positionId: Nullable<String>.value("x"),
                    departmentId: Nullable<String>.value("x"),
                    scheduleId: Nullable<String>.value("x"),
                    contractNo: "contractNo",
                    type: .permanent,
                    startDate: "startDate",
                    endDate: Nullable<String>.value("endDate"),
                    endReason: Nullable<String>.value("endReason"),
                    baseSalary: "baseSalary",
                    salaryType: .monthly,
                    workHoursPerWeek: "workHoursPerWeek",
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1HrContractsListResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    positionId: Nullable<String>.value("x"),
                    departmentId: Nullable<String>.value("x"),
                    scheduleId: Nullable<String>.value("x"),
                    contractNo: "contractNo",
                    type: .permanent,
                    startDate: "startDate",
                    endDate: Nullable<String>.value("endDate"),
                    endReason: Nullable<String>.value("endReason"),
                    baseSalary: "baseSalary",
                    salaryType: .monthly,
                    workHoursPerWeek: "workHoursPerWeek",
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.hr.postV1HrContractsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrLeaveBalancesSet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "employeeId": "employeeId",
                  "year": 1000000,
                  "entitledDays": "entitledDays",
                  "usedDays": "usedDays",
                  "remainingDays": "remainingDays"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1HrLeaveBalancesSetResponse(
            employeeId: "employeeId",
            year: 1000000,
            entitledDays: "entitledDays",
            usedDays: "usedDays",
            remainingDays: "remainingDays"
        )
        let response = try await client.hr.postV1HrLeaveBalancesSet(
            request: .init(
                employeeId: "employeeId",
                year: 1000000,
                entitledDays: "entitledDays"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrLeaveBalancesSet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "employeeId": "x",
                  "year": 1000000,
                  "entitledDays": "entitledDays",
                  "usedDays": "usedDays",
                  "remainingDays": "remainingDays"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1HrLeaveBalancesSetResponse(
            employeeId: "x",
            year: 1000000,
            entitledDays: "entitledDays",
            usedDays: "usedDays",
            remainingDays: "remainingDays"
        )
        let response = try await client.hr.postV1HrLeaveBalancesSet(
            request: .init(
                employeeId: "x",
                year: 1000000,
                entitledDays: "entitledDays"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrLeaveBalancesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "year": 1000000,
                      "entitledDays": "entitledDays",
                      "usedDays": "usedDays",
                      "remainingDays": "remainingDays"
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
        let expectedResponse = PostV1HrLeaveBalancesListResponse(
            rows: [
                PostV1HrLeaveBalancesListResponseRowsItem(
                    employeeId: "employeeId",
                    year: 1000000,
                    entitledDays: "entitledDays",
                    usedDays: "usedDays",
                    remainingDays: "remainingDays"
                )
            ]
        )
        let response = try await client.hr.postV1HrLeaveBalancesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrLeaveBalancesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "employeeId": "x",
                      "year": 1000000,
                      "entitledDays": "entitledDays",
                      "usedDays": "usedDays",
                      "remainingDays": "remainingDays"
                    },
                    {
                      "employeeId": "x",
                      "year": 1000000,
                      "entitledDays": "entitledDays",
                      "usedDays": "usedDays",
                      "remainingDays": "remainingDays"
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
        let expectedResponse = PostV1HrLeaveBalancesListResponse(
            rows: [
                PostV1HrLeaveBalancesListResponseRowsItem(
                    employeeId: "x",
                    year: 1000000,
                    entitledDays: "entitledDays",
                    usedDays: "usedDays",
                    remainingDays: "remainingDays"
                ),
                PostV1HrLeaveBalancesListResponseRowsItem(
                    employeeId: "x",
                    year: 1000000,
                    entitledDays: "entitledDays",
                    usedDays: "usedDays",
                    remainingDays: "remainingDays"
                )
            ]
        )
        let response = try await client.hr.postV1HrLeaveBalancesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrIncapacityCertificatesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "employeeId": "employeeId",
                  "series": "series",
                  "number": "number",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "reason": "reason",
                  "notes": "notes"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1HrIncapacityCertificatesCreateResponse(
            id: "id",
            employeeId: "employeeId",
            series: Nullable<String>.value("series"),
            number: "number",
            fromDate: "fromDate",
            toDate: "toDate",
            reason: Nullable<String>.value("reason"),
            notes: Nullable<String>.value("notes")
        )
        let response = try await client.hr.postV1HrIncapacityCertificatesCreate(
            request: .init(
                employeeId: "employeeId",
                number: "number",
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrIncapacityCertificatesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "employeeId": "x",
                  "series": "series",
                  "number": "number",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "reason": "reason",
                  "notes": "notes"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1HrIncapacityCertificatesCreateResponse(
            id: "x",
            employeeId: "x",
            series: Nullable<String>.value("series"),
            number: "number",
            fromDate: "fromDate",
            toDate: "toDate",
            reason: Nullable<String>.value("reason"),
            notes: Nullable<String>.value("notes")
        )
        let response = try await client.hr.postV1HrIncapacityCertificatesCreate(
            request: .init(
                employeeId: "x",
                number: "x",
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrIncapacityCertificatesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "employeeId": "employeeId",
                      "series": "series",
                      "number": "number",
                      "fromDate": "fromDate",
                      "toDate": "toDate",
                      "reason": "reason",
                      "notes": "notes"
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
        let expectedResponse = PostV1HrIncapacityCertificatesListResponse(
            rows: [
                PostV1HrIncapacityCertificatesListResponseRowsItem(
                    id: "id",
                    employeeId: "employeeId",
                    series: Nullable<String>.value("series"),
                    number: "number",
                    fromDate: "fromDate",
                    toDate: "toDate",
                    reason: Nullable<String>.value("reason"),
                    notes: Nullable<String>.value("notes")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.hr.postV1HrIncapacityCertificatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrIncapacityCertificatesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "employeeId": "x",
                      "series": "series",
                      "number": "number",
                      "fromDate": "fromDate",
                      "toDate": "toDate",
                      "reason": "reason",
                      "notes": "notes"
                    },
                    {
                      "id": "x",
                      "employeeId": "x",
                      "series": "series",
                      "number": "number",
                      "fromDate": "fromDate",
                      "toDate": "toDate",
                      "reason": "reason",
                      "notes": "notes"
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
        let expectedResponse = PostV1HrIncapacityCertificatesListResponse(
            rows: [
                PostV1HrIncapacityCertificatesListResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    series: Nullable<String>.value("series"),
                    number: "number",
                    fromDate: "fromDate",
                    toDate: "toDate",
                    reason: Nullable<String>.value("reason"),
                    notes: Nullable<String>.value("notes")
                ),
                PostV1HrIncapacityCertificatesListResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    series: Nullable<String>.value("series"),
                    number: "number",
                    fromDate: "fromDate",
                    toDate: "toDate",
                    reason: Nullable<String>.value("reason"),
                    notes: Nullable<String>.value("notes")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.hr.postV1HrIncapacityCertificatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesRecordsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "employeeId": "employeeId",
                  "type": "education",
                  "title": "title",
                  "institution": "institution",
                  "issuedAt": "issuedAt",
                  "validUntil": "validUntil",
                  "fileId": "fileId",
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
        let expectedResponse = PostV1HrEmployeesRecordsCreateResponse(
            id: "id",
            employeeId: "employeeId",
            type: .education,
            title: "title",
            institution: Nullable<String>.value("institution"),
            issuedAt: Nullable<String>.value("issuedAt"),
            validUntil: Nullable<String>.value("validUntil"),
            fileId: Nullable<String>.value("fileId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.hr.postV1HrEmployeesRecordsCreate(
            request: .init(
                employeeId: "employeeId",
                type: .education,
                title: "title"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesRecordsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "employeeId": "x",
                  "type": "education",
                  "title": "title",
                  "institution": "institution",
                  "issuedAt": "issuedAt",
                  "validUntil": "validUntil",
                  "fileId": "x",
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
        let expectedResponse = PostV1HrEmployeesRecordsCreateResponse(
            id: "x",
            employeeId: "x",
            type: .education,
            title: "title",
            institution: Nullable<String>.value("institution"),
            issuedAt: Nullable<String>.value("issuedAt"),
            validUntil: Nullable<String>.value("validUntil"),
            fileId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.hr.postV1HrEmployeesRecordsCreate(
            request: .init(
                employeeId: "x",
                type: .education,
                title: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesRecordsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "employeeId": "employeeId",
                  "type": "education",
                  "title": "title",
                  "institution": "institution",
                  "issuedAt": "issuedAt",
                  "validUntil": "validUntil",
                  "fileId": "fileId",
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
        let expectedResponse = PostV1HrEmployeesRecordsUpdateResponse(
            id: "id",
            employeeId: "employeeId",
            type: .education,
            title: "title",
            institution: Nullable<String>.value("institution"),
            issuedAt: Nullable<String>.value("issuedAt"),
            validUntil: Nullable<String>.value("validUntil"),
            fileId: Nullable<String>.value("fileId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.hr.postV1HrEmployeesRecordsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesRecordsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "employeeId": "x",
                  "type": "education",
                  "title": "title",
                  "institution": "institution",
                  "issuedAt": "issuedAt",
                  "validUntil": "validUntil",
                  "fileId": "x",
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
        let expectedResponse = PostV1HrEmployeesRecordsUpdateResponse(
            id: "x",
            employeeId: "x",
            type: .education,
            title: "title",
            institution: Nullable<String>.value("institution"),
            issuedAt: Nullable<String>.value("issuedAt"),
            validUntil: Nullable<String>.value("validUntil"),
            fileId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.hr.postV1HrEmployeesRecordsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesRecordsDelete1() async throws -> Void {
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
        let expectedResponse = PostV1HrEmployeesRecordsDeleteResponse(
            id: "id"
        )
        let response = try await client.hr.postV1HrEmployeesRecordsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesRecordsDelete2() async throws -> Void {
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
        let expectedResponse = PostV1HrEmployeesRecordsDeleteResponse(
            id: "x"
        )
        let response = try await client.hr.postV1HrEmployeesRecordsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesRecordsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "employeeId": "employeeId",
                      "type": "education",
                      "title": "title",
                      "institution": "institution",
                      "issuedAt": "issuedAt",
                      "validUntil": "validUntil",
                      "fileId": "fileId",
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
        let expectedResponse = PostV1HrEmployeesRecordsListResponse(
            rows: [
                PostV1HrEmployeesRecordsListResponseRowsItem(
                    id: "id",
                    employeeId: "employeeId",
                    type: .education,
                    title: "title",
                    institution: Nullable<String>.value("institution"),
                    issuedAt: Nullable<String>.value("issuedAt"),
                    validUntil: Nullable<String>.value("validUntil"),
                    fileId: Nullable<String>.value("fileId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.hr.postV1HrEmployeesRecordsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesRecordsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "employeeId": "x",
                      "type": "education",
                      "title": "title",
                      "institution": "institution",
                      "issuedAt": "issuedAt",
                      "validUntil": "validUntil",
                      "fileId": "x",
                      "notes": "notes",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "employeeId": "x",
                      "type": "education",
                      "title": "title",
                      "institution": "institution",
                      "issuedAt": "issuedAt",
                      "validUntil": "validUntil",
                      "fileId": "x",
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
        let expectedResponse = PostV1HrEmployeesRecordsListResponse(
            rows: [
                PostV1HrEmployeesRecordsListResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    type: .education,
                    title: "title",
                    institution: Nullable<String>.value("institution"),
                    issuedAt: Nullable<String>.value("issuedAt"),
                    validUntil: Nullable<String>.value("validUntil"),
                    fileId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1HrEmployeesRecordsListResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    type: .education,
                    title: "title",
                    institution: Nullable<String>.value("institution"),
                    issuedAt: Nullable<String>.value("issuedAt"),
                    validUntil: Nullable<String>.value("validUntil"),
                    fileId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.hr.postV1HrEmployeesRecordsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesAttachmentsList1() async throws -> Void {
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
        let expectedResponse = PostV1HrEmployeesAttachmentsListResponse(
            rows: [
                PostV1HrEmployeesAttachmentsListResponseRowsItem(
                    id: "id",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.hr.postV1HrEmployeesAttachmentsList(
            request: .init(employeeId: "employeeId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrEmployeesAttachmentsList2() async throws -> Void {
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
        let expectedResponse = PostV1HrEmployeesAttachmentsListResponse(
            rows: [
                PostV1HrEmployeesAttachmentsListResponseRowsItem(
                    id: "x",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    createdAt: "createdAt"
                ),
                PostV1HrEmployeesAttachmentsListResponseRowsItem(
                    id: "x",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.hr.postV1HrEmployeesAttachmentsList(
            request: .init(employeeId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrTimesheetsGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "generated": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1HrTimesheetsGenerateResponse(
            generated: 1000000
        )
        let response = try await client.hr.postV1HrTimesheetsGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrTimesheetsGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "generated": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1HrTimesheetsGenerateResponse(
            generated: 1000000
        )
        let response = try await client.hr.postV1HrTimesheetsGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrTimesheetsUpsert1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "employeeId": "employeeId",
                  "employeeName": "employeeName",
                  "year": 1000000,
                  "month": 1000000,
                  "days": [
                    {
                      "day": 1000000,
                      "hours": "hours",
                      "type": "work"
                    }
                  ],
                  "workedDays": "workedDays",
                  "workedHours": "workedHours",
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
        let expectedResponse = PostV1HrTimesheetsUpsertResponse(
            id: "id",
            employeeId: "employeeId",
            employeeName: "employeeName",
            year: 1000000,
            month: 1000000,
            days: [
                PostV1HrTimesheetsUpsertResponseDaysItem(
                    day: 1000000,
                    hours: "hours",
                    type: .work
                )
            ],
            workedDays: "workedDays",
            workedHours: "workedHours",
            updatedAt: "updatedAt"
        )
        let response = try await client.hr.postV1HrTimesheetsUpsert(
            request: .init(
                employeeId: "employeeId",
                year: 1000000,
                month: 1000000,
                days: [
                    PostV1HrTimesheetsUpsertRequestDaysItem(
                        day: 1000000,
                        hours: "hours",
                        type: .work
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrTimesheetsUpsert2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "employeeId": "x",
                  "employeeName": "employeeName",
                  "year": 1000000,
                  "month": 1000000,
                  "days": [
                    {
                      "day": 1000000,
                      "hours": "hours",
                      "type": "work"
                    },
                    {
                      "day": 1000000,
                      "hours": "hours",
                      "type": "work"
                    }
                  ],
                  "workedDays": "workedDays",
                  "workedHours": "workedHours",
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
        let expectedResponse = PostV1HrTimesheetsUpsertResponse(
            id: "x",
            employeeId: "x",
            employeeName: "employeeName",
            year: 1000000,
            month: 1000000,
            days: [
                PostV1HrTimesheetsUpsertResponseDaysItem(
                    day: 1000000,
                    hours: "hours",
                    type: .work
                ),
                PostV1HrTimesheetsUpsertResponseDaysItem(
                    day: 1000000,
                    hours: "hours",
                    type: .work
                )
            ],
            workedDays: "workedDays",
            workedHours: "workedHours",
            updatedAt: "updatedAt"
        )
        let response = try await client.hr.postV1HrTimesheetsUpsert(
            request: .init(
                employeeId: "x",
                year: 1000000,
                month: 1000000,
                days: [
                    PostV1HrTimesheetsUpsertRequestDaysItem(
                        day: 1000000,
                        hours: "hours",
                        type: .work
                    ),
                    PostV1HrTimesheetsUpsertRequestDaysItem(
                        day: 1000000,
                        hours: "hours",
                        type: .work
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrTimesheetsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "employeeId": "employeeId",
                  "employeeName": "employeeName",
                  "year": 1000000,
                  "month": 1000000,
                  "days": [
                    {
                      "day": 1000000,
                      "hours": "hours",
                      "type": "work"
                    }
                  ],
                  "workedDays": "workedDays",
                  "workedHours": "workedHours",
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
        let expectedResponse = PostV1HrTimesheetsGetResponse(
            id: "id",
            employeeId: "employeeId",
            employeeName: "employeeName",
            year: 1000000,
            month: 1000000,
            days: [
                PostV1HrTimesheetsGetResponseDaysItem(
                    day: 1000000,
                    hours: "hours",
                    type: .work
                )
            ],
            workedDays: "workedDays",
            workedHours: "workedHours",
            updatedAt: "updatedAt"
        )
        let response = try await client.hr.postV1HrTimesheetsGet(
            request: .init(
                employeeId: "employeeId",
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrTimesheetsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "employeeId": "x",
                  "employeeName": "employeeName",
                  "year": 1000000,
                  "month": 1000000,
                  "days": [
                    {
                      "day": 1000000,
                      "hours": "hours",
                      "type": "work"
                    },
                    {
                      "day": 1000000,
                      "hours": "hours",
                      "type": "work"
                    }
                  ],
                  "workedDays": "workedDays",
                  "workedHours": "workedHours",
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
        let expectedResponse = PostV1HrTimesheetsGetResponse(
            id: "x",
            employeeId: "x",
            employeeName: "employeeName",
            year: 1000000,
            month: 1000000,
            days: [
                PostV1HrTimesheetsGetResponseDaysItem(
                    day: 1000000,
                    hours: "hours",
                    type: .work
                ),
                PostV1HrTimesheetsGetResponseDaysItem(
                    day: 1000000,
                    hours: "hours",
                    type: .work
                )
            ],
            workedDays: "workedDays",
            workedHours: "workedHours",
            updatedAt: "updatedAt"
        )
        let response = try await client.hr.postV1HrTimesheetsGet(
            request: .init(
                employeeId: "x",
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrTimesheetsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "employeeId": "employeeId",
                      "employeeName": "employeeName",
                      "year": 1000000,
                      "month": 1000000,
                      "days": [
                        {
                          "day": 1000000,
                          "hours": "hours",
                          "type": "work"
                        }
                      ],
                      "workedDays": "workedDays",
                      "workedHours": "workedHours",
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1HrTimesheetsListResponse(
            rows: [
                PostV1HrTimesheetsListResponseRowsItem(
                    id: "id",
                    employeeId: "employeeId",
                    employeeName: "employeeName",
                    year: 1000000,
                    month: 1000000,
                    days: [
                        PostV1HrTimesheetsListResponseRowsItemDaysItem(
                            day: 1000000,
                            hours: "hours",
                            type: .work
                        )
                    ],
                    workedDays: "workedDays",
                    workedHours: "workedHours",
                    updatedAt: "updatedAt"
                )
            ]
        )
        let response = try await client.hr.postV1HrTimesheetsList(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrTimesheetsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "employeeId": "x",
                      "employeeName": "employeeName",
                      "year": 1000000,
                      "month": 1000000,
                      "days": [
                        {
                          "day": 1000000,
                          "hours": "hours",
                          "type": "work"
                        },
                        {
                          "day": 1000000,
                          "hours": "hours",
                          "type": "work"
                        }
                      ],
                      "workedDays": "workedDays",
                      "workedHours": "workedHours",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "employeeId": "x",
                      "employeeName": "employeeName",
                      "year": 1000000,
                      "month": 1000000,
                      "days": [
                        {
                          "day": 1000000,
                          "hours": "hours",
                          "type": "work"
                        },
                        {
                          "day": 1000000,
                          "hours": "hours",
                          "type": "work"
                        }
                      ],
                      "workedDays": "workedDays",
                      "workedHours": "workedHours",
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1HrTimesheetsListResponse(
            rows: [
                PostV1HrTimesheetsListResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    employeeName: "employeeName",
                    year: 1000000,
                    month: 1000000,
                    days: [
                        PostV1HrTimesheetsListResponseRowsItemDaysItem(
                            day: 1000000,
                            hours: "hours",
                            type: .work
                        ),
                        PostV1HrTimesheetsListResponseRowsItemDaysItem(
                            day: 1000000,
                            hours: "hours",
                            type: .work
                        )
                    ],
                    workedDays: "workedDays",
                    workedHours: "workedHours",
                    updatedAt: "updatedAt"
                ),
                PostV1HrTimesheetsListResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    employeeName: "employeeName",
                    year: 1000000,
                    month: 1000000,
                    days: [
                        PostV1HrTimesheetsListResponseRowsItemDaysItem(
                            day: 1000000,
                            hours: "hours",
                            type: .work
                        ),
                        PostV1HrTimesheetsListResponseRowsItemDaysItem(
                            day: 1000000,
                            hours: "hours",
                            type: .work
                        )
                    ],
                    workedDays: "workedDays",
                    workedHours: "workedHours",
                    updatedAt: "updatedAt"
                )
            ]
        )
        let response = try await client.hr.postV1HrTimesheetsList(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrTimesheetsDelete1() async throws -> Void {
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
        let expectedResponse = PostV1HrTimesheetsDeleteResponse(
            id: "id"
        )
        let response = try await client.hr.postV1HrTimesheetsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1HrTimesheetsDelete2() async throws -> Void {
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
        let expectedResponse = PostV1HrTimesheetsDeleteResponse(
            id: "x"
        )
        let response = try await client.hr.postV1HrTimesheetsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}