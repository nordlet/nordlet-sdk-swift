import Foundation
import Testing
import Api

@Suite("CalendarClient Wire Tests") struct CalendarClientWireTests {
    @Test func postV1CalendarList1() async throws -> Void {
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
                      "dueDate": "dueDate",
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
                        "origin": "origin",
                        "transportSystem": null,
                        "submittedAt": null,
                        "acceptedAt": null,
                        "rejectedAt": null,
                        "checkedAt": null,
                        "nextCheckAt": null,
                        "attempts": 1000000,
                        "deliveryError": null,
                        "sentSha256": null,
                        "certificateFingerprint": null,
                        "submittedByActorType": null,
                        "submittedByActorId": null,
                        "createdAt": "createdAt",
                        "updatedAt": "updatedAt"
                      },
                      "canSubmit": true,
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
        let expectedResponse = PostV1CalendarListResponse(
            rows: [
                PostV1CalendarListResponseRowsItem(
                    key: "key",
                    id: Nullable<String>.value("id"),
                    kind: .custom,
                    ruleKey: Nullable<String>.value("ruleKey"),
                    period: Nullable<String>.value("period"),
                    title: "title",
                    dueDate: "dueDate",
                    notes: Nullable<String>.value("notes"),
                    done: true,
                    href: Nullable<String>.value("href"),
                    submission: Nullable<PostV1CalendarListResponseRowsItemSubmission>.value(PostV1CalendarListResponseRowsItemSubmission(
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
                        origin: "origin",
                        transportSystem: .null,
                        submittedAt: .null,
                        acceptedAt: .null,
                        rejectedAt: .null,
                        checkedAt: .null,
                        nextCheckAt: .null,
                        attempts: 1000000,
                        deliveryError: .null,
                        sentSha256: .null,
                        certificateFingerprint: .null,
                        submittedByActorType: .null,
                        submittedByActorId: .null,
                        createdAt: "createdAt",
                        updatedAt: "updatedAt"
                    )),
                    canSubmit: true,
                    canDownload: true,
                    automated: true
                )
            ]
        )
        let response = try await client.calendar.postV1CalendarList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarList2() async throws -> Void {
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
                      "dueDate": "dueDate",
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
                        "origin": "origin",
                        "transportSystem": "transportSystem",
                        "submittedAt": "submittedAt",
                        "acceptedAt": "acceptedAt",
                        "rejectedAt": "rejectedAt",
                        "checkedAt": "checkedAt",
                        "nextCheckAt": "nextCheckAt",
                        "attempts": 1000000,
                        "deliveryError": "deliveryError",
                        "sentSha256": "sentSha256",
                        "certificateFingerprint": "certificateFingerprint",
                        "submittedByActorType": "submittedByActorType",
                        "submittedByActorId": "submittedByActorId",
                        "createdAt": "createdAt",
                        "updatedAt": "updatedAt"
                      },
                      "canSubmit": true,
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
                      "dueDate": "dueDate",
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
                        "origin": "origin",
                        "transportSystem": "transportSystem",
                        "submittedAt": "submittedAt",
                        "acceptedAt": "acceptedAt",
                        "rejectedAt": "rejectedAt",
                        "checkedAt": "checkedAt",
                        "nextCheckAt": "nextCheckAt",
                        "attempts": 1000000,
                        "deliveryError": "deliveryError",
                        "sentSha256": "sentSha256",
                        "certificateFingerprint": "certificateFingerprint",
                        "submittedByActorType": "submittedByActorType",
                        "submittedByActorId": "submittedByActorId",
                        "createdAt": "createdAt",
                        "updatedAt": "updatedAt"
                      },
                      "canSubmit": true,
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
        let expectedResponse = PostV1CalendarListResponse(
            rows: [
                PostV1CalendarListResponseRowsItem(
                    key: "x",
                    id: Nullable<String>.value("x"),
                    kind: .custom,
                    ruleKey: Nullable<String>.value("ruleKey"),
                    period: Nullable<String>.value("period"),
                    title: "title",
                    dueDate: "dueDate",
                    notes: Nullable<String>.value("notes"),
                    done: true,
                    href: Nullable<String>.value("href"),
                    submission: Nullable<PostV1CalendarListResponseRowsItemSubmission>.value(PostV1CalendarListResponseRowsItemSubmission(
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
                        origin: "origin",
                        transportSystem: Nullable<String>.value("transportSystem"),
                        submittedAt: Nullable<String>.value("submittedAt"),
                        acceptedAt: Nullable<String>.value("acceptedAt"),
                        rejectedAt: Nullable<String>.value("rejectedAt"),
                        checkedAt: Nullable<String>.value("checkedAt"),
                        nextCheckAt: Nullable<String>.value("nextCheckAt"),
                        attempts: 1000000,
                        deliveryError: Nullable<String>.value("deliveryError"),
                        sentSha256: Nullable<String>.value("sentSha256"),
                        certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
                        submittedByActorType: Nullable<String>.value("submittedByActorType"),
                        submittedByActorId: Nullable<String>.value("submittedByActorId"),
                        createdAt: "createdAt",
                        updatedAt: "updatedAt"
                    )),
                    canSubmit: true,
                    canDownload: true,
                    automated: true
                ),
                PostV1CalendarListResponseRowsItem(
                    key: "x",
                    id: Nullable<String>.value("x"),
                    kind: .custom,
                    ruleKey: Nullable<String>.value("ruleKey"),
                    period: Nullable<String>.value("period"),
                    title: "title",
                    dueDate: "dueDate",
                    notes: Nullable<String>.value("notes"),
                    done: true,
                    href: Nullable<String>.value("href"),
                    submission: Nullable<PostV1CalendarListResponseRowsItemSubmission>.value(PostV1CalendarListResponseRowsItemSubmission(
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
                        origin: "origin",
                        transportSystem: Nullable<String>.value("transportSystem"),
                        submittedAt: Nullable<String>.value("submittedAt"),
                        acceptedAt: Nullable<String>.value("acceptedAt"),
                        rejectedAt: Nullable<String>.value("rejectedAt"),
                        checkedAt: Nullable<String>.value("checkedAt"),
                        nextCheckAt: Nullable<String>.value("nextCheckAt"),
                        attempts: 1000000,
                        deliveryError: Nullable<String>.value("deliveryError"),
                        sentSha256: Nullable<String>.value("sentSha256"),
                        certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
                        submittedByActorType: Nullable<String>.value("submittedByActorType"),
                        submittedByActorId: Nullable<String>.value("submittedByActorId"),
                        createdAt: "createdAt",
                        updatedAt: "updatedAt"
                    )),
                    canSubmit: true,
                    canDownload: true,
                    automated: true
                )
            ]
        )
        let response = try await client.calendar.postV1CalendarList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarGet1() async throws -> Void {
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
                  "dueDate": "dueDate",
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
                    "origin": "origin",
                    "transportSystem": "transportSystem",
                    "submittedAt": "submittedAt",
                    "acceptedAt": "acceptedAt",
                    "rejectedAt": "rejectedAt",
                    "checkedAt": "checkedAt",
                    "nextCheckAt": "nextCheckAt",
                    "attempts": 1000000,
                    "deliveryError": "deliveryError",
                    "sentSha256": "sentSha256",
                    "certificateFingerprint": "certificateFingerprint",
                    "submittedByActorType": "submittedByActorType",
                    "submittedByActorId": "submittedByActorId",
                    "createdAt": "createdAt",
                    "updatedAt": "updatedAt"
                  },
                  "canSubmit": true,
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
        let expectedResponse = PostV1CalendarGetResponse(
            key: "key",
            id: Nullable<String>.value("id"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: "dueDate",
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href"),
            submission: Nullable<PostV1CalendarGetResponseSubmission>.value(PostV1CalendarGetResponseSubmission(
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
                origin: "origin",
                transportSystem: Nullable<String>.value("transportSystem"),
                submittedAt: Nullable<String>.value("submittedAt"),
                acceptedAt: Nullable<String>.value("acceptedAt"),
                rejectedAt: Nullable<String>.value("rejectedAt"),
                checkedAt: Nullable<String>.value("checkedAt"),
                nextCheckAt: Nullable<String>.value("nextCheckAt"),
                attempts: 1000000,
                deliveryError: Nullable<String>.value("deliveryError"),
                sentSha256: Nullable<String>.value("sentSha256"),
                certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
                submittedByActorType: Nullable<String>.value("submittedByActorType"),
                submittedByActorId: Nullable<String>.value("submittedByActorId"),
                createdAt: "createdAt",
                updatedAt: "updatedAt"
            )),
            canSubmit: true,
            canDownload: true,
            automated: true
        )
        let response = try await client.calendar.postV1CalendarGet(
            request: .init(key: "key"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarGet2() async throws -> Void {
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
                  "dueDate": "dueDate",
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
                    "origin": "origin",
                    "transportSystem": "transportSystem",
                    "submittedAt": "submittedAt",
                    "acceptedAt": "acceptedAt",
                    "rejectedAt": "rejectedAt",
                    "checkedAt": "checkedAt",
                    "nextCheckAt": "nextCheckAt",
                    "attempts": 1000000,
                    "deliveryError": "deliveryError",
                    "sentSha256": "sentSha256",
                    "certificateFingerprint": "certificateFingerprint",
                    "submittedByActorType": "submittedByActorType",
                    "submittedByActorId": "submittedByActorId",
                    "createdAt": "createdAt",
                    "updatedAt": "updatedAt"
                  },
                  "canSubmit": true,
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
        let expectedResponse = PostV1CalendarGetResponse(
            key: "x",
            id: Nullable<String>.value("x"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: "dueDate",
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href"),
            submission: Nullable<PostV1CalendarGetResponseSubmission>.value(PostV1CalendarGetResponseSubmission(
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
                origin: "origin",
                transportSystem: Nullable<String>.value("transportSystem"),
                submittedAt: Nullable<String>.value("submittedAt"),
                acceptedAt: Nullable<String>.value("acceptedAt"),
                rejectedAt: Nullable<String>.value("rejectedAt"),
                checkedAt: Nullable<String>.value("checkedAt"),
                nextCheckAt: Nullable<String>.value("nextCheckAt"),
                attempts: 1000000,
                deliveryError: Nullable<String>.value("deliveryError"),
                sentSha256: Nullable<String>.value("sentSha256"),
                certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
                submittedByActorType: Nullable<String>.value("submittedByActorType"),
                submittedByActorId: Nullable<String>.value("submittedByActorId"),
                createdAt: "createdAt",
                updatedAt: "updatedAt"
            )),
            canSubmit: true,
            canDownload: true,
            automated: true
        )
        let response = try await client.calendar.postV1CalendarGet(
            request: .init(key: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func generateTheFilingForADeadlineAndSendItToTheAdministration1() async throws -> Void {
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
                  "origin": "origin",
                  "transportSystem": "transportSystem",
                  "submittedAt": "submittedAt",
                  "acceptedAt": "acceptedAt",
                  "rejectedAt": "rejectedAt",
                  "checkedAt": "checkedAt",
                  "nextCheckAt": "nextCheckAt",
                  "attempts": 1000000,
                  "deliveryError": "deliveryError",
                  "sentSha256": "sentSha256",
                  "certificateFingerprint": "certificateFingerprint",
                  "submittedByActorType": "submittedByActorType",
                  "submittedByActorId": "submittedByActorId",
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
        let expectedResponse = PostV1CalendarSubmitResponse(
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
            origin: "origin",
            transportSystem: Nullable<String>.value("transportSystem"),
            submittedAt: Nullable<String>.value("submittedAt"),
            acceptedAt: Nullable<String>.value("acceptedAt"),
            rejectedAt: Nullable<String>.value("rejectedAt"),
            checkedAt: Nullable<String>.value("checkedAt"),
            nextCheckAt: Nullable<String>.value("nextCheckAt"),
            attempts: 1000000,
            deliveryError: Nullable<String>.value("deliveryError"),
            sentSha256: Nullable<String>.value("sentSha256"),
            certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
            submittedByActorType: Nullable<String>.value("submittedByActorType"),
            submittedByActorId: Nullable<String>.value("submittedByActorId"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.calendar.generateTheFilingForADeadlineAndSendItToTheAdministration(
            request: .init(key: "key"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func generateTheFilingForADeadlineAndSendItToTheAdministration2() async throws -> Void {
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
                  "origin": "origin",
                  "transportSystem": "transportSystem",
                  "submittedAt": "submittedAt",
                  "acceptedAt": "acceptedAt",
                  "rejectedAt": "rejectedAt",
                  "checkedAt": "checkedAt",
                  "nextCheckAt": "nextCheckAt",
                  "attempts": 1000000,
                  "deliveryError": "deliveryError",
                  "sentSha256": "sentSha256",
                  "certificateFingerprint": "certificateFingerprint",
                  "submittedByActorType": "submittedByActorType",
                  "submittedByActorId": "submittedByActorId",
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
        let expectedResponse = PostV1CalendarSubmitResponse(
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
            origin: "origin",
            transportSystem: Nullable<String>.value("transportSystem"),
            submittedAt: Nullable<String>.value("submittedAt"),
            acceptedAt: Nullable<String>.value("acceptedAt"),
            rejectedAt: Nullable<String>.value("rejectedAt"),
            checkedAt: Nullable<String>.value("checkedAt"),
            nextCheckAt: Nullable<String>.value("nextCheckAt"),
            attempts: 1000000,
            deliveryError: Nullable<String>.value("deliveryError"),
            sentSha256: Nullable<String>.value("sentSha256"),
            certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
            submittedByActorType: Nullable<String>.value("submittedByActorType"),
            submittedByActorId: Nullable<String>.value("submittedByActorId"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.calendar.generateTheFilingForADeadlineAndSendItToTheAdministration(
            request: .init(key: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func generateTheFileOfADeadlineForTheCompanyToSendItself1() async throws -> Void {
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
        let expectedResponse = PostV1CalendarDownloadResponse(
            key: "key",
            fileName: "fileName",
            mimeType: "mimeType",
            variant: Nullable<String>.value("variant"),
            content: "content",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.calendar.generateTheFileOfADeadlineForTheCompanyToSendItself(
            request: .init(key: "key"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func generateTheFileOfADeadlineForTheCompanyToSendItself2() async throws -> Void {
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
        let expectedResponse = PostV1CalendarDownloadResponse(
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
        let response = try await client.calendar.generateTheFileOfADeadlineForTheCompanyToSendItself(
            request: .init(key: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarCreate1() async throws -> Void {
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
                  "dueDate": "dueDate",
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
                    "origin": "origin",
                    "transportSystem": "transportSystem",
                    "submittedAt": "submittedAt",
                    "acceptedAt": "acceptedAt",
                    "rejectedAt": "rejectedAt",
                    "checkedAt": "checkedAt",
                    "nextCheckAt": "nextCheckAt",
                    "attempts": 1000000,
                    "deliveryError": "deliveryError",
                    "sentSha256": "sentSha256",
                    "certificateFingerprint": "certificateFingerprint",
                    "submittedByActorType": "submittedByActorType",
                    "submittedByActorId": "submittedByActorId",
                    "createdAt": "createdAt",
                    "updatedAt": "updatedAt"
                  },
                  "canSubmit": true,
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
        let expectedResponse = PostV1CalendarCreateResponse(
            key: "key",
            id: Nullable<String>.value("id"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: "dueDate",
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href"),
            submission: Nullable<PostV1CalendarCreateResponseSubmission>.value(PostV1CalendarCreateResponseSubmission(
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
                origin: "origin",
                transportSystem: Nullable<String>.value("transportSystem"),
                submittedAt: Nullable<String>.value("submittedAt"),
                acceptedAt: Nullable<String>.value("acceptedAt"),
                rejectedAt: Nullable<String>.value("rejectedAt"),
                checkedAt: Nullable<String>.value("checkedAt"),
                nextCheckAt: Nullable<String>.value("nextCheckAt"),
                attempts: 1000000,
                deliveryError: Nullable<String>.value("deliveryError"),
                sentSha256: Nullable<String>.value("sentSha256"),
                certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
                submittedByActorType: Nullable<String>.value("submittedByActorType"),
                submittedByActorId: Nullable<String>.value("submittedByActorId"),
                createdAt: "createdAt",
                updatedAt: "updatedAt"
            )),
            canSubmit: true,
            canDownload: true,
            automated: true
        )
        let response = try await client.calendar.postV1CalendarCreate(
            request: .init(
                title: "title",
                dueDate: "dueDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarCreate2() async throws -> Void {
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
                  "dueDate": "dueDate",
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
                    "origin": "origin",
                    "transportSystem": "transportSystem",
                    "submittedAt": "submittedAt",
                    "acceptedAt": "acceptedAt",
                    "rejectedAt": "rejectedAt",
                    "checkedAt": "checkedAt",
                    "nextCheckAt": "nextCheckAt",
                    "attempts": 1000000,
                    "deliveryError": "deliveryError",
                    "sentSha256": "sentSha256",
                    "certificateFingerprint": "certificateFingerprint",
                    "submittedByActorType": "submittedByActorType",
                    "submittedByActorId": "submittedByActorId",
                    "createdAt": "createdAt",
                    "updatedAt": "updatedAt"
                  },
                  "canSubmit": true,
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
        let expectedResponse = PostV1CalendarCreateResponse(
            key: "x",
            id: Nullable<String>.value("x"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: "dueDate",
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href"),
            submission: Nullable<PostV1CalendarCreateResponseSubmission>.value(PostV1CalendarCreateResponseSubmission(
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
                origin: "origin",
                transportSystem: Nullable<String>.value("transportSystem"),
                submittedAt: Nullable<String>.value("submittedAt"),
                acceptedAt: Nullable<String>.value("acceptedAt"),
                rejectedAt: Nullable<String>.value("rejectedAt"),
                checkedAt: Nullable<String>.value("checkedAt"),
                nextCheckAt: Nullable<String>.value("nextCheckAt"),
                attempts: 1000000,
                deliveryError: Nullable<String>.value("deliveryError"),
                sentSha256: Nullable<String>.value("sentSha256"),
                certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
                submittedByActorType: Nullable<String>.value("submittedByActorType"),
                submittedByActorId: Nullable<String>.value("submittedByActorId"),
                createdAt: "createdAt",
                updatedAt: "updatedAt"
            )),
            canSubmit: true,
            canDownload: true,
            automated: true
        )
        let response = try await client.calendar.postV1CalendarCreate(
            request: .init(
                title: "x",
                dueDate: "dueDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarUpdate1() async throws -> Void {
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
                  "dueDate": "dueDate",
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
                    "origin": "origin",
                    "transportSystem": "transportSystem",
                    "submittedAt": "submittedAt",
                    "acceptedAt": "acceptedAt",
                    "rejectedAt": "rejectedAt",
                    "checkedAt": "checkedAt",
                    "nextCheckAt": "nextCheckAt",
                    "attempts": 1000000,
                    "deliveryError": "deliveryError",
                    "sentSha256": "sentSha256",
                    "certificateFingerprint": "certificateFingerprint",
                    "submittedByActorType": "submittedByActorType",
                    "submittedByActorId": "submittedByActorId",
                    "createdAt": "createdAt",
                    "updatedAt": "updatedAt"
                  },
                  "canSubmit": true,
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
        let expectedResponse = PostV1CalendarUpdateResponse(
            key: "key",
            id: Nullable<String>.value("id"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: "dueDate",
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href"),
            submission: Nullable<PostV1CalendarUpdateResponseSubmission>.value(PostV1CalendarUpdateResponseSubmission(
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
                origin: "origin",
                transportSystem: Nullable<String>.value("transportSystem"),
                submittedAt: Nullable<String>.value("submittedAt"),
                acceptedAt: Nullable<String>.value("acceptedAt"),
                rejectedAt: Nullable<String>.value("rejectedAt"),
                checkedAt: Nullable<String>.value("checkedAt"),
                nextCheckAt: Nullable<String>.value("nextCheckAt"),
                attempts: 1000000,
                deliveryError: Nullable<String>.value("deliveryError"),
                sentSha256: Nullable<String>.value("sentSha256"),
                certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
                submittedByActorType: Nullable<String>.value("submittedByActorType"),
                submittedByActorId: Nullable<String>.value("submittedByActorId"),
                createdAt: "createdAt",
                updatedAt: "updatedAt"
            )),
            canSubmit: true,
            canDownload: true,
            automated: true
        )
        let response = try await client.calendar.postV1CalendarUpdate(
            request: .init(key: "key"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarUpdate2() async throws -> Void {
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
                  "dueDate": "dueDate",
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
                    "origin": "origin",
                    "transportSystem": "transportSystem",
                    "submittedAt": "submittedAt",
                    "acceptedAt": "acceptedAt",
                    "rejectedAt": "rejectedAt",
                    "checkedAt": "checkedAt",
                    "nextCheckAt": "nextCheckAt",
                    "attempts": 1000000,
                    "deliveryError": "deliveryError",
                    "sentSha256": "sentSha256",
                    "certificateFingerprint": "certificateFingerprint",
                    "submittedByActorType": "submittedByActorType",
                    "submittedByActorId": "submittedByActorId",
                    "createdAt": "createdAt",
                    "updatedAt": "updatedAt"
                  },
                  "canSubmit": true,
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
        let expectedResponse = PostV1CalendarUpdateResponse(
            key: "x",
            id: Nullable<String>.value("x"),
            kind: .custom,
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            title: "title",
            dueDate: "dueDate",
            notes: Nullable<String>.value("notes"),
            done: true,
            href: Nullable<String>.value("href"),
            submission: Nullable<PostV1CalendarUpdateResponseSubmission>.value(PostV1CalendarUpdateResponseSubmission(
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
                origin: "origin",
                transportSystem: Nullable<String>.value("transportSystem"),
                submittedAt: Nullable<String>.value("submittedAt"),
                acceptedAt: Nullable<String>.value("acceptedAt"),
                rejectedAt: Nullable<String>.value("rejectedAt"),
                checkedAt: Nullable<String>.value("checkedAt"),
                nextCheckAt: Nullable<String>.value("nextCheckAt"),
                attempts: 1000000,
                deliveryError: Nullable<String>.value("deliveryError"),
                sentSha256: Nullable<String>.value("sentSha256"),
                certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
                submittedByActorType: Nullable<String>.value("submittedByActorType"),
                submittedByActorId: Nullable<String>.value("submittedByActorId"),
                createdAt: "createdAt",
                updatedAt: "updatedAt"
            )),
            canSubmit: true,
            canDownload: true,
            automated: true
        )
        let response = try await client.calendar.postV1CalendarUpdate(
            request: .init(key: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarDelete1() async throws -> Void {
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
        let expectedResponse = PostV1CalendarDeleteResponse(
            key: "key"
        )
        let response = try await client.calendar.postV1CalendarDelete(
            request: .init(key: "key"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CalendarDelete2() async throws -> Void {
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
        let expectedResponse = PostV1CalendarDeleteResponse(
            key: "x"
        )
        let response = try await client.calendar.postV1CalendarDelete(
            request: .init(key: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}