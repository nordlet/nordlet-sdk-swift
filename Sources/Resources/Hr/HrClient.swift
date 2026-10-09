import Foundation

public final class HrClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func positionsCreate(request: Requests.PositionsCreateHrRequest, requestOptions: RequestOptions? = nil) async throws -> PositionsCreateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/positions/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PositionsCreateHrResponse.self
        )
    }

    public func positionsUpdate(request: Requests.PositionsUpdateHrRequest, requestOptions: RequestOptions? = nil) async throws -> PositionsUpdateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/positions/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PositionsUpdateHrResponse.self
        )
    }

    public func positionsList(request: Requests.PositionsListHrRequest, requestOptions: RequestOptions? = nil) async throws -> PositionsListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/positions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PositionsListHrResponse.self
        )
    }

    public func employeesCreate(request: Requests.EmployeesCreateHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesCreateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/create",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesCreateHrResponse.self
        )
    }

    public func employeesUpdate(request: Requests.EmployeesUpdateHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesUpdateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/update",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesUpdateHrResponse.self
        )
    }

    public func employeesGet(request: Requests.EmployeesGetHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesGetHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/get",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesGetHrResponse.self
        )
    }

    /// Attributes a filing of the company country needs about a person that the shared employee record does not carry, such as the sex and place of birth an Italian income certificate asks for. Their values are kept in the payrollOptions of the employee.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func employeesFields(request: Requests.EmployeesFieldsHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesFieldsHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/fields",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesFieldsHrResponse.self
        )
    }

    public func employeesList(request: Requests.EmployeesListHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/list",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesListHrResponse.self
        )
    }

    public func employeesDelete(request: Requests.EmployeesDeleteHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesDeleteHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesDeleteHrResponse.self
        )
    }

    /// Replaces the name with a placeholder and removes personal code, birth date, contact details, address, bank account, social-insurance number, notes and sick-leave reasons. Payroll and contract rows stay linked to the record for the statutory retention period.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func employeesAnonymize(request: Requests.EmployeesAnonymizeHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesAnonymizeHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/anonymize",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesAnonymizeHrResponse.self
        )
    }

    public func contractsCreate(request: Requests.ContractsCreateHrRequest, requestOptions: RequestOptions? = nil) async throws -> ContractsCreateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/contracts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ContractsCreateHrResponse.self
        )
    }

    public func contractsEnd(request: Requests.ContractsEndHrRequest, requestOptions: RequestOptions? = nil) async throws -> ContractsEndHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/contracts/end",
            body: request,
            requestOptions: requestOptions,
            responseType: ContractsEndHrResponse.self
        )
    }

    public func contractsList(request: Requests.ContractsListHrRequest, requestOptions: RequestOptions? = nil) async throws -> ContractsListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/contracts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ContractsListHrResponse.self
        )
    }

    public func leaveBalancesSet(request: Requests.LeaveBalancesSetHrRequest, requestOptions: RequestOptions? = nil) async throws -> LeaveBalancesSetHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/leave-balances/set",
            body: request,
            requestOptions: requestOptions,
            responseType: LeaveBalancesSetHrResponse.self
        )
    }

    public func leaveBalancesList(request: Requests.LeaveBalancesListHrRequest, requestOptions: RequestOptions? = nil) async throws -> LeaveBalancesListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/leave-balances/list",
            body: request,
            requestOptions: requestOptions,
            responseType: LeaveBalancesListHrResponse.self
        )
    }

    public func incapacityCertificatesCreate(request: Requests.IncapacityCertificatesCreateHrRequest, requestOptions: RequestOptions? = nil) async throws -> IncapacityCertificatesCreateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/incapacity-certificates/create",
            body: request,
            requestOptions: requestOptions,
            responseType: IncapacityCertificatesCreateHrResponse.self
        )
    }

    public func incapacityCertificatesList(request: Requests.IncapacityCertificatesListHrRequest, requestOptions: RequestOptions? = nil) async throws -> IncapacityCertificatesListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/incapacity-certificates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: IncapacityCertificatesListHrResponse.self
        )
    }

    public func perDiemRatesCreate(request: Requests.PerDiemRatesCreateHrRequest, requestOptions: RequestOptions? = nil) async throws -> PerDiemRatesCreateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/per-diem-rates/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PerDiemRatesCreateHrResponse.self
        )
    }

    public func perDiemRatesList(request: Requests.PerDiemRatesListHrRequest, requestOptions: RequestOptions? = nil) async throws -> PerDiemRatesListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/per-diem-rates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PerDiemRatesListHrResponse.self
        )
    }

    public func perDiemRatesDelete(request: Requests.PerDiemRatesDeleteHrRequest, requestOptions: RequestOptions? = nil) async throws -> PerDiemRatesDeleteHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/per-diem-rates/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PerDiemRatesDeleteHrResponse.self
        )
    }

    public func businessTripsCreate(request: Requests.BusinessTripsCreateHrRequest, requestOptions: RequestOptions? = nil) async throws -> BusinessTripsCreateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/business-trips/create",
            body: request,
            requestOptions: requestOptions,
            responseType: BusinessTripsCreateHrResponse.self
        )
    }

    public func businessTripsGet(request: Requests.BusinessTripsGetHrRequest, requestOptions: RequestOptions? = nil) async throws -> BusinessTripsGetHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/business-trips/get",
            body: request,
            requestOptions: requestOptions,
            responseType: BusinessTripsGetHrResponse.self
        )
    }

    public func businessTripsList(request: Requests.BusinessTripsListHrRequest, requestOptions: RequestOptions? = nil) async throws -> BusinessTripsListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/business-trips/list",
            body: request,
            requestOptions: requestOptions,
            responseType: BusinessTripsListHrResponse.self
        )
    }

    public func businessTripsApprove(request: Requests.BusinessTripsApproveHrRequest, requestOptions: RequestOptions? = nil) async throws -> BusinessTripsApproveHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/business-trips/approve",
            body: request,
            requestOptions: requestOptions,
            responseType: BusinessTripsApproveHrResponse.self
        )
    }

    public func businessTripsDelete(request: Requests.BusinessTripsDeleteHrRequest, requestOptions: RequestOptions? = nil) async throws -> BusinessTripsDeleteHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/business-trips/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: BusinessTripsDeleteHrResponse.self
        )
    }

    public func employeesRecordsCreate(request: Requests.EmployeesRecordsCreateHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesRecordsCreateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/records/create",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesRecordsCreateHrResponse.self
        )
    }

    public func employeesRecordsUpdate(request: Requests.EmployeesRecordsUpdateHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesRecordsUpdateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/records/update",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesRecordsUpdateHrResponse.self
        )
    }

    public func employeesRecordsDelete(request: Requests.EmployeesRecordsDeleteHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesRecordsDeleteHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/records/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesRecordsDeleteHrResponse.self
        )
    }

    public func employeesRecordsList(request: Requests.EmployeesRecordsListHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesRecordsListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/records/list",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesRecordsListHrResponse.self
        )
    }

    public func employeesAttachmentsList(request: Requests.EmployeesAttachmentsListHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesAttachmentsListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/attachments/list",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesAttachmentsListHrResponse.self
        )
    }

    public func timesheetsGenerate(request: Requests.TimesheetsGenerateHrRequest, requestOptions: RequestOptions? = nil) async throws -> TimesheetsGenerateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/timesheets/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: TimesheetsGenerateHrResponse.self
        )
    }

    public func timesheetsUpsert(request: Requests.TimesheetsUpsertHrRequest, requestOptions: RequestOptions? = nil) async throws -> TimesheetsUpsertHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/timesheets/upsert",
            body: request,
            requestOptions: requestOptions,
            responseType: TimesheetsUpsertHrResponse.self
        )
    }

    public func timesheetsGet(request: Requests.TimesheetsGetHrRequest, requestOptions: RequestOptions? = nil) async throws -> TimesheetsGetHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/timesheets/get",
            body: request,
            requestOptions: requestOptions,
            responseType: TimesheetsGetHrResponse.self
        )
    }

    public func timesheetsList(request: Requests.TimesheetsListHrRequest, requestOptions: RequestOptions? = nil) async throws -> TimesheetsListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/timesheets/list",
            body: request,
            requestOptions: requestOptions,
            responseType: TimesheetsListHrResponse.self
        )
    }

    public func timesheetsDelete(request: Requests.TimesheetsDeleteHrRequest, requestOptions: RequestOptions? = nil) async throws -> TimesheetsDeleteHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/timesheets/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: TimesheetsDeleteHrResponse.self
        )
    }
}