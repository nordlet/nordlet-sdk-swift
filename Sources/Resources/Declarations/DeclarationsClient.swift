import Foundation

public final class DeclarationsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1DeclarationsLtIntrastatCompute(request: Requests.PostV1DeclarationsLtIntrastatComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtIntrastatComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/intrastat/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtIntrastatComputeResponse.self
        )
    }

    public func postV1DeclarationsLtIvazGenerate(request: Requests.PostV1DeclarationsLtIvazGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtIvazGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/ivaz/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtIvazGenerateResponse.self
        )
    }

    public func postV1DeclarationsLtIntrastatObligation(request: Requests.PostV1DeclarationsLtIntrastatObligationRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtIntrastatObligationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/intrastat/obligation",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtIntrastatObligationResponse.self
        )
    }

    public func postV1DeclarationsLtIsafGenerate(request: Requests.PostV1DeclarationsLtIsafGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtIsafGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/isaf/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtIsafGenerateResponse.self
        )
    }

    public func postV1DeclarationsLtFr0600Compute(request: Requests.PostV1DeclarationsLtFr0600ComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtFr0600ComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/fr0600/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtFr0600ComputeResponse.self
        )
    }

    public func postV1DeclarationsLtGpm313Compute(request: Requests.PostV1DeclarationsLtGpm313ComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtGpm313ComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/gpm313/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtGpm313ComputeResponse.self
        )
    }

    public func postV1DeclarationsLtSamCompute(request: Requests.PostV1DeclarationsLtSamComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtSamComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/sam/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtSamComputeResponse.self
        )
    }

    public func postV1DeclarationsLtSdGenerate(request: Requests.PostV1DeclarationsLtSdGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtSdGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/sd/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtSdGenerateResponse.self
        )
    }

    public func postV1DeclarationsLtSaftGenerate(request: Requests.PostV1DeclarationsLtSaftGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtSaftGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/saft/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtSaftGenerateResponse.self
        )
    }

    public func postV1DeclarationsLtIvazAmend(request: Requests.PostV1DeclarationsLtIvazAmendRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtIvazAmendResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/ivaz/amend",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtIvazAmendResponse.self
        )
    }

    public func postV1DeclarationsLtIvazCancel(request: Requests.PostV1DeclarationsLtIvazCancelRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtIvazCancelResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/ivaz/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtIvazCancelResponse.self
        )
    }

    public func postV1DeclarationsLtFr0564Compute(request: Requests.PostV1DeclarationsLtFr0564ComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtFr0564ComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/fr0564/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtFr0564ComputeResponse.self
        )
    }

    public func postV1DeclarationsLtGpm312Compute(request: Requests.PostV1DeclarationsLtGpm312ComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtGpm312ComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/gpm312/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtGpm312ComputeResponse.self
        )
    }

    public func postV1DeclarationsLtPln204Compute(request: Requests.PostV1DeclarationsLtPln204ComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtPln204ComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/pln204/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtPln204ComputeResponse.self
        )
    }

    public func postV1DeclarationsEuOssCompute(request: Requests.PostV1DeclarationsEuOssComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsEuOssComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/oss/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsEuOssComputeResponse.self
        )
    }

    public func postV1DeclarationsEuIossCompute(request: Requests.PostV1DeclarationsEuIossComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsEuIossComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/ioss/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsEuIossComputeResponse.self
        )
    }

    public func postV1DeclarationsEuDistanceSalesThresholdGet(request: Requests.PostV1DeclarationsEuDistanceSalesThresholdGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsEuDistanceSalesThresholdGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/distance-sales-threshold/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsEuDistanceSalesThresholdGetResponse.self
        )
    }

    public func postV1DeclarationsEuUnionTurnoverGet(request: Requests.PostV1DeclarationsEuUnionTurnoverGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsEuUnionTurnoverGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/union-turnover/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsEuUnionTurnoverGetResponse.self
        )
    }

    public func postV1DeclarationsEuSmeCrossBorderReportCompute(request: Requests.PostV1DeclarationsEuSmeCrossBorderReportComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsEuSmeCrossBorderReportComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/sme-cross-border-report/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsEuSmeCrossBorderReportComputeResponse.self
        )
    }

    public func postV1DeclarationsEuSmeThresholdsList(request: Requests.PostV1DeclarationsEuSmeThresholdsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsEuSmeThresholdsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/sme-thresholds/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsEuSmeThresholdsListResponse.self
        )
    }

    public func postV1DeclarationsEuSmeThresholdGet(request: Requests.PostV1DeclarationsEuSmeThresholdGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsEuSmeThresholdGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/sme-threshold/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsEuSmeThresholdGetResponse.self
        )
    }

    public func postV1DeclarationsEuVatReturnPacksList(request: Requests.PostV1DeclarationsEuVatReturnPacksListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsEuVatReturnPacksListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/vat-return/packs/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsEuVatReturnPacksListResponse.self
        )
    }

    public func postV1DeclarationsEuVatReturnCompute(request: Requests.PostV1DeclarationsEuVatReturnComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsEuVatReturnComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/vat-return/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsEuVatReturnComputeResponse.self
        )
    }

    /// Generate the Polish JPK_V7M(3) file (VAT declaration with evidence) for a month, per the MF schema in force since February 2026. Amounts must already be in PLN; rows are marked BFK until a KSeF integration supplies invoice numbers. Review the warnings before submitting via e-dokumenty.mf.gov.pl.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsPlJpkV7MGenerate(request: Requests.PostV1DeclarationsPlJpkV7MGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsPlJpkV7MGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/jpk-v7m/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsPlJpkV7MGenerateResponse.self
        )
    }

    /// Build the rows of the Polish recapitulative statement VAT-UE for a month: section C intra-Community supplies of goods, section D intra-Community acquisitions, section E services taxed where the customer is established. Amounts are full złoty per counterparty. The VAT-UE(5) file itself goes out from the EU sales list deadline in the calendar.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsPlVatUeGenerate(request: Requests.PostV1DeclarationsPlVatUeGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsPlVatUeGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/vat-ue/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsPlVatUeGenerateResponse.self
        )
    }

    /// Build the rows of the Polish INTRASTAT declaration for a month, arrivals or dispatches, grouped by CN code, partner country, country of origin, partner VAT number, nature of transaction, transport and delivery terms. Values are whole złoty converted at the invoice rate; credit notes with goods lines are returns (code 21). Goods without a CN code are left out and named in the warnings. The IST message itself goes out from the Intrastat deadline in the calendar.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsPlIntrastatGenerate(request: Requests.PostV1DeclarationsPlIntrastatGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsPlIntrastatGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/intrastat/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsPlIntrastatGenerateResponse.self
        )
    }

    /// List the invoices KSeF holds for this company as the buyer, for a window of acquisition timestamps. Each row carries the KSeF number and, when the document number matches a registered purchase invoice, the invoice it belongs to.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsPlKsefReceivedList(request: Requests.PostV1DeclarationsPlKsefReceivedListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsPlKsefReceivedListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/ksef/received/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsPlKsefReceivedListResponse.self
        )
    }

    /// Read one invoice out of KSeF by its national number. With a purchase invoice given, the KSeF number is written onto that invoice, which is what makes the purchase row of JPK_V7M carry NrKSeF instead of the BFK marker.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsPlKsefReceivedFetch(request: Requests.PostV1DeclarationsPlKsefReceivedFetchRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsPlKsefReceivedFetchResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/ksef/received/fetch",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsPlKsefReceivedFetchResponse.self
        )
    }

    /// The UPO for a KSeF session. KSeF issues one receipt per session rather than per invoice, so the session reference number from the send is what identifies it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsPlKsefReceipt(request: Requests.PostV1DeclarationsPlKsefReceiptRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsPlKsefReceiptResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/ksef/receipt",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsPlKsefReceiptResponse.self
        )
    }

    /// The differences between the accounting result and the taxable profit: non-deductible expenses, income added to or left out of the tax base, extra deductible expenses, donations, losses carried forward, reliefs and tax credits. The annual corporate income tax return is built from them.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func taxAdjustmentsRecordedForATaxYear(request: Requests.PostV1DeclarationsTaxAdjustmentsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsTaxAdjustmentsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/tax-adjustments/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsTaxAdjustmentsListResponse.self
        )
    }

    public func recordATaxAdjustmentForATaxYear(request: Requests.PostV1DeclarationsTaxAdjustmentsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsTaxAdjustmentsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/tax-adjustments/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsTaxAdjustmentsCreateResponse.self
        )
    }

    public func changeARecordedTaxAdjustment(request: Requests.PostV1DeclarationsTaxAdjustmentsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsTaxAdjustmentsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/tax-adjustments/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsTaxAdjustmentsUpdateResponse.self
        )
    }

    public func removeARecordedTaxAdjustment(request: Requests.PostV1DeclarationsTaxAdjustmentsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsTaxAdjustmentsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/tax-adjustments/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsTaxAdjustmentsDeleteResponse.self
        )
    }

    /// What the company has paid the administration towards a tax before the return is filed: payments on account, tax withheld at source by others, a final settlement, and a refund received. Returns report these on their own lines, so the amount they ask for is the balance.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func paymentsAlreadyMadeTowardsATaxOfAYear(request: Requests.PostV1DeclarationsTaxPaymentsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsTaxPaymentsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/tax-payments/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsTaxPaymentsListResponse.self
        )
    }

    public func recordAPaymentMadeTowardsATax(request: Requests.PostV1DeclarationsTaxPaymentsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsTaxPaymentsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/tax-payments/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsTaxPaymentsCreateResponse.self
        )
    }

    public func changeARecordedTaxPayment(request: Requests.PostV1DeclarationsTaxPaymentsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsTaxPaymentsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/tax-payments/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsTaxPaymentsUpdateResponse.self
        )
    }

    public func removeARecordedTaxPayment(request: Requests.PostV1DeclarationsTaxPaymentsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsTaxPaymentsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/tax-payments/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsTaxPaymentsDeleteResponse.self
        )
    }

    /// Whether the general meeting adopted the annual accounts and on which date, the date the accounts were prepared, and which directors signed them. The annual accounts filed with the trade register are built from these facts.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func adoptionAndSigningFactsOfTheAnnualAccountsOfAYear(request: Requests.PostV1DeclarationsAnnualAccountsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsAnnualAccountsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsAnnualAccountsGetResponse.self
        )
    }

    public func recordTheAdoptionAndPreparationOfTheAnnualAccountsOfAYear(request: Requests.PostV1DeclarationsAnnualAccountsSetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsAnnualAccountsSetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/set",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsAnnualAccountsSetResponse.self
        )
    }

    public func recordWhetherADirectorSignedTheAnnualAccountsOfAYear(request: Requests.PostV1DeclarationsAnnualAccountsSignaturesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsAnnualAccountsSignaturesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/signatures/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsAnnualAccountsSignaturesCreateResponse.self
        )
    }

    public func changeARecordedDirectorSignature(request: Requests.PostV1DeclarationsAnnualAccountsSignaturesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsAnnualAccountsSignaturesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/signatures/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsAnnualAccountsSignaturesUpdateResponse.self
        )
    }

    public func removeARecordedDirectorSignature(request: Requests.PostV1DeclarationsAnnualAccountsSignaturesDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsAnnualAccountsSignaturesDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/signatures/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsAnnualAccountsSignaturesDeleteResponse.self
        )
    }

    public func recordADecisionToDistributeProfitADividendAnInterimDividendOrAPaymentTreatedAsOne(request: Requests.PostV1DeclarationsAnnualAccountsDistributionsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsAnnualAccountsDistributionsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/distributions/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsAnnualAccountsDistributionsCreateResponse.self
        )
    }

    public func changeARecordedProfitDistribution(request: Requests.PostV1DeclarationsAnnualAccountsDistributionsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsAnnualAccountsDistributionsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/distributions/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsAnnualAccountsDistributionsUpdateResponse.self
        )
    }

    public func removeARecordedProfitDistribution(request: Requests.PostV1DeclarationsAnnualAccountsDistributionsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsAnnualAccountsDistributionsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/distributions/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsAnnualAccountsDistributionsDeleteResponse.self
        )
    }

    /// Links a file uploaded through files/upload (its storageKey) to the annual accounts of the year as the notes, the management report, the auditor statement, the profit appropriation resolution, the approval certificate, the general data sheet, the full report as a pdf, or another document. Deposits that must carry these documents take them from here.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func attachAnUploadedDocumentToTheAnnualAccountsOfAYear(request: Requests.PostV1DeclarationsAnnualAccountsAttachmentsAddRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsAnnualAccountsAttachmentsAddResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/attachments/add",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsAnnualAccountsAttachmentsAddResponse.self
        )
    }

    public func removeADocumentAttachedToTheAnnualAccountsAndDeleteItsFile(request: Requests.PostV1DeclarationsAnnualAccountsAttachmentsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsAnnualAccountsAttachmentsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/attachments/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsAnnualAccountsAttachmentsDeleteResponse.self
        )
    }

    /// Compute the company income tax return TD4 of a tax year from the ledger and the recorded tax adjustments: the accounting profit, the add-backs, deductions, capital allowances and losses brought forward, the chargeable income, the corporation tax at the rate of the year and the double tax relief, as the fields the company keys into TAXISnet or Tax For All. The Tax Department publishes no upload layout for the TD4; the XML is a working file.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsCyTd4Generate(request: Requests.PostV1DeclarationsCyTd4GenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsCyTd4GenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/cy/td4/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsCyTd4GenerateResponse.self
        )
    }

    /// Build the annual return HE32 of a year: the figures the Registrar’s e-filing screens ask for (company number, registered office, made-up-to date, share capital, register of members, directors and secretary, annual general meeting date, the accounts summary), the working file, and the printed form HE32(I) filled in as a PDF for signing and for keying into the Registrar’s system, which takes the return only through its own screens.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsCyHe32Generate(request: Requests.PostV1DeclarationsCyHe32GenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsCyHe32GenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/cy/he32/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsCyHe32GenerateResponse.self
        )
    }

    /// Build one of the German returns that ELSTER accepts only through a licensed ERiC transmission (E-Bilanz, Körperschaftsteuer, Gewerbesteuer with its Zerlegungserklärung, annual VAT return, Lohnsteuer-Anmeldung, Lohnsteuerbescheinigung) for the company to send through its own ELSTER-capable program. The period is the year, or YYYY-MM for the monthly Lohnsteuer-Anmeldung.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsDeReturnsGenerate(request: Requests.PostV1DeclarationsDeReturnsGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsDeReturnsGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/de/returns/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsDeReturnsGenerateResponse.self
        )
    }

    /// The facts of one year that the German annual returns (Körperschaftsteuer, Gewerbesteuer, Umsatzsteuererklärung) need and the ledger does not hold: changes of shareholders, contracts with shareholders, the tax contribution account, loss carry-back, the donation carry-forward, the business premises with the municipalities for the apportionment of the trade tax, the land values or property tax and the participations for the trade tax additions and reductions, the foreign income per country for the Anlage AESt, the date of leaving the small-business scheme and the Anlage UN answers of a company seated abroad. A key that is absent has not been answered.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsDeReturnFactsGet(request: Requests.PostV1DeclarationsDeReturnFactsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsDeReturnFactsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/de/return-facts/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsDeReturnFactsGetResponse.self
        )
    }

    /// Replace the facts of one year for the German annual returns. The returns built afterwards read them; a key left out stays unanswered.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsDeReturnFactsSet(request: Requests.PostV1DeclarationsDeReturnFactsSetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsDeReturnFactsSetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/de/return-facts/set",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsDeReturnFactsSetResponse.self
        )
    }

    /// Build the DEÜV notifications of a month (Anmeldung for every start, Abmeldung for every leaving, in December the Jahresmeldung for everyone employed on 31 December) as DSME records with the DBME, DBNA, DBGB and DBAN blocks of Anlage 4 in force from 2026, from the approved payroll runs and the employee record, for the company's own transmission channel.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsDeDeuevGenerate(request: Requests.PostV1DeclarationsDeDeuevGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsDeDeuevGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/de/deuev/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsDeDeuevGenerateResponse.self
        )
    }

    /// Build the monthly contribution statement to the health insurers (Beitragsnachweis) from the payroll run: one fixed-length record BW02 per insurer, in the record layout in force from 2026, ready for the company's own transmission channel.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsDeBeitragsnachweisGenerate(request: Requests.PostV1DeclarationsDeBeitragsnachweisGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsDeBeitragsnachweisGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/de/beitragsnachweis/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsDeBeitragsnachweisGenerateResponse.self
        )
    }

    /// Compute the oplysningsskema for selskaber (selskabsselvangivelsen) of an income year from the ledger and the recorded tax adjustments: accounting result before tax, tax adjustments, losses carried forward, taxable income, the 22 % corporation tax, reliefs and the balance, as the rubrikker the company keys into TastSelv Selskabsskat (DIAS). Skatteforvaltningen publishes no file format for the return; the XML is a working file.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsDkSelskabsskatGenerate(request: Requests.PostV1DeclarationsDkSelskabsskatGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsDkSelskabsskatGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/dk/selskabsskat/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsDkSelskabsskatGenerateResponse.self
        )
    }

    /// Send one employment register (töötamise register) entry for an employment contract to e-MTA over X-tee: the start of work, or its end with the reason recorded on the contract.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsEeEmploymentRegisterSend(request: Requests.PostV1DeclarationsEeEmploymentRegisterSendRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsEeEmploymentRegisterSendResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/ee/employment-register/send",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsEeEmploymentRegisterSendResponse.self
        )
    }

    /// Nordlet's declaración responsable for its VERI*FACTU invoicing system (Orden HAC/1177/2024, art. 15), as a PDF and as plain text.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsEsVerifactuDeclaracionResponsable(request: Requests.PostV1DeclarationsEsVerifactuDeclaracionResponsableRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsEsVerifactuDeclaracionResponsableResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/es/verifactu/declaracion-responsable",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsEsVerifactuDeclaracionResponsableResponse.self
        )
    }

    /// Build the Form CT1 of an accounting year as the ROS version 26 XML and the accompanying financial statements as inline XBRL on the FRS 102 Irish Extension 2026 taxonomy Revenue accepts, both from the ledger, the recorded tax adjustments, the annual accounts record and the officers, for upload through the company’s own ROS account. Says whether the company is above the iXBRL deferral limits (balance sheet total €4.4 million, turnover €8.8 million, 50 employees).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsIeCt1Generate(request: Requests.PostV1DeclarationsIeCt1GenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsIeCt1GenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/ie/ct1/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsIeCt1GenerateResponse.self
        )
    }

    /// Build the working paper for the Form B1 annual return of a financial year — company details, registered office, directors and secretary from Settings → Officers, the members from Settings → Shareholders, the issued share capital and the figures of the financial statements — in the order the CORE screens ask for them. The CRO publishes no file format for the B1, so it is keyed into CORE.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsIeB1Generate(request: Requests.PostV1DeclarationsIeB1GenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsIeB1GenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/ie/b1/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsIeB1GenerateResponse.self
        )
    }

    /// Build the TD16-TD19 integration document for a registered purchase invoice and send it to the Sistema di Interscambio. Since July 2022 a purchase from a supplier established abroad is reported this way instead of the esterometro. The Italian VAT rate to self-assess is a judgement about the supply: pass vatRatePercent unless the purchase lines already carry it, otherwise the request is refused rather than guessed.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsItSdiPurchaseSend(request: Requests.PostV1DeclarationsItSdiPurchaseSendRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsItSdiPurchaseSendResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/it/sdi/purchase-send",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsItSdiPurchaseSendResponse.self
        )
    }

    /// Render the TD16-TD19 integration document for a registered purchase invoice without sending it, so the rate and the document type can be checked first.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsItSdiPurchasePreview(request: Requests.PostV1DeclarationsItSdiPurchasePreviewRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsItSdiPurchasePreviewResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/it/sdi/purchase-preview",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsItSdiPurchasePreviewResponse.self
        )
    }

    /// Upload the SAF-T file to i.SAF-T over the iSAFTUploaderService web service and start its processing. The submission itself is confirmed separately, because after confirmation the file can no longer be corrected.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsLtSaftSend(request: Requests.PostV1DeclarationsLtSaftSendRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtSaftSendResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/saft/send",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtSaftSendResponse.self
        )
    }

    /// Render the Sodra 1-SD or 2-SD notice for the contracts starting or ending in the range as an .ffdata document for EDAS.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsLtSdFfdata(request: Requests.PostV1DeclarationsLtSdFfdataRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtSdFfdataResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/sd/ffdata",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtSdFfdataResponse.self
        )
    }

    /// Render the annual corporate income tax return PLN204 as an .ffdata document, including the PLN204S and PLN204Z annexes, from the ledger and the tax adjustments recorded for that year.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsLtPln204Ffdata(request: Requests.PostV1DeclarationsLtPln204FfdataRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLtPln204FfdataResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/pln204/ffdata",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLtPln204FfdataResponse.self
        )
    }

    /// Compute the company income tax return and self-assessment of a year of assessment from the ledger and the recorded tax adjustments: the accounting profit before tax, the add-backs and deductions, the approved donations, capital allowances and losses carried forward, the chargeable income, the 35 % charge, the relief against the tax and the allocation of the distributable profit to the five tax accounts. The Malta Tax and Customs Administration issues the return as a personalised spreadsheet to the registered tax practitioner and publishes no layout, so the XML is a working file and the figures are keyed into that spreadsheet.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsMtCompanyTaxGenerate(request: Requests.PostV1DeclarationsMtCompanyTaxGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsMtCompanyTaxGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/mt/company-tax/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsMtCompanyTaxGenerateResponse.self
        )
    }

    /// Build the annual return of a year: the company number, registered office and made-up-to date, the share capital, the register of members, the directors and the company secretary and the accounts summary, as the figures the Malta Business Registry asks for on its own screens, plus the printed Annual Return Form of the Seventh Schedule filled in as a PDF for signing.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsMtAnnualReturnGenerate(request: Requests.PostV1DeclarationsMtAnnualReturnGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsMtAnnualReturnGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/mt/annual-return/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsMtAnnualReturnGenerateResponse.self
        )
    }

    /// Generate JPK_FA(4), the on-demand structure with every sales invoice issued in a period, its VAT bases per rate and one row per invoice line. Filed only when the tax office asks for it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsPlJpkFaGenerate(request: Requests.PostV1DeclarationsPlJpkFaGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsPlJpkFaGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/jpk-fa/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsPlJpkFaGenerateResponse.self
        )
    }

    /// Generate JPK_KR(1), the on-demand structure with the chart of accounts and its opening balances and turnover, the journal and the double entries behind it. Filed only when the tax office asks for it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsPlJpkKrGenerate(request: Requests.PostV1DeclarationsPlJpkKrGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsPlJpkKrGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/jpk-kr/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsPlJpkKrGenerateResponse.self
        )
    }

    /// Generate JPK_MAG(2), the on-demand structure with the warehouse documents of one warehouse: goods received from outside (PZ) or internally (PW) and issued to a customer (WZ) or internally (RW). Filed only when the tax office asks for it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsPlJpkMagGenerate(request: Requests.PostV1DeclarationsPlJpkMagGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsPlJpkMagGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/jpk-mag/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsPlJpkMagGenerateResponse.self
        )
    }

    /// Generate PIT-11(29) for every person on the payroll of one year: the pay, the deductible costs, the advance withheld and the social and health contributions taken off it. One document per person, because that is how the form is filed.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsPlPit11Generate(request: Requests.PostV1DeclarationsPlPit11GenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsPlPit11GenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/pit-11/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsPlPit11GenerateResponse.self
        )
    }

    /// Generate CIT-8(34), the annual corporate income tax return, from the ledger of the year and the recorded tax adjustments. The tax office code and the small-taxpayer setting come from the e-Deklaracje compliance settings, the seat address from the JPK gateway settings. Names the annexes the figures would need, which are not produced.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsPlCit8Generate(request: Requests.PostV1DeclarationsPlCit8GenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsPlCit8GenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/cit-8/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsPlCit8GenerateResponse.self
        )
    }

    /// Compute the monthly ZUS DRA settlement from the payroll run of one month: the pension, disability, sickness, accident and health insurance contributions and the Labour Fund, Solidarity Fund and guaranteed benefits fund charges, each split between the insured person and the payer. The amounts are carried into Płatnik or ePłatnik by hand.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsPlZusDraCompute(request: Requests.PostV1DeclarationsPlZusDraComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsPlZusDraComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/zus-dra/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsPlZusDraComputeResponse.self
        )
    }

    /// Build the KEDU file for one month: the ZUS DRA settlement and one ZUS RCA report per person on the payroll, in the schema kedu_5_4 that Płatnik and ePłatnik import. The payer REGON, short name and declaration deadline code come from the ZUS compliance settings; the insurance title code and working time of each person from the employee record.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsPlZusDraKedu(request: Requests.PostV1DeclarationsPlZusDraKeduRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsPlZusDraKeduResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/zus-dra/kedu",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsPlZusDraKeduResponse.self
        )
    }

    /// Fill the published ZUS DRA form for one month and return it as a PDF. The amounts, the payer identity and the deadline code are the same ones the KEDU file carries; blocks the payroll does not hold (paid benefits, bridging pensions, income declaration of a self-paying person) stay empty.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsPlZusDraPdf(request: Requests.PostV1DeclarationsPlZusDraPdfRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsPlZusDraPdfResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/zus-dra/pdf",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsPlZusDraPdfResponse.self
        )
    }

    /// Build the RO e-Transport declaration for an issued waybill: goods with their tariff codes and masses, the commercial partner, the route and the vehicle. The XML follows the ANAF eTransport v2 schema and is kept as a file on the waybill. Anything listed in blockers has to be filled in before /etransport/send will accept it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsRoEtransportBuild(request: Requests.PostV1DeclarationsRoEtransportBuildRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsRoEtransportBuildResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/ro/etransport/build",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsRoEtransportBuildResponse.self
        )
    }

    /// Hand the RO e-Transport declaration for an issued waybill to ANAF under the SPV OAuth token in compliance settings, and return the upload index the UIT is read back with. Answers 422 while any field the ANAF validator requires is still missing.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsRoEtransportSubmit(request: Requests.PostV1DeclarationsRoEtransportSubmitRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsRoEtransportSubmitResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/ro/etransport/submit",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsRoEtransportSubmitResponse.self
        )
    }

    /// Read the outcome of an e-Transport declaration from ANAF by its upload index, under the SPV OAuth token in compliance settings. Returns the UIT code once the declaration validates.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsRoEtransportStatus(request: Requests.PostV1DeclarationsRoEtransportStatusRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsRoEtransportStatusResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/ro/etransport/status",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsRoEtransportStatusResponse.self
        )
    }

    /// Build the annual wage declaration (Lohndeklaration) to the AHV-IV-FAK from the approved payroll runs of the year as the CSV that AHVeasy imports under Lohndeklaration → CSV-Import der Lohndaten: one row per employee with the 18 columns of the AHVeasy template, the AHV-liable wage and the ALV wage.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsLiLohndeklarationGenerate(request: Requests.PostV1DeclarationsLiLohndeklarationGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLiLohndeklarationGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/li/lohndeklaration/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLiLohndeklarationGenerateResponse.self
        )
    }

    /// Build the annual wage list (Lohnliste) of a Liechtenstein employer from the approved payroll runs of the year as the XLSX file the tax administration's eLohnausweis / eLohnlisten application imports: one row per employee with PEID, name, birth date, address, gross wage, wage tax withheld and the settlement period.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1DeclarationsLiLohnlistenGenerate(request: Requests.PostV1DeclarationsLiLohnlistenGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsLiLohnlistenGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/li/lohnlisten/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsLiLohnlistenGenerateResponse.self
        )
    }

    public func postV1DeclarationsConfigsList(request: Requests.PostV1DeclarationsConfigsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsConfigsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/configs/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsConfigsListResponse.self
        )
    }

    public func postV1DeclarationsConfigsUpdate(request: Requests.PostV1DeclarationsConfigsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsConfigsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/configs/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsConfigsUpdateResponse.self
        )
    }

    public func storeTheCertificateOrPrivateKeyAFilingSystemAuthenticatesWith(request: Requests.PostV1DeclarationsCertificatesUploadRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsCertificatesUploadResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/certificates/upload",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsCertificatesUploadResponse.self
        )
    }

    public func postV1DeclarationsCertificatesList(request: Requests.PostV1DeclarationsCertificatesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsCertificatesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/certificates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsCertificatesListResponse.self
        )
    }

    public func postV1DeclarationsCertificatesDelete(request: Requests.PostV1DeclarationsCertificatesDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsCertificatesDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/certificates/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsCertificatesDeleteResponse.self
        )
    }

    public func whichDeadlinesNordletCanFileByItselfForThisCompanyAndWhichAreSwitchedOn(request: Requests.PostV1DeclarationsAutomationListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsAutomationListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/automation/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsAutomationListResponse.self
        )
    }

    public func postV1DeclarationsAutomationUpdate(request: Requests.PostV1DeclarationsAutomationUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsAutomationUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/automation/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsAutomationUpdateResponse.self
        )
    }

    public func sendAFilingWhoseDeliveryFailedOnceMoreWithTheBytesThatWereGenerated(request: Requests.PostV1DeclarationsSubmissionsRetryRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsSubmissionsRetryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/submissions/retry",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsSubmissionsRetryResponse.self
        )
    }

    public func postV1DeclarationsSubmissionsCreate(request: Requests.PostV1DeclarationsSubmissionsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsSubmissionsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/submissions/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsSubmissionsCreateResponse.self
        )
    }

    public func postV1DeclarationsSubmissionsMark(request: Requests.PostV1DeclarationsSubmissionsMarkRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsSubmissionsMarkResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/submissions/mark",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsSubmissionsMarkResponse.self
        )
    }

    public func postV1DeclarationsSubmissionsList(request: Requests.PostV1DeclarationsSubmissionsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DeclarationsSubmissionsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/submissions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DeclarationsSubmissionsListResponse.self
        )
    }
}