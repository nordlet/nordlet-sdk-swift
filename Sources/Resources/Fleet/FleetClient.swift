import Foundation

public final class FleetClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Register a vehicle. The plate number is stored in upper case and must be unique in the company (409 otherwise); `fixedAssetId` must name an existing fixed asset. Uploaded `documents` are attached to the vehicle.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func vehiclesCreate(request: Requests.VehiclesCreateFleetRequest, requestOptions: RequestOptions? = nil) async throws -> VehiclesCreateFleetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/vehicles/create",
            body: request,
            requestOptions: requestOptions,
            responseType: VehiclesCreateFleetResponse.self
        )
    }

    /// Change a vehicle's details or set its `status` to `active`, `sold` or `scrapped`; omitted fields keep their value. A plate number already used by another vehicle is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func vehiclesUpdate(request: Requests.VehiclesUpdateFleetRequest, requestOptions: RequestOptions? = nil) async throws -> VehiclesUpdateFleetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/vehicles/update",
            body: request,
            requestOptions: requestOptions,
            responseType: VehiclesUpdateFleetResponse.self
        )
    }

    /// Read one vehicle with its current assignment, when an employee holds it today.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func vehiclesGet(request: Requests.VehiclesGetFleetRequest, requestOptions: RequestOptions? = nil) async throws -> VehiclesGetFleetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/vehicles/get",
            body: request,
            requestOptions: requestOptions,
            responseType: VehiclesGetFleetResponse.self
        )
    }

    /// List vehicles with their current assignment. Filterable by `plateNumber`, `make`, `model` and `status`; sortable by `plateNumber`, `make` and `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func vehiclesList(request: Requests.VehiclesListFleetRequest, requestOptions: RequestOptions? = nil) async throws -> VehiclesListFleetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/vehicles/list",
            body: request,
            requestOptions: requestOptions,
            responseType: VehiclesListFleetResponse.self
        )
    }

    /// Assign a vehicle to an employee from `fromDate`, open-ended or until `toDate`. A period that overlaps another assignment of the same vehicle is refused with 409, a `toDate` before `fromDate` with 422. `privateUse` makes the car a benefit in kind in `fleet/natura/preview`, and `employerPaysFuel` picks its rate.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func assignmentsCreate(request: Requests.AssignmentsCreateFleetRequest, requestOptions: RequestOptions? = nil) async throws -> AssignmentsCreateFleetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/assignments/create",
            body: request,
            requestOptions: requestOptions,
            responseType: AssignmentsCreateFleetResponse.self
        )
    }

    /// End an open assignment on `toDate`. An assignment that already has an end date is refused with 409, a `toDate` before its `fromDate` with 422.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func assignmentsEnd(request: Requests.AssignmentsEndFleetRequest, requestOptions: RequestOptions? = nil) async throws -> AssignmentsEndFleetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/assignments/end",
            body: request,
            requestOptions: requestOptions,
            responseType: AssignmentsEndFleetResponse.self
        )
    }

    /// List vehicle assignments with the plate number and the employee's name. Filterable by `vehicleId`, `employeeId` and `privateUse`; sortable by `fromDate` and `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func assignmentsList(request: Requests.AssignmentsListFleetRequest, requestOptions: RequestOptions? = nil) async throws -> AssignmentsListFleetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/assignments/list",
            body: request,
            requestOptions: requestOptions,
            responseType: AssignmentsListFleetResponse.self
        )
    }

    /// Preview the car benefit in kind of a month for a Lithuanian company: every assignment with `privateUse` that overlaps the month is valued at 0.75 % of the vehicle's market value when the employer pays the fuel, else 0.70 %, one row per employee and vehicle, with the total. A company registered in another country is refused with 422. The same amounts are added to a payroll run created with `includeNatura` (`payroll/runs/create`).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func naturaPreview(request: Requests.NaturaPreviewFleetRequest, requestOptions: RequestOptions? = nil) async throws -> NaturaPreviewFleetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/natura/preview",
            body: request,
            requestOptions: requestOptions,
            responseType: NaturaPreviewFleetResponse.self
        )
    }
}