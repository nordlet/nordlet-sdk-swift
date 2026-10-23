import Foundation

public final class HrClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a job position with an optional code and name translations, for use in `hr/contracts/create`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func positionsCreate(request: Requests.PositionsCreateHrRequest, requestOptions: RequestOptions? = nil) async throws -> PositionsCreateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/positions/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PositionsCreateHrResponse.self
        )
    }

    /// Changes the code, name or translations of a position; a null `translations` removes them.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func positionsUpdate(request: Requests.PositionsUpdateHrRequest, requestOptions: RequestOptions? = nil) async throws -> PositionsUpdateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/positions/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PositionsUpdateHrResponse.self
        )
    }

    /// Lists the company's positions; filterable and sortable by `name` and `code`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func positionsList(request: Requests.PositionsListHrRequest, requestOptions: RequestOptions? = nil) async throws -> PositionsListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/positions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PositionsListHrResponse.self
        )
    }

    /// Creates an employee record. `payrollOptions` holds the country-specific settings the payroll engine reads for the person (see `hr/employees/fields`); `applyAllowance` defaults to true and `pensionAccumulation` to false.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func employeesCreate(request: Requests.EmployeesCreateHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesCreateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/create",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesCreateHrResponse.self
        )
    }

    /// Changes the given fields of an employee; a null clears the fields that allow it (code, personal code, birth date, contact details, address, IBAN, social insurance number and start, hire date, notes). `status` and `terminationDate` are set here too.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func employeesUpdate(request: Requests.EmployeesUpdateHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesUpdateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/update",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesUpdateHrResponse.self
        )
    }

    /// Reads one employee.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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

    /// Lists the employees that are not deleted; filterable by `firstName`, `lastName`, `code`, `status` and `email`, sortable by `lastName`, `code` and `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func employeesList(request: Requests.EmployeesListHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/list",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesListHrResponse.self
        )
    }

    /// Marks the employee deleted; the record stays and no longer appears in lists or payroll runs. `hr/employees/anonymize` also blanks the personal data.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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

    /// Creates an employment contract for an employee. A `permanent` contract takes no `endDate` and a `fixed_term` one requires it; the number comes from `contractNo` or, with `agreementId`, from the employee's agreement; `workHours` defaults by `salaryType`. Answers 422 when the end date is before the start, and 409 when the employee already has a contract overlapping the period (end it with `hr/contracts/end` first) or the contract number already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func contractsCreate(request: Requests.ContractsCreateHrRequest, requestOptions: RequestOptions? = nil) async throws -> ContractsCreateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/contracts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ContractsCreateHrResponse.self
        )
    }

    /// Ends a contract on `endDate` with an optional reason. Answers 422 when the end date is before the contract start.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func contractsEnd(request: Requests.ContractsEndHrRequest, requestOptions: RequestOptions? = nil) async throws -> ContractsEndHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/contracts/end",
            body: request,
            requestOptions: requestOptions,
            responseType: ContractsEndHrResponse.self
        )
    }

    /// Lists employment contracts; filterable by `employeeId`, `agreementId`, `status` and `contractNo`, sortable by `startDate` and `contractNo`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func contractsList(request: Requests.ContractsListHrRequest, requestOptions: RequestOptions? = nil) async throws -> ContractsListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/contracts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ContractsListHrResponse.self
        )
    }

    /// Creates or replaces the leave entitlement of an employee for a year; `usedDays` is kept unless given (0 on a new row) and `remainingDays` is the entitled days less the used ones.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func leaveBalancesSet(request: Requests.LeaveBalancesSetHrRequest, requestOptions: RequestOptions? = nil) async throws -> LeaveBalancesSetHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/leave-balances/set",
            body: request,
            requestOptions: requestOptions,
            responseType: LeaveBalancesSetHrResponse.self
        )
    }

    /// Lists leave balances, narrowed to an employee and/or a year when given, oldest year first.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func leaveBalancesList(request: Requests.LeaveBalancesListHrRequest, requestOptions: RequestOptions? = nil) async throws -> LeaveBalancesListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/leave-balances/list",
            body: request,
            requestOptions: requestOptions,
            responseType: LeaveBalancesListHrResponse.self
        )
    }

    /// Records a sick-leave certificate of an employee. Answers 422 when `toDate` is before `fromDate`. `payroll/runs/create` warns when a certificate covers working days of a month that has no timesheet.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func incapacityCertificatesCreate(request: Requests.IncapacityCertificatesCreateHrRequest, requestOptions: RequestOptions? = nil) async throws -> IncapacityCertificatesCreateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/incapacity-certificates/create",
            body: request,
            requestOptions: requestOptions,
            responseType: IncapacityCertificatesCreateHrResponse.self
        )
    }

    /// Lists incapacity certificates; filterable by `employeeId` and `number`, sortable by `fromDate` and `number`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func incapacityCertificatesList(request: Requests.IncapacityCertificatesListHrRequest, requestOptions: RequestOptions? = nil) async throws -> IncapacityCertificatesListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/incapacity-certificates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: IncapacityCertificatesListHrResponse.self
        )
    }

    /// Adds the company's daily per diem rate for a destination country from `validFrom`; `hr/business-trips/create` takes the latest rate valid on the trip's start date. Answers 409 when a rate for that country already starts on that date.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func perDiemRatesCreate(request: Requests.PerDiemRatesCreateHrRequest, requestOptions: RequestOptions? = nil) async throws -> PerDiemRatesCreateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/per-diem-rates/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PerDiemRatesCreateHrResponse.self
        )
    }

    /// Lists per diem rates; filterable by `countryCode`, sortable by `countryCode` and `validFrom`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func perDiemRatesList(request: Requests.PerDiemRatesListHrRequest, requestOptions: RequestOptions? = nil) async throws -> PerDiemRatesListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/per-diem-rates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PerDiemRatesListHrResponse.self
        )
    }

    /// Deletes a per diem rate.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func perDiemRatesDelete(request: Requests.PerDiemRatesDeleteHrRequest, requestOptions: RequestOptions? = nil) async throws -> PerDiemRatesDeleteHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/per-diem-rates/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PerDiemRatesDeleteHrResponse.self
        )
    }

    /// Stores the trip as a draft with `days` counted as calendar days, both ends included, and `perDiemAmount` as the days times the company's rate for the destination valid on the start date (`hr/per-diem-rates/create`). Answers 422 when the trip ends before it starts or no rate covers the destination on that date, and 409 when the employee already has a trip overlapping the dates.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func businessTripsCreate(request: Requests.BusinessTripsCreateHrRequest, requestOptions: RequestOptions? = nil) async throws -> BusinessTripsCreateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/business-trips/create",
            body: request,
            requestOptions: requestOptions,
            responseType: BusinessTripsCreateHrResponse.self
        )
    }

    /// Reads one business trip.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func businessTripsGet(request: Requests.BusinessTripsGetHrRequest, requestOptions: RequestOptions? = nil) async throws -> BusinessTripsGetHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/business-trips/get",
            body: request,
            requestOptions: requestOptions,
            responseType: BusinessTripsGetHrResponse.self
        )
    }

    /// Lists business trips; filterable by `employeeId`, `status` and `payrollRunId`, sortable by `startDate`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func businessTripsList(request: Requests.BusinessTripsListHrRequest, requestOptions: RequestOptions? = nil) async throws -> BusinessTripsListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/business-trips/list",
            body: request,
            requestOptions: requestOptions,
            responseType: BusinessTripsListHrResponse.self
        )
    }

    /// Sets the trip's status to `approved`. `payroll/runs/create` without explicit lines adds the per diem of every approved trip ending in the run month as an untaxed addition and sets the trip's `payrollRunId`; reversing or cancelling the run releases the trip again. Answers 409 when the trip is not a draft.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func businessTripsApprove(request: Requests.BusinessTripsApproveHrRequest, requestOptions: RequestOptions? = nil) async throws -> BusinessTripsApproveHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/business-trips/approve",
            body: request,
            requestOptions: requestOptions,
            responseType: BusinessTripsApproveHrResponse.self
        )
    }

    /// Deletes a draft trip; answers 409 when the trip is not a draft.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func businessTripsDelete(request: Requests.BusinessTripsDeleteHrRequest, requestOptions: RequestOptions? = nil) async throws -> BusinessTripsDeleteHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/business-trips/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: BusinessTripsDeleteHrResponse.self
        )
    }

    /// Adds an education, qualification, certificate or training record to an employee, optionally linked to one of the company's uploaded files (`fileId`).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func employeesRecordsCreate(request: Requests.EmployeesRecordsCreateHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesRecordsCreateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/records/create",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesRecordsCreateHrResponse.self
        )
    }

    /// Changes the given fields of an employee record; `issuedAt`, `validUntil` and `fileId` can be cleared with null.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func employeesRecordsUpdate(request: Requests.EmployeesRecordsUpdateHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesRecordsUpdateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/records/update",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesRecordsUpdateHrResponse.self
        )
    }

    /// Deletes an employee record.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func employeesRecordsDelete(request: Requests.EmployeesRecordsDeleteHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesRecordsDeleteHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/records/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesRecordsDeleteHrResponse.self
        )
    }

    /// Lists employee records; filterable by `employeeId`, `type` and `title`, sortable by `createdAt` and `issuedAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func employeesRecordsList(request: Requests.EmployeesRecordsListHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesRecordsListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/records/list",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesRecordsListHrResponse.self
        )
    }

    /// Lists the files uploaded against an employee, newest first.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func employeesAttachmentsList(request: Requests.EmployeesAttachmentsListHrRequest, requestOptions: RequestOptions? = nil) async throws -> EmployeesAttachmentsListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/attachments/list",
            body: request,
            requestOptions: requestOptions,
            responseType: EmployeesAttachmentsListHrResponse.self
        )
    }

    /// Builds the timesheet of the month for every employee with a contract in it, or for one employee with `employeeId`, replacing any existing timesheet: the Monday to Friday days within the contract get the contract's daily hours (its weekly hours over five), and for a Lithuanian company the public holidays are `holiday` days with 0 hours. Answers 422 when no contract covers the month.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func timesheetsGenerate(request: Requests.TimesheetsGenerateHrRequest, requestOptions: RequestOptions? = nil) async throws -> TimesheetsGenerateHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/timesheets/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: TimesheetsGenerateHrResponse.self
        )
    }

    /// Creates or replaces the timesheet of an employee for a month from the given days; `workedDays` and `workedHours` count the `work` and `business_trip` days with hours. Answers 422 for a day outside the month, a day given twice or more than 24 hours in a day. `payroll/runs/create` reads the timesheet for the paid days, the days worked and the business-trip days of the month.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func timesheetsUpsert(request: Requests.TimesheetsUpsertHrRequest, requestOptions: RequestOptions? = nil) async throws -> TimesheetsUpsertHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/timesheets/upsert",
            body: request,
            requestOptions: requestOptions,
            responseType: TimesheetsUpsertHrResponse.self
        )
    }

    /// Reads the timesheet of an employee for a month.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func timesheetsGet(request: Requests.TimesheetsGetHrRequest, requestOptions: RequestOptions? = nil) async throws -> TimesheetsGetHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/timesheets/get",
            body: request,
            requestOptions: requestOptions,
            responseType: TimesheetsGetHrResponse.self
        )
    }

    /// Lists the timesheets of a month, ordered by employee name.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func timesheetsList(request: Requests.TimesheetsListHrRequest, requestOptions: RequestOptions? = nil) async throws -> TimesheetsListHrResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/timesheets/list",
            body: request,
            requestOptions: requestOptions,
            responseType: TimesheetsListHrResponse.self
        )
    }

    /// Deletes a timesheet.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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