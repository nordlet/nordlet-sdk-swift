import Foundation

public final class CalendarClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists, in due-date order, the filing deadlines Nordlet derives for the company from its country and profile together with the company's own events, between `from` and `to` (default 45 days back to 120 days ahead of the company's current date). Each deadline carries its submissions, whether it can be filed with `calendar/submit`, amended, or built with `calendar/download`, and whether its automation is on; `includeDone: false` leaves out the rows that are completed, submitted or accepted.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(request: Requests.ListCalendarRequest, requestOptions: RequestOptions? = nil) async throws -> ListCalendarResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/calendar/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ListCalendarResponse.self
        )
    }

    /// Reads one calendar row by `key`: the id of a company event, or `ruleKey:period` for a filing deadline with its submissions.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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

    /// Creates a company event (kind `custom`) with a title, a due date, notes and a done flag.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreateCalendarRequest, requestOptions: RequestOptions? = nil) async throws -> CreateCalendarResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/calendar/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateCalendarResponse.self
        )
    }

    /// Changes a calendar row by `key`. A company event takes a new title, due date, notes or done flag; a filing deadline (`ruleKey:period`) takes only notes and done, keeps its own title and date, and gets a stored row the first time it is annotated.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(request: Requests.UpdateCalendarRequest, requestOptions: RequestOptions? = nil) async throws -> UpdateCalendarResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/calendar/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateCalendarResponse.self
        )
    }

    /// Deletes a company event by its id, or the stored notes and done mark of a filing deadline by `ruleKey:period`; the deadline itself still comes from the rules.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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