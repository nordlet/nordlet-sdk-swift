import Foundation
import Testing
import Api

@Suite("HrClient Wire Tests") struct HrClientWireTests {
    @Test func positionsCreate1() async throws -> Void {
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
        let expectedResponse = PositionsCreateHrResponse(
            id: "id",
            code: Nullable<String>.value("code"),
            name: "name",
            translations: Nullable<[String: Nullable<PositionsCreateHrResponseTranslationsValue>]>.value([
                "key": Nullable<PositionsCreateHrResponseTranslationsValue>.value(PositionsCreateHrResponseTranslationsValue(
                    name: "name"
                ))
            ])
        )
        let response = try await client.hr.positionsCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func positionsCreate2() async throws -> Void {
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
        let expectedResponse = PositionsCreateHrResponse(
            id: "x",
            code: Nullable<String>.value("code"),
            name: "name",
            translations: Nullable<[String: Nullable<PositionsCreateHrResponseTranslationsValue>]>.value([
                "translations": Nullable<PositionsCreateHrResponseTranslationsValue>.value(PositionsCreateHrResponseTranslationsValue(
                    name: "x"
                ))
            ])
        )
        let response = try await client.hr.positionsCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func positionsUpdate1() async throws -> Void {
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
        let expectedResponse = PositionsUpdateHrResponse(
            id: "id",
            code: Nullable<String>.value("code"),
            name: "name",
            translations: Nullable<[String: Nullable<PositionsUpdateHrResponseTranslationsValue>]>.value([
                "key": Nullable<PositionsUpdateHrResponseTranslationsValue>.value(PositionsUpdateHrResponseTranslationsValue(
                    name: "name"
                ))
            ])
        )
        let response = try await client.hr.positionsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func positionsUpdate2() async throws -> Void {
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
        let expectedResponse = PositionsUpdateHrResponse(
            id: "x",
            code: Nullable<String>.value("code"),
            name: "name",
            translations: Nullable<[String: Nullable<PositionsUpdateHrResponseTranslationsValue>]>.value([
                "translations": Nullable<PositionsUpdateHrResponseTranslationsValue>.value(PositionsUpdateHrResponseTranslationsValue(
                    name: "x"
                ))
            ])
        )
        let response = try await client.hr.positionsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func positionsList1() async throws -> Void {
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
        let expectedResponse = PositionsListHrResponse(
            rows: [
                PositionsListHrResponseRowsItem(
                    id: "id",
                    code: Nullable<String>.value("code"),
                    name: "name",
                    translations: Nullable<[String: Nullable<PositionsListHrResponseRowsItemTranslationsValue>]>.value([:])
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
        let response = try await client.hr.positionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func positionsList2() async throws -> Void {
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
        let expectedResponse = PositionsListHrResponse(
            rows: [
                PositionsListHrResponseRowsItem(
                    id: "x",
                    code: Nullable<String>.value("code"),
                    name: "name",
                    translations: Nullable<[String: Nullable<PositionsListHrResponseRowsItemTranslationsValue>]>.value([
                        "translations": Nullable<PositionsListHrResponseRowsItemTranslationsValue>.value(PositionsListHrResponseRowsItemTranslationsValue(
                            name: "x"
                        ))
                    ])
                ),
                PositionsListHrResponseRowsItem(
                    id: "x",
                    code: Nullable<String>.value("code"),
                    name: "name",
                    translations: Nullable<[String: Nullable<PositionsListHrResponseRowsItemTranslationsValue>]>.value([
                        "translations": Nullable<PositionsListHrResponseRowsItemTranslationsValue>.value(PositionsListHrResponseRowsItemTranslationsValue(
                            name: "x"
                        ))
                    ])
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
        let response = try await client.hr.positionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesCreate1() async throws -> Void {
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
                  "birthDate": "2026-07-01",
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
                  "hireDate": "2026-07-01",
                  "terminationDate": "2026-07-01",
                  "applyAllowance": true,
                  "allowanceOverride": "allowanceOverride",
                  "pensionAccumulation": true,
                  "payrollOptions": {
                    "key": "value"
                  },
                  "status": "active",
                  "notes": "notes",
                  "attributes": [
                    {
                      "name": "name",
                      "value": "value"
                    }
                  ],
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
        let expectedResponse = EmployeesCreateHrResponse(
            id: "id",
            code: Nullable<String>.value("code"),
            firstName: "firstName",
            lastName: "lastName",
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            address: Nullable<EmployeesCreateHrResponseAddress>.value(EmployeesCreateHrResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            iban: Nullable<String>.value("iban"),
            socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
            socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
            hireDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            terminationDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            applyAllowance: true,
            allowanceOverride: Nullable<String>.value("allowanceOverride"),
            pensionAccumulation: true,
            payrollOptions: [
                "key": "value"
            ],
            status: .active,
            notes: Nullable<String>.value("notes"),
            attributes: Nullable<[EmployeesCreateHrResponseAttributesItem]>.value([
                EmployeesCreateHrResponseAttributesItem(
                    name: "name",
                    value: "value"
                )
            ]),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.employeesCreate(
            request: .init(
                firstName: "firstName",
                lastName: "lastName"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesCreate2() async throws -> Void {
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
                  "birthDate": "2023-01-15",
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
                  "hireDate": "2023-01-15",
                  "terminationDate": "2023-01-15",
                  "applyAllowance": true,
                  "allowanceOverride": "allowanceOverride",
                  "pensionAccumulation": true,
                  "payrollOptions": {
                    "payrollOptions": "payrollOptions"
                  },
                  "status": "active",
                  "notes": "notes",
                  "attributes": [
                    {
                      "name": "x",
                      "value": "value"
                    },
                    {
                      "name": "x",
                      "value": "value"
                    }
                  ],
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
        let expectedResponse = EmployeesCreateHrResponse(
            id: "x",
            code: Nullable<String>.value("code"),
            firstName: "firstName",
            lastName: "lastName",
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            address: Nullable<EmployeesCreateHrResponseAddress>.value(EmployeesCreateHrResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            iban: Nullable<String>.value("iban"),
            socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
            socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
            hireDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            terminationDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            applyAllowance: true,
            allowanceOverride: Nullable<String>.value("allowanceOverride"),
            pensionAccumulation: true,
            payrollOptions: [
                "payrollOptions": "payrollOptions"
            ],
            status: .active,
            notes: Nullable<String>.value("notes"),
            attributes: Nullable<[EmployeesCreateHrResponseAttributesItem]>.value([
                EmployeesCreateHrResponseAttributesItem(
                    name: "x",
                    value: "value"
                ),
                EmployeesCreateHrResponseAttributesItem(
                    name: "x",
                    value: "value"
                )
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.employeesCreate(
            request: .init(
                firstName: "x",
                lastName: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesUpdate1() async throws -> Void {
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
                  "birthDate": "2026-07-01",
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
                  "hireDate": "2026-07-01",
                  "terminationDate": "2026-07-01",
                  "applyAllowance": true,
                  "allowanceOverride": "allowanceOverride",
                  "pensionAccumulation": true,
                  "payrollOptions": {
                    "key": "value"
                  },
                  "status": "active",
                  "notes": "notes",
                  "attributes": [
                    {
                      "name": "name",
                      "value": "value"
                    }
                  ],
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
        let expectedResponse = EmployeesUpdateHrResponse(
            id: "id",
            code: Nullable<String>.value("code"),
            firstName: "firstName",
            lastName: "lastName",
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            address: Nullable<EmployeesUpdateHrResponseAddress>.value(EmployeesUpdateHrResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            iban: Nullable<String>.value("iban"),
            socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
            socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
            hireDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            terminationDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            applyAllowance: true,
            allowanceOverride: Nullable<String>.value("allowanceOverride"),
            pensionAccumulation: true,
            payrollOptions: [
                "key": "value"
            ],
            status: .active,
            notes: Nullable<String>.value("notes"),
            attributes: Nullable<[EmployeesUpdateHrResponseAttributesItem]>.value([
                EmployeesUpdateHrResponseAttributesItem(
                    name: "name",
                    value: "value"
                )
            ]),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.employeesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesUpdate2() async throws -> Void {
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
                  "birthDate": "2023-01-15",
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
                  "hireDate": "2023-01-15",
                  "terminationDate": "2023-01-15",
                  "applyAllowance": true,
                  "allowanceOverride": "allowanceOverride",
                  "pensionAccumulation": true,
                  "payrollOptions": {
                    "payrollOptions": "payrollOptions"
                  },
                  "status": "active",
                  "notes": "notes",
                  "attributes": [
                    {
                      "name": "x",
                      "value": "value"
                    },
                    {
                      "name": "x",
                      "value": "value"
                    }
                  ],
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
        let expectedResponse = EmployeesUpdateHrResponse(
            id: "x",
            code: Nullable<String>.value("code"),
            firstName: "firstName",
            lastName: "lastName",
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            address: Nullable<EmployeesUpdateHrResponseAddress>.value(EmployeesUpdateHrResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            iban: Nullable<String>.value("iban"),
            socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
            socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
            hireDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            terminationDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            applyAllowance: true,
            allowanceOverride: Nullable<String>.value("allowanceOverride"),
            pensionAccumulation: true,
            payrollOptions: [
                "payrollOptions": "payrollOptions"
            ],
            status: .active,
            notes: Nullable<String>.value("notes"),
            attributes: Nullable<[EmployeesUpdateHrResponseAttributesItem]>.value([
                EmployeesUpdateHrResponseAttributesItem(
                    name: "x",
                    value: "value"
                ),
                EmployeesUpdateHrResponseAttributesItem(
                    name: "x",
                    value: "value"
                )
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.employeesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesGet1() async throws -> Void {
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
                  "birthDate": "2026-07-01",
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
                  "hireDate": "2026-07-01",
                  "terminationDate": "2026-07-01",
                  "applyAllowance": true,
                  "allowanceOverride": "allowanceOverride",
                  "pensionAccumulation": true,
                  "payrollOptions": {
                    "key": "value"
                  },
                  "status": "active",
                  "notes": "notes",
                  "attributes": [
                    {
                      "name": "name",
                      "value": "value"
                    }
                  ],
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
        let expectedResponse = EmployeesGetHrResponse(
            id: "id",
            code: Nullable<String>.value("code"),
            firstName: "firstName",
            lastName: "lastName",
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            address: Nullable<EmployeesGetHrResponseAddress>.value(EmployeesGetHrResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            iban: Nullable<String>.value("iban"),
            socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
            socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
            hireDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            terminationDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            applyAllowance: true,
            allowanceOverride: Nullable<String>.value("allowanceOverride"),
            pensionAccumulation: true,
            payrollOptions: [
                "key": "value"
            ],
            status: .active,
            notes: Nullable<String>.value("notes"),
            attributes: Nullable<[EmployeesGetHrResponseAttributesItem]>.value([
                EmployeesGetHrResponseAttributesItem(
                    name: "name",
                    value: "value"
                )
            ]),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.employeesGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesGet2() async throws -> Void {
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
                  "birthDate": "2023-01-15",
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
                  "hireDate": "2023-01-15",
                  "terminationDate": "2023-01-15",
                  "applyAllowance": true,
                  "allowanceOverride": "allowanceOverride",
                  "pensionAccumulation": true,
                  "payrollOptions": {
                    "payrollOptions": "payrollOptions"
                  },
                  "status": "active",
                  "notes": "notes",
                  "attributes": [
                    {
                      "name": "x",
                      "value": "value"
                    },
                    {
                      "name": "x",
                      "value": "value"
                    }
                  ],
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
        let expectedResponse = EmployeesGetHrResponse(
            id: "x",
            code: Nullable<String>.value("code"),
            firstName: "firstName",
            lastName: "lastName",
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            address: Nullable<EmployeesGetHrResponseAddress>.value(EmployeesGetHrResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            iban: Nullable<String>.value("iban"),
            socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
            socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
            hireDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            terminationDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            applyAllowance: true,
            allowanceOverride: Nullable<String>.value("allowanceOverride"),
            pensionAccumulation: true,
            payrollOptions: [
                "payrollOptions": "payrollOptions"
            ],
            status: .active,
            notes: Nullable<String>.value("notes"),
            attributes: Nullable<[EmployeesGetHrResponseAttributesItem]>.value([
                EmployeesGetHrResponseAttributesItem(
                    name: "x",
                    value: "value"
                ),
                EmployeesGetHrResponseAttributesItem(
                    name: "x",
                    value: "value"
                )
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.employeesGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesFields1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "country": "country",
                  "fields": [
                    {
                      "key": "key",
                      "kind": "text",
                      "options": [
                        "options"
                      ],
                      "maxLength": 1000000
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
        let expectedResponse = EmployeesFieldsHrResponse(
            country: "country",
            fields: [
                EmployeesFieldsHrResponseFieldsItem(
                    key: "key",
                    kind: .text,
                    options: Optional([
                        "options"
                    ]),
                    maxLength: Optional(1000000)
                )
            ]
        )
        let response = try await client.hr.employeesFields(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesFields2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "country": "country",
                  "fields": [
                    {
                      "key": "key",
                      "kind": "text",
                      "options": [
                        "options",
                        "options"
                      ],
                      "maxLength": 1000000
                    },
                    {
                      "key": "key",
                      "kind": "text",
                      "options": [
                        "options",
                        "options"
                      ],
                      "maxLength": 1000000
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
        let expectedResponse = EmployeesFieldsHrResponse(
            country: "country",
            fields: [
                EmployeesFieldsHrResponseFieldsItem(
                    key: "key",
                    kind: .text,
                    options: Optional([
                        "options",
                        "options"
                    ]),
                    maxLength: Optional(1000000)
                ),
                EmployeesFieldsHrResponseFieldsItem(
                    key: "key",
                    kind: .text,
                    options: Optional([
                        "options",
                        "options"
                    ]),
                    maxLength: Optional(1000000)
                )
            ]
        )
        let response = try await client.hr.employeesFields(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesList1() async throws -> Void {
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
                      "birthDate": "2026-07-01",
                      "email": "email",
                      "phone": "phone",
                      "address": {},
                      "iban": "iban",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "socialInsuranceStart": "socialInsuranceStart",
                      "hireDate": "2026-07-01",
                      "terminationDate": "2026-07-01",
                      "applyAllowance": true,
                      "allowanceOverride": "allowanceOverride",
                      "pensionAccumulation": true,
                      "payrollOptions": {
                        "key": "value"
                      },
                      "status": "active",
                      "notes": "notes",
                      "attributes": [
                        {
                          "name": "name",
                          "value": "value"
                        }
                      ],
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
        let expectedResponse = EmployeesListHrResponse(
            rows: [
                EmployeesListHrResponseRowsItem(
                    id: "id",
                    code: Nullable<String>.value("code"),
                    firstName: "firstName",
                    lastName: "lastName",
                    personalCode: Nullable<String>.value("personalCode"),
                    birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    address: Nullable<EmployeesListHrResponseRowsItemAddress>.value(EmployeesListHrResponseRowsItemAddress(

                    )),
                    iban: Nullable<String>.value("iban"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
                    hireDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    terminationDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    applyAllowance: true,
                    allowanceOverride: Nullable<String>.value("allowanceOverride"),
                    pensionAccumulation: true,
                    payrollOptions: [
                        "key": "value"
                    ],
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    attributes: Nullable<[EmployeesListHrResponseRowsItemAttributesItem]>.value([
                        EmployeesListHrResponseRowsItemAttributesItem(
                            name: "name",
                            value: "value"
                        )
                    ]),
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
        let response = try await client.hr.employeesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesList2() async throws -> Void {
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
                      "birthDate": "2023-01-15",
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
                      "hireDate": "2023-01-15",
                      "terminationDate": "2023-01-15",
                      "applyAllowance": true,
                      "allowanceOverride": "allowanceOverride",
                      "pensionAccumulation": true,
                      "payrollOptions": {
                        "payrollOptions": "payrollOptions"
                      },
                      "status": "active",
                      "notes": "notes",
                      "attributes": [
                        {
                          "name": "x",
                          "value": "value"
                        },
                        {
                          "name": "x",
                          "value": "value"
                        }
                      ],
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "personalCode": "personalCode",
                      "birthDate": "2023-01-15",
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
                      "hireDate": "2023-01-15",
                      "terminationDate": "2023-01-15",
                      "applyAllowance": true,
                      "allowanceOverride": "allowanceOverride",
                      "pensionAccumulation": true,
                      "payrollOptions": {
                        "payrollOptions": "payrollOptions"
                      },
                      "status": "active",
                      "notes": "notes",
                      "attributes": [
                        {
                          "name": "x",
                          "value": "value"
                        },
                        {
                          "name": "x",
                          "value": "value"
                        }
                      ],
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
        let expectedResponse = EmployeesListHrResponse(
            rows: [
                EmployeesListHrResponseRowsItem(
                    id: "x",
                    code: Nullable<String>.value("code"),
                    firstName: "firstName",
                    lastName: "lastName",
                    personalCode: Nullable<String>.value("personalCode"),
                    birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    address: Nullable<EmployeesListHrResponseRowsItemAddress>.value(EmployeesListHrResponseRowsItemAddress(
                        street: Optional("street"),
                        city: Optional("city"),
                        postalCode: Optional("postalCode"),
                        countryCode: Optional("xy")
                    )),
                    iban: Nullable<String>.value("iban"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
                    hireDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    terminationDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    applyAllowance: true,
                    allowanceOverride: Nullable<String>.value("allowanceOverride"),
                    pensionAccumulation: true,
                    payrollOptions: [
                        "payrollOptions": "payrollOptions"
                    ],
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    attributes: Nullable<[EmployeesListHrResponseRowsItemAttributesItem]>.value([
                        EmployeesListHrResponseRowsItemAttributesItem(
                            name: "x",
                            value: "value"
                        ),
                        EmployeesListHrResponseRowsItemAttributesItem(
                            name: "x",
                            value: "value"
                        )
                    ]),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                EmployeesListHrResponseRowsItem(
                    id: "x",
                    code: Nullable<String>.value("code"),
                    firstName: "firstName",
                    lastName: "lastName",
                    personalCode: Nullable<String>.value("personalCode"),
                    birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    email: Nullable<String>.value("email"),
                    phone: Nullable<String>.value("phone"),
                    address: Nullable<EmployeesListHrResponseRowsItemAddress>.value(EmployeesListHrResponseRowsItemAddress(
                        street: Optional("street"),
                        city: Optional("city"),
                        postalCode: Optional("postalCode"),
                        countryCode: Optional("xy")
                    )),
                    iban: Nullable<String>.value("iban"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
                    hireDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    terminationDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    applyAllowance: true,
                    allowanceOverride: Nullable<String>.value("allowanceOverride"),
                    pensionAccumulation: true,
                    payrollOptions: [
                        "payrollOptions": "payrollOptions"
                    ],
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    attributes: Nullable<[EmployeesListHrResponseRowsItemAttributesItem]>.value([
                        EmployeesListHrResponseRowsItemAttributesItem(
                            name: "x",
                            value: "value"
                        ),
                        EmployeesListHrResponseRowsItemAttributesItem(
                            name: "x",
                            value: "value"
                        )
                    ]),
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
        let response = try await client.hr.employeesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesDelete1() async throws -> Void {
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
        let expectedResponse = EmployeesDeleteHrResponse(
            id: "id"
        )
        let response = try await client.hr.employeesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesDelete2() async throws -> Void {
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
        let expectedResponse = EmployeesDeleteHrResponse(
            id: "x"
        )
        let response = try await client.hr.employeesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesAnonymize1() async throws -> Void {
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
                  "birthDate": "2026-07-01",
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
                  "hireDate": "2026-07-01",
                  "terminationDate": "2026-07-01",
                  "applyAllowance": true,
                  "allowanceOverride": "allowanceOverride",
                  "pensionAccumulation": true,
                  "payrollOptions": {
                    "key": "value"
                  },
                  "status": "active",
                  "notes": "notes",
                  "attributes": [
                    {
                      "name": "name",
                      "value": "value"
                    }
                  ],
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
        let expectedResponse = EmployeesAnonymizeHrResponse(
            id: "id",
            code: Nullable<String>.value("code"),
            firstName: "firstName",
            lastName: "lastName",
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            address: Nullable<EmployeesAnonymizeHrResponseAddress>.value(EmployeesAnonymizeHrResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            iban: Nullable<String>.value("iban"),
            socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
            socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
            hireDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            terminationDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            applyAllowance: true,
            allowanceOverride: Nullable<String>.value("allowanceOverride"),
            pensionAccumulation: true,
            payrollOptions: [
                "key": "value"
            ],
            status: .active,
            notes: Nullable<String>.value("notes"),
            attributes: Nullable<[EmployeesAnonymizeHrResponseAttributesItem]>.value([
                EmployeesAnonymizeHrResponseAttributesItem(
                    name: "name",
                    value: "value"
                )
            ]),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.employeesAnonymize(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesAnonymize2() async throws -> Void {
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
                  "birthDate": "2023-01-15",
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
                  "hireDate": "2023-01-15",
                  "terminationDate": "2023-01-15",
                  "applyAllowance": true,
                  "allowanceOverride": "allowanceOverride",
                  "pensionAccumulation": true,
                  "payrollOptions": {
                    "payrollOptions": "payrollOptions"
                  },
                  "status": "active",
                  "notes": "notes",
                  "attributes": [
                    {
                      "name": "x",
                      "value": "value"
                    },
                    {
                      "name": "x",
                      "value": "value"
                    }
                  ],
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
        let expectedResponse = EmployeesAnonymizeHrResponse(
            id: "x",
            code: Nullable<String>.value("code"),
            firstName: "firstName",
            lastName: "lastName",
            personalCode: Nullable<String>.value("personalCode"),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            email: Nullable<String>.value("email"),
            phone: Nullable<String>.value("phone"),
            address: Nullable<EmployeesAnonymizeHrResponseAddress>.value(EmployeesAnonymizeHrResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            iban: Nullable<String>.value("iban"),
            socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
            socialInsuranceStart: Nullable<String>.value("socialInsuranceStart"),
            hireDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            terminationDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            applyAllowance: true,
            allowanceOverride: Nullable<String>.value("allowanceOverride"),
            pensionAccumulation: true,
            payrollOptions: [
                "payrollOptions": "payrollOptions"
            ],
            status: .active,
            notes: Nullable<String>.value("notes"),
            attributes: Nullable<[EmployeesAnonymizeHrResponseAttributesItem]>.value([
                EmployeesAnonymizeHrResponseAttributesItem(
                    name: "x",
                    value: "value"
                ),
                EmployeesAnonymizeHrResponseAttributesItem(
                    name: "x",
                    value: "value"
                )
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.employeesAnonymize(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func contractsCreate1() async throws -> Void {
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
                  "agreementId": "agreementId",
                  "contractNo": "contractNo",
                  "type": "permanent",
                  "startDate": "2026-07-01",
                  "endDate": "2026-07-01",
                  "endReason": "endReason",
                  "baseSalary": "baseSalary",
                  "salaryType": "monthly",
                  "workHours": "workHours",
                  "workHoursUnit": "day",
                  "status": "active",
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
        let expectedResponse = ContractsCreateHrResponse(
            id: "id",
            employeeId: "employeeId",
            positionId: Nullable<String>.value("positionId"),
            departmentId: Nullable<String>.value("departmentId"),
            scheduleId: Nullable<String>.value("scheduleId"),
            agreementId: Nullable<String>.value("agreementId"),
            contractNo: "contractNo",
            type: .permanent,
            startDate: CalendarDate("2026-07-01")!,
            endDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            endReason: Nullable<String>.value("endReason"),
            baseSalary: "baseSalary",
            salaryType: .monthly,
            workHours: "workHours",
            workHoursUnit: .day,
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.contractsCreate(
            request: .init(
                employeeId: "employeeId",
                startDate: CalendarDate("2026-07-01")!,
                baseSalary: "121.0000"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func contractsCreate2() async throws -> Void {
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
                  "agreementId": "x",
                  "contractNo": "contractNo",
                  "type": "permanent",
                  "startDate": "2023-01-15",
                  "endDate": "2023-01-15",
                  "endReason": "endReason",
                  "baseSalary": "baseSalary",
                  "salaryType": "monthly",
                  "workHours": "workHours",
                  "workHoursUnit": "day",
                  "status": "active",
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
        let expectedResponse = ContractsCreateHrResponse(
            id: "x",
            employeeId: "x",
            positionId: Nullable<String>.value("x"),
            departmentId: Nullable<String>.value("x"),
            scheduleId: Nullable<String>.value("x"),
            agreementId: Nullable<String>.value("x"),
            contractNo: "contractNo",
            type: .permanent,
            startDate: CalendarDate("2023-01-15")!,
            endDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            endReason: Nullable<String>.value("endReason"),
            baseSalary: "baseSalary",
            salaryType: .monthly,
            workHours: "workHours",
            workHoursUnit: .day,
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.contractsCreate(
            request: .init(
                employeeId: "x",
                startDate: CalendarDate("2023-01-15")!,
                baseSalary: "baseSalary"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func contractsEnd1() async throws -> Void {
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
                  "agreementId": "agreementId",
                  "contractNo": "contractNo",
                  "type": "permanent",
                  "startDate": "2026-07-01",
                  "endDate": "2026-07-01",
                  "endReason": "endReason",
                  "baseSalary": "baseSalary",
                  "salaryType": "monthly",
                  "workHours": "workHours",
                  "workHoursUnit": "day",
                  "status": "active",
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
        let expectedResponse = ContractsEndHrResponse(
            id: "id",
            employeeId: "employeeId",
            positionId: Nullable<String>.value("positionId"),
            departmentId: Nullable<String>.value("departmentId"),
            scheduleId: Nullable<String>.value("scheduleId"),
            agreementId: Nullable<String>.value("agreementId"),
            contractNo: "contractNo",
            type: .permanent,
            startDate: CalendarDate("2026-07-01")!,
            endDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            endReason: Nullable<String>.value("endReason"),
            baseSalary: "baseSalary",
            salaryType: .monthly,
            workHours: "workHours",
            workHoursUnit: .day,
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.contractsEnd(
            request: .init(
                id: "id",
                endDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func contractsEnd2() async throws -> Void {
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
                  "agreementId": "x",
                  "contractNo": "contractNo",
                  "type": "permanent",
                  "startDate": "2023-01-15",
                  "endDate": "2023-01-15",
                  "endReason": "endReason",
                  "baseSalary": "baseSalary",
                  "salaryType": "monthly",
                  "workHours": "workHours",
                  "workHoursUnit": "day",
                  "status": "active",
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
        let expectedResponse = ContractsEndHrResponse(
            id: "x",
            employeeId: "x",
            positionId: Nullable<String>.value("x"),
            departmentId: Nullable<String>.value("x"),
            scheduleId: Nullable<String>.value("x"),
            agreementId: Nullable<String>.value("x"),
            contractNo: "contractNo",
            type: .permanent,
            startDate: CalendarDate("2023-01-15")!,
            endDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            endReason: Nullable<String>.value("endReason"),
            baseSalary: "baseSalary",
            salaryType: .monthly,
            workHours: "workHours",
            workHoursUnit: .day,
            status: .active,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.contractsEnd(
            request: .init(
                id: "x",
                endDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func contractsList1() async throws -> Void {
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
                      "agreementId": "agreementId",
                      "contractNo": "contractNo",
                      "type": "permanent",
                      "startDate": "2026-07-01",
                      "endDate": "2026-07-01",
                      "endReason": "endReason",
                      "baseSalary": "baseSalary",
                      "salaryType": "monthly",
                      "workHours": "workHours",
                      "workHoursUnit": "day",
                      "status": "active",
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
        let expectedResponse = ContractsListHrResponse(
            rows: [
                ContractsListHrResponseRowsItem(
                    id: "id",
                    employeeId: "employeeId",
                    positionId: Nullable<String>.value("positionId"),
                    departmentId: Nullable<String>.value("departmentId"),
                    scheduleId: Nullable<String>.value("scheduleId"),
                    agreementId: Nullable<String>.value("agreementId"),
                    contractNo: "contractNo",
                    type: .permanent,
                    startDate: CalendarDate("2026-07-01")!,
                    endDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    endReason: Nullable<String>.value("endReason"),
                    baseSalary: "baseSalary",
                    salaryType: .monthly,
                    workHours: "workHours",
                    workHoursUnit: .day,
                    status: .active,
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
        let response = try await client.hr.contractsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func contractsList2() async throws -> Void {
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
                      "agreementId": "x",
                      "contractNo": "contractNo",
                      "type": "permanent",
                      "startDate": "2023-01-15",
                      "endDate": "2023-01-15",
                      "endReason": "endReason",
                      "baseSalary": "baseSalary",
                      "salaryType": "monthly",
                      "workHours": "workHours",
                      "workHoursUnit": "day",
                      "status": "active",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "employeeId": "x",
                      "positionId": "x",
                      "departmentId": "x",
                      "scheduleId": "x",
                      "agreementId": "x",
                      "contractNo": "contractNo",
                      "type": "permanent",
                      "startDate": "2023-01-15",
                      "endDate": "2023-01-15",
                      "endReason": "endReason",
                      "baseSalary": "baseSalary",
                      "salaryType": "monthly",
                      "workHours": "workHours",
                      "workHoursUnit": "day",
                      "status": "active",
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
        let expectedResponse = ContractsListHrResponse(
            rows: [
                ContractsListHrResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    positionId: Nullable<String>.value("x"),
                    departmentId: Nullable<String>.value("x"),
                    scheduleId: Nullable<String>.value("x"),
                    agreementId: Nullable<String>.value("x"),
                    contractNo: "contractNo",
                    type: .permanent,
                    startDate: CalendarDate("2023-01-15")!,
                    endDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    endReason: Nullable<String>.value("endReason"),
                    baseSalary: "baseSalary",
                    salaryType: .monthly,
                    workHours: "workHours",
                    workHoursUnit: .day,
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ContractsListHrResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    positionId: Nullable<String>.value("x"),
                    departmentId: Nullable<String>.value("x"),
                    scheduleId: Nullable<String>.value("x"),
                    agreementId: Nullable<String>.value("x"),
                    contractNo: "contractNo",
                    type: .permanent,
                    startDate: CalendarDate("2023-01-15")!,
                    endDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    endReason: Nullable<String>.value("endReason"),
                    baseSalary: "baseSalary",
                    salaryType: .monthly,
                    workHours: "workHours",
                    workHoursUnit: .day,
                    status: .active,
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
        let response = try await client.hr.contractsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func leaveBalancesSet1() async throws -> Void {
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
        let expectedResponse = LeaveBalancesSetHrResponse(
            employeeId: "employeeId",
            year: 1000000,
            entitledDays: "entitledDays",
            usedDays: "usedDays",
            remainingDays: "remainingDays"
        )
        let response = try await client.hr.leaveBalancesSet(
            request: .init(
                employeeId: "employeeId",
                year: 1000000,
                entitledDays: "121.00"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func leaveBalancesSet2() async throws -> Void {
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
        let expectedResponse = LeaveBalancesSetHrResponse(
            employeeId: "x",
            year: 1000000,
            entitledDays: "entitledDays",
            usedDays: "usedDays",
            remainingDays: "remainingDays"
        )
        let response = try await client.hr.leaveBalancesSet(
            request: .init(
                employeeId: "x",
                year: 1000000,
                entitledDays: "entitledDays"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func leaveBalancesList1() async throws -> Void {
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
        let expectedResponse = LeaveBalancesListHrResponse(
            rows: [
                LeaveBalancesListHrResponseRowsItem(
                    employeeId: "employeeId",
                    year: 1000000,
                    entitledDays: "entitledDays",
                    usedDays: "usedDays",
                    remainingDays: "remainingDays"
                )
            ]
        )
        let response = try await client.hr.leaveBalancesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func leaveBalancesList2() async throws -> Void {
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
        let expectedResponse = LeaveBalancesListHrResponse(
            rows: [
                LeaveBalancesListHrResponseRowsItem(
                    employeeId: "x",
                    year: 1000000,
                    entitledDays: "entitledDays",
                    usedDays: "usedDays",
                    remainingDays: "remainingDays"
                ),
                LeaveBalancesListHrResponseRowsItem(
                    employeeId: "x",
                    year: 1000000,
                    entitledDays: "entitledDays",
                    usedDays: "usedDays",
                    remainingDays: "remainingDays"
                )
            ]
        )
        let response = try await client.hr.leaveBalancesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func incapacityCertificatesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "employeeId": "employeeId",
                  "series": "series",
                  "number": "number",
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
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
        let expectedResponse = IncapacityCertificatesCreateHrResponse(
            id: "id",
            employeeId: "employeeId",
            series: Nullable<String>.value("series"),
            number: "number",
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            reason: Nullable<String>.value("reason"),
            notes: Nullable<String>.value("notes")
        )
        let response = try await client.hr.incapacityCertificatesCreate(
            request: .init(
                employeeId: "employeeId",
                number: "number",
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func incapacityCertificatesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "employeeId": "x",
                  "series": "series",
                  "number": "number",
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
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
        let expectedResponse = IncapacityCertificatesCreateHrResponse(
            id: "x",
            employeeId: "x",
            series: Nullable<String>.value("series"),
            number: "number",
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            reason: Nullable<String>.value("reason"),
            notes: Nullable<String>.value("notes")
        )
        let response = try await client.hr.incapacityCertificatesCreate(
            request: .init(
                employeeId: "x",
                number: "x",
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func incapacityCertificatesList1() async throws -> Void {
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
                      "fromDate": "2026-07-01",
                      "toDate": "2026-07-01",
                      "reason": "reason",
                      "notes": "notes"
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
        let expectedResponse = IncapacityCertificatesListHrResponse(
            rows: [
                IncapacityCertificatesListHrResponseRowsItem(
                    id: "id",
                    employeeId: "employeeId",
                    series: Nullable<String>.value("series"),
                    number: "number",
                    fromDate: CalendarDate("2026-07-01")!,
                    toDate: CalendarDate("2026-07-01")!,
                    reason: Nullable<String>.value("reason"),
                    notes: Nullable<String>.value("notes")
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
        let response = try await client.hr.incapacityCertificatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func incapacityCertificatesList2() async throws -> Void {
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
                      "fromDate": "2023-01-15",
                      "toDate": "2023-01-15",
                      "reason": "reason",
                      "notes": "notes"
                    },
                    {
                      "id": "x",
                      "employeeId": "x",
                      "series": "series",
                      "number": "number",
                      "fromDate": "2023-01-15",
                      "toDate": "2023-01-15",
                      "reason": "reason",
                      "notes": "notes"
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
        let expectedResponse = IncapacityCertificatesListHrResponse(
            rows: [
                IncapacityCertificatesListHrResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    series: Nullable<String>.value("series"),
                    number: "number",
                    fromDate: CalendarDate("2023-01-15")!,
                    toDate: CalendarDate("2023-01-15")!,
                    reason: Nullable<String>.value("reason"),
                    notes: Nullable<String>.value("notes")
                ),
                IncapacityCertificatesListHrResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    series: Nullable<String>.value("series"),
                    number: "number",
                    fromDate: CalendarDate("2023-01-15")!,
                    toDate: CalendarDate("2023-01-15")!,
                    reason: Nullable<String>.value("reason"),
                    notes: Nullable<String>.value("notes")
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
        let response = try await client.hr.incapacityCertificatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func perDiemRatesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "countryCode": "countryCode",
                  "dailyAmount": "dailyAmount",
                  "validFrom": "validFrom",
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
        let expectedResponse = PerDiemRatesCreateHrResponse(
            id: "id",
            countryCode: "countryCode",
            dailyAmount: "dailyAmount",
            validFrom: "validFrom",
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.perDiemRatesCreate(
            request: .init(
                countryCode: "countryCode",
                dailyAmount: "121.00",
                validFrom: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func perDiemRatesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "countryCode": "countryCode",
                  "dailyAmount": "dailyAmount",
                  "validFrom": "validFrom",
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
        let expectedResponse = PerDiemRatesCreateHrResponse(
            id: "x",
            countryCode: "countryCode",
            dailyAmount: "dailyAmount",
            validFrom: "validFrom",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.perDiemRatesCreate(
            request: .init(
                countryCode: "xy",
                dailyAmount: "dailyAmount",
                validFrom: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func perDiemRatesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "countryCode": "countryCode",
                      "dailyAmount": "dailyAmount",
                      "validFrom": "validFrom",
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
        let expectedResponse = PerDiemRatesListHrResponse(
            rows: [
                PerDiemRatesListHrResponseRowsItem(
                    id: "id",
                    countryCode: "countryCode",
                    dailyAmount: "dailyAmount",
                    validFrom: "validFrom",
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
        let response = try await client.hr.perDiemRatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func perDiemRatesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "countryCode": "countryCode",
                      "dailyAmount": "dailyAmount",
                      "validFrom": "validFrom",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "countryCode": "countryCode",
                      "dailyAmount": "dailyAmount",
                      "validFrom": "validFrom",
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
        let expectedResponse = PerDiemRatesListHrResponse(
            rows: [
                PerDiemRatesListHrResponseRowsItem(
                    id: "x",
                    countryCode: "countryCode",
                    dailyAmount: "dailyAmount",
                    validFrom: "validFrom",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                PerDiemRatesListHrResponseRowsItem(
                    id: "x",
                    countryCode: "countryCode",
                    dailyAmount: "dailyAmount",
                    validFrom: "validFrom",
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
        let response = try await client.hr.perDiemRatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func perDiemRatesDelete1() async throws -> Void {
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
        let expectedResponse = PerDiemRatesDeleteHrResponse(
            id: "id"
        )
        let response = try await client.hr.perDiemRatesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func perDiemRatesDelete2() async throws -> Void {
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
        let expectedResponse = PerDiemRatesDeleteHrResponse(
            id: "x"
        )
        let response = try await client.hr.perDiemRatesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func businessTripsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "employeeId": "employeeId",
                  "destinationCountryCode": "destinationCountryCode",
                  "purpose": "purpose",
                  "startDate": "2026-07-01",
                  "endDate": "2026-07-01",
                  "days": 1000000,
                  "dailyRate": "dailyRate",
                  "perDiemAmount": "perDiemAmount",
                  "status": "draft",
                  "payrollRunId": "payrollRunId",
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
        let expectedResponse = BusinessTripsCreateHrResponse(
            id: "id",
            employeeId: "employeeId",
            destinationCountryCode: "destinationCountryCode",
            purpose: "purpose",
            startDate: CalendarDate("2026-07-01")!,
            endDate: CalendarDate("2026-07-01")!,
            days: 1000000,
            dailyRate: "dailyRate",
            perDiemAmount: "perDiemAmount",
            status: .draft,
            payrollRunId: Nullable<String>.value("payrollRunId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.businessTripsCreate(
            request: .init(
                employeeId: "employeeId",
                destinationCountryCode: "destinationCountryCode",
                purpose: "purpose",
                startDate: CalendarDate("2026-07-01")!,
                endDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func businessTripsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "employeeId": "x",
                  "destinationCountryCode": "destinationCountryCode",
                  "purpose": "purpose",
                  "startDate": "2023-01-15",
                  "endDate": "2023-01-15",
                  "days": 1000000,
                  "dailyRate": "dailyRate",
                  "perDiemAmount": "perDiemAmount",
                  "status": "draft",
                  "payrollRunId": "x",
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
        let expectedResponse = BusinessTripsCreateHrResponse(
            id: "x",
            employeeId: "x",
            destinationCountryCode: "destinationCountryCode",
            purpose: "purpose",
            startDate: CalendarDate("2023-01-15")!,
            endDate: CalendarDate("2023-01-15")!,
            days: 1000000,
            dailyRate: "dailyRate",
            perDiemAmount: "perDiemAmount",
            status: .draft,
            payrollRunId: Nullable<String>.value("x"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.businessTripsCreate(
            request: .init(
                employeeId: "x",
                destinationCountryCode: "xy",
                purpose: "x",
                startDate: CalendarDate("2023-01-15")!,
                endDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func businessTripsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "employeeId": "employeeId",
                  "destinationCountryCode": "destinationCountryCode",
                  "purpose": "purpose",
                  "startDate": "2026-07-01",
                  "endDate": "2026-07-01",
                  "days": 1000000,
                  "dailyRate": "dailyRate",
                  "perDiemAmount": "perDiemAmount",
                  "status": "draft",
                  "payrollRunId": "payrollRunId",
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
        let expectedResponse = BusinessTripsGetHrResponse(
            id: "id",
            employeeId: "employeeId",
            destinationCountryCode: "destinationCountryCode",
            purpose: "purpose",
            startDate: CalendarDate("2026-07-01")!,
            endDate: CalendarDate("2026-07-01")!,
            days: 1000000,
            dailyRate: "dailyRate",
            perDiemAmount: "perDiemAmount",
            status: .draft,
            payrollRunId: Nullable<String>.value("payrollRunId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.businessTripsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func businessTripsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "employeeId": "x",
                  "destinationCountryCode": "destinationCountryCode",
                  "purpose": "purpose",
                  "startDate": "2023-01-15",
                  "endDate": "2023-01-15",
                  "days": 1000000,
                  "dailyRate": "dailyRate",
                  "perDiemAmount": "perDiemAmount",
                  "status": "draft",
                  "payrollRunId": "x",
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
        let expectedResponse = BusinessTripsGetHrResponse(
            id: "x",
            employeeId: "x",
            destinationCountryCode: "destinationCountryCode",
            purpose: "purpose",
            startDate: CalendarDate("2023-01-15")!,
            endDate: CalendarDate("2023-01-15")!,
            days: 1000000,
            dailyRate: "dailyRate",
            perDiemAmount: "perDiemAmount",
            status: .draft,
            payrollRunId: Nullable<String>.value("x"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.businessTripsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func businessTripsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "employeeId": "employeeId",
                      "destinationCountryCode": "destinationCountryCode",
                      "purpose": "purpose",
                      "startDate": "2026-07-01",
                      "endDate": "2026-07-01",
                      "days": 1000000,
                      "dailyRate": "dailyRate",
                      "perDiemAmount": "perDiemAmount",
                      "status": "draft",
                      "payrollRunId": "payrollRunId",
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
        let expectedResponse = BusinessTripsListHrResponse(
            rows: [
                BusinessTripsListHrResponseRowsItem(
                    id: "id",
                    employeeId: "employeeId",
                    destinationCountryCode: "destinationCountryCode",
                    purpose: "purpose",
                    startDate: CalendarDate("2026-07-01")!,
                    endDate: CalendarDate("2026-07-01")!,
                    days: 1000000,
                    dailyRate: "dailyRate",
                    perDiemAmount: "perDiemAmount",
                    status: .draft,
                    payrollRunId: Nullable<String>.value("payrollRunId"),
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
        let response = try await client.hr.businessTripsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func businessTripsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "employeeId": "x",
                      "destinationCountryCode": "destinationCountryCode",
                      "purpose": "purpose",
                      "startDate": "2023-01-15",
                      "endDate": "2023-01-15",
                      "days": 1000000,
                      "dailyRate": "dailyRate",
                      "perDiemAmount": "perDiemAmount",
                      "status": "draft",
                      "payrollRunId": "x",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "employeeId": "x",
                      "destinationCountryCode": "destinationCountryCode",
                      "purpose": "purpose",
                      "startDate": "2023-01-15",
                      "endDate": "2023-01-15",
                      "days": 1000000,
                      "dailyRate": "dailyRate",
                      "perDiemAmount": "perDiemAmount",
                      "status": "draft",
                      "payrollRunId": "x",
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
        let expectedResponse = BusinessTripsListHrResponse(
            rows: [
                BusinessTripsListHrResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    destinationCountryCode: "destinationCountryCode",
                    purpose: "purpose",
                    startDate: CalendarDate("2023-01-15")!,
                    endDate: CalendarDate("2023-01-15")!,
                    days: 1000000,
                    dailyRate: "dailyRate",
                    perDiemAmount: "perDiemAmount",
                    status: .draft,
                    payrollRunId: Nullable<String>.value("x"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                BusinessTripsListHrResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    destinationCountryCode: "destinationCountryCode",
                    purpose: "purpose",
                    startDate: CalendarDate("2023-01-15")!,
                    endDate: CalendarDate("2023-01-15")!,
                    days: 1000000,
                    dailyRate: "dailyRate",
                    perDiemAmount: "perDiemAmount",
                    status: .draft,
                    payrollRunId: Nullable<String>.value("x"),
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
        let response = try await client.hr.businessTripsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func businessTripsApprove1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "employeeId": "employeeId",
                  "destinationCountryCode": "destinationCountryCode",
                  "purpose": "purpose",
                  "startDate": "2026-07-01",
                  "endDate": "2026-07-01",
                  "days": 1000000,
                  "dailyRate": "dailyRate",
                  "perDiemAmount": "perDiemAmount",
                  "status": "draft",
                  "payrollRunId": "payrollRunId",
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
        let expectedResponse = BusinessTripsApproveHrResponse(
            id: "id",
            employeeId: "employeeId",
            destinationCountryCode: "destinationCountryCode",
            purpose: "purpose",
            startDate: CalendarDate("2026-07-01")!,
            endDate: CalendarDate("2026-07-01")!,
            days: 1000000,
            dailyRate: "dailyRate",
            perDiemAmount: "perDiemAmount",
            status: .draft,
            payrollRunId: Nullable<String>.value("payrollRunId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.businessTripsApprove(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func businessTripsApprove2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "employeeId": "x",
                  "destinationCountryCode": "destinationCountryCode",
                  "purpose": "purpose",
                  "startDate": "2023-01-15",
                  "endDate": "2023-01-15",
                  "days": 1000000,
                  "dailyRate": "dailyRate",
                  "perDiemAmount": "perDiemAmount",
                  "status": "draft",
                  "payrollRunId": "x",
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
        let expectedResponse = BusinessTripsApproveHrResponse(
            id: "x",
            employeeId: "x",
            destinationCountryCode: "destinationCountryCode",
            purpose: "purpose",
            startDate: CalendarDate("2023-01-15")!,
            endDate: CalendarDate("2023-01-15")!,
            days: 1000000,
            dailyRate: "dailyRate",
            perDiemAmount: "perDiemAmount",
            status: .draft,
            payrollRunId: Nullable<String>.value("x"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.businessTripsApprove(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func businessTripsDelete1() async throws -> Void {
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
        let expectedResponse = BusinessTripsDeleteHrResponse(
            id: "id"
        )
        let response = try await client.hr.businessTripsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func businessTripsDelete2() async throws -> Void {
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
        let expectedResponse = BusinessTripsDeleteHrResponse(
            id: "x"
        )
        let response = try await client.hr.businessTripsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesRecordsCreate1() async throws -> Void {
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
                  "issuedAt": "2026-07-01T09:30:00Z",
                  "validUntil": "validUntil",
                  "fileId": "fileId",
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
        let expectedResponse = EmployeesRecordsCreateHrResponse(
            id: "id",
            employeeId: "employeeId",
            type: .education,
            title: "title",
            institution: Nullable<String>.value("institution"),
            issuedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            validUntil: Nullable<String>.value("validUntil"),
            fileId: Nullable<String>.value("fileId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.employeesRecordsCreate(
            request: .init(
                employeeId: "employeeId",
                type: .education,
                title: "title"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesRecordsCreate2() async throws -> Void {
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
                  "issuedAt": "2024-01-15T09:30:00Z",
                  "validUntil": "validUntil",
                  "fileId": "x",
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
        let expectedResponse = EmployeesRecordsCreateHrResponse(
            id: "x",
            employeeId: "x",
            type: .education,
            title: "title",
            institution: Nullable<String>.value("institution"),
            issuedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            validUntil: Nullable<String>.value("validUntil"),
            fileId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.employeesRecordsCreate(
            request: .init(
                employeeId: "x",
                type: .education,
                title: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesRecordsUpdate1() async throws -> Void {
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
                  "issuedAt": "2026-07-01T09:30:00Z",
                  "validUntil": "validUntil",
                  "fileId": "fileId",
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
        let expectedResponse = EmployeesRecordsUpdateHrResponse(
            id: "id",
            employeeId: "employeeId",
            type: .education,
            title: "title",
            institution: Nullable<String>.value("institution"),
            issuedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            validUntil: Nullable<String>.value("validUntil"),
            fileId: Nullable<String>.value("fileId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.employeesRecordsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesRecordsUpdate2() async throws -> Void {
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
                  "issuedAt": "2024-01-15T09:30:00Z",
                  "validUntil": "validUntil",
                  "fileId": "x",
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
        let expectedResponse = EmployeesRecordsUpdateHrResponse(
            id: "x",
            employeeId: "x",
            type: .education,
            title: "title",
            institution: Nullable<String>.value("institution"),
            issuedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            validUntil: Nullable<String>.value("validUntil"),
            fileId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.employeesRecordsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesRecordsDelete1() async throws -> Void {
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
        let expectedResponse = EmployeesRecordsDeleteHrResponse(
            id: "id"
        )
        let response = try await client.hr.employeesRecordsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesRecordsDelete2() async throws -> Void {
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
        let expectedResponse = EmployeesRecordsDeleteHrResponse(
            id: "x"
        )
        let response = try await client.hr.employeesRecordsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesRecordsList1() async throws -> Void {
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
                      "issuedAt": "2026-07-01T09:30:00Z",
                      "validUntil": "validUntil",
                      "fileId": "fileId",
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
        let expectedResponse = EmployeesRecordsListHrResponse(
            rows: [
                EmployeesRecordsListHrResponseRowsItem(
                    id: "id",
                    employeeId: "employeeId",
                    type: .education,
                    title: "title",
                    institution: Nullable<String>.value("institution"),
                    issuedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    validUntil: Nullable<String>.value("validUntil"),
                    fileId: Nullable<String>.value("fileId"),
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
        let response = try await client.hr.employeesRecordsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesRecordsList2() async throws -> Void {
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
                      "issuedAt": "2024-01-15T09:30:00Z",
                      "validUntil": "validUntil",
                      "fileId": "x",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "employeeId": "x",
                      "type": "education",
                      "title": "title",
                      "institution": "institution",
                      "issuedAt": "2024-01-15T09:30:00Z",
                      "validUntil": "validUntil",
                      "fileId": "x",
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
        let expectedResponse = EmployeesRecordsListHrResponse(
            rows: [
                EmployeesRecordsListHrResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    type: .education,
                    title: "title",
                    institution: Nullable<String>.value("institution"),
                    issuedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    validUntil: Nullable<String>.value("validUntil"),
                    fileId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                EmployeesRecordsListHrResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    type: .education,
                    title: "title",
                    institution: Nullable<String>.value("institution"),
                    issuedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    validUntil: Nullable<String>.value("validUntil"),
                    fileId: Nullable<String>.value("x"),
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
        let response = try await client.hr.employeesRecordsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesAttachmentsList1() async throws -> Void {
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
        let expectedResponse = EmployeesAttachmentsListHrResponse(
            rows: [
                EmployeesAttachmentsListHrResponseRowsItem(
                    id: "id",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.hr.employeesAttachmentsList(
            request: .init(employeeId: "employeeId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func employeesAttachmentsList2() async throws -> Void {
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
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
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
        let expectedResponse = EmployeesAttachmentsListHrResponse(
            rows: [
                EmployeesAttachmentsListHrResponseRowsItem(
                    id: "x",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                EmployeesAttachmentsListHrResponseRowsItem(
                    id: "x",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.hr.employeesAttachmentsList(
            request: .init(employeeId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timesheetsGenerate1() async throws -> Void {
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
        let expectedResponse = TimesheetsGenerateHrResponse(
            generated: 1000000
        )
        let response = try await client.hr.timesheetsGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timesheetsGenerate2() async throws -> Void {
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
        let expectedResponse = TimesheetsGenerateHrResponse(
            generated: 1000000
        )
        let response = try await client.hr.timesheetsGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timesheetsUpsert1() async throws -> Void {
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
                      "hours": "121.00",
                      "type": "work"
                    }
                  ],
                  "workedDays": "workedDays",
                  "workedHours": "workedHours",
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
        let expectedResponse = TimesheetsUpsertHrResponse(
            id: "id",
            employeeId: "employeeId",
            employeeName: "employeeName",
            year: 1000000,
            month: 1000000,
            days: [
                TimesheetsUpsertHrResponseDaysItem(
                    day: 1000000,
                    hours: "121.00",
                    type: .work
                )
            ],
            workedDays: "workedDays",
            workedHours: "workedHours",
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.timesheetsUpsert(
            request: .init(
                employeeId: "employeeId",
                year: 1000000,
                month: 1000000,
                days: [
                    TimesheetsUpsertHrRequestDaysItem(
                        day: 1000000,
                        hours: "121.00",
                        type: .work
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timesheetsUpsert2() async throws -> Void {
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
        let expectedResponse = TimesheetsUpsertHrResponse(
            id: "x",
            employeeId: "x",
            employeeName: "employeeName",
            year: 1000000,
            month: 1000000,
            days: [
                TimesheetsUpsertHrResponseDaysItem(
                    day: 1000000,
                    hours: "hours",
                    type: .work
                ),
                TimesheetsUpsertHrResponseDaysItem(
                    day: 1000000,
                    hours: "hours",
                    type: .work
                )
            ],
            workedDays: "workedDays",
            workedHours: "workedHours",
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.timesheetsUpsert(
            request: .init(
                employeeId: "x",
                year: 1000000,
                month: 1000000,
                days: [
                    TimesheetsUpsertHrRequestDaysItem(
                        day: 1000000,
                        hours: "hours",
                        type: .work
                    ),
                    TimesheetsUpsertHrRequestDaysItem(
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

    @Test func timesheetsGet1() async throws -> Void {
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
                      "hours": "121.00",
                      "type": "work"
                    }
                  ],
                  "workedDays": "workedDays",
                  "workedHours": "workedHours",
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
        let expectedResponse = TimesheetsGetHrResponse(
            id: "id",
            employeeId: "employeeId",
            employeeName: "employeeName",
            year: 1000000,
            month: 1000000,
            days: [
                TimesheetsGetHrResponseDaysItem(
                    day: 1000000,
                    hours: "121.00",
                    type: .work
                )
            ],
            workedDays: "workedDays",
            workedHours: "workedHours",
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.timesheetsGet(
            request: .init(
                employeeId: "employeeId",
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timesheetsGet2() async throws -> Void {
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
        let expectedResponse = TimesheetsGetHrResponse(
            id: "x",
            employeeId: "x",
            employeeName: "employeeName",
            year: 1000000,
            month: 1000000,
            days: [
                TimesheetsGetHrResponseDaysItem(
                    day: 1000000,
                    hours: "hours",
                    type: .work
                ),
                TimesheetsGetHrResponseDaysItem(
                    day: 1000000,
                    hours: "hours",
                    type: .work
                )
            ],
            workedDays: "workedDays",
            workedHours: "workedHours",
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.hr.timesheetsGet(
            request: .init(
                employeeId: "x",
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timesheetsList1() async throws -> Void {
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
                          "hours": "121.00",
                          "type": "work"
                        }
                      ],
                      "workedDays": "workedDays",
                      "workedHours": "workedHours",
                      "updatedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = TimesheetsListHrResponse(
            rows: [
                TimesheetsListHrResponseRowsItem(
                    id: "id",
                    employeeId: "employeeId",
                    employeeName: "employeeName",
                    year: 1000000,
                    month: 1000000,
                    days: [
                        TimesheetsListHrResponseRowsItemDaysItem(
                            day: 1000000,
                            hours: "121.00",
                            type: .work
                        )
                    ],
                    workedDays: "workedDays",
                    workedHours: "workedHours",
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.hr.timesheetsList(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timesheetsList2() async throws -> Void {
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
                      "updatedAt": "2024-01-15T09:30:00Z"
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
                      "updatedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = TimesheetsListHrResponse(
            rows: [
                TimesheetsListHrResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    employeeName: "employeeName",
                    year: 1000000,
                    month: 1000000,
                    days: [
                        TimesheetsListHrResponseRowsItemDaysItem(
                            day: 1000000,
                            hours: "hours",
                            type: .work
                        ),
                        TimesheetsListHrResponseRowsItemDaysItem(
                            day: 1000000,
                            hours: "hours",
                            type: .work
                        )
                    ],
                    workedDays: "workedDays",
                    workedHours: "workedHours",
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                TimesheetsListHrResponseRowsItem(
                    id: "x",
                    employeeId: "x",
                    employeeName: "employeeName",
                    year: 1000000,
                    month: 1000000,
                    days: [
                        TimesheetsListHrResponseRowsItemDaysItem(
                            day: 1000000,
                            hours: "hours",
                            type: .work
                        ),
                        TimesheetsListHrResponseRowsItemDaysItem(
                            day: 1000000,
                            hours: "hours",
                            type: .work
                        )
                    ],
                    workedDays: "workedDays",
                    workedHours: "workedHours",
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.hr.timesheetsList(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timesheetsDelete1() async throws -> Void {
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
        let expectedResponse = TimesheetsDeleteHrResponse(
            id: "id"
        )
        let response = try await client.hr.timesheetsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func timesheetsDelete2() async throws -> Void {
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
        let expectedResponse = TimesheetsDeleteHrResponse(
            id: "x"
        )
        let response = try await client.hr.timesheetsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}