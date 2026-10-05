import Foundation

public final class CalendarClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func list(request: Requests.ListCalendarRequest, requestOptions: RequestOptions? = nil) async throws -> ListCalendarResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/calendar/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ListCalendarResponse.self
        )
    }

    public func get(request: Requests.GetCalendarRequest, requestOptions: RequestOptions? = nil) async throws -> GetCalendarResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/calendar/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GetCalendarResponse.self
        )
    }

    /// With amend: true the return is filed again as a correction of the one already submitted or accepted for the period; only returns whose format has a correction mark accept it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func submit(request: Requests.SubmitCalendarRequest, requestOptions: RequestOptions? = nil) async throws -> SubmitCalendarResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/calendar/submit",
            body: request,
            requestOptions: requestOptions,
            responseType: SubmitCalendarResponse.self
        )
    }

    /// Builds the file of a deadline whose format Nordlet produces but whose administration takes it only through the company's own account or program. Nothing is sent and no filing is recorded.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func download(request: Requests.DownloadCalendarRequest, requestOptions: RequestOptions? = nil) async throws -> DownloadCalendarResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/calendar/download",
            body: request,
            requestOptions: requestOptions,
            responseType: DownloadCalendarResponse.self
        )
    }

    public func create(request: Requests.CreateCalendarRequest, requestOptions: RequestOptions? = nil) async throws -> CreateCalendarResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/calendar/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateCalendarResponse.self
        )
    }

    public func update(request: Requests.UpdateCalendarRequest, requestOptions: RequestOptions? = nil) async throws -> UpdateCalendarResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/calendar/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateCalendarResponse.self
        )
    }

    public func delete(request: Requests.DeleteCalendarRequest, requestOptions: RequestOptions? = nil) async throws -> DeleteCalendarResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/calendar/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: DeleteCalendarResponse.self
        )
    }
}