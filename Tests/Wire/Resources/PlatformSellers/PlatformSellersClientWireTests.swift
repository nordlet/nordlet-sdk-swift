import Foundation
import Testing
import Api

@Suite("PlatformSellersClient Wire Tests") struct PlatformSellersClientWireTests {
    @Test func list1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "kind": "individual",
                      "name": "name",
                      "partnerId": "partnerId",
                      "firstName": "firstName",
                      "middleName": "middleName",
                      "lastName": "lastName",
                      "entityName": "entityName",
                      "taxResidences": [
                        {
                          "countryCode": "countryCode",
                          "tin": null
                        }
                      ],
                      "vatCode": "vatCode",
                      "businessRegistrationNumber": "businessRegistrationNumber",
                      "address": {
                        "countryCode": "countryCode"
                      },
                      "birthDate": "2026-07-01",
                      "birthCity": "birthCity",
                      "birthCountryCode": "birthCountryCode",
                      "iban": "iban",
                      "accountHolderName": "accountHolderName",
                      "governmentEntity": true,
                      "listedEntity": true,
                      "permanentEstablishments": [
                        "permanentEstablishments"
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
        let expectedResponse = ListPlatformSellersResponse(
            rows: [
                ListPlatformSellersResponseRowsItem(
                    id: "id",
                    kind: .individual,
                    name: "name",
                    partnerId: Nullable<String>.value("partnerId"),
                    firstName: Nullable<String>.value("firstName"),
                    middleName: Nullable<String>.value("middleName"),
                    lastName: Nullable<String>.value("lastName"),
                    entityName: Nullable<String>.value("entityName"),
                    taxResidences: [
                        ListPlatformSellersResponseRowsItemTaxResidencesItem(
                            countryCode: "countryCode",
                            tin: .null
                        )
                    ],
                    vatCode: Nullable<String>.value("vatCode"),
                    businessRegistrationNumber: Nullable<String>.value("businessRegistrationNumber"),
                    address: ListPlatformSellersResponseRowsItemAddress(
                        countryCode: "countryCode"
                    ),
                    birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    birthCity: Nullable<String>.value("birthCity"),
                    birthCountryCode: Nullable<String>.value("birthCountryCode"),
                    iban: Nullable<String>.value("iban"),
                    accountHolderName: Nullable<String>.value("accountHolderName"),
                    governmentEntity: true,
                    listedEntity: true,
                    permanentEstablishments: [
                        "permanentEstablishments"
                    ],
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
        let response = try await client.platformSellers.list(
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
                      "kind": "individual",
                      "name": "name",
                      "partnerId": "partnerId",
                      "firstName": "firstName",
                      "middleName": "middleName",
                      "lastName": "lastName",
                      "entityName": "entityName",
                      "taxResidences": [
                        {
                          "countryCode": "countryCode",
                          "tin": "tin"
                        },
                        {
                          "countryCode": "countryCode",
                          "tin": "tin"
                        }
                      ],
                      "vatCode": "vatCode",
                      "businessRegistrationNumber": "businessRegistrationNumber",
                      "address": {
                        "countryCode": "countryCode",
                        "street": "street",
                        "buildingIdentifier": "buildingIdentifier",
                        "postCode": "postCode",
                        "city": "city",
                        "free": "free"
                      },
                      "birthDate": "2023-01-15",
                      "birthCity": "birthCity",
                      "birthCountryCode": "birthCountryCode",
                      "iban": "iban",
                      "accountHolderName": "accountHolderName",
                      "governmentEntity": true,
                      "listedEntity": true,
                      "permanentEstablishments": [
                        "permanentEstablishments",
                        "permanentEstablishments"
                      ],
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "kind": "individual",
                      "name": "name",
                      "partnerId": "partnerId",
                      "firstName": "firstName",
                      "middleName": "middleName",
                      "lastName": "lastName",
                      "entityName": "entityName",
                      "taxResidences": [
                        {
                          "countryCode": "countryCode",
                          "tin": "tin"
                        },
                        {
                          "countryCode": "countryCode",
                          "tin": "tin"
                        }
                      ],
                      "vatCode": "vatCode",
                      "businessRegistrationNumber": "businessRegistrationNumber",
                      "address": {
                        "countryCode": "countryCode",
                        "street": "street",
                        "buildingIdentifier": "buildingIdentifier",
                        "postCode": "postCode",
                        "city": "city",
                        "free": "free"
                      },
                      "birthDate": "2023-01-15",
                      "birthCity": "birthCity",
                      "birthCountryCode": "birthCountryCode",
                      "iban": "iban",
                      "accountHolderName": "accountHolderName",
                      "governmentEntity": true,
                      "listedEntity": true,
                      "permanentEstablishments": [
                        "permanentEstablishments",
                        "permanentEstablishments"
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
        let expectedResponse = ListPlatformSellersResponse(
            rows: [
                ListPlatformSellersResponseRowsItem(
                    id: "x",
                    kind: .individual,
                    name: "name",
                    partnerId: Nullable<String>.value("partnerId"),
                    firstName: Nullable<String>.value("firstName"),
                    middleName: Nullable<String>.value("middleName"),
                    lastName: Nullable<String>.value("lastName"),
                    entityName: Nullable<String>.value("entityName"),
                    taxResidences: [
                        ListPlatformSellersResponseRowsItemTaxResidencesItem(
                            countryCode: "countryCode",
                            tin: Nullable<String>.value("tin")
                        ),
                        ListPlatformSellersResponseRowsItemTaxResidencesItem(
                            countryCode: "countryCode",
                            tin: Nullable<String>.value("tin")
                        )
                    ],
                    vatCode: Nullable<String>.value("vatCode"),
                    businessRegistrationNumber: Nullable<String>.value("businessRegistrationNumber"),
                    address: ListPlatformSellersResponseRowsItemAddress(
                        countryCode: "countryCode",
                        street: Optional(Nullable<String>.value("street")),
                        buildingIdentifier: Optional(Nullable<String>.value("buildingIdentifier")),
                        postCode: Optional(Nullable<String>.value("postCode")),
                        city: Optional(Nullable<String>.value("city")),
                        free: Optional(Nullable<String>.value("free"))
                    ),
                    birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    birthCity: Nullable<String>.value("birthCity"),
                    birthCountryCode: Nullable<String>.value("birthCountryCode"),
                    iban: Nullable<String>.value("iban"),
                    accountHolderName: Nullable<String>.value("accountHolderName"),
                    governmentEntity: true,
                    listedEntity: true,
                    permanentEstablishments: [
                        "permanentEstablishments",
                        "permanentEstablishments"
                    ],
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ListPlatformSellersResponseRowsItem(
                    id: "x",
                    kind: .individual,
                    name: "name",
                    partnerId: Nullable<String>.value("partnerId"),
                    firstName: Nullable<String>.value("firstName"),
                    middleName: Nullable<String>.value("middleName"),
                    lastName: Nullable<String>.value("lastName"),
                    entityName: Nullable<String>.value("entityName"),
                    taxResidences: [
                        ListPlatformSellersResponseRowsItemTaxResidencesItem(
                            countryCode: "countryCode",
                            tin: Nullable<String>.value("tin")
                        ),
                        ListPlatformSellersResponseRowsItemTaxResidencesItem(
                            countryCode: "countryCode",
                            tin: Nullable<String>.value("tin")
                        )
                    ],
                    vatCode: Nullable<String>.value("vatCode"),
                    businessRegistrationNumber: Nullable<String>.value("businessRegistrationNumber"),
                    address: ListPlatformSellersResponseRowsItemAddress(
                        countryCode: "countryCode",
                        street: Optional(Nullable<String>.value("street")),
                        buildingIdentifier: Optional(Nullable<String>.value("buildingIdentifier")),
                        postCode: Optional(Nullable<String>.value("postCode")),
                        city: Optional(Nullable<String>.value("city")),
                        free: Optional(Nullable<String>.value("free"))
                    ),
                    birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    birthCity: Nullable<String>.value("birthCity"),
                    birthCountryCode: Nullable<String>.value("birthCountryCode"),
                    iban: Nullable<String>.value("iban"),
                    accountHolderName: Nullable<String>.value("accountHolderName"),
                    governmentEntity: true,
                    listedEntity: true,
                    permanentEstablishments: [
                        "permanentEstablishments",
                        "permanentEstablishments"
                    ],
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
        let response = try await client.platformSellers.list(
            request: .init(),
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
                  "kind": "individual",
                  "name": "name",
                  "partnerId": "partnerId",
                  "firstName": "firstName",
                  "middleName": "middleName",
                  "lastName": "lastName",
                  "entityName": "entityName",
                  "taxResidences": [
                    {
                      "countryCode": "countryCode",
                      "tin": "tin"
                    }
                  ],
                  "vatCode": "vatCode",
                  "businessRegistrationNumber": "businessRegistrationNumber",
                  "address": {
                    "countryCode": "countryCode",
                    "street": "street",
                    "buildingIdentifier": "buildingIdentifier",
                    "postCode": "postCode",
                    "city": "city",
                    "free": "free"
                  },
                  "birthDate": "2026-07-01",
                  "birthCity": "birthCity",
                  "birthCountryCode": "birthCountryCode",
                  "iban": "iban",
                  "accountHolderName": "accountHolderName",
                  "governmentEntity": true,
                  "listedEntity": true,
                  "permanentEstablishments": [
                    "permanentEstablishments"
                  ],
                  "createdAt": "2026-07-01T09:30:00Z",
                  "activities": [
                    {
                      "year": 1000000,
                      "activity": "immovable_property",
                      "propertyAddress": {
                        "countryCode": "countryCode"
                      },
                      "landRegistrationNumber": "landRegistrationNumber",
                      "propertyType": "DPI901",
                      "otherPropertyType": "otherPropertyType",
                      "rentedDays": 1000000,
                      "consideration": [
                        "-121.00"
                      ],
                      "fees": [
                        "-121.00"
                      ],
                      "taxes": [
                        "-121.00"
                      ],
                      "numberOfActivities": [
                        1000000
                      ],
                      "id": "id"
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
        let expectedResponse = GetPlatformSellersResponse(
            id: "id",
            kind: .individual,
            name: "name",
            partnerId: Nullable<String>.value("partnerId"),
            firstName: Nullable<String>.value("firstName"),
            middleName: Nullable<String>.value("middleName"),
            lastName: Nullable<String>.value("lastName"),
            entityName: Nullable<String>.value("entityName"),
            taxResidences: [
                GetPlatformSellersResponseTaxResidencesItem(
                    countryCode: "countryCode",
                    tin: Nullable<String>.value("tin")
                )
            ],
            vatCode: Nullable<String>.value("vatCode"),
            businessRegistrationNumber: Nullable<String>.value("businessRegistrationNumber"),
            address: GetPlatformSellersResponseAddress(
                countryCode: "countryCode",
                street: Optional(Nullable<String>.value("street")),
                buildingIdentifier: Optional(Nullable<String>.value("buildingIdentifier")),
                postCode: Optional(Nullable<String>.value("postCode")),
                city: Optional(Nullable<String>.value("city")),
                free: Optional(Nullable<String>.value("free"))
            ),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            birthCity: Nullable<String>.value("birthCity"),
            birthCountryCode: Nullable<String>.value("birthCountryCode"),
            iban: Nullable<String>.value("iban"),
            accountHolderName: Nullable<String>.value("accountHolderName"),
            governmentEntity: true,
            listedEntity: true,
            permanentEstablishments: [
                "permanentEstablishments"
            ],
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            activities: [
                GetPlatformSellersResponseActivitiesItem(
                    year: 1000000,
                    activity: .immovableProperty,
                    propertyAddress: Optional(Nullable<GetPlatformSellersResponseActivitiesItemPropertyAddress>.value(GetPlatformSellersResponseActivitiesItemPropertyAddress(
                        countryCode: "countryCode"
                    ))),
                    landRegistrationNumber: Optional(Nullable<String>.value("landRegistrationNumber")),
                    propertyType: Optional(Nullable<GetPlatformSellersResponseActivitiesItemPropertyType>.value(.dpi901)),
                    otherPropertyType: Optional(Nullable<String>.value("otherPropertyType")),
                    rentedDays: Optional(Nullable<Int64>.value(1000000)),
                    consideration: [
                        "-121.00"
                    ],
                    fees: [
                        "-121.00"
                    ],
                    taxes: [
                        "-121.00"
                    ],
                    numberOfActivities: [
                        1000000
                    ],
                    id: "id"
                )
            ]
        )
        let response = try await client.platformSellers.get(
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
                  "kind": "individual",
                  "name": "name",
                  "partnerId": "partnerId",
                  "firstName": "firstName",
                  "middleName": "middleName",
                  "lastName": "lastName",
                  "entityName": "entityName",
                  "taxResidences": [
                    {
                      "countryCode": "countryCode",
                      "tin": "tin"
                    },
                    {
                      "countryCode": "countryCode",
                      "tin": "tin"
                    }
                  ],
                  "vatCode": "vatCode",
                  "businessRegistrationNumber": "businessRegistrationNumber",
                  "address": {
                    "countryCode": "countryCode",
                    "street": "street",
                    "buildingIdentifier": "buildingIdentifier",
                    "postCode": "postCode",
                    "city": "city",
                    "free": "free"
                  },
                  "birthDate": "2023-01-15",
                  "birthCity": "birthCity",
                  "birthCountryCode": "birthCountryCode",
                  "iban": "iban",
                  "accountHolderName": "accountHolderName",
                  "governmentEntity": true,
                  "listedEntity": true,
                  "permanentEstablishments": [
                    "permanentEstablishments",
                    "permanentEstablishments"
                  ],
                  "createdAt": "2024-01-15T09:30:00Z",
                  "activities": [
                    {
                      "year": 1000000,
                      "activity": "immovable_property",
                      "propertyAddress": {
                        "countryCode": "countryCode",
                        "street": "street",
                        "buildingIdentifier": "buildingIdentifier",
                        "postCode": "postCode",
                        "city": "city",
                        "free": "free"
                      },
                      "landRegistrationNumber": "landRegistrationNumber",
                      "propertyType": "DPI901",
                      "otherPropertyType": "otherPropertyType",
                      "rentedDays": 1000000,
                      "consideration": [
                        "consideration",
                        "consideration"
                      ],
                      "fees": [
                        "fees",
                        "fees"
                      ],
                      "taxes": [
                        "taxes",
                        "taxes"
                      ],
                      "numberOfActivities": [
                        1000000,
                        1000000
                      ],
                      "id": "x"
                    },
                    {
                      "year": 1000000,
                      "activity": "immovable_property",
                      "propertyAddress": {
                        "countryCode": "countryCode",
                        "street": "street",
                        "buildingIdentifier": "buildingIdentifier",
                        "postCode": "postCode",
                        "city": "city",
                        "free": "free"
                      },
                      "landRegistrationNumber": "landRegistrationNumber",
                      "propertyType": "DPI901",
                      "otherPropertyType": "otherPropertyType",
                      "rentedDays": 1000000,
                      "consideration": [
                        "consideration",
                        "consideration"
                      ],
                      "fees": [
                        "fees",
                        "fees"
                      ],
                      "taxes": [
                        "taxes",
                        "taxes"
                      ],
                      "numberOfActivities": [
                        1000000,
                        1000000
                      ],
                      "id": "x"
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
        let expectedResponse = GetPlatformSellersResponse(
            id: "x",
            kind: .individual,
            name: "name",
            partnerId: Nullable<String>.value("partnerId"),
            firstName: Nullable<String>.value("firstName"),
            middleName: Nullable<String>.value("middleName"),
            lastName: Nullable<String>.value("lastName"),
            entityName: Nullable<String>.value("entityName"),
            taxResidences: [
                GetPlatformSellersResponseTaxResidencesItem(
                    countryCode: "countryCode",
                    tin: Nullable<String>.value("tin")
                ),
                GetPlatformSellersResponseTaxResidencesItem(
                    countryCode: "countryCode",
                    tin: Nullable<String>.value("tin")
                )
            ],
            vatCode: Nullable<String>.value("vatCode"),
            businessRegistrationNumber: Nullable<String>.value("businessRegistrationNumber"),
            address: GetPlatformSellersResponseAddress(
                countryCode: "countryCode",
                street: Optional(Nullable<String>.value("street")),
                buildingIdentifier: Optional(Nullable<String>.value("buildingIdentifier")),
                postCode: Optional(Nullable<String>.value("postCode")),
                city: Optional(Nullable<String>.value("city")),
                free: Optional(Nullable<String>.value("free"))
            ),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            birthCity: Nullable<String>.value("birthCity"),
            birthCountryCode: Nullable<String>.value("birthCountryCode"),
            iban: Nullable<String>.value("iban"),
            accountHolderName: Nullable<String>.value("accountHolderName"),
            governmentEntity: true,
            listedEntity: true,
            permanentEstablishments: [
                "permanentEstablishments",
                "permanentEstablishments"
            ],
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            activities: [
                GetPlatformSellersResponseActivitiesItem(
                    year: 1000000,
                    activity: .immovableProperty,
                    propertyAddress: Optional(Nullable<GetPlatformSellersResponseActivitiesItemPropertyAddress>.value(GetPlatformSellersResponseActivitiesItemPropertyAddress(
                        countryCode: "countryCode",
                        street: Optional(Nullable<String>.value("street")),
                        buildingIdentifier: Optional(Nullable<String>.value("buildingIdentifier")),
                        postCode: Optional(Nullable<String>.value("postCode")),
                        city: Optional(Nullable<String>.value("city")),
                        free: Optional(Nullable<String>.value("free"))
                    ))),
                    landRegistrationNumber: Optional(Nullable<String>.value("landRegistrationNumber")),
                    propertyType: Optional(Nullable<GetPlatformSellersResponseActivitiesItemPropertyType>.value(.dpi901)),
                    otherPropertyType: Optional(Nullable<String>.value("otherPropertyType")),
                    rentedDays: Optional(Nullable<Int64>.value(1000000)),
                    consideration: [
                        "consideration",
                        "consideration"
                    ],
                    fees: [
                        "fees",
                        "fees"
                    ],
                    taxes: [
                        "taxes",
                        "taxes"
                    ],
                    numberOfActivities: [
                        1000000,
                        1000000
                    ],
                    id: "x"
                ),
                GetPlatformSellersResponseActivitiesItem(
                    year: 1000000,
                    activity: .immovableProperty,
                    propertyAddress: Optional(Nullable<GetPlatformSellersResponseActivitiesItemPropertyAddress>.value(GetPlatformSellersResponseActivitiesItemPropertyAddress(
                        countryCode: "countryCode",
                        street: Optional(Nullable<String>.value("street")),
                        buildingIdentifier: Optional(Nullable<String>.value("buildingIdentifier")),
                        postCode: Optional(Nullable<String>.value("postCode")),
                        city: Optional(Nullable<String>.value("city")),
                        free: Optional(Nullable<String>.value("free"))
                    ))),
                    landRegistrationNumber: Optional(Nullable<String>.value("landRegistrationNumber")),
                    propertyType: Optional(Nullable<GetPlatformSellersResponseActivitiesItemPropertyType>.value(.dpi901)),
                    otherPropertyType: Optional(Nullable<String>.value("otherPropertyType")),
                    rentedDays: Optional(Nullable<Int64>.value(1000000)),
                    consideration: [
                        "consideration",
                        "consideration"
                    ],
                    fees: [
                        "fees",
                        "fees"
                    ],
                    taxes: [
                        "taxes",
                        "taxes"
                    ],
                    numberOfActivities: [
                        1000000,
                        1000000
                    ],
                    id: "x"
                )
            ]
        )
        let response = try await client.platformSellers.get(
            request: .init(id: "x"),
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
                  "kind": "individual",
                  "name": "name",
                  "partnerId": "partnerId",
                  "firstName": "firstName",
                  "middleName": "middleName",
                  "lastName": "lastName",
                  "entityName": "entityName",
                  "taxResidences": [
                    {
                      "countryCode": "countryCode",
                      "tin": "tin"
                    }
                  ],
                  "vatCode": "vatCode",
                  "businessRegistrationNumber": "businessRegistrationNumber",
                  "address": {
                    "countryCode": "countryCode",
                    "street": "street",
                    "buildingIdentifier": "buildingIdentifier",
                    "postCode": "postCode",
                    "city": "city",
                    "free": "free"
                  },
                  "birthDate": "2026-07-01",
                  "birthCity": "birthCity",
                  "birthCountryCode": "birthCountryCode",
                  "iban": "iban",
                  "accountHolderName": "accountHolderName",
                  "governmentEntity": true,
                  "listedEntity": true,
                  "permanentEstablishments": [
                    "permanentEstablishments"
                  ],
                  "createdAt": "2026-07-01T09:30:00Z",
                  "activities": [
                    {
                      "year": 1000000,
                      "activity": "immovable_property",
                      "propertyAddress": {
                        "countryCode": "countryCode"
                      },
                      "landRegistrationNumber": "landRegistrationNumber",
                      "propertyType": "DPI901",
                      "otherPropertyType": "otherPropertyType",
                      "rentedDays": 1000000,
                      "consideration": [
                        "-121.00"
                      ],
                      "fees": [
                        "-121.00"
                      ],
                      "taxes": [
                        "-121.00"
                      ],
                      "numberOfActivities": [
                        1000000
                      ],
                      "id": "id"
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
        let expectedResponse = CreatePlatformSellersResponse(
            id: "id",
            kind: .individual,
            name: "name",
            partnerId: Nullable<String>.value("partnerId"),
            firstName: Nullable<String>.value("firstName"),
            middleName: Nullable<String>.value("middleName"),
            lastName: Nullable<String>.value("lastName"),
            entityName: Nullable<String>.value("entityName"),
            taxResidences: [
                CreatePlatformSellersResponseTaxResidencesItem(
                    countryCode: "countryCode",
                    tin: Nullable<String>.value("tin")
                )
            ],
            vatCode: Nullable<String>.value("vatCode"),
            businessRegistrationNumber: Nullable<String>.value("businessRegistrationNumber"),
            address: CreatePlatformSellersResponseAddress(
                countryCode: "countryCode",
                street: Optional(Nullable<String>.value("street")),
                buildingIdentifier: Optional(Nullable<String>.value("buildingIdentifier")),
                postCode: Optional(Nullable<String>.value("postCode")),
                city: Optional(Nullable<String>.value("city")),
                free: Optional(Nullable<String>.value("free"))
            ),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            birthCity: Nullable<String>.value("birthCity"),
            birthCountryCode: Nullable<String>.value("birthCountryCode"),
            iban: Nullable<String>.value("iban"),
            accountHolderName: Nullable<String>.value("accountHolderName"),
            governmentEntity: true,
            listedEntity: true,
            permanentEstablishments: [
                "permanentEstablishments"
            ],
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            activities: [
                CreatePlatformSellersResponseActivitiesItem(
                    year: 1000000,
                    activity: .immovableProperty,
                    propertyAddress: Optional(Nullable<CreatePlatformSellersResponseActivitiesItemPropertyAddress>.value(CreatePlatformSellersResponseActivitiesItemPropertyAddress(
                        countryCode: "countryCode"
                    ))),
                    landRegistrationNumber: Optional(Nullable<String>.value("landRegistrationNumber")),
                    propertyType: Optional(Nullable<CreatePlatformSellersResponseActivitiesItemPropertyType>.value(.dpi901)),
                    otherPropertyType: Optional(Nullable<String>.value("otherPropertyType")),
                    rentedDays: Optional(Nullable<Int64>.value(1000000)),
                    consideration: [
                        "-121.00"
                    ],
                    fees: [
                        "-121.00"
                    ],
                    taxes: [
                        "-121.00"
                    ],
                    numberOfActivities: [
                        1000000
                    ],
                    id: "id"
                )
            ]
        )
        let response = try await client.platformSellers.create(
            request: .init(
                kind: .individual,
                address: CreatePlatformSellersRequestAddress(
                    countryCode: "countryCode"
                )
            ),
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
                  "kind": "individual",
                  "name": "name",
                  "partnerId": "partnerId",
                  "firstName": "firstName",
                  "middleName": "middleName",
                  "lastName": "lastName",
                  "entityName": "entityName",
                  "taxResidences": [
                    {
                      "countryCode": "countryCode",
                      "tin": "tin"
                    },
                    {
                      "countryCode": "countryCode",
                      "tin": "tin"
                    }
                  ],
                  "vatCode": "vatCode",
                  "businessRegistrationNumber": "businessRegistrationNumber",
                  "address": {
                    "countryCode": "countryCode",
                    "street": "street",
                    "buildingIdentifier": "buildingIdentifier",
                    "postCode": "postCode",
                    "city": "city",
                    "free": "free"
                  },
                  "birthDate": "2023-01-15",
                  "birthCity": "birthCity",
                  "birthCountryCode": "birthCountryCode",
                  "iban": "iban",
                  "accountHolderName": "accountHolderName",
                  "governmentEntity": true,
                  "listedEntity": true,
                  "permanentEstablishments": [
                    "permanentEstablishments",
                    "permanentEstablishments"
                  ],
                  "createdAt": "2024-01-15T09:30:00Z",
                  "activities": [
                    {
                      "year": 1000000,
                      "activity": "immovable_property",
                      "propertyAddress": {
                        "countryCode": "countryCode",
                        "street": "street",
                        "buildingIdentifier": "buildingIdentifier",
                        "postCode": "postCode",
                        "city": "city",
                        "free": "free"
                      },
                      "landRegistrationNumber": "landRegistrationNumber",
                      "propertyType": "DPI901",
                      "otherPropertyType": "otherPropertyType",
                      "rentedDays": 1000000,
                      "consideration": [
                        "consideration",
                        "consideration"
                      ],
                      "fees": [
                        "fees",
                        "fees"
                      ],
                      "taxes": [
                        "taxes",
                        "taxes"
                      ],
                      "numberOfActivities": [
                        1000000,
                        1000000
                      ],
                      "id": "x"
                    },
                    {
                      "year": 1000000,
                      "activity": "immovable_property",
                      "propertyAddress": {
                        "countryCode": "countryCode",
                        "street": "street",
                        "buildingIdentifier": "buildingIdentifier",
                        "postCode": "postCode",
                        "city": "city",
                        "free": "free"
                      },
                      "landRegistrationNumber": "landRegistrationNumber",
                      "propertyType": "DPI901",
                      "otherPropertyType": "otherPropertyType",
                      "rentedDays": 1000000,
                      "consideration": [
                        "consideration",
                        "consideration"
                      ],
                      "fees": [
                        "fees",
                        "fees"
                      ],
                      "taxes": [
                        "taxes",
                        "taxes"
                      ],
                      "numberOfActivities": [
                        1000000,
                        1000000
                      ],
                      "id": "x"
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
        let expectedResponse = CreatePlatformSellersResponse(
            id: "x",
            kind: .individual,
            name: "name",
            partnerId: Nullable<String>.value("partnerId"),
            firstName: Nullable<String>.value("firstName"),
            middleName: Nullable<String>.value("middleName"),
            lastName: Nullable<String>.value("lastName"),
            entityName: Nullable<String>.value("entityName"),
            taxResidences: [
                CreatePlatformSellersResponseTaxResidencesItem(
                    countryCode: "countryCode",
                    tin: Nullable<String>.value("tin")
                ),
                CreatePlatformSellersResponseTaxResidencesItem(
                    countryCode: "countryCode",
                    tin: Nullable<String>.value("tin")
                )
            ],
            vatCode: Nullable<String>.value("vatCode"),
            businessRegistrationNumber: Nullable<String>.value("businessRegistrationNumber"),
            address: CreatePlatformSellersResponseAddress(
                countryCode: "countryCode",
                street: Optional(Nullable<String>.value("street")),
                buildingIdentifier: Optional(Nullable<String>.value("buildingIdentifier")),
                postCode: Optional(Nullable<String>.value("postCode")),
                city: Optional(Nullable<String>.value("city")),
                free: Optional(Nullable<String>.value("free"))
            ),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            birthCity: Nullable<String>.value("birthCity"),
            birthCountryCode: Nullable<String>.value("birthCountryCode"),
            iban: Nullable<String>.value("iban"),
            accountHolderName: Nullable<String>.value("accountHolderName"),
            governmentEntity: true,
            listedEntity: true,
            permanentEstablishments: [
                "permanentEstablishments",
                "permanentEstablishments"
            ],
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            activities: [
                CreatePlatformSellersResponseActivitiesItem(
                    year: 1000000,
                    activity: .immovableProperty,
                    propertyAddress: Optional(Nullable<CreatePlatformSellersResponseActivitiesItemPropertyAddress>.value(CreatePlatformSellersResponseActivitiesItemPropertyAddress(
                        countryCode: "countryCode",
                        street: Optional(Nullable<String>.value("street")),
                        buildingIdentifier: Optional(Nullable<String>.value("buildingIdentifier")),
                        postCode: Optional(Nullable<String>.value("postCode")),
                        city: Optional(Nullable<String>.value("city")),
                        free: Optional(Nullable<String>.value("free"))
                    ))),
                    landRegistrationNumber: Optional(Nullable<String>.value("landRegistrationNumber")),
                    propertyType: Optional(Nullable<CreatePlatformSellersResponseActivitiesItemPropertyType>.value(.dpi901)),
                    otherPropertyType: Optional(Nullable<String>.value("otherPropertyType")),
                    rentedDays: Optional(Nullable<Int64>.value(1000000)),
                    consideration: [
                        "consideration",
                        "consideration"
                    ],
                    fees: [
                        "fees",
                        "fees"
                    ],
                    taxes: [
                        "taxes",
                        "taxes"
                    ],
                    numberOfActivities: [
                        1000000,
                        1000000
                    ],
                    id: "x"
                ),
                CreatePlatformSellersResponseActivitiesItem(
                    year: 1000000,
                    activity: .immovableProperty,
                    propertyAddress: Optional(Nullable<CreatePlatformSellersResponseActivitiesItemPropertyAddress>.value(CreatePlatformSellersResponseActivitiesItemPropertyAddress(
                        countryCode: "countryCode",
                        street: Optional(Nullable<String>.value("street")),
                        buildingIdentifier: Optional(Nullable<String>.value("buildingIdentifier")),
                        postCode: Optional(Nullable<String>.value("postCode")),
                        city: Optional(Nullable<String>.value("city")),
                        free: Optional(Nullable<String>.value("free"))
                    ))),
                    landRegistrationNumber: Optional(Nullable<String>.value("landRegistrationNumber")),
                    propertyType: Optional(Nullable<CreatePlatformSellersResponseActivitiesItemPropertyType>.value(.dpi901)),
                    otherPropertyType: Optional(Nullable<String>.value("otherPropertyType")),
                    rentedDays: Optional(Nullable<Int64>.value(1000000)),
                    consideration: [
                        "consideration",
                        "consideration"
                    ],
                    fees: [
                        "fees",
                        "fees"
                    ],
                    taxes: [
                        "taxes",
                        "taxes"
                    ],
                    numberOfActivities: [
                        1000000,
                        1000000
                    ],
                    id: "x"
                )
            ]
        )
        let response = try await client.platformSellers.create(
            request: .init(
                kind: .individual,
                address: CreatePlatformSellersRequestAddress(
                    countryCode: "countryCode"
                )
            ),
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
                  "kind": "individual",
                  "name": "name",
                  "partnerId": "partnerId",
                  "firstName": "firstName",
                  "middleName": "middleName",
                  "lastName": "lastName",
                  "entityName": "entityName",
                  "taxResidences": [
                    {
                      "countryCode": "countryCode",
                      "tin": "tin"
                    }
                  ],
                  "vatCode": "vatCode",
                  "businessRegistrationNumber": "businessRegistrationNumber",
                  "address": {
                    "countryCode": "countryCode",
                    "street": "street",
                    "buildingIdentifier": "buildingIdentifier",
                    "postCode": "postCode",
                    "city": "city",
                    "free": "free"
                  },
                  "birthDate": "2026-07-01",
                  "birthCity": "birthCity",
                  "birthCountryCode": "birthCountryCode",
                  "iban": "iban",
                  "accountHolderName": "accountHolderName",
                  "governmentEntity": true,
                  "listedEntity": true,
                  "permanentEstablishments": [
                    "permanentEstablishments"
                  ],
                  "createdAt": "2026-07-01T09:30:00Z",
                  "activities": [
                    {
                      "year": 1000000,
                      "activity": "immovable_property",
                      "propertyAddress": {
                        "countryCode": "countryCode"
                      },
                      "landRegistrationNumber": "landRegistrationNumber",
                      "propertyType": "DPI901",
                      "otherPropertyType": "otherPropertyType",
                      "rentedDays": 1000000,
                      "consideration": [
                        "-121.00"
                      ],
                      "fees": [
                        "-121.00"
                      ],
                      "taxes": [
                        "-121.00"
                      ],
                      "numberOfActivities": [
                        1000000
                      ],
                      "id": "id"
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
        let expectedResponse = UpdatePlatformSellersResponse(
            id: "id",
            kind: .individual,
            name: "name",
            partnerId: Nullable<String>.value("partnerId"),
            firstName: Nullable<String>.value("firstName"),
            middleName: Nullable<String>.value("middleName"),
            lastName: Nullable<String>.value("lastName"),
            entityName: Nullable<String>.value("entityName"),
            taxResidences: [
                UpdatePlatformSellersResponseTaxResidencesItem(
                    countryCode: "countryCode",
                    tin: Nullable<String>.value("tin")
                )
            ],
            vatCode: Nullable<String>.value("vatCode"),
            businessRegistrationNumber: Nullable<String>.value("businessRegistrationNumber"),
            address: UpdatePlatformSellersResponseAddress(
                countryCode: "countryCode",
                street: Optional(Nullable<String>.value("street")),
                buildingIdentifier: Optional(Nullable<String>.value("buildingIdentifier")),
                postCode: Optional(Nullable<String>.value("postCode")),
                city: Optional(Nullable<String>.value("city")),
                free: Optional(Nullable<String>.value("free"))
            ),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            birthCity: Nullable<String>.value("birthCity"),
            birthCountryCode: Nullable<String>.value("birthCountryCode"),
            iban: Nullable<String>.value("iban"),
            accountHolderName: Nullable<String>.value("accountHolderName"),
            governmentEntity: true,
            listedEntity: true,
            permanentEstablishments: [
                "permanentEstablishments"
            ],
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            activities: [
                UpdatePlatformSellersResponseActivitiesItem(
                    year: 1000000,
                    activity: .immovableProperty,
                    propertyAddress: Optional(Nullable<UpdatePlatformSellersResponseActivitiesItemPropertyAddress>.value(UpdatePlatformSellersResponseActivitiesItemPropertyAddress(
                        countryCode: "countryCode"
                    ))),
                    landRegistrationNumber: Optional(Nullable<String>.value("landRegistrationNumber")),
                    propertyType: Optional(Nullable<UpdatePlatformSellersResponseActivitiesItemPropertyType>.value(.dpi901)),
                    otherPropertyType: Optional(Nullable<String>.value("otherPropertyType")),
                    rentedDays: Optional(Nullable<Int64>.value(1000000)),
                    consideration: [
                        "-121.00"
                    ],
                    fees: [
                        "-121.00"
                    ],
                    taxes: [
                        "-121.00"
                    ],
                    numberOfActivities: [
                        1000000
                    ],
                    id: "id"
                )
            ]
        )
        let response = try await client.platformSellers.update(
            request: .init(
                id: "id",
                kind: .individual,
                address: UpdatePlatformSellersRequestAddress(
                    countryCode: "countryCode"
                )
            ),
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
                  "kind": "individual",
                  "name": "name",
                  "partnerId": "partnerId",
                  "firstName": "firstName",
                  "middleName": "middleName",
                  "lastName": "lastName",
                  "entityName": "entityName",
                  "taxResidences": [
                    {
                      "countryCode": "countryCode",
                      "tin": "tin"
                    },
                    {
                      "countryCode": "countryCode",
                      "tin": "tin"
                    }
                  ],
                  "vatCode": "vatCode",
                  "businessRegistrationNumber": "businessRegistrationNumber",
                  "address": {
                    "countryCode": "countryCode",
                    "street": "street",
                    "buildingIdentifier": "buildingIdentifier",
                    "postCode": "postCode",
                    "city": "city",
                    "free": "free"
                  },
                  "birthDate": "2023-01-15",
                  "birthCity": "birthCity",
                  "birthCountryCode": "birthCountryCode",
                  "iban": "iban",
                  "accountHolderName": "accountHolderName",
                  "governmentEntity": true,
                  "listedEntity": true,
                  "permanentEstablishments": [
                    "permanentEstablishments",
                    "permanentEstablishments"
                  ],
                  "createdAt": "2024-01-15T09:30:00Z",
                  "activities": [
                    {
                      "year": 1000000,
                      "activity": "immovable_property",
                      "propertyAddress": {
                        "countryCode": "countryCode",
                        "street": "street",
                        "buildingIdentifier": "buildingIdentifier",
                        "postCode": "postCode",
                        "city": "city",
                        "free": "free"
                      },
                      "landRegistrationNumber": "landRegistrationNumber",
                      "propertyType": "DPI901",
                      "otherPropertyType": "otherPropertyType",
                      "rentedDays": 1000000,
                      "consideration": [
                        "consideration",
                        "consideration"
                      ],
                      "fees": [
                        "fees",
                        "fees"
                      ],
                      "taxes": [
                        "taxes",
                        "taxes"
                      ],
                      "numberOfActivities": [
                        1000000,
                        1000000
                      ],
                      "id": "x"
                    },
                    {
                      "year": 1000000,
                      "activity": "immovable_property",
                      "propertyAddress": {
                        "countryCode": "countryCode",
                        "street": "street",
                        "buildingIdentifier": "buildingIdentifier",
                        "postCode": "postCode",
                        "city": "city",
                        "free": "free"
                      },
                      "landRegistrationNumber": "landRegistrationNumber",
                      "propertyType": "DPI901",
                      "otherPropertyType": "otherPropertyType",
                      "rentedDays": 1000000,
                      "consideration": [
                        "consideration",
                        "consideration"
                      ],
                      "fees": [
                        "fees",
                        "fees"
                      ],
                      "taxes": [
                        "taxes",
                        "taxes"
                      ],
                      "numberOfActivities": [
                        1000000,
                        1000000
                      ],
                      "id": "x"
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
        let expectedResponse = UpdatePlatformSellersResponse(
            id: "x",
            kind: .individual,
            name: "name",
            partnerId: Nullable<String>.value("partnerId"),
            firstName: Nullable<String>.value("firstName"),
            middleName: Nullable<String>.value("middleName"),
            lastName: Nullable<String>.value("lastName"),
            entityName: Nullable<String>.value("entityName"),
            taxResidences: [
                UpdatePlatformSellersResponseTaxResidencesItem(
                    countryCode: "countryCode",
                    tin: Nullable<String>.value("tin")
                ),
                UpdatePlatformSellersResponseTaxResidencesItem(
                    countryCode: "countryCode",
                    tin: Nullable<String>.value("tin")
                )
            ],
            vatCode: Nullable<String>.value("vatCode"),
            businessRegistrationNumber: Nullable<String>.value("businessRegistrationNumber"),
            address: UpdatePlatformSellersResponseAddress(
                countryCode: "countryCode",
                street: Optional(Nullable<String>.value("street")),
                buildingIdentifier: Optional(Nullable<String>.value("buildingIdentifier")),
                postCode: Optional(Nullable<String>.value("postCode")),
                city: Optional(Nullable<String>.value("city")),
                free: Optional(Nullable<String>.value("free"))
            ),
            birthDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            birthCity: Nullable<String>.value("birthCity"),
            birthCountryCode: Nullable<String>.value("birthCountryCode"),
            iban: Nullable<String>.value("iban"),
            accountHolderName: Nullable<String>.value("accountHolderName"),
            governmentEntity: true,
            listedEntity: true,
            permanentEstablishments: [
                "permanentEstablishments",
                "permanentEstablishments"
            ],
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            activities: [
                UpdatePlatformSellersResponseActivitiesItem(
                    year: 1000000,
                    activity: .immovableProperty,
                    propertyAddress: Optional(Nullable<UpdatePlatformSellersResponseActivitiesItemPropertyAddress>.value(UpdatePlatformSellersResponseActivitiesItemPropertyAddress(
                        countryCode: "countryCode",
                        street: Optional(Nullable<String>.value("street")),
                        buildingIdentifier: Optional(Nullable<String>.value("buildingIdentifier")),
                        postCode: Optional(Nullable<String>.value("postCode")),
                        city: Optional(Nullable<String>.value("city")),
                        free: Optional(Nullable<String>.value("free"))
                    ))),
                    landRegistrationNumber: Optional(Nullable<String>.value("landRegistrationNumber")),
                    propertyType: Optional(Nullable<UpdatePlatformSellersResponseActivitiesItemPropertyType>.value(.dpi901)),
                    otherPropertyType: Optional(Nullable<String>.value("otherPropertyType")),
                    rentedDays: Optional(Nullable<Int64>.value(1000000)),
                    consideration: [
                        "consideration",
                        "consideration"
                    ],
                    fees: [
                        "fees",
                        "fees"
                    ],
                    taxes: [
                        "taxes",
                        "taxes"
                    ],
                    numberOfActivities: [
                        1000000,
                        1000000
                    ],
                    id: "x"
                ),
                UpdatePlatformSellersResponseActivitiesItem(
                    year: 1000000,
                    activity: .immovableProperty,
                    propertyAddress: Optional(Nullable<UpdatePlatformSellersResponseActivitiesItemPropertyAddress>.value(UpdatePlatformSellersResponseActivitiesItemPropertyAddress(
                        countryCode: "countryCode",
                        street: Optional(Nullable<String>.value("street")),
                        buildingIdentifier: Optional(Nullable<String>.value("buildingIdentifier")),
                        postCode: Optional(Nullable<String>.value("postCode")),
                        city: Optional(Nullable<String>.value("city")),
                        free: Optional(Nullable<String>.value("free"))
                    ))),
                    landRegistrationNumber: Optional(Nullable<String>.value("landRegistrationNumber")),
                    propertyType: Optional(Nullable<UpdatePlatformSellersResponseActivitiesItemPropertyType>.value(.dpi901)),
                    otherPropertyType: Optional(Nullable<String>.value("otherPropertyType")),
                    rentedDays: Optional(Nullable<Int64>.value(1000000)),
                    consideration: [
                        "consideration",
                        "consideration"
                    ],
                    fees: [
                        "fees",
                        "fees"
                    ],
                    taxes: [
                        "taxes",
                        "taxes"
                    ],
                    numberOfActivities: [
                        1000000,
                        1000000
                    ],
                    id: "x"
                )
            ]
        )
        let response = try await client.platformSellers.update(
            request: .init(
                id: "x",
                kind: .individual,
                address: UpdatePlatformSellersRequestAddress(
                    countryCode: "countryCode"
                )
            ),
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
                  "id": "id",
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
        let expectedResponse = DeletePlatformSellersResponse(
            id: "id",
            deleted: true
        )
        let response = try await client.platformSellers.delete(
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
                  "id": "x",
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
        let expectedResponse = DeletePlatformSellersResponse(
            id: "x",
            deleted: true
        )
        let response = try await client.platformSellers.delete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}