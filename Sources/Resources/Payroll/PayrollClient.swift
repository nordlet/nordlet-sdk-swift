import Foundation

public final class PayrollClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a department with a code and a name; answers 409 when the code already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func departmentsCreate(request: Requests.DepartmentsCreatePayrollRequest, requestOptions: RequestOptions? = nil) async throws -> DepartmentsCreatePayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/departments/create",
            body: request,
            requestOptions: requestOptions,
            responseType: DepartmentsCreatePayrollResponse.self
        )
    }

    /// Lists the company's departments ordered by code.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func departmentsList(request: Requests.DepartmentsListPayrollRequest, requestOptions: RequestOptions? = nil) async throws -> DepartmentsListPayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/departments/list",
            body: request,
            requestOptions: requestOptions,
            responseType: DepartmentsListPayrollResponse.self
        )
    }

    /// Creates a work schedule with a code, a name and `hoursPerWeek` (default 40); answers 409 when the code already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func schedulesCreate(request: Requests.SchedulesCreatePayrollRequest, requestOptions: RequestOptions? = nil) async throws -> SchedulesCreatePayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/schedules/create",
            body: request,
            requestOptions: requestOptions,
            responseType: SchedulesCreatePayrollResponse.self
        )
    }

    /// Lists the company's work schedules ordered by code.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func schedulesList(request: Requests.SchedulesListPayrollRequest, requestOptions: RequestOptions? = nil) async throws -> SchedulesListPayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/schedules/list",
            body: request,
            requestOptions: requestOptions,
            responseType: SchedulesListPayrollResponse.self
        )
    }

    /// Reads the payment types of the company country's payroll engine, each with the labels of the taxes, contributions and reporting lines it is subject to (`applies`), and the default type an untyped payment falls under. These codes are what `payroll/calc` and the additions of `payroll/runs/create` accept as `paymentType`. Answers 422 when Nordlet has no payroll engine for the company's country.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func paymentTypesList(request: Requests.PaymentTypesListPayrollRequest, requestOptions: RequestOptions? = nil) async throws -> PaymentTypesListPayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/payment-types/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PaymentTypesListPayrollResponse.self
        )
    }

    /// Reads the pay frequencies the company country's payroll engine calculates, the values `payroll/runs/create` takes as `frequency` and `hr/contracts/create` as `payFrequency`. Answers 422 when Nordlet has no payroll engine for the company's country.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func frequenciesList(request: Requests.FrequenciesListPayrollRequest, requestOptions: RequestOptions? = nil) async throws -> FrequenciesListPayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/frequencies/list",
            body: request,
            requestOptions: requestOptions,
            responseType: FrequenciesListPayrollResponse.self
        )
    }

    /// Runs the company country's payroll engine once on a taxable base at a date, with the employee settings given in the body instead of an employee record, and returns the allowance, income tax, contributions, components and net; nothing is saved. `payments` passes typed payments to the engine; each `paymentType` must be a code from `payroll/payment-types/list` (422 otherwise). Answers 422 when Nordlet has no payroll engine for the company's country.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func calc(request: Requests.CalcPayrollRequest, requestOptions: RequestOptions? = nil) async throws -> CalcPayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/calc",
            body: request,
            requestOptions: requestOptions,
            responseType: CalcPayrollResponse.self
        )
    }

    /// Creates a draft payroll run for a pay period, computing each line with the company country's payroll engine, the employee's approved runs of the tax year before the period and of the two previous tax years, the timesheets of the period and `payDate` (default the last day of the period). A `monthly` run (the default `frequency`) takes `year` and `month`; a `semimonthly` run takes a `periodStart` on the 1st (to the 15th) or the 16th (to the month end), and a `weekly`, `biweekly` or `four_weekly` run a `periodStart` from which the period runs 7, 14 or 28 days. `payroll/frequencies/list` gives the frequencies the company country's engine calculates; the engine also sets the run's `taxYear` and `taxPeriod` (by default the calendar year and the month). A run of a frequency other than monthly gets the year and month of its period end. Without `lines`, every employee whose contract has the run's pay frequency and overlaps the period gets a line, whatever the employee's status: the gross is the contract's salary for one period (a monthly, weekly or yearly salary brought to a year and divided by the periods of the year: 12, 24, 13, 26 or 52) reduced to the paid working days of the contract and the timesheets, unless `grossOverrides` sets it; the per diems of approved business trips ending in the period are added untaxed and the trips linked to the run; for a Lithuanian company the car benefit in kind (`includeNatura`) and the compensation for unused leave of a contract ending in the period are added. The timesheets count only when every month the period touches has one. `warnings` names an employee whose `sick` days on working days reduced the salary (no employer sick pay is computed; add it to the line's additions) and an employee whose timesheet has no paid day, so that the salary is 0. With `lines`, only the given employees are computed with their gross, additions and deductions, and the per diems of their approved, unlinked business trips ending in the period are added untaxed and the trips linked to the run; a taxable addition may carry a `paymentType` from `payroll/payment-types/list` and `hours`. Answers 422 when the country has no engine or its engine does not calculate the frequency, the period is not given the way its frequency needs, an employee is given twice, has two contracts in the period, has no contract and no gross, or is paid by the hour or day without a gross; 409 when a run of the same frequency already covers part of the period or the accounting period is locked.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func runsCreate(request: Requests.RunsCreatePayrollRequest, requestOptions: RequestOptions? = nil) async throws -> RunsCreatePayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/runs/create",
            body: request,
            requestOptions: requestOptions,
            responseType: RunsCreatePayrollResponse.self
        )
    }

    /// Reads a payroll run with its lines.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func runsGet(request: Requests.RunsGetPayrollRequest, requestOptions: RequestOptions? = nil) async throws -> RunsGetPayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/runs/get",
            body: request,
            requestOptions: requestOptions,
            responseType: RunsGetPayrollResponse.self
        )
    }

    /// Lists payroll runs without their lines; filterable by `status`, `year`, `month`, `frequency` and `taxYear`, sortable by `createdAt`, `year`, `month`, `period` (the year, then the month), `periodStart`, `status`, `grossTotal`, `incomeTaxTotal`, `contributions` (the employee plus the employer contributions) and `netTotal`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func runsList(request: Requests.RunsListPayrollRequest, requestOptions: RequestOptions? = nil) async throws -> RunsListPayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/runs/list",
            body: request,
            requestOptions: requestOptions,
            responseType: RunsListPayrollResponse.self
        )
    }

    /// The days and hours worked, the days on the register and the average hourly earnings that some countries report per employment. The Czech monthly employer report asks for all four. They can be set while the run is a draft.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func linesAttendance(request: Requests.LinesAttendancePayrollRequest, requestOptions: RequestOptions? = nil) async throws -> LinesAttendancePayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/lines/attendance",
            body: request,
            requestOptions: requestOptions,
            responseType: LinesAttendancePayrollResponse.self
        )
    }

    /// Posts the run's journal entry dated the last day of the run's period and sets the status to `approved`: the wage expense (net pay, income tax, employee contributions and deductions) and the employer contributions are debited; the net payable, the income tax, the social contributions (on one account, or split between the employee and employer accounts when their codes differ) and the deductions are credited. The accounts default to the payroll accounts of the company's chart template; each can be given per call (`incomeTaxAccountCode` and `socialContributionsAccountCode` among them). Answers 409 when the run is not a draft or the accounting period is locked, 422 when the run has no lines or nothing to post, and emits `payroll_run.approved`. For an Irish company with the automation of the `ie-payroll-withholding` deadline switched on, the month's payroll submission is sent at once and a failure is added to the run's `warnings`; for a UK company with the automation of `gb-paye-fps` switched on, the Full Payment Submission of the run is sent to HMRC at once (period: the tax month of the pay date, named by the calendar month in which it starts on the 6th), together with any approved run of that tax month not yet reported, and a failure is added to the run's `warnings`. For a Lithuanian company the unused leave days a line paid as compensation, recorded per balance year when the run was created, are added to the used days of the leave balances. For a US company whose filing option `usDepositSchedule` is `semiweekly`, the federal tax deposit of the run's pay date is added to the calendar (`us-tax-deposit-semiweekly`, the pay date as period), due on the Wednesday after a Wednesday to Friday payday and the Friday after a Saturday to Tuesday payday, moved past District of Columbia legal holidays. Undo with `payroll/runs/reverse`, pay with `payroll/payments/export`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func runsApprove(request: Requests.RunsApprovePayrollRequest, requestOptions: RequestOptions? = nil) async throws -> RunsApprovePayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/runs/approve",
            body: request,
            requestOptions: requestOptions,
            responseType: RunsApprovePayrollResponse.self
        )
    }

    /// Posts a journal entry dated the last day of the run's period that mirrors the run's entry (debits and credits swapped), sets the status to `reversed` with the reason, and releases the business trips the run paid so the next run picks them up again; the leave days the run marked used as compensation for unused leave are given back to the leave balances. A US run removes the semiweekly federal tax deposit of its pay date from the calendar unless another approved run has the same pay date. Answers 409 when the run is not approved, when part of it is matched to bank payments (`paidAmount`, unmatch them first) or when the accounting period is locked. Emits `payroll_run.reversed`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func runsReverse(request: Requests.RunsReversePayrollRequest, requestOptions: RequestOptions? = nil) async throws -> RunsReversePayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/runs/reverse",
            body: request,
            requestOptions: requestOptions,
            responseType: RunsReversePayrollResponse.self
        )
    }

    /// Deletes a draft run with its lines and releases the business trips linked to it; answers 409 when the run is not a draft. An approved run is undone with `payroll/runs/reverse`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func runsCancel(request: Requests.RunsCancelPayrollRequest, requestOptions: RequestOptions? = nil) async throws -> RunsCancelPayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/runs/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: RunsCancelPayrollResponse.self
        )
    }

    /// Builds a payment file for an approved run: one transfer from the chosen bank account to each employee's account for the line's net when it is positive, with a remittance text in `locale` (default the locale of the calling user) and the run period. The format follows the bank account: a GBP account of a UK company with a sort code and account number gets a Bacs Standard 18 Direct Credit file (needs `paymentFileSettings.serviceUserNumber`; the employee's `bankCode` is the 6-digit sort code and `bankAccountNumber` the 8-digit account number; `executionDate` is the day the pay arrives, a Bacs working day whose processing day is after today, default the earliest), a USD account of a US company with a routing number and account number gets a Nacha ACH file of PPD credits with the entry description PAYROLL (needs `paymentFileSettings.immediateOrigin` and `companyIdentification`; the employee's `bankCode` is the 9-digit routing number, plus `bankAccountNumber` and `bankAccountType`; default `executionDate` the company's current date), and an account with an IBAN gets ISO 20022 pain.001.001.03, a SEPA credit transfer in EUR and a generic pain.001 in other currencies (the employee's IBAN; default `executionDate` the company's current date). Answers 409 when the run is not approved, and 422 when the bank account fits no format or is not in the company's base currency, an employee lacks the account details the format needs (`hr/employees/update`) or no line has a positive net. The file is returned in `content`, with `format`, `fileName` and `contentType`; nothing is sent to the bank.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func paymentsExport(request: Requests.PaymentsExportPayrollRequest, requestOptions: RequestOptions? = nil) async throws -> PaymentsExportPayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/payments/export",
            body: request,
            requestOptions: requestOptions,
            responseType: PaymentsExportPayrollResponse.self
        )
    }
}