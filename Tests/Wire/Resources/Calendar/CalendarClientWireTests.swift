import Foundation
import Testing
import Api

@Suite("CalendarClient Wire Tests") struct CalendarClientWireTests {
    @Test func list1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "key": "key",
                      "id": "id",
                      "kind": "custom",
                      "ruleKey": "ruleKey",
                      "period": "period",
                      "title": "title",
                      "dueDate": "2026-07-01",
                      "notes": "notes",
                      "done": true,
                      "href": "href",
                      "submission": {
                        "id": "id",
                        "obligation": "obligation",
                        "periodYear": 1000000,
                        "periodMonth": null,
                        "variant": null,
                        "status": "generated",
                        "fileName": "fileName",
                        "fileId": null,
                        "externalRef": null,
                        "message": null,
                        "ruleKey": null,
                        "period": null,
                        "documentKey": null,
                        "amendment": 1000000,
                        "origin": "origin",
                        "transportSystem": null,
                        "environment": null,
                        "submittedAt": "2026-07-01T09:30:00Z",
                        "acceptedAt": "2026-07-01T09:30:00Z",
                        "rejectedAt": "2026-07-01T09:30:00Z",
                        "checkedAt": "2026-07-01T09:30:00Z",
                        "nextCheckAt": "2026-07-01T09:30:00Z",
                        "attempts": 1000000,
                        "deliveryError": null,
                        "sentSha256": null,
                        "certificateFingerprint": null,
                        "submittedByActorType": null,
                        "submittedByActorId": null,
                        "createdAt": "2026-07-01T09:30:00Z",
                        "updatedAt": "2026-07-01T09:30:00Z"
                      },
                      "submissions": [
                        {
                          "id": "id",
                          "obligation": "obligation",
                          "periodYear": 1000000,
                          "periodMonth": null,
                          "variant": null,
                          "status": "generated",
                          "fileName": "fileName",
                          "fileId": null,
                          "externalRef": null,
                          "message": null,
                          "ruleKey": null,
                          "period": null,
                          "documentKey": null,
                          "amendment": 1000000,
                          "origin": "origin",
                          "transportSystem": null,
                          "environment": null,
                          "submittedAt": "2026-07-01T09:30:00Z",
                          "acceptedAt": "2026-07-01T09:30:00Z",
                          "rejectedAt": "2026-07-01T09:30:00Z",
                          "checkedAt": "2026-07-01T09:30:00Z",
                          "nextCheckAt": "2026-07-01T09:30:00Z",
                          "attempts": 1000000,
                          "deliveryError": null,
                          "sentSha256": null,
                          "certificateFingerprint": null,
                          "submittedByActorType": null,
                          "submittedByActorId": null,
                          "createdAt": "2026-07-01T09:30:00Z",
                          "updatedAt": "2026-07-01T09:30:00Z"
                        }
                      ],
                      "canSubmit": true,
                      "canAmend": true,
                      "canDownload": true,
                      "automated": true
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
        let expectedResponse = ListCalendarResponse(
            rows: [
                ListCalendarResponseRowsItem(
                    key: "key",
                    id: Nullable<String>.value("id"),
                    kind: .custom,
                    ruleKey: Nullable<String>.value("ruleKey"),
                    period: Nullable<String>.value("period"),
                    title: "title",
                    dueDate: CalendarDate("2026-07-01")!,
                    notes: Nullable<String>.value("notes"),
                    done: true,
                    href: Nullable<String>.value("href"),
                    submission: Nullable<ListCalendarResponseRowsItemSubmission>.value(ListCalendarResponseRowsItemSubmission(
                        id: "id",
                        obligation: "obligation",
                        periodYear: 1000000,
                        periodMonth: .null,
                        variant: .null,
                        status: .generated,
                        fileName: "fileName",
                        fileId: .null,
                        externalRef: .null,
                        message: .null,
                        ruleKey: .null,
                        period: .null,
                        documentKey: .null,
                        amendment: 1000000,
                        origin: "origin",
                        transportSystem: .null,
                        environment: .null,
                        submittedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                        acceptedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                        rejectedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                        checkedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                        nextCheckAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                        attempts: 1000000,
                        deliveryError: .null,
                        sentSha256: .null,
                        certificateFingerprint: .null,
                        submittedByActorType: .null,
                        submittedByActorId: .null,
                        createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                        updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                    )),
                    submissions: [
                        ListCalendarResponseRowsItemSubmissionsItem(
                            id: "id",
                            obligation: "obligation",
                            periodYear: 1000000,
                            periodMonth: .null,
                            variant: .null,
                            status: .generated,
                            fileName: "fileName",
                            fileId: .null,
                            externalRef: .null,
                            message: .null,
                            ruleKey: .null,
                            period: .null,
                            documentKey: .null,
                            amendment: 1000000,
                            origin: "origin",
                            transportSystem: .null,
                            environment: .null,
                            submittedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                            acceptedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                            rejectedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                            checkedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                            nextCheckAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                            attempts: 1000000,
                            deliveryError: .null,
                            sentSha256: .null,
                            certificateFingerprint: .null,
                            submittedByActorType: .null,
                            submittedByActorId: .null,
                            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                        )
                    ],
                    canSubmit: true,
                    canAmend: true,
                    canDownload: true,
                    automated: true
                )
            ]
        )
        let response = try await client.calendar.list(
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
                      "key": "x",
                      "id": "x",
                      "kind": "custom",
                      "ruleKey": "ruleKey",
                      "period": "period",
                      "title": "title",
                      "dueDate": "2023-01-15",
                      "notes": "notes",
                      "done": true,
                      "href": "href",
                      "submission": {
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
                      "submissions": [
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
                      "canSubmit": true,
                      "canAmend": true,
                      "canDownload": true,
                      "automated": true
                    },
                    {
                      "key": "x",
                      "id": "x",
                      "kind": "custom",
                      "ruleKey": "ruleKey",
                      "period": "period",
                      "title": "title",
                      "dueDate": "2023-01-15",
                      "notes": "notes",
                      "done": true,
                      "href": "href",
                      "submission": {
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
                      "submissions": [
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
                      "canSubmit": true,
                      "canAmend": true,
                      "canDownload": true,
                      "automated": true
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
        let expectedResponse = ListCalendarResponse(
            rows: [
                ListCalendarResponseRowsItem(
                    key: "x",
                    id: Nullable<String>.value("x"),
                    kind: .custom,
                    ruleKey: Nullable<String>.value("ruleKey"),
                    period: Nullable<String>.value("period"),
                    title: "title",
                    dueDate: CalendarDate("2023-01-15")!,
                    notes: Nullable<String>.value("notes"),
                    done: true,
                    href: Nullable<String>.value("href"),
                    submission: Nullable<ListCalendarResponseRowsItemSubmission>.value(ListCalendarResponseRowsItemSubmission(
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
                        environment: Nullable<ListCalendarResponseRowsItemSubmissionEnvironment>.value(.test),
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
                    )),
                    submissions: [
                        ListCalendarResponseRowsItemSubmissionsItem(
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
                            environment: Nullable<ListCalendarResponseRowsItemSubmissionsItemEnvironment>.value(.test),
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
                        ListCalendarResponseRowsItemSubmissionsItem(
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
                            environment: Nullable<ListCalendarResponseRowsItemSubmissionsItemEnvironment>.value(.test),
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
                    canSubmit: true,
                    canAmend: true,
                    canDownload: true,
                    automated: true
                ),
                ListCalendarResponseRowsItem(
                    key: "x",
                    id: Nullable<String>.value("x"),
                    kind: .custom,
                    ruleKey: Nullable<String>.value("ruleKey"),
                    period: Nullable<String>.value("period"),
                    title: "title",
                    dueDate: CalendarDate("2023-01-15")!,
                    notes: Nullable<String>.value("notes"),
                    done: true,
                    href: Nullable<String>.value("href"),
                    submission: Nullable<ListCalendarResponseRowsItemSubmission>.value(ListCalendarResponseRowsItemSubmission(
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
                        environment: Nullable<ListCalendarResponseRowsItemSubmissionEnvironment>.value(.test),
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
                    )),
                    submissions: [
                        ListCalendarResponseRowsItemSubmissionsItem(
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
                            environment: Nullable<ListCalendarResponseRowsItemSubmissionsItemEnvironment>.value(.test),
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
                        ListCalendarResponseRowsItemSubmissionsItem(
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
                            environment: Nullable<ListCalendarResponseRowsItemSubmissionsItemEnvironment>.value(.test),
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
                    canSubmit: true,
                    canAmend: true,
                    canDownload: true,
                    automated: true
                )
            ]
        )
        let response = try await client.calendar.list(
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
                  "key": "key",
                  "id": "id",
                  "kind": "custom",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "title": "title",
                  "dueDate": "2026-07-01",
                  "notes": "notes",
                  "done": true,
                  "href": "href",
                  "submission": {
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
                  },
                  "submissions": [
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
                  "canSubmit": true,
                  "canAmend": true,
                  "canDownload": true,
                  "automated": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GetCalendarResponse(
            key: "key",
            id: Nullable<String>.value("id"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: CalendarDate("2026-07-01")!,
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href"),
            submission: Nullable<GetCalendarResponseSubmission>.value(GetCalendarResponseSubmission(
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
                environment: Nullable<GetCalendarResponseSubmissionEnvironment>.value(.test),
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
            )),
            submissions: [
                GetCalendarResponseSubmissionsItem(
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
                    environment: Nullable<GetCalendarResponseSubmissionsItemEnvironment>.value(.test),
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
            canSubmit: true,
            canAmend: true,
            canDownload: true,
            automated: true
        )
        let response = try await client.calendar.get(
            request: .init(key: "key"),
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
                  "key": "x",
                  "id": "x",
                  "kind": "custom",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "title": "title",
                  "dueDate": "2023-01-15",
                  "notes": "notes",
                  "done": true,
                  "href": "href",
                  "submission": {
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
                  "submissions": [
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
                  "canSubmit": true,
                  "canAmend": true,
                  "canDownload": true,
                  "automated": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = GetCalendarResponse(
            key: "x",
            id: Nullable<String>.value("x"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: CalendarDate("2023-01-15")!,
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href"),
            submission: Nullable<GetCalendarResponseSubmission>.value(GetCalendarResponseSubmission(
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
                environment: Nullable<GetCalendarResponseSubmissionEnvironment>.value(.test),
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
            )),
            submissions: [
                GetCalendarResponseSubmissionsItem(
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
                    environment: Nullable<GetCalendarResponseSubmissionsItemEnvironment>.value(.test),
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
                GetCalendarResponseSubmissionsItem(
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
                    environment: Nullable<GetCalendarResponseSubmissionsItemEnvironment>.value(.test),
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
            canSubmit: true,
            canAmend: true,
            canDownload: true,
            automated: true
        )
        let response = try await client.calendar.get(
            request: .init(key: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func submit1() async throws -> Void {
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
        let expectedResponse = SubmitCalendarResponse(
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
            environment: Nullable<SubmitCalendarResponseEnvironment>.value(.test),
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
        let response = try await client.calendar.submit(
            request: .init(key: "key"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func submit2() async throws -> Void {
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
        let expectedResponse = SubmitCalendarResponse(
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
            environment: Nullable<SubmitCalendarResponseEnvironment>.value(.test),
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
        let response = try await client.calendar.submit(
            request: .init(key: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func download1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "key",
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
        let expectedResponse = DownloadCalendarResponse(
            key: "key",
            fileName: "fileName",
            mimeType: "mimeType",
            variant: Nullable<String>.value("variant"),
            content: "content",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.calendar.download(
            request: .init(key: "key"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func download2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "key",
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
        let expectedResponse = DownloadCalendarResponse(
            key: "key",
            fileName: "fileName",
            mimeType: "mimeType",
            variant: Nullable<String>.value("variant"),
            content: "content",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.calendar.download(
            request: .init(key: "x"),
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
                  "key": "key",
                  "id": "id",
                  "kind": "custom",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "title": "title",
                  "dueDate": "2026-07-01",
                  "notes": "notes",
                  "done": true,
                  "href": "href",
                  "submission": {
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
                  },
                  "submissions": [
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
                  "canSubmit": true,
                  "canAmend": true,
                  "canDownload": true,
                  "automated": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateCalendarResponse(
            key: "key",
            id: Nullable<String>.value("id"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: CalendarDate("2026-07-01")!,
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href"),
            submission: Nullable<CreateCalendarResponseSubmission>.value(CreateCalendarResponseSubmission(
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
                environment: Nullable<CreateCalendarResponseSubmissionEnvironment>.value(.test),
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
            )),
            submissions: [
                CreateCalendarResponseSubmissionsItem(
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
                    environment: Nullable<CreateCalendarResponseSubmissionsItemEnvironment>.value(.test),
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
            canSubmit: true,
            canAmend: true,
            canDownload: true,
            automated: true
        )
        let response = try await client.calendar.create(
            request: .init(
                title: "title",
                dueDate: CalendarDate("2026-07-01")!
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
                  "key": "x",
                  "id": "x",
                  "kind": "custom",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "title": "title",
                  "dueDate": "2023-01-15",
                  "notes": "notes",
                  "done": true,
                  "href": "href",
                  "submission": {
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
                  "submissions": [
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
                  "canSubmit": true,
                  "canAmend": true,
                  "canDownload": true,
                  "automated": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CreateCalendarResponse(
            key: "x",
            id: Nullable<String>.value("x"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: CalendarDate("2023-01-15")!,
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href"),
            submission: Nullable<CreateCalendarResponseSubmission>.value(CreateCalendarResponseSubmission(
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
                environment: Nullable<CreateCalendarResponseSubmissionEnvironment>.value(.test),
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
            )),
            submissions: [
                CreateCalendarResponseSubmissionsItem(
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
                    environment: Nullable<CreateCalendarResponseSubmissionsItemEnvironment>.value(.test),
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
                CreateCalendarResponseSubmissionsItem(
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
                    environment: Nullable<CreateCalendarResponseSubmissionsItemEnvironment>.value(.test),
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
            canSubmit: true,
            canAmend: true,
            canDownload: true,
            automated: true
        )
        let response = try await client.calendar.create(
            request: .init(
                title: "x",
                dueDate: CalendarDate("2023-01-15")!
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
                  "key": "key",
                  "id": "id",
                  "kind": "custom",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "title": "title",
                  "dueDate": "2026-07-01",
                  "notes": "notes",
                  "done": true,
                  "href": "href",
                  "submission": {
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
                  },
                  "submissions": [
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
                  "canSubmit": true,
                  "canAmend": true,
                  "canDownload": true,
                  "automated": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = UpdateCalendarResponse(
            key: "key",
            id: Nullable<String>.value("id"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: CalendarDate("2026-07-01")!,
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href"),
            submission: Nullable<UpdateCalendarResponseSubmission>.value(UpdateCalendarResponseSubmission(
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
                environment: Nullable<UpdateCalendarResponseSubmissionEnvironment>.value(.test),
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
            )),
            submissions: [
                UpdateCalendarResponseSubmissionsItem(
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
                    environment: Nullable<UpdateCalendarResponseSubmissionsItemEnvironment>.value(.test),
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
            canSubmit: true,
            canAmend: true,
            canDownload: true,
            automated: true
        )
        let response = try await client.calendar.update(
            request: .init(key: "key"),
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
                  "key": "x",
                  "id": "x",
                  "kind": "custom",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "title": "title",
                  "dueDate": "2023-01-15",
                  "notes": "notes",
                  "done": true,
                  "href": "href",
                  "submission": {
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
                  "submissions": [
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
                  "canSubmit": true,
                  "canAmend": true,
                  "canDownload": true,
                  "automated": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = UpdateCalendarResponse(
            key: "x",
            id: Nullable<String>.value("x"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: CalendarDate("2023-01-15")!,
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href"),
            submission: Nullable<UpdateCalendarResponseSubmission>.value(UpdateCalendarResponseSubmission(
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
                environment: Nullable<UpdateCalendarResponseSubmissionEnvironment>.value(.test),
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
            )),
            submissions: [
                UpdateCalendarResponseSubmissionsItem(
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
                    environment: Nullable<UpdateCalendarResponseSubmissionsItemEnvironment>.value(.test),
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
                UpdateCalendarResponseSubmissionsItem(
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
                    environment: Nullable<UpdateCalendarResponseSubmissionsItemEnvironment>.value(.test),
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
            canSubmit: true,
            canAmend: true,
            canDownload: true,
            automated: true
        )
        let response = try await client.calendar.update(
            request: .init(key: "x"),
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
                  "key": "key"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DeleteCalendarResponse(
            key: "key"
        )
        let response = try await client.calendar.delete(
            request: .init(key: "key"),
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
                  "key": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DeleteCalendarResponse(
            key: "x"
        )
        let response = try await client.calendar.delete(
            request: .init(key: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}