import Foundation

public final class ProjectsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Create a project; `partnerId` is the customer that `projects/time-entries/bill` invoices by default. A duplicate `code` is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreateProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> CreateProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateProjectsResponse.self
        )
    }

    /// Change a project's name, customer, `status` (`active`, `completed`, `archived`) or notes; only the fields sent are changed. An archived project accepts no new time entries.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(request: Requests.UpdateProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> UpdateProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateProjectsResponse.self
        )
    }

    /// Return one project.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(request: Requests.GetProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> GetProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GetProjectsResponse.self
        )
    }

    /// List projects. Filterable by `code`, `name`, `status` and `partnerId`; sortable by `code`, `name` and `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(request: Requests.ListProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> ListProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ListProjectsResponse.self
        )
    }

    /// Record hours worked on a project on a date, optionally for an employee and with the `hourlyRate` used when billing. `hours` must be positive (422); an archived project is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func timeEntriesCreate(request: Requests.TimeEntriesCreateProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> TimeEntriesCreateProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/time-entries/create",
            body: request,
            requestOptions: requestOptions,
            responseType: TimeEntriesCreateProjectsResponse.self
        )
    }

    /// Change a time entry; only the fields sent are changed. `hours` must be positive (422); an entry already billed to an invoice cannot be changed (409).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func timeEntriesUpdate(request: Requests.TimeEntriesUpdateProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> TimeEntriesUpdateProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/time-entries/update",
            body: request,
            requestOptions: requestOptions,
            responseType: TimeEntriesUpdateProjectsResponse.self
        )
    }

    /// Delete a time entry (409 once it is billed).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func timeEntriesDelete(request: Requests.TimeEntriesDeleteProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> TimeEntriesDeleteProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/time-entries/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: TimeEntriesDeleteProjectsResponse.self
        )
    }

    /// List time entries. Filterable by `projectId`, `employeeId`, `billable`, `billedInvoiceId` and `date`; sortable by `date`, `createdAt` and `hours`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func timeEntriesList(request: Requests.TimeEntriesListProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> TimeEntriesListProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/time-entries/list",
            body: request,
            requestOptions: requestOptions,
            responseType: TimeEntriesListProjectsResponse.self
        )
    }

    /// Create a draft sale invoice from the project's unbilled billable time entries, optionally limited to `dateFrom` and `dateTo`, and mark them billed; needs the `sales:write` scope, and the invoice is issued with `sales/invoices/issue`. The customer is `partnerId`, else the project's partner (422 without either); each entry is priced at its own `hourlyRate`, else the call's `hourlyRate` (422 when an entry has neither); `groupBy` `rate` makes one line per rate with the summed hours, `entry` one line per entry; `itemId`, `vatRatePercent` and `vatClassifierCode` go onto every line. No matching entries is 422.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func timeEntriesBill(request: Requests.TimeEntriesBillProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> TimeEntriesBillProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/time-entries/bill",
            body: request,
            requestOptions: requestOptions,
            responseType: TimeEntriesBillProjectsResponse.self
        )
    }

    /// Profitability per project: `revenue` and `costs` from posted journal entries tagged with the project (income accounts credit less debit, expense accounts debit less credit), `profit` as their difference, and the hours from time entries (total, billable, billed, unbilled, and the unbilled amount at the entries' hourly rates). `projectId` limits the report to one project; `dateFrom` and `dateTo` limit the journal dates and the entry dates. Nothing is changed.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func report(request: Requests.ReportProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> ReportProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/report",
            body: request,
            requestOptions: requestOptions,
            responseType: ReportProjectsResponse.self
        )
    }
}