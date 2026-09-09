import Foundation

public final class CalendarClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1CalendarList(request: Requests.PostV1CalendarListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CalendarListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/calendar/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CalendarListResponse.self
        )
    }

    public func postV1CalendarGet(request: Requests.PostV1CalendarGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CalendarGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/calendar/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CalendarGetResponse.self
        )
    }

    public func postV1CalendarCreate(request: Requests.PostV1CalendarCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CalendarCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/calendar/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CalendarCreateResponse.self
        )
    }

    public func postV1CalendarUpdate(request: Requests.PostV1CalendarUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CalendarUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/calendar/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CalendarUpdateResponse.self
        )
    }

    public func postV1CalendarDelete(request: Requests.PostV1CalendarDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CalendarDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/calendar/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CalendarDeleteResponse.self
        )
    }
}