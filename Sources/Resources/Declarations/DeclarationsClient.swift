import Foundation

public final class DeclarationsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Builds the Lithuanian Intrastat report of a month for one flow as the IDAIS INTRASTATReportSubmission XML: dispatches from the issued sale invoices and purchase credit notes, arrivals from the registered purchase invoices and sale credit notes, grouped into report items. `transactionNature`, `deliveryTerms`, `transportMode` and `regionCode` are the defaults for lines without their own values; `statisticalValueRequired` adds the statistical value to each item. Answers 422 when the company is not a VAT payer. With `persist`, the file is stored and a submission for `lt-intrastat-arrivals` or `lt-intrastat-dispatches` is created.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltIntrastatCompute(request: Requests.LtIntrastatComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtIntrastatComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/intrastat/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: LtIntrastatComputeDeclarationsResponse.self
        )
    }

    /// Builds the i.VAZ transport document message (iVAZ1.3.3) for up to 100 issued waybills and returns the XML. Answers 422 when the registration code of the company is not numeric or when a waybill is not issued. With `persist`, the file is stored and a submission for `lt-ivaz` is created.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltIvazGenerate(request: Requests.LtIvazGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtIvazGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/ivaz/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: LtIvazGenerateDeclarationsResponse.self
        )
    }

    /// Checks the Intrastat reporting obligation of a year per flow: the value of goods traded with other Member States in the previous year, the month from which reporting is due (January when that value already passed the reporting threshold, else the month the cumulative value of the year passes it), whether the statistical value is required, and the monthly values. Answers 422 when no thresholds are stored for the year.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltIntrastatObligation(request: Requests.LtIntrastatObligationDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtIntrastatObligationDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/intrastat/obligation",
            body: request,
            requestOptions: requestOptions,
            responseType: LtIntrastatObligationDeclarationsResponse.self
        )
    }

    /// Builds the Lithuanian i.SAF register XML of a month: `dataType` F covers both registers, S the issued sale invoices only, P the registered purchase invoices only. Returns the XML without storing it; `declarations/submissions/create` stores it as a submission.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltIsafGenerate(request: Requests.LtIsafGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtIsafGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/isaf/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: LtIsafGenerateDeclarationsResponse.self
        )
    }

    /// Computes the fields of the Lithuanian VAT return FR0600 for the period of `months` months starting in `month`, with the breakdown by VAT classifier behind them. `deductionPercent` is the share of input VAT deducted and is written to field 28.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltFr0600Compute(request: Requests.LtFr0600ComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtFr0600ComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/fr0600/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: LtFr0600ComputeDeclarationsResponse.self
        )
    }

    /// Computes fields 5 to 7 of the monthly GPM313 from the payroll run of the month the pay was earned: the run of the previous month with `payoutTiming` `next-month`, the run of the same month with `same-month`. `paymentDay` decides whether the withheld tax goes to field 6 (paid by the 15th) or field 7 (after it). Fields 8 to 12 are returned as zero.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltGpm313Compute(request: Requests.LtGpm313ComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtGpm313ComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/gpm313/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: LtGpm313ComputeDeclarationsResponse.self
        )
    }

    /// Computes the monthly SAM figures from the payroll run of the month: per employee the insured income, the employee and employer contributions together and the resulting tariff, plus the insured count and the totals. A missing run or a run still in draft is reported in the warnings.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltSamCompute(request: Requests.LtSamComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtSamComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/sam/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: LtSamComputeDeclarationsResponse.self
        )
    }

    /// Lists the rows of the 1-SD (employment contracts that start in the date range) or of the 2-SD (contracts that ended in the range, with the final insured income and contributions from the payroll line of the termination month). Answers 422 when `fromDate` is after `toDate`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltSdGenerate(request: Requests.LtSdGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtSdGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/sd/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: LtSdGenerateDeclarationsResponse.self
        )
    }

    /// Builds the Lithuanian SAF-T (version 2.01) XML for a date range: `dataType` F is the full file, GL, SI, PI, PA, MG and AS limit it to the general ledger, sale invoices, purchase invoices, payments, movements of goods or asset transactions. Answers 422 when `fromDate` is after `toDate`. With `persist`, the file is stored and a submission for `lt-saft` is created.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltSaftGenerate(request: Requests.LtSaftGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtSaftGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/saft/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: LtSaftGenerateDeclarationsResponse.self
        )
    }

    /// Builds an i.VAZ amendment message for up to 100 issued waybills as TransportDocumentAmendment elements. `corrections` carries corrected values per waybill: `consigneePartnerId`, `unloadAddress`, `vehiclePlate`, `trailerPlate`, `driverName`, `driverSurname` (the last three can be cleared with null) and line `quantity` by line id; the message carries the waybill with them applied, and with `persist` they are also stored on the waybill. Answers 422 when the registration code of the company is not numeric, when a waybill is not issued, or when a correction names a waybill not in `waybillIds`, a waybill twice, a line not on its waybill or a consignee partner the company does not have. With `persist`, the file is stored and a submission for `lt-ivaz-amendment` is created.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltIvazAmend(request: Requests.LtIvazAmendDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtIvazAmendDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/ivaz/amend",
            body: request,
            requestOptions: requestOptions,
            responseType: LtIvazAmendDeclarationsResponse.self
        )
    }

    /// Builds an i.VAZ cancellation message for up to 100 waybills, each with a cancellation reason code and optional additional information. Answers 422 when the registration code of the company is not numeric; a waybill that was never issued is reported in the warnings. With `persist`, the file is stored and a submission for `lt-ivaz-cancellation` is created.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltIvazCancel(request: Requests.LtIvazCancelDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtIvazCancelDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/ivaz/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: LtIvazCancelDeclarationsResponse.self
        )
    }

    /// Computes the rows of the Lithuanian FR0564 report of a month from the issued sale invoices and credit notes with the `intra_eu_b2b` or `reverse_charge` scheme: one row per buyer VAT number of another Member State, with goods and services split by the type of the catalogue item. Invoices not in EUR and buyers without a valid EU VAT number are left out and named in the warnings; the triangular column is always zero.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltFr0564Compute(request: Requests.LtFr0564ComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtFr0564ComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/fr0564/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: LtFr0564ComputeDeclarationsResponse.self
        )
    }

    /// Computes the rows of the annual GPM312 from the payroll runs of the payout months of the year (December of the previous year to November with `payoutTiming` `next-month`, January to December with `same-month`): one row per employee and payment type code, with the amount paid, the tax withheld and the rate applied.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltGpm312Compute(request: Requests.LtGpm312ComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtGpm312ComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/gpm312/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: LtGpm312ComputeDeclarationsResponse.self
        )
    }

    /// Computes the boxes of the Lithuanian annual corporate income tax return PLN204 for the fiscal year from the financial statements and the tax adjustments recorded with `declarations/tax-adjustments/create`: the PLN204S annex from the `non_deductible` adjustments and the PLN204Z annex from the `non_taxable_income` ones, by their `code`. The small-entity rate is applied when the size criteria allow it. Answers 422 when such an adjustment has no code or a code the annex does not list, or when no rate table covers the period.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltPln204Compute(request: Requests.LtPln204ComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtPln204ComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/pln204/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: LtPln204ComputeDeclarationsResponse.self
        )
    }

    /// Computes the Union OSS return of a quarter from the issued invoices and credit notes with the `oss_union` VAT scheme: one row per Member State of consumption and VAT rate, classified as standard or reduced, and a corrections section for the credit notes that credit invoices of earlier periods. Amounts are in EUR, converted at the official rate of the last day of the period. Answers 422 when the company is not established in the EU.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euOssCompute(request: Requests.EuOssComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EuOssComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/oss/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: EuOssComputeDeclarationsResponse.self
        )
    }

    /// Computes the non-Union OSS return of a quarter (Directive 2006/112/EC art. 358a to 369k) from the issued invoices and credit notes with the `oss_non_union` VAT scheme: services to consumers in the EU by a company established outside it. The rows, corrections and EUR conversion are those of `declarations/eu/oss/compute` (art. 365: per Member State of consumption the value without VAT and the VAT per rate; amendments of an earlier return in a later one within three years; art. 366: euro at the rate of the last day of the period). `memberStateOfIdentification` is the Member State the company registered with for the scheme (art. 358a(2)). Answers 422 when the company is established in the EU.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euOssNonUnionCompute(request: Requests.EuOssNonUnionComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EuOssNonUnionComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/oss-non-union/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: EuOssNonUnionComputeDeclarationsResponse.self
        )
    }

    /// Computes the IOSS return of a month from the issued invoices and credit notes with the `ioss` VAT scheme, with the same rows, corrections and EUR conversion as `declarations/eu/oss/compute`. Answers 422 when the company is not established in the EU.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euIossCompute(request: Requests.EuIossComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EuIossComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/ioss/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: EuIossComputeDeclarationsResponse.self
        )
    }

    /// Builds the monthly return of the special scheme for transfers of own goods from the warehouse transfers between warehouses in two different EU Member States: one row per destination and dispatch country with the cost of the goods as the taxable amount in EUR, the transfers behind the rows, and the due date. Answers 422 when the company is not established in the EU.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euOwnGoodsTransfersCompute(request: Requests.EuOwnGoodsTransfersComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EuOwnGoodsTransfersComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/own-goods-transfers/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: EuOwnGoodsTransfersComputeDeclarationsResponse.self
        )
    }

    /// Lists the transactions of a date range that fall under EU digital reporting: issued sale invoices and credit notes with the `intra_eu_b2b` or `reverse_charge` scheme to EU customers, and registered purchase invoices from suppliers in other Member States whose lines carry a self-assessed VAT classifier. Each transaction names the article it is reported under, the Member State it is reported to, its deadline and the data still missing. Answers 422 when the company is not identified for VAT in the EU.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euDigitalReportingList(request: Requests.EuDigitalReportingListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EuDigitalReportingListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/digital-reporting/list",
            body: request,
            requestOptions: requestOptions,
            responseType: EuDigitalReportingListDeclarationsResponse.self
        )
    }

    /// Which platform sellers are reportable for the year (Council Directive (EU) 2021/514, Annex V; for a UK company, the HMRC digital platform reporting rules and the jurisdictions HMRC lists as reportable for the year) and why the others are excluded, the data still missing, and how the company files the report in its Member State or with HMRC.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euDac7Preview(request: Requests.EuDac7PreviewDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EuDac7PreviewDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/dac7/preview",
            body: request,
            requestOptions: requestOptions,
            responseType: EuDac7PreviewDeclarationsResponse.self
        )
    }

    /// Builds the DAC7 (DPI) XML report of a year for the Member State of the company, or the HMRC digital platform report (OECD DPI XML 1.0, file name equal to the MessageRefId) for a UK company, and returns it base64-encoded with the file name the administration expects. Answers 422 when no DAC7 filing channel exists for the company country. The sellers and the missing data behind it come from `declarations/eu/dac7/preview`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euDac7Xml(request: Requests.EuDac7XmlDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EuDac7XmlDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/dac7/xml",
            body: request,
            requestOptions: requestOptions,
            responseType: EuDac7XmlDeclarationsResponse.self
        )
    }

    /// Sums the cross-border sales to EU consumers (invoices under the `oss_union` scheme, and domestic-scheme invoices to partners without a VAT number in another Member State) of the current and the preceding calendar year as of `date` (default: the current date of the company) and compares both with the EUR 10 000 distance sales threshold.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euDistanceSalesThresholdGet(request: Requests.EuDistanceSalesThresholdGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EuDistanceSalesThresholdGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/distance-sales-threshold/get",
            body: request,
            requestOptions: requestOptions,
            responseType: EuDistanceSalesThresholdGetDeclarationsResponse.self
        )
    }

    /// Sums the turnover of the company within the Union (issued invoices and credit notes other than export and out-of-scope supplies) for the current and the previous calendar year as of `date` (default: the current date of the company) and compares it with the EUR 100 000 cap of the cross-border SME scheme. The status is `not_applicable` for a registered VAT payer, otherwise `below`, `approaching` or `exceeded`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euUnionTurnoverGet(request: Requests.EuUnionTurnoverGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EuUnionTurnoverGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/union-turnover/get",
            body: request,
            requestOptions: requestOptions,
            responseType: EuUnionTurnoverGetDeclarationsResponse.self
        )
    }

    /// Builds the quarterly report of the cross-border SME scheme: the value of the issued supplies within the Union per Member State of supply (the VAT country of the invoice, else the country of the partner, else the home country), in the base currency of the company. Supplies that resolve to a non-EU country are left out and named in the warnings.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euSmeCrossBorderReportCompute(request: Requests.EuSmeCrossBorderReportComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EuSmeCrossBorderReportComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/sme-cross-border-report/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: EuSmeCrossBorderReportComputeDeclarationsResponse.self
        )
    }

    /// Returns the stored table of national SME VAT exemption thresholds per Member State, with sector thresholds and intra-EU acquisition triggers where recorded, and the national and Union-wide caps of the directive. No company data is read.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euSmeThresholdsList(request: Requests.EuSmeThresholdsListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EuSmeThresholdsListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/sme-thresholds/list",
            body: request,
            requestOptions: requestOptions,
            responseType: EuSmeThresholdsListDeclarationsResponse.self
        )
    }

    /// Compares the gross turnover of the company in the current calendar year as of `date` (default: the current date of the company) with the national SME exemption threshold of its country. The status is `not_applicable` for a registered VAT payer, `unknown` when no threshold is on file or its currency differs from the base currency, otherwise `below`, `approaching` or `exceeded`; when the country has an intra-EU acquisitions trigger, the acquisitions from and services to other Member States are compared with it too.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euSmeThresholdGet(request: Requests.EuSmeThresholdGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EuSmeThresholdGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/sme-threshold/get",
            body: request,
            requestOptions: requestOptions,
            responseType: EuSmeThresholdGetDeclarationsResponse.self
        )
    }

    /// Lists the national VAT return forms Nordlet can compute, with the country, form key, form name, filing frequency and source.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euVatReturnPacksList(request: Requests.EuVatReturnPacksListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EuVatReturnPacksListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/vat-return/packs/list",
            body: request,
            requestOptions: requestOptions,
            responseType: EuVatReturnPacksListDeclarationsResponse.self
        )
    }

    /// Computes the national VAT return of `countryCode` for the period of `months` months starting in `month`, as the numbered boxes of the form with labels and amounts. Answers 422 when no return pack is registered for the country; the packs are listed by `declarations/eu/vat-return/packs/list`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func euVatReturnCompute(request: Requests.EuVatReturnComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EuVatReturnComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/eu/vat-return/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: EuVatReturnComputeDeclarationsResponse.self
        )
    }

    /// Generate the Polish JPK_V7M(3) file (VAT declaration with evidence) for a month, per the MF schema in force since February 2026. Amounts must already be in PLN; rows are marked BFK until a KSeF integration supplies invoice numbers. Review the warnings before submitting via e-dokumenty.mf.gov.pl.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func plJpkV7MGenerate(request: Requests.PlJpkV7MGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> PlJpkV7MGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/jpk-v7m/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PlJpkV7MGenerateDeclarationsResponse.self
        )
    }

    /// Build the rows of the Polish recapitulative statement VAT-UE for a month: section C intra-Community supplies of goods, section D intra-Community acquisitions, section E services taxed where the customer is established. Amounts are full złoty per counterparty. The VAT-UE(5) file itself goes out from the EU sales list deadline in the calendar.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func plVatUeGenerate(request: Requests.PlVatUeGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> PlVatUeGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/vat-ue/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PlVatUeGenerateDeclarationsResponse.self
        )
    }

    /// Build the rows of the Polish INTRASTAT declaration for a month, arrivals or dispatches, grouped by CN code, partner country, country of origin, partner VAT number, nature of transaction, transport and delivery terms. Values are whole złoty converted at the invoice rate; credit notes with goods lines are returns (code 21). Answers 422 naming the lines when an intra-EU goods line has no CN code: a product item without an eight-digit `cnCode`, or a line without a product item whose VAT type is an intra-EU supply or acquisition of goods; lines of a triangular trade in which the company is the intermediary are left out. The IST message itself goes out from the Intrastat deadline in the calendar.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func plIntrastatGenerate(request: Requests.PlIntrastatGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> PlIntrastatGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/intrastat/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PlIntrastatGenerateDeclarationsResponse.self
        )
    }

    /// List the invoices KSeF holds for this company as the buyer, for a window of acquisition timestamps. Each row carries the KSeF number and, when the document number matches a registered purchase invoice, the invoice it belongs to.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func plKsefReceivedList(request: Requests.PlKsefReceivedListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> PlKsefReceivedListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/ksef/received/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PlKsefReceivedListDeclarationsResponse.self
        )
    }

    /// Read one invoice out of KSeF by its national number. With a purchase invoice given, the KSeF number is written onto that invoice, which is what makes the purchase row of JPK_V7M carry NrKSeF instead of the BFK marker.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func plKsefReceivedFetch(request: Requests.PlKsefReceivedFetchDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> PlKsefReceivedFetchDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/ksef/received/fetch",
            body: request,
            requestOptions: requestOptions,
            responseType: PlKsefReceivedFetchDeclarationsResponse.self
        )
    }

    /// The UPO for a KSeF session. KSeF issues one receipt per session rather than per invoice, so the session reference number from the send is what identifies it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func plKsefReceipt(request: Requests.PlKsefReceiptDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> PlKsefReceiptDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/ksef/receipt",
            body: request,
            requestOptions: requestOptions,
            responseType: PlKsefReceiptDeclarationsResponse.self
        )
    }

    /// The differences between the accounting result and the taxable profit: non-deductible expenses, income added to or left out of the tax base, extra deductible expenses, donations, losses carried forward, reliefs and tax credits. The annual corporate income tax return is built from them.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func taxAdjustmentsList(request: Requests.TaxAdjustmentsListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> TaxAdjustmentsListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/tax-adjustments/list",
            body: request,
            requestOptions: requestOptions,
            responseType: TaxAdjustmentsListDeclarationsResponse.self
        )
    }

    /// Records a tax adjustment of one kind for a tax year, with an optional form `code`. Answers 422 when the amount is zero.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func taxAdjustmentsCreate(request: Requests.TaxAdjustmentsCreateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> TaxAdjustmentsCreateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/tax-adjustments/create",
            body: request,
            requestOptions: requestOptions,
            responseType: TaxAdjustmentsCreateDeclarationsResponse.self
        )
    }

    /// Changes the kind, code, amount or description of a recorded tax adjustment; fields left out keep their value and an empty `code` clears it. Answers 422 when the new amount is zero.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func taxAdjustmentsUpdate(request: Requests.TaxAdjustmentsUpdateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> TaxAdjustmentsUpdateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/tax-adjustments/update",
            body: request,
            requestOptions: requestOptions,
            responseType: TaxAdjustmentsUpdateDeclarationsResponse.self
        )
    }

    /// Deletes a recorded tax adjustment.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func taxAdjustmentsDelete(request: Requests.TaxAdjustmentsDeleteDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> TaxAdjustmentsDeleteDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/tax-adjustments/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: TaxAdjustmentsDeleteDeclarationsResponse.self
        )
    }

    /// What the company has paid the administration towards a tax before the return is filed: payments on account, tax withheld at source by others, a final settlement, and a refund received. Returns report these on their own lines, so the amount they ask for is the balance.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func taxPaymentsList(request: Requests.TaxPaymentsListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> TaxPaymentsListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/tax-payments/list",
            body: request,
            requestOptions: requestOptions,
            responseType: TaxPaymentsListDeclarationsResponse.self
        )
    }

    /// Records a payment made towards a tax (`tax`) of a year, and of a month when given, as an advance payment, tax withheld by others, a final settlement or a refund received. Answers 422 when the amount is zero.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func taxPaymentsCreate(request: Requests.TaxPaymentsCreateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> TaxPaymentsCreateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/tax-payments/create",
            body: request,
            requestOptions: requestOptions,
            responseType: TaxPaymentsCreateDeclarationsResponse.self
        )
    }

    /// Changes the kind, amount, payment date, reference or description of a recorded tax payment; fields left out keep their value and an empty `reference` clears it. Answers 422 when the new amount is zero, and 409 when the kind or amount of a payment booked from a bank transaction (`bank/transactions/post`) changes.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func taxPaymentsUpdate(request: Requests.TaxPaymentsUpdateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> TaxPaymentsUpdateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/tax-payments/update",
            body: request,
            requestOptions: requestOptions,
            responseType: TaxPaymentsUpdateDeclarationsResponse.self
        )
    }

    /// Deletes a recorded tax payment. Answers 409 when the payment is booked from a bank transaction (`bank/transactions/post`).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func taxPaymentsDelete(request: Requests.TaxPaymentsDeleteDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> TaxPaymentsDeleteDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/tax-payments/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: TaxPaymentsDeleteDeclarationsResponse.self
        )
    }

    /// Sets the provisional pro-rata percentage of the company for a calendar year (`fiscalYear`). Purchase lines on a VAT type marked pro-rata (`prorata`) deduct that share of their VAT, book the rest into the line's expense, and the VAT returns declare only the deductible part. Without a percentage for the year such a line deducts 100 % and `purchases/invoices/register` answers the warning `prorata_not_set`. Setting it again replaces the percentage for documents registered afterwards; documents already registered are not changed. The year-end adjustment to the definitive pro-rata is `declarations/vat-prorata/adjustment/get` and `post`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func vatProrataSet(request: Requests.VatProrataSetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> VatProrataSetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/vat-prorata/set",
            body: request,
            requestOptions: requestOptions,
            responseType: VatProrataSetDeclarationsResponse.self
        )
    }

    /// Answers the percentage set with `declarations/vat-prorata/set` for the fiscal year; 404 when none is set.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func vatProrataGet(request: Requests.VatProrataGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> VatProrataGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/vat-prorata/get",
            body: request,
            requestOptions: requestOptions,
            responseType: VatProrataGetDeclarationsResponse.self
        )
    }

    /// Computes the definitive pro-rata of a calendar year and the adjustment of the VAT deducted at the provisional pro-rata (Codul fiscal art. 300 alin. (8), (12) and (14)), for a Romanian company. `computedPercent` is the supplies of the year with the right of deduction (D300 rows 1, 3, 9-11, 13, 14, 16-18 and the regularisations) over those plus the supplies without it (row 15), net of credit notes and of the sale invoices of disposed fixed assets (alin. (7) lit. a)), rounded up to the next whole percent. `definitivePercent` in the body replaces it, for the exclusions Nordlet does not detect or a special pro-rata (alin. (16)). `proRataVat` is the VAT of the year's purchase lines on pro-rata VAT types before the pro-rata, `deductedVat` what the VAT returns deducted at the provisional percentage, `adjustment` the definitive deductible VAT less `deductedVat` (positive: more VAT to deduct). 422 for a company outside Romania.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func vatProrataAdjustmentGet(request: Requests.VatProrataAdjustmentGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> VatProrataAdjustmentGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/vat-prorata/adjustment/get",
            body: request,
            requestOptions: requestOptions,
            responseType: VatProrataAdjustmentGetDeclarationsResponse.self
        )
    }

    /// Posts the `adjustment` of `declarations/vat-prorata/adjustment/get` as a journal transaction (`documentType` `vat_prorata_adjustment`, `documentId` the year) dated 31 December: a positive adjustment debits the `purchases.vatReceivable` posting rule account and credits `accountCode`, a negative one the other way round. The D300 of the period that contains 31 December declares it in row 34 (`R31_2`, Ajustări conform pro-rata), as Codul fiscal art. 300 alin. (14) lit. b) and the OPANAF 174/2026 instructions say. 422 when there is no adjustment or it is zero, for a company outside Romania and for an account that is missing or not postable; 409 when the period is locked and when the year already has an adjustment that is not reversed (reverse it with `ledger/journal/transactions/reverse`).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func vatProrataAdjustmentPost(request: Requests.VatProrataAdjustmentPostDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> VatProrataAdjustmentPostDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/vat-prorata/adjustment/post",
            body: request,
            requestOptions: requestOptions,
            responseType: VatProrataAdjustmentPostDeclarationsResponse.self
        )
    }

    /// Lists the percentages set with `declarations/vat-prorata/set`, oldest fiscal year first.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func vatProrataList(request: Requests.VatProrataListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> VatProrataListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/vat-prorata/list",
            body: request,
            requestOptions: requestOptions,
            responseType: VatProrataListDeclarationsResponse.self
        )
    }

    /// Whether the general meeting adopted the annual accounts and on which date, the date the accounts were prepared, and which directors signed them. The annual accounts filed with the trade register are built from these facts.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func annualAccountsGet(request: Requests.AnnualAccountsGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> AnnualAccountsGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/get",
            body: request,
            requestOptions: requestOptions,
            responseType: AnnualAccountsGetDeclarationsResponse.self
        )
    }

    /// Creates or replaces the record of a year: whether and when the accounts were adopted, when they were prepared, whether they were audited (with the qualification flag and the auditor report date) or the auditor was not elected, the report texts and the appropriation of the result. Answers 422 when `adopted` is true without `adoptionDate`, when the adoption date is not after 31 December of the year, or when the date of preparation is after the adoption date.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func annualAccountsSet(request: Requests.AnnualAccountsSetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> AnnualAccountsSetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/set",
            body: request,
            requestOptions: requestOptions,
            responseType: AnnualAccountsSetDeclarationsResponse.self
        )
    }

    /// Adds a director to the signatures of the annual accounts of the year: signed, with the date and place of signature, or not signed, with the reason. Answers 422 when no annual accounts record exists for the year (`declarations/annual-accounts/set` first), when a signed entry lacks the date or the place, or when an unsigned entry lacks the reason.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func annualAccountsSignaturesCreate(request: Requests.AnnualAccountsSignaturesCreateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> AnnualAccountsSignaturesCreateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/signatures/create",
            body: request,
            requestOptions: requestOptions,
            responseType: AnnualAccountsSignaturesCreateDeclarationsResponse.self
        )
    }

    /// Replaces the name, type and signing facts of a recorded director signature. Answers 422 when a signed entry lacks the date or the place of signature, or when an unsigned entry lacks the reason.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func annualAccountsSignaturesUpdate(request: Requests.AnnualAccountsSignaturesUpdateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> AnnualAccountsSignaturesUpdateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/signatures/update",
            body: request,
            requestOptions: requestOptions,
            responseType: AnnualAccountsSignaturesUpdateDeclarationsResponse.self
        )
    }

    /// Deletes a recorded director signature.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func annualAccountsSignaturesDelete(request: Requests.AnnualAccountsSignaturesDeleteDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> AnnualAccountsSignaturesDeleteDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/signatures/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: AnnualAccountsSignaturesDeleteDeclarationsResponse.self
        )
    }

    /// Adds a profit distribution decision (decision date, kind, amount, description) to the annual accounts record of the year. Answers 422 when no annual accounts record exists for the year.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func annualAccountsDistributionsCreate(request: Requests.AnnualAccountsDistributionsCreateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> AnnualAccountsDistributionsCreateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/distributions/create",
            body: request,
            requestOptions: requestOptions,
            responseType: AnnualAccountsDistributionsCreateDeclarationsResponse.self
        )
    }

    /// Replaces the decision date, kind, amount and description of a recorded profit distribution.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func annualAccountsDistributionsUpdate(request: Requests.AnnualAccountsDistributionsUpdateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> AnnualAccountsDistributionsUpdateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/distributions/update",
            body: request,
            requestOptions: requestOptions,
            responseType: AnnualAccountsDistributionsUpdateDeclarationsResponse.self
        )
    }

    /// Deletes a recorded profit distribution.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func annualAccountsDistributionsDelete(request: Requests.AnnualAccountsDistributionsDeleteDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> AnnualAccountsDistributionsDeleteDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/distributions/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: AnnualAccountsDistributionsDeleteDeclarationsResponse.self
        )
    }

    /// Links a file uploaded through files/upload (its storageKey) to the annual accounts of the year as the notes, the management report, the auditor statement, the profit appropriation resolution, the approval certificate, the general data sheet, the full report as a pdf, or another document. Deposits that must carry these documents take them from here.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func annualAccountsAttachmentsAdd(request: Requests.AnnualAccountsAttachmentsAddDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> AnnualAccountsAttachmentsAddDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/attachments/add",
            body: request,
            requestOptions: requestOptions,
            responseType: AnnualAccountsAttachmentsAddDeclarationsResponse.self
        )
    }

    /// Removes the attachment from the annual accounts and deletes its file record and the stored bytes.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func annualAccountsAttachmentsDelete(request: Requests.AnnualAccountsAttachmentsDeleteDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> AnnualAccountsAttachmentsDeleteDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/annual-accounts/attachments/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: AnnualAccountsAttachmentsDeleteDeclarationsResponse.self
        )
    }

    /// Compute the company income tax return TD4 of a tax year from the ledger and the recorded tax adjustments: the accounting profit, the add-backs, deductions, capital allowances and losses brought forward, the chargeable income, the corporation tax at the rate of the year and the double tax relief, as the fields the company keys into TAXISnet or Tax For All. The Tax Department publishes no upload layout for the TD4; the XML is a working file.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cyTd4Generate(request: Requests.CyTd4GenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> CyTd4GenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/cy/td4/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: CyTd4GenerateDeclarationsResponse.self
        )
    }

    /// Build the annual return HE32 of a year: the figures the Registrar’s e-filing screens ask for (company number, registered office, made-up-to date, share capital, register of members, directors and secretary, annual general meeting date, the accounts summary), the working file, and the printed form HE32(I) filled in as a PDF for signing and for keying into the Registrar’s system, which takes the return only through its own screens.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cyHe32Generate(request: Requests.CyHe32GenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> CyHe32GenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/cy/he32/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: CyHe32GenerateDeclarationsResponse.self
        )
    }

    /// Build one of the German returns that ELSTER accepts only through a licensed ERiC transmission (E-Bilanz, Körperschaftsteuer, Gewerbesteuer with its Zerlegungserklärung, annual VAT return, Lohnsteuer-Anmeldung, Lohnsteuerbescheinigung) for the company to send through its own ELSTER-capable program, or the Anlage EÜR with the Anlage AVEÜR of a cash-basis company as a UTF-8 CSV file of its Zeilen and Kennzahlen (`de-euer`, 422 for a company without the cash-basis flag). The period is the year, or YYYY-MM for the monthly Lohnsteuer-Anmeldung.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deReturnsGenerate(request: Requests.DeReturnsGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> DeReturnsGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/de/returns/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: DeReturnsGenerateDeclarationsResponse.self
        )
    }

    /// The Anlage EÜR and the Anlage AVEÜR of a year for a company that determines its profit on a cash basis (§ 4 Abs. 3 EStG), as the Zeilen and Kennzahlen of the official 2025 forms with their amounts: the receipts and payments of the year from the invoice payments (each payment split over the lines of its invoice), the payroll and tax payments and the journal transactions on cash and bank accounts, and the asset register for the Anlage AVEÜR and the AfA. Accounts are placed on the Zeilen through the de-euer statement scheme (ledger/statement-rows/set). Refused with 422 for a company without the cash-basis flag.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deEuerGet(request: Requests.DeEuerGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> DeEuerGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/de/euer/get",
            body: request,
            requestOptions: requestOptions,
            responseType: DeEuerGetDeclarationsResponse.self
        )
    }

    /// The facts of one year that the German annual returns (Körperschaftsteuer, Gewerbesteuer, Umsatzsteuererklärung) need and the ledger does not hold: changes of shareholders, contracts with shareholders, the tax contribution account, loss carry-back, the donation carry-forward, the business premises with the municipalities for the apportionment of the trade tax, the land values or property tax and the participations for the trade tax additions and reductions, the foreign income per country for the Anlage AESt, the date of leaving the small-business scheme, the Anlage UN answers of a company seated abroad and, for a cash-basis company, the kind of income and the withdrawals and contributions of the owner for the Anlage EÜR. A key that is absent has not been answered.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deReturnFactsGet(request: Requests.DeReturnFactsGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> DeReturnFactsGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/de/return-facts/get",
            body: request,
            requestOptions: requestOptions,
            responseType: DeReturnFactsGetDeclarationsResponse.self
        )
    }

    /// Replace the facts of one year for the German annual returns. The returns built afterwards read them; a key left out stays unanswered.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deReturnFactsSet(request: Requests.DeReturnFactsSetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> DeReturnFactsSetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/de/return-facts/set",
            body: request,
            requestOptions: requestOptions,
            responseType: DeReturnFactsSetDeclarationsResponse.self
        )
    }

    /// Build the DEÜV notifications of a month (Anmeldung for every start, Abmeldung for every leaving, in December the Jahresmeldung for everyone employed on 31 December) as DSME records with the DBME, DBNA, DBGB and DBAN blocks of Anlage 4 in force from 2026, from the approved payroll runs and the employee record, for the company's own transmission channel.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deDeuevGenerate(request: Requests.DeDeuevGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> DeDeuevGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/de/deuev/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: DeDeuevGenerateDeclarationsResponse.self
        )
    }

    /// Build the monthly contribution statement to the health insurers (Beitragsnachweis) from the payroll run: one fixed-length record BW02 per insurer, in the record layout in force from 2026, ready for the company's own transmission channel.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deBeitragsnachweisGenerate(request: Requests.DeBeitragsnachweisGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> DeBeitragsnachweisGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/de/beitragsnachweis/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: DeBeitragsnachweisGenerateDeclarationsResponse.self
        )
    }

    /// Compute the oplysningsskema for selskaber (selskabsselvangivelsen) of an income year from the ledger and the recorded tax adjustments: accounting result before tax, tax adjustments, losses carried forward, taxable income, the 22 % corporation tax, reliefs and the balance, as the rubrikker the company keys into TastSelv Selskabsskat (DIAS). Skatteforvaltningen publishes no file format for the return; the XML is a working file.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func dkSelskabsskatGenerate(request: Requests.DkSelskabsskatGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> DkSelskabsskatGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/dk/selskabsskat/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: DkSelskabsskatGenerateDeclarationsResponse.self
        )
    }

    /// The figures of TSD annexes 4 (fringe benefits), 5 (gifts, donations and entertainment costs) and 6 (non-business expenses and other payments) entered for a month, and the annexes Nordlet calculates from them: the calculated codes, the income tax added to code 114 and the social tax (code 4180) added to code 115. Annex 5 sums the year: the gifts to listed persons and the entertainment costs of the earlier months, and the personalised social-taxed payments of annex 1 from the payroll runs paid in the year so far. The `ee-cit-return` file carries the annexes next to annex 7. From 2025 (rate 22/78).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func eeTsdAnnexesGet(request: Requests.EeTsdAnnexesGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EeTsdAnnexesGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/ee/tsd-annexes/get",
            body: request,
            requestOptions: requestOptions,
            responseType: EeTsdAnnexesGetDeclarationsResponse.self
        )
    }

    /// Replace the figures of TSD annexes 4, 5 and 6 for a month; an annex left out is not filed that month, and a body with no annex removes the month. Amounts are the figures the form asks the company to enter; Nordlet calculates the rest (4060, 4070, 4080, 4090, 4140, 4170, 4180, 4181; 5020, 5030 or 5050, 5060 to 5090, 5110 to 5170, 5190; 6000, 6140 to 6170) and refuses (422) a month whose figures do not compute. Annex 5 part II (`listedPersonTaxableGifts`, 5180) is for a person on the TuMS § 11 lg 1 list and excludes part I.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func eeTsdAnnexesSet(request: Requests.EeTsdAnnexesSetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EeTsdAnnexesSetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/ee/tsd-annexes/set",
            body: request,
            requestOptions: requestOptions,
            responseType: EeTsdAnnexesSetDeclarationsResponse.self
        )
    }

    /// Build, without sending, the employment register (töötamise register) entry for an employment contract: the start of work, or its end with the reason recorded on the contract, as the TOOTREG v2 XML that `employment-register/send` sends to e-MTA over X-tee.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func eeEmploymentRegisterGenerate(request: Requests.EeEmploymentRegisterGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EeEmploymentRegisterGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/ee/employment-register/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: EeEmploymentRegisterGenerateDeclarationsResponse.self
        )
    }

    /// Send one employment register (töötamise register) entry for an employment contract to e-MTA over X-tee: the start of work, or its end with the reason recorded on the contract.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func eeEmploymentRegisterSend(request: Requests.EeEmploymentRegisterSendDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EeEmploymentRegisterSendDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/ee/employment-register/send",
            body: request,
            requestOptions: requestOptions,
            responseType: EeEmploymentRegisterSendDeclarationsResponse.self
        )
    }

    /// Nordlet's declaración responsable for its VERI*FACTU invoicing system (Orden HAC/1177/2024, art. 15), as a PDF and as plain text.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func esVerifactuDeclaracionResponsable(request: Requests.EsVerifactuDeclaracionResponsableDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> EsVerifactuDeclaracionResponsableDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/es/verifactu/declaracion-responsable",
            body: request,
            requestOptions: requestOptions,
            responseType: EsVerifactuDeclaracionResponsableDeclarationsResponse.self
        )
    }

    /// Build the Form CT1 of an accounting year as the ROS version 26 XML and the accompanying financial statements as inline XBRL on the FRS 102 Irish Extension 2026 taxonomy Revenue accepts, both from the ledger, the recorded tax adjustments, the annual accounts record and the officers, for upload through the company’s own ROS account. Says whether the company is above the iXBRL deferral limits (balance sheet total €4.4 million, turnover €8.8 million, 50 employees).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ieCt1Generate(request: Requests.IeCt1GenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> IeCt1GenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/ie/ct1/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: IeCt1GenerateDeclarationsResponse.self
        )
    }

    /// Build the working paper for the Form B1 annual return of a financial year - company details, registered office, directors and secretary recorded with officers/create, the members recorded with ledger/owners/create, the issued share capital and the figures of the financial statements - in the order the CORE screens ask for them. The CRO publishes no file format for the B1, so it is keyed into CORE.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ieB1Generate(request: Requests.IeB1GenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> IeB1GenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/ie/b1/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: IeB1GenerateDeclarationsResponse.self
        )
    }

    /// Build the Return of Trading Details of a calendar year from the issued sale documents and the registered purchase invoices: the net value of supplies, intra-Community acquisitions, purchases for resale and purchases not for resale, in whole euro, by Irish VAT rate, in the order the ROS screen asks for them. Revenue publishes no upload format for the RTD, so the figures are keyed into ROS; `xml` is a working paper, not a file ROS accepts.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ieRtdGenerate(request: Requests.IeRtdGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> IeRtdGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/ie/rtd/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: IeRtdGenerateDeclarationsResponse.self
        )
    }

    /// Build the TD16-TD19 integration document for a registered purchase invoice and send it to the Sistema di Interscambio. Since July 2022 a purchase from a supplier established abroad is reported this way instead of the esterometro. The Italian VAT rate to self-assess is a judgement about the supply: pass vatRatePercent unless the purchase lines already carry it, otherwise the request is refused rather than guessed. The document type is `tipoDocumento` when given, else the one the VAT types of the lines name (TD17-*, TD18-*, TD19-*; 422 when the lines name different ones), else TD18 or TD19 for catalog products and TD17 otherwise. Lines whose VAT type is import VAT paid at customs are left out, and a purchase with only such lines is refused with 422: the customs declaration documents it (art. 77 c. 4 of the Testo unico IVA, DLgs 10/2026).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itSdiPurchaseSend(request: Requests.ItSdiPurchaseSendDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> ItSdiPurchaseSendDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/it/sdi/purchase-send",
            body: request,
            requestOptions: requestOptions,
            responseType: ItSdiPurchaseSendDeclarationsResponse.self
        )
    }

    /// Render the TD16-TD19 integration document for a registered purchase invoice without sending it, so the rate and the document type can be checked first. The document type and the customs lines are decided as in `declarations/it/sdi/purchase-send`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itSdiPurchasePreview(request: Requests.ItSdiPurchasePreviewDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> ItSdiPurchasePreviewDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/it/sdi/purchase-preview",
            body: request,
            requestOptions: requestOptions,
            responseType: ItSdiPurchasePreviewDeclarationsResponse.self
        )
    }

    /// Compute the TFR of each employee in the approved payroll run of `year` and `month`: the quota is the TFR base divided by 13.5 (art. 2120 c. 2 c.c.), less the 0.50% contribution of art. 3 L. 297/1982 on the base of the employee's INPS IVS contribution. The TFR base is the pay of the period (`retribuzione`), the tredicesima, the quattordicesima and the benefit in kind; other payment types count only when listed in `includePaymentTypes`, because art. 2120 c. 3 counts a payment only when it is not occasional and the collective agreement may say otherwise (tips and the TFR paid out are refused). `destination` is the employee option `itTfrDestinazione`: `azienda` (default, kept in the company), `fondo-tesoreria` or `previdenza-complementare`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itTfrAccrualCompute(request: Requests.ItTfrAccrualComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> ItTfrAccrualComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/it/tfr/accrual/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: ItTfrAccrualComputeDeclarationsResponse.self
        )
    }

    /// Post the TFR of each employee in the approved payroll run of `year` and `month`: the quota is the TFR base divided by 13.5 (art. 2120 c. 2 c.c.), less the 0.50% contribution of art. 3 L. 297/1982 on the base of the employee's INPS IVS contribution. The TFR base is the pay of the period (`retribuzione`), the tredicesima, the quattordicesima and the benefit in kind; other payment types count only when listed in `includePaymentTypes`, because art. 2120 c. 3 counts a payment only when it is not occasional and the collective agreement may say otherwise (tips and the TFR paid out are refused). `destination` is the employee option `itTfrDestinazione`: `azienda` (default, kept in the company), `fondo-tesoreria` or `previdenza-complementare`. The journal transaction (`documentType` `it_tfr_accrual`, `documentId` YYYY-MM) is dated the last day of the month: debit `expenseAccountCode` (B9 c) with the whole accrual, credit `fundAccountCode` (liability C) with the TFR kept in the company and `payableAccountCode` (D14) with the TFR due to the Fondo di Tesoreria or a pension fund (OIC 31 §§ 60-76). 422 when there is nothing to accrue or an account the accrual needs is missing; 409 when the accounting period is locked and when the month is already posted and not reversed (reverse it with `ledger/journal/transactions/reverse`).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itTfrAccrualPost(request: Requests.ItTfrAccrualPostDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> ItTfrAccrualPostDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/it/tfr/accrual/post",
            body: request,
            requestOptions: requestOptions,
            responseType: ItTfrAccrualPostDeclarationsResponse.self
        )
    }

    /// Compute the revaluation at 31 December of `year` of the TFR kept in the company (art. 2120 c. 5 c.c.): each `funds` amount is the TFR of the employee at 31 December of the previous year, without the quota of `year`, as the company keeps it; the rate is 1.5% plus 75% of the increase of the ISTAT FOI index of December (`foiDecember`) against the previous December (`foiPreviousDecember`), not rounded, and a fall of the index adds nothing. The 17% substitute tax (art. 11 c. 3 D.Lgs. 47/2000) is taken from the revaluation and paid with F24 code 1713 by 16 February; `accontoNextYear` is the acconto of the next year (code 1712, 16 December) at 17% of 90% of the revaluation. An employee who left in or before `year` is left out with a warning, because art. 2120 c. 6 revalues to the month of termination.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itTfrRevaluationCompute(request: Requests.ItTfrRevaluationComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> ItTfrRevaluationComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/it/tfr/revaluation/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: ItTfrRevaluationComputeDeclarationsResponse.self
        )
    }

    /// Post the revaluation at 31 December of `year` of the TFR kept in the company (art. 2120 c. 5 c.c.): each `funds` amount is the TFR of the employee at 31 December of the previous year, without the quota of `year`, as the company keeps it; the rate is 1.5% plus 75% of the increase of the ISTAT FOI index of December (`foiDecember`) against the previous December (`foiPreviousDecember`), not rounded, and a fall of the index adds nothing. The 17% substitute tax (art. 11 c. 3 D.Lgs. 47/2000) is taken from the revaluation and paid with F24 code 1713 by 16 February; `accontoNextYear` is the acconto of the next year (code 1712, 16 December) at 17% of 90% of the revaluation. An employee who left in or before `year` is left out with a warning, because art. 2120 c. 6 revalues to the month of termination. The journal transaction (`documentType` `it_tfr_revaluation`, `documentId` the year) is dated 31 December: debit `expenseAccountCode` (B9 c) with the revaluation, credit `fundAccountCode` (liability C) with the revaluation less the tax and `taxAccountCode` with the tax. 422 when there is nothing to revalue; 409 when the accounting period is locked and when the year is already posted and not reversed (reverse it with `ledger/journal/transactions/reverse`).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itTfrRevaluationPost(request: Requests.ItTfrRevaluationPostDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> ItTfrRevaluationPostDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/it/tfr/revaluation/post",
            body: request,
            requestOptions: requestOptions,
            responseType: ItTfrRevaluationPostDeclarationsResponse.self
        )
    }

    /// Compute the INAIL autoliquidazione premium of the employees' policy (polizza dipendenti) due by 16 February of `year` + 1: the regolazione of `year` on the wages paid in `year` and the rata of `year` + 1. The wages are the INAIL bases of the approved Italian payroll runs paid in `year` (DPR 1124/1965 art. 28: the wages actually paid), rounded to the euro; a run without the INAIL component counts the base of its INPS IVS contribution, with a warning. Each entry of `positions` is a PAT and voce of the INAIL basi di calcolo with its `tassoRegolazione` and `tassoRata` (the tasso applicato, per mille), the reduction of the basi di calcolo in percent of the premium (`riduzioneRegolazione`, `riduzioneRata`), the partly exempt wages (`quoteEsenti`), a lower presumed wage for the rata communicated to INAIL (`retribuzioniRata`) and the employees it covers (`employeeIds`, required when there is more than one position). premium = wages x tasso / 1000, less the reduction, plus the 1% addizionale ex ANMIL; the regolazione subtracts `rataAnticipata`, the rata requested for `year` in the basi di calcolo; intermediate amounts have five decimals and the total is rounded to the cent (INAIL guide to the autoliquidazione 2025/2026). With `rateazione` the total is paid in four instalments of 25% on 16 February, 16 May, 20 August and 16 November (moved to the next working day), the last three with the interest coefficients INAIL publishes each January (recorded for 2026 only). With `codiceDitta`, `codiceDittaControlCode` and `sedeInail` the response carries the F24 INAIL row: numero di riferimento 90 followed by `year` + 1, causale P.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itInailAutoliquidazioneCompute(request: Requests.ItInailAutoliquidazioneComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> ItInailAutoliquidazioneComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/it/inail/autoliquidazione/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: ItInailAutoliquidazioneComputeDeclarationsResponse.self
        )
    }

    /// Build the F24 telematic file (Agenzia delle Entrate specification for taxpayers, records A, M, V and Z) that pays instalment `instalment` (1 for the single payment) of the INAIL autoliquidazione premium of the employees' policy (polizza dipendenti) due by 16 February of `year` + 1: the regolazione of `year` on the wages paid in `year` and the rata of `year` + 1. The wages are the INAIL bases of the approved Italian payroll runs paid in `year` (DPR 1124/1965 art. 28: the wages actually paid), rounded to the euro; a run without the INAIL component counts the base of its INPS IVS contribution, with a warning. Each entry of `positions` is a PAT and voce of the INAIL basi di calcolo with its `tassoRegolazione` and `tassoRata` (the tasso applicato, per mille), the reduction of the basi di calcolo in percent of the premium (`riduzioneRegolazione`, `riduzioneRata`), the partly exempt wages (`quoteEsenti`), a lower presumed wage for the rata communicated to INAIL (`retribuzioniRata`) and the employees it covers (`employeeIds`, required when there is more than one position). premium = wages x tasso / 1000, less the reduction, plus the 1% addizionale ex ANMIL; the regolazione subtracts `rataAnticipata`, the rata requested for `year` in the basi di calcolo; intermediate amounts have five decimals and the total is rounded to the cent (INAIL guide to the autoliquidazione 2025/2026). With `rateazione` the total is paid in four instalments of 25% on 16 February, 16 May, 20 August and 16 November (moved to the next working day), the last three with the interest coefficients INAIL publishes each January (recorded for 2026 only). With `codiceDitta`, `codiceDittaControlCode` and `sedeInail` the response carries the F24 INAIL row: numero di riferimento 90 followed by `year` + 1, causale P. The file carries the INAIL row only, dated the instalment's due date; the debit account is given when the file is authenticated unless the company has exactly one active EUR account with an Italian IBAN. 422 without `codiceDitta`, when nothing is due (a credit is compensated in another F24) and for an instalment whose interest coefficients are not recorded.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itInailAutoliquidazioneF24(request: Requests.ItInailAutoliquidazioneF24DeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> ItInailAutoliquidazioneF24DeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/it/inail/autoliquidazione/f24",
            body: request,
            requestOptions: requestOptions,
            responseType: ItInailAutoliquidazioneF24DeclarationsResponse.self
        )
    }

    /// Upload the SAF-T file to i.SAF-T over the iSAFTUploaderService web service and start its processing. The file, the case reference and the status are kept as a declaration submission (submissionId), whose outcome Nordlet then checks with i.SAF-T. The submission itself is confirmed separately, because after confirmation the file can no longer be corrected. A range and data type already sent is sent again only with amend: true.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltSaftSend(request: Requests.LtSaftSendDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtSaftSendDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/saft/send",
            body: request,
            requestOptions: requestOptions,
            responseType: LtSaftSendDeclarationsResponse.self
        )
    }

    /// Render the Sodra 1-SD or 2-SD notice for the contracts starting or ending in the range as an .ffdata document for EDAS.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltSdFfdata(request: Requests.LtSdFfdataDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtSdFfdataDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/sd/ffdata",
            body: request,
            requestOptions: requestOptions,
            responseType: LtSdFfdataDeclarationsResponse.self
        )
    }

    /// Render the annual corporate income tax return PLN204 as an .ffdata document, including the PLN204S and PLN204Z annexes, from the ledger and the tax adjustments recorded for that year.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ltPln204Ffdata(request: Requests.LtPln204FfdataDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LtPln204FfdataDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lt/pln204/ffdata",
            body: request,
            requestOptions: requestOptions,
            responseType: LtPln204FfdataDeclarationsResponse.self
        )
    }

    /// Build the notice of employees (Ziņas par darba ņēmējiem, VID EDS document DokZDNv3) for an employment contract, for upload in EDS: the start of work with ziņu kods 11 and the employee's profession code (`lvProfesijasKods`), or the end of the contract with `endCode`, the ziņu kods 21 to 26 of annex 1 of MK noteikumi Nr. 827. Answers 422 when the start has no profession code, the end has no `endCode`, the contract has no end date or the employee's personal code is not a Latvian personas kods.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lvEmployeeNoticeGenerate(request: Requests.LvEmployeeNoticeGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LvEmployeeNoticeGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/lv/employee-notice/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: LvEmployeeNoticeGenerateDeclarationsResponse.self
        )
    }

    /// The boxes of the FS7 Payer's Annual Reconciliation Statement of a year (A1 to A4, the share options question, B1, C1 to C4, D1 to D4, E1, E2 and F2) from the approved payroll runs, equal to the totals of the FS3 lodgement file of the `mt-annual-payroll-statements` deadline, with a PDF working copy that lists them. The Malta Tax and Customs Administration publishes no file for the FS7: a payer with fewer than 10 FS3s files the barcoded FS7 it issues, and the others key the figures into its FS7 web form or e-filing spreadsheet, so the figures are transcribed. `leftToPayer` names what Nordlet does not hold: the principal's name, position and signature, the Jobsplus number, the childcare question, tax arrears (PCU2(A)) and the payments of section F with F1 and F3.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func mtFs7Generate(request: Requests.MtFs7GenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> MtFs7GenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/mt/fs7/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: MtFs7GenerateDeclarationsResponse.self
        )
    }

    /// Compute the company income tax return and self-assessment of a year of assessment from the ledger and the recorded tax adjustments: the accounting profit before tax, the add-backs and deductions, the approved donations, capital allowances and losses carried forward, the chargeable income, the 35 % charge, the relief against the tax and the allocation of the distributable profit to the five tax accounts. The Malta Tax and Customs Administration issues the return as a personalised spreadsheet to the registered tax practitioner and publishes no layout, so the XML is a working file and the figures are keyed into that spreadsheet.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func mtCompanyTaxGenerate(request: Requests.MtCompanyTaxGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> MtCompanyTaxGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/mt/company-tax/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: MtCompanyTaxGenerateDeclarationsResponse.self
        )
    }

    /// Build the annual return of a year: the company number, registered office and made-up-to date, the share capital, the register of members, the directors and the company secretary and the accounts summary, as the figures the Malta Business Registry asks for on its own screens, plus the printed Annual Return Form of the Seventh Schedule filled in as a PDF for signing.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func mtAnnualReturnGenerate(request: Requests.MtAnnualReturnGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> MtAnnualReturnGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/mt/annual-return/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: MtAnnualReturnGenerateDeclarationsResponse.self
        )
    }

    /// Generate JPK_FA(4), the on-demand structure with every sales invoice issued in a period, its VAT bases per rate and one row per invoice line. Filed only when the tax office asks for it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func plJpkFaGenerate(request: Requests.PlJpkFaGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> PlJpkFaGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/jpk-fa/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PlJpkFaGenerateDeclarationsResponse.self
        )
    }

    /// Generate JPK_KR(1), the on-demand structure with the chart of accounts and its opening balances and turnover, the journal and the double entries behind it. Filed only when the tax office asks for it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func plJpkKrGenerate(request: Requests.PlJpkKrGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> PlJpkKrGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/jpk-kr/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PlJpkKrGenerateDeclarationsResponse.self
        )
    }

    /// Generate JPK_MAG(2), the on-demand structure with the warehouse documents of one warehouse: goods received from outside (PZ) or internally (PW) and issued to a customer (WZ) or internally (RW). Filed only when the tax office asks for it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func plJpkMagGenerate(request: Requests.PlJpkMagGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> PlJpkMagGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/jpk-mag/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PlJpkMagGenerateDeclarationsResponse.self
        )
    }

    /// Generate PIT-11(29) for every person on the payroll of one year: the pay, the deductible costs, the advance withheld and the social and health contributions taken off it. One document per person, because that is how the form is filed, addressed to the tax office of the place of residence of that person (employee field plKodUrzedu); a person without that code is refused with 422.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func plPit11Generate(request: Requests.PlPit11GenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> PlPit11GenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/pit-11/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PlPit11GenerateDeclarationsResponse.self
        )
    }

    /// Generate CIT-8(34), the annual corporate income tax return, from the ledger of the year and the recorded tax adjustments. The tax office code and the small-taxpayer setting come from the e-Deklaracje compliance settings, the seat address from the JPK gateway settings. Names the annexes the figures would need, which are not produced. Answers 422 for a tax year that starts before 2025-01-01, which the CIT-8(34) schema does not accept.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func plCit8Generate(request: Requests.PlCit8GenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> PlCit8GenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/cit-8/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PlCit8GenerateDeclarationsResponse.self
        )
    }

    /// Compute the monthly ZUS DRA settlement from the payroll run of one month: the pension, disability, sickness, accident and health insurance contributions and the Labour Fund, Solidarity Fund and guaranteed benefits fund charges, each split between the insured person and the payer. The amounts are carried into Płatnik or ePłatnik by hand.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func plZusDraCompute(request: Requests.PlZusDraComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> PlZusDraComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/zus-dra/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PlZusDraComputeDeclarationsResponse.self
        )
    }

    /// Build the KEDU file for one month: the ZUS DRA settlement and one ZUS RCA report per person on the payroll, in the schema kedu_5_4 that Płatnik and ePłatnik import. The payer REGON, short name and declaration deadline code come from the ZUS compliance settings; the insurance title code and working time of each person from the employee record.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func plZusDraKedu(request: Requests.PlZusDraKeduDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> PlZusDraKeduDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/zus-dra/kedu",
            body: request,
            requestOptions: requestOptions,
            responseType: PlZusDraKeduDeclarationsResponse.self
        )
    }

    /// Fill the published ZUS DRA form for one month and return it as a PDF. The amounts, the payer identity and the deadline code are the same ones the KEDU file carries; blocks the payroll does not hold (paid benefits, bridging pensions, income declaration of a self-paying person) stay empty.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func plZusDraPdf(request: Requests.PlZusDraPdfDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> PlZusDraPdfDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/pl/zus-dra/pdf",
            body: request,
            requestOptions: requestOptions,
            responseType: PlZusDraPdfDeclarationsResponse.self
        )
    }

    /// Build the RO e-Transport declaration for an issued waybill: goods with their tariff codes and masses, the commercial partner, the route and the vehicle. The XML follows the ANAF eTransport v2 schema and is kept as a file on the waybill. Anything listed in blockers has to be filled in before /etransport/send will accept it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func roEtransportBuild(request: Requests.RoEtransportBuildDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> RoEtransportBuildDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/ro/etransport/build",
            body: request,
            requestOptions: requestOptions,
            responseType: RoEtransportBuildDeclarationsResponse.self
        )
    }

    /// Hand the RO e-Transport declaration for an issued waybill to ANAF under the SPV OAuth token in compliance settings, and return the upload index the UIT is read back with. Answers 422 while any field the ANAF validator requires is still missing.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func roEtransportSubmit(request: Requests.RoEtransportSubmitDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> RoEtransportSubmitDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/ro/etransport/submit",
            body: request,
            requestOptions: requestOptions,
            responseType: RoEtransportSubmitDeclarationsResponse.self
        )
    }

    /// Read the outcome of an e-Transport declaration from ANAF by its upload index, under the SPV OAuth token in compliance settings. Returns the UIT code once the declaration validates.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func roEtransportStatus(request: Requests.RoEtransportStatusDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> RoEtransportStatusDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/ro/etransport/status",
            body: request,
            requestOptions: requestOptions,
            responseType: RoEtransportStatusDeclarationsResponse.self
        )
    }

    /// Build the annual wage declaration (Lohndeklaration) to the AHV-IV-FAK from the approved payroll runs of the year as the CSV that AHVeasy imports under Lohndeklaration → CSV-Import der Lohndaten: one row per employee with the 18 columns of the AHVeasy template, the AHV-liable wage and the ALV wage.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func liLohndeklarationGenerate(request: Requests.LiLohndeklarationGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LiLohndeklarationGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/li/lohndeklaration/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: LiLohndeklarationGenerateDeclarationsResponse.self
        )
    }

    /// Build the annual wage list (Lohnliste) of a Liechtenstein employer from the approved payroll runs of the year as the XLSX file the tax administration's eLohnausweis / eLohnlisten application imports: one row per employee with PEID, name, birth date, address, gross wage, wage tax withheld and the settlement period.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func liLohnlistenGenerate(request: Requests.LiLohnlistenGenerateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> LiLohnlistenGenerateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/li/lohnlisten/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: LiLohnlistenGenerateDeclarationsResponse.self
        )
    }

    /// Starts connecting the company to HMRC's VAT (MTD) API: returns the HMRC sign-in address the user opens in the browser to grant Nordlet the `read:vat` and `write:vat` scopes. HMRC sends the browser back to Nordlet's registered address with `code` and `state`, which are passed to `declarations/gb/hmrc/connect`. Answers 503 when Nordlet's HMRC application is not set up.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func gbHmrcAuthorizeUrlGet(request: Requests.GbHmrcAuthorizeUrlGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> GbHmrcAuthorizeUrlGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/gb/hmrc/authorize-url/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GbHmrcAuthorizeUrlGetDeclarationsResponse.self
        )
    }

    /// Finishes connecting the company to HMRC: trades the `code` HMRC returned for the company's tokens and stores them in the `gb-hmrc-vat` settings. `state` must be the one of the sign-in address from `declarations/gb/hmrc/authorize-url/get`, else 422. HMRC lets the connection last 18 months; Nordlet renews the 4-hour access token itself.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func gbHmrcConnect(request: Requests.GbHmrcConnectDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> GbHmrcConnectDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/gb/hmrc/connect",
            body: request,
            requestOptions: requestOptions,
            responseType: GbHmrcConnectDeclarationsResponse.self
        )
    }

    /// Computes UK Corporation Tax for an accounting period of at most 12 months from its taxable total profits: the small profits rate when the augmented profits (taxable total profits plus `exemptDistributions`) do not exceed the lower limit, the main rate less marginal relief between the limits, the main rate above the upper limit. The limits are reduced by days for a period shorter than 12 months and divided by one plus `associatedCompanies` (those that carried on a trade or business in the period). A period that straddles 1 April of a year whose limits differ is split into parts by financial year. A `closeInvestmentHolding` company pays the main rate. Financial years 2022 to 2026 are known; another answers 422.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func gbCorporationTaxCompute(request: Requests.GbCorporationTaxComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> GbCorporationTaxComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/gb/corporation-tax/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: GbCorporationTaxComputeDeclarationsResponse.self
        )
    }

    /// The facts of one accounting period that the Company Tax Return (CT600) and its computations need and the ledger does not hold: the company type (box 4), the associated companies, the small companies regime and the section 477 audit exemption of the accounts, the tax adjustments to the profit per the accounts, the capital allowances and balancing charges, the trading losses brought forward, the chargeable gains, the qualifying donations, the tax already paid, the declarant and the senior statutory auditor who signed the auditor’s report. The annual accounts to Companies House read the small companies regime, the section 477 audit exemption and the senior statutory auditor too. `year` is the fiscal year by the year in which it ends. A key that is absent has not been answered.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func gbReturnFactsGet(request: Requests.GbReturnFactsGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> GbReturnFactsGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/gb/return-facts/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GbReturnFactsGetDeclarationsResponse.self
        )
    }

    /// Replace the facts of one accounting period for the Company Tax Return. The `gb-ct-return` and `gb-annual-accounts` filings built afterwards read them; a key left out stays unanswered.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func gbReturnFactsSet(request: Requests.GbReturnFactsSetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> GbReturnFactsSetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/gb/return-facts/set",
            body: request,
            requestOptions: requestOptions,
            responseType: GbReturnFactsSetDeclarationsResponse.self
        )
    }

    /// Records a benefit or expense of an employee that is not taxed through the payroll, for the P11D of the tax year that starts on 6 April of `taxYear`. `item.type` chooses the P11D section (A `asset-transferred`; B `payment`, `tax-on-notional-payments`; C `vouchers-or-credit-cards`; D `living-accommodation`; E `mileage-allowance`; F `car`; G `vans`; H `loan`; I `medical`; J `relocation`; K `services`; L `asset-available`; M `other-class-1a`, `other-non-class-1a`, `tax-paid-not-deducted`; N `expenses-travel-and-subsistence`, `expenses-entertainment`, `expenses-home-telephone`, `expenses-non-qualifying-relocation`, `expenses-other`). Amounts are the cash equivalents the employer works out; for a cost item the cash equivalent is the cost less the amount made good. The `gb-p11db` filing sends these P11Ds with the P11D(b), whose total benefit adds the items liable to Class 1A. Answers 422 for a rule of HMRC's business rules the item breaks and 409 for a second item of a kind HMRC takes once per employee.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func gbP11DItemsCreate(request: Requests.GbP11DItemsCreateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> GbP11DItemsCreateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/gb/p11d/items/create",
            body: request,
            requestOptions: requestOptions,
            responseType: GbP11DItemsCreateDeclarationsResponse.self
        )
    }

    /// Lists the P11D items of a tax year, optionally of one employee, with their section, cash equivalent and whether they count for Class 1A.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func gbP11DItemsList(request: Requests.GbP11DItemsListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> GbP11DItemsListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/gb/p11d/items/list",
            body: request,
            requestOptions: requestOptions,
            responseType: GbP11DItemsListDeclarationsResponse.self
        )
    }

    /// Deletes a P11D item.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func gbP11DItemsDelete(request: Requests.GbP11DItemsDeleteDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> GbP11DItemsDeleteDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/gb/p11d/items/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: GbP11DItemsDeleteDeclarationsResponse.self
        )
    }

    /// Gives the P45 figures of an employee who has left (`terminationDate` set): the employer PAYE reference, the employee's National Insurance number, name, leaving date, payroll number, gender, date of birth and address, whether Student Loan deductions are to continue, the tax code at the leaving date with the Week 1/Month 1 mark, and the pay and tax of the tax year of the leaving date from the approved payroll runs. With a cumulative code the totals are the last entries of box 7 with the tax week or month of the last payment; with a Week 1/Month 1 code they are this employment's pay and tax of box 8. Nordlet does not print the P45 form.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func gbP45Get(request: Requests.GbP45GetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> GbP45GetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/gb/p45/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GbP45GetDeclarationsResponse.self
        )
    }

    /// Lists the company's VAT return periods as HMRC holds them: open (`status` O) or fulfilled (F). Without `status`, `from` and `to` are required and at most 366 days apart. `device` carries the facts of the user's browser that HMRC requires.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func gbVatObligationsList(request: Requests.GbVatObligationsListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> GbVatObligationsListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/gb/vat/obligations/list",
            body: request,
            requestOptions: requestOptions,
            responseType: GbVatObligationsListDeclarationsResponse.self
        )
    }

    /// Reads a VAT return the company submitted to HMRC, by the `periodKey` of its obligation. Answers 404 when HMRC has no return for the period.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func gbVatReturnsGet(request: Requests.GbVatReturnsGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> GbVatReturnsGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/gb/vat/returns/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GbVatReturnsGetDeclarationsResponse.self
        )
    }

    /// Lists the company's VAT liabilities HMRC holds whose period ends between `from` (2017-12-01 or later) and `to` (today or earlier), at most 365 days apart.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func gbVatLiabilitiesList(request: Requests.GbVatLiabilitiesListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> GbVatLiabilitiesListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/gb/vat/liabilities/list",
            body: request,
            requestOptions: requestOptions,
            responseType: GbVatLiabilitiesListDeclarationsResponse.self
        )
    }

    /// Lists the VAT payments HMRC received from the company between `from` (2017-12-01 or later) and `to` (today or earlier), at most 365 days apart.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func gbVatPaymentsList(request: Requests.GbVatPaymentsListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> GbVatPaymentsListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/gb/vat/payments/list",
            body: request,
            requestOptions: requestOptions,
            responseType: GbVatPaymentsListDeclarationsResponse.self
        )
    }

    /// Returns the penalties HMRC applied to the company's VAT account in the last 24 months as HMRC answers them: `totalisations`, `lateSubmissionPenalty` and `latePaymentPenalty`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func gbVatPenaltiesGet(request: Requests.GbVatPenaltiesGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/gb/vat/penalties/get",
            body: request,
            requestOptions: requestOptions,
            responseType: [String: JSONValue].self
        )
    }

    /// The Form 941 figures of a quarter from the approved US payroll runs whose pay date (the period end without one) falls in it: line 1 the employees paid for the pay period that includes the 12th of the quarter's last month, line 2 the wages, line 3 the federal income tax withheld, lines 5a, 5c and 5d the social security, Medicare and Additional Medicare wages with their tax at 12.4%, 2.9% and 0.9%, line 7 the fractions of cents between those and the amounts withheld and owed, lines 10 and 12, and line 16 the liability of each month by pay date with the liability of each pay date for Schedule B. `deposits` (the deposits made for the quarter) fills line 13 and line 14 or 15. Lines 5b, 5f, 8, 9 and 11 are not filled. Answers 422 for a company outside the US.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func us941Get(request: Requests.Us941GetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> Us941GetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/us/941/get",
            body: request,
            requestOptions: requestOptions,
            responseType: Us941GetDeclarationsResponse.self
        )
    }

    /// The Form 940 figures of a year from the approved US payroll runs paid in it: line 1a the state of the employees paid (the `usWorkState` employee option) or line 1b when there are several, line 3 the payments to employees, line 5 the part of each employee's payments above $7,000, line 7 the taxable FUTA wages, line 8 at 0.6%, line 12, and Part 5 with the liability of each quarter when line 12 is more than $500. Exempt payments (line 4), the state unemployment tax adjustments (lines 9 and 10) and the credit reduction of Schedule A (line 11) are not filled. Answers 422 for a company outside the US.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func us940Get(request: Requests.Us940GetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> Us940GetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/us/940/get",
            body: request,
            requestOptions: requestOptions,
            responseType: Us940GetDeclarationsResponse.self
        )
    }

    /// The Forms W-2 of a year, one per employee paid in an approved US payroll run of the year, and the Form W-3 totals: box a the employee's `personalCode` (the social security number), box e the name, boxes 1 to 6 the wages, the federal income tax, the social security wages and tax and the Medicare wages and tax (with the Additional Medicare Tax), and boxes 15 to 17 for Delaware with the company's `deWithholdingAccount`; W-3 box c the number of forms and box e the company's `ein`. Answers 422 for a company outside the US.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func usW2List(request: Requests.UsW2ListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> UsW2ListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/us/w2/list",
            body: request,
            requestOptions: requestOptions,
            responseType: UsW2ListDeclarationsResponse.self
        )
    }

    /// The federal income tax return of the fiscal year that ends in `year`, chosen by the legal form: Form 1120 for a corporation, Form 1120-S for an S corporation, Form 1065 for a partnership, and for an LLC the return of the filing option `usLlcTaxReturn`. `page1` gives the income and deduction lines filled from the statement rows of the form (`ledger/statement-rows/list` with `scheme`) and the total lines computed as the form says (Form 1120 lines 1c, 3, 11, 27 and 28; Form 1120-S lines 1c, 3, 6, 21 and 22; Form 1065 lines 1c, 3, 8, 16c, 22 and 23); line 1b is the debit balance of the returns and allowances accounts. `scheduleL` gives each Schedule L line at the beginning and end of the year, `otherLines` the Schedule K and M-1 lines. Answers 422 for a company outside the US, a sole proprietorship, and an LLC without `usLlcTaxReturn`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func usIncomeTaxReturnGet(request: Requests.UsIncomeTaxReturnGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> UsIncomeTaxReturnGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/us/income-tax-return/get",
            body: request,
            requestOptions: requestOptions,
            responseType: UsIncomeTaxReturnGetDeclarationsResponse.self
        )
    }

    /// The Forms 1099-NEC of a calendar year: one per partner marked with `identifiers.nonemployeeCompensation` = `yes` whose payments in the year reach the threshold (2026: $2,000), box 1 the payments on its registered purchase invoices less those on its credit notes, by payment date, in the company currency at the invoice rate, without settlements by credit note or advance. A partner whose Form W-9 tax classification is a C or S corporation (`c-corporation`, `s-corporation`, `llc-c`, `llc-s`) is listed in `excluded`. The recipient name type is `I` for a partner of type `person` and `B` otherwise. Answers 422 for a company outside the US and for a year whose threshold Nordlet does not have.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func us1099NecList(request: Requests.Us1099NecListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> Us1099NecListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/us/1099-nec/list",
            body: request,
            requestOptions: requestOptions,
            responseType: Us1099NecListDeclarationsResponse.self
        )
    }

    /// The Delaware withholding of a month (YYYY-MM), a quarter (YYYY-Qn) or a year (YYYY) from the approved US payroll runs paid in it: the employees with Delaware income tax withheld, their wages and the tax withheld, and `wthTax`, the boxes of Form WTH-TAX (taxpayer ID `deWithholdingAccount`, the tax period, line 1 the tax withheld, line 2 the amount remitted, here equal to line 1). Answers 422 for a company outside the US.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func usDeWithholdingGet(request: Requests.UsDeWithholdingGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> UsDeWithholdingGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/us/de/withholding/get",
            body: request,
            requestOptions: requestOptions,
            responseType: UsDeWithholdingGetDeclarationsResponse.self
        )
    }

    /// The lines of the Delaware annual reconciliation, Form WTH-REC, of a year from the approved US payroll runs paid in it: line 1 the Delaware wages, line 2 the number of Forms W-2, line 3 the Delaware income tax withheld, and the withholding worksheet of tax withheld by month of the pay date. `taxPaid` is the tax paid to the Division of Revenue in each month, January to December; with it the response fills the tax paid column, line 4, line 5a (overpayment), line 5b (balance due) and line 6 (total remittance), without it those are null. Answers 422 for a company outside the US.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func usDeWithholdingReconciliationGet(request: Requests.UsDeWithholdingReconciliationGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> UsDeWithholdingReconciliationGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/us/de/withholding-reconciliation/get",
            body: request,
            requestOptions: requestOptions,
            responseType: UsDeWithholdingReconciliationGetDeclarationsResponse.self
        )
    }

    /// The Delaware unemployment insurance figures of a quarter from the approved US payroll runs paid in it, for the employees charged Delaware unemployment insurance: the total wages, the wages above each employee's yearly wage base, the taxable wages, the contributions, and each employee with the social security number (`personalCode`) and the wages of the quarter. `uc8` gives the lines of Form UC-8: line 1 the covered workers of each month in a payroll period that includes the 12th, lines 2 to 4 the gross covered, excess and taxable wages, line 5 the taxable wages multiplied by the rate of the runs, line 7 line 5 less line 6 and line 10 lines 7, 8 and 9; lines 6 (approved credit), 8 (interest) and 9 (penalty) are `approvedCredit`, `interest` and `penalty` when given, otherwise null and counted as zero. `uc8a` gives Form UC-8A in pages of 30 rows (social security number, first initial, last name, gross covered wages; Nordlet keeps no middle initial) with line 31 of each page, line 32 the total of the pages after the first and line 33 the grand total. Answers 422 for a company outside the US.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func usDeUnemploymentGet(request: Requests.UsDeUnemploymentGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> UsDeUnemploymentGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/us/de/unemployment/get",
            body: request,
            requestOptions: requestOptions,
            responseType: UsDeUnemploymentGetDeclarationsResponse.self
        )
    }

    /// The Delaware gross receipts tax of a month (YYYY-MM) or a quarter (YYYY-Qn) for one business activity of the company's license: the net amounts of the sale invoices issued in the period (credit notes subtracted, advance invoices left out because the final invoice carries the sale, amounts in another currency at the rate stored on the invoice), less `excludedReceipts` (receipts from outside Delaware and from related entities, which the caller states), less the monthly or quarterly deduction of the activity, at the rate of the activity in 30 Del. C. chapters 23, 25, 27 and 29. An invoice in another currency without a stored rate is left out with a warning. Answers 422 for a company outside the US.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func usDeGrossReceiptsGet(request: Requests.UsDeGrossReceiptsGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> UsDeGrossReceiptsGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/us/de/gross-receipts/get",
            body: request,
            requestOptions: requestOptions,
            responseType: UsDeGrossReceiptsGetDeclarationsResponse.self
        )
    }

    /// The sales of a US company per state between two issue dates, to see where its sales may oblige it to collect a state's sales tax: the number and net amount of the issued sale invoices and credit notes (subtracted) by the state of the document's `deliveryAddress`, else of the customer's address (`subdivision`), the sales delivered in the US without a state, and the sales delivered outside the US. Advance invoices are left out because the final invoice carries the sale; amounts in another currency are at the rate stored on the invoice, and an invoice without one is left out with a warning. Answers 422 for a company outside the US.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func usStateSalesGet(request: Requests.UsStateSalesGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> UsStateSalesGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/us/state-sales/get",
            body: request,
            requestOptions: requestOptions,
            responseType: UsStateSalesGetDeclarationsResponse.self
        )
    }

    /// The sales tax a US company charged between two issue dates, per state (`salesTaxJurisdiction` of the document), for its state sales tax returns: the number of issued invoices and credit notes (subtracted) with sales tax, their net amount split into `taxableSales` and `exemptSales` (documents charged no sales tax under the customer's certificate of exemption, `salesTaxExemptionId`), and their sales tax, which `sales/invoices/issue` credited to the sales tax payable account. Amounts in another currency are at the rate stored on the document, and a document without one is left out with a warning. Answers 422 for a company outside the US.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func usSalesTaxGet(request: Requests.UsSalesTaxGetDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> UsSalesTaxGetDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/us/sales-tax/get",
            body: request,
            requestOptions: requestOptions,
            responseType: UsSalesTaxGetDeclarationsResponse.self
        )
    }

    /// The Delaware franchise tax of a domestic corporation for its annual franchise tax report, by 8 Del. C. § 503: the authorized shares method on the total of `authorizedShares`, and, when `issuedShares` and `totalGrossAssets` (the total assets of Form 1120 Schedule L) are given, the assumed par value capital method, where a share class without `parValue` has no par value; `tax` is the lesser of the two (at least $175 and $400, at most $200,000), or $250,000 for a Large Corporate Filer. `annualReportFee` is the filing fee of a non-exempt domestic corporation, paid with the report. Answers 422 for a company outside the US.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func usDeFranchiseTaxCompute(request: Requests.UsDeFranchiseTaxComputeDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> UsDeFranchiseTaxComputeDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/us/de/franchise-tax/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: UsDeFranchiseTaxComputeDeclarationsResponse.self
        )
    }

    /// The hours worked in each workweek that touches the period, per employee of a US company (or the one `employeeId`), for the overtime and records of the Fair Labor Standards Act: the workweek starts on the employee's `usWorkweekStart` day and runs 7 days; the hours are those entered on the work and business-trip days of the timesheets; `overtimeHours` are the hours above 40 in the workweek, 0 for an employee whose `usFlsaExempt` is yes. An employee without `usWorkweekStart` is left out with a warning. Overtime pay is entered on the payroll run as an addition of payment type `overtime-pay` with its hours. Answers 422 for a company outside the US.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func usWorkweeksList(request: Requests.UsWorkweeksListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> UsWorkweeksListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/us/workweeks/list",
            body: request,
            requestOptions: requestOptions,
            responseType: UsWorkweeksListDeclarationsResponse.self
        )
    }

    /// The payroll and time records that 29 CFR 516.2(a) requires for each employee of a US company (or the one `employeeId`) over the period: name and `code`, home address with zip code, date of birth when the employee is under 19 on `from`, `usSex`, the occupation (the position of a contract of the period), the day and time the workweek begins (`usWorkweekStart`, `usWorkweekStartTime`), the hours of each workday and workweek with the regular hourly rate of a workweek with overtime and the straight-time earnings of the workweek (hourly contracts), and for each approved payroll run that overlaps the period the basis of pay, the regular pay, the overtime pay and hours, the straight-time earnings and the overtime premium (the overtime pay less the overtime hours at the hourly rate), the additions and deductions, the total wages, the pay date and the pay period. Figures that need an hourly contract are null without one, with a warning; missing employee data is listed in `warnings`. Answers 422 for a company outside the US.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func usFlsaRecordsList(request: Requests.UsFlsaRecordsListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> UsFlsaRecordsListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/us/flsa-records/list",
            body: request,
            requestOptions: requestOptions,
            responseType: UsFlsaRecordsListDeclarationsResponse.self
        )
    }

    /// Lists the filing systems the company can configure: those of the company country (or of `country` when given), the EU-wide systems and the cross-border e-invoicing systems `it_sdi`, `pl_ksef` and `ro_efactura`. Each row carries the stored values, with a secret or certificate field shown as `__secret_set__` and the fields taken from the company profile filled from it. Each field carries its `label` in the language of `Accept-Language` (English otherwise) when Nordlet has one, and a `select` field its allowed values in `options`. Set the values with `declarations/configs/update` {system, config: {key: value}}.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func configsList(request: Requests.ConfigsListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> ConfigsListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/configs/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ConfigsListDeclarationsResponse.self
        )
    }

    /// Stores the settings of one filing system for the company, merging the given fields into the stored ones. A secret or certificate value is encrypted before it is stored, an empty string clears a field, and `__secret_set__` leaves a stored secret unchanged. Answers 422 for an unknown system.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func configsUpdate(request: Requests.ConfigsUpdateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> ConfigsUpdateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/configs/update",
            body: request,
            requestOptions: requestOptions,
            responseType: ConfigsUpdateDeclarationsResponse.self
        )
    }

    /// Stores a PEM certificate, a PEM private key or a PKCS#12 bundle (base64 in `content`, opened with `passphrase` when it needs one) in the settings of the filing system and replaces the earlier upload of the same kind; for a PEM certificate the fingerprint, subject, issuer and validity dates are recorded. Answers 422 when the system is unknown or does not authenticate with a certificate. Returns the full certificate list of the company.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func certificatesUpload(request: Requests.CertificatesUploadDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> CertificatesUploadDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/certificates/upload",
            body: request,
            requestOptions: requestOptions,
            responseType: CertificatesUploadDeclarationsResponse.self
        )
    }

    /// Lists the certificates and private keys stored for the filing systems of the company, ordered by system and field, each with its validity facts and health (`ok`, `expiring`, `expired` or `unknown`).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func certificatesList(request: Requests.CertificatesListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> CertificatesListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/certificates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: CertificatesListDeclarationsResponse.self
        )
    }

    /// Removes the certificate or the private key (`fieldKey`) of a filing system from the settings of the company and from the certificate list, and returns the remaining certificates.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func certificatesDelete(request: Requests.CertificatesDeleteDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> CertificatesDeleteDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/certificates/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: CertificatesDeleteDeclarationsResponse.self
        )
    }

    /// Lists the filing deadlines Nordlet can file by itself for the country of the company: for each, whether automatic filing is switched on, whether the rule applies to the company profile, whether its filing system is configured, the state of its certificate and whether it would go to the test or the production service.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func automationList(request: Requests.AutomationListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> AutomationListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/automation/list",
            body: request,
            requestOptions: requestOptions,
            responseType: AutomationListDeclarationsResponse.self
        )
    }

    /// Switches automatic filing of one deadline on or off for the company and returns the list of `declarations/automation/list`. Answers 422 when the deadline is not one Nordlet files, or when switching on while the filing system is connected to the test service of the administration (unless the company is a sandbox), is not configured, or has no valid certificate.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func automationUpdate(request: Requests.AutomationUpdateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> AutomationUpdateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/automation/update",
            body: request,
            requestOptions: requestOptions,
            responseType: AutomationUpdateDeclarationsResponse.self
        )
    }

    /// Sends a submission that is still in status `generated` through its filing system once more, with the stored file or, when none was stored yet, a freshly generated one, and returns the updated submission. Answers 409 when the submission is already submitted, accepted or rejected.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func submissionsRetry(request: Requests.SubmissionsRetryDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> SubmissionsRetryDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/submissions/retry",
            body: request,
            requestOptions: requestOptions,
            responseType: SubmissionsRetryDeclarationsResponse.self
        )
    }

    /// Sends a submission whose `confirmationPending` is true once more with the stored file and the token the administration handed back with its warnings (the advis of Erhvervsstyrelsen's Regnskab Indberet, which files the annual report only when it is sent again with that token), and returns the updated submission. Answers 409 when the submission is not waiting for a confirmation.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func submissionsConfirm(request: Requests.SubmissionsConfirmDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> SubmissionsConfirmDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/submissions/confirm",
            body: request,
            requestOptions: requestOptions,
            responseType: SubmissionsConfirmDeclarationsResponse.self
        )
    }

    /// Builds the file of a submitted or accepted submission again from the current data, the way it was built for that submission, and compares it with the file that was filed. `needed` is false when the two carry the same data: a correction would file the same return again. `changes` lists what differs, at most 500 entries (`changeCount` counts them all): for an XML file each element or attribute by its path below the root element (`field`), for another text file each line that is only in the filed file or only in the new one (`line`, its line number in that file); `filed` and `current` are the two values, null where the field or line is missing on that side. Dates and times of the moment a file was built (ISO date-times, and the dates of both builds written as YYYY-MM-DD, YYYYMMDD, DD.MM.YYYY or DDMMYYYY) are not counted as differences. A ZIP or PDF file is compared byte by byte and lists no `changes`. Answers 422 for a submission that is not submitted or accepted, whose deadline Nordlet cannot correct, or that has no stored file.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func submissionsCorrectionPreview(request: Requests.SubmissionsCorrectionPreviewDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> SubmissionsCorrectionPreviewDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/submissions/correction-preview",
            body: request,
            requestOptions: requestOptions,
            responseType: SubmissionsCorrectionPreviewDeclarationsResponse.self
        )
    }

    /// Builds the Lithuanian i.SAF register file of a month (`dataType` F both registers, S sale invoices only, P purchase invoices only), stores it and creates a submission in status `generated` for the obligation `lt-isaf`, the only obligation accepted. The XML alone comes from `declarations/lt/isaf/generate`; the submission is moved on with `declarations/submissions/mark`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func submissionsCreate(request: Requests.SubmissionsCreateDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> SubmissionsCreateDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/submissions/create",
            body: request,
            requestOptions: requestOptions,
            responseType: SubmissionsCreateDeclarationsResponse.self
        )
    }

    /// Records by hand that a submission was sent, accepted or rejected, with the reference and message of the administration when given. The allowed moves are `generated` to `submitted` and `submitted` to `accepted` or `rejected`; any other move answers 409. A submission without a transport system is marked as sent manually.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func submissionsMark(request: Requests.SubmissionsMarkDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> SubmissionsMarkDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/submissions/mark",
            body: request,
            requestOptions: requestOptions,
            responseType: SubmissionsMarkDeclarationsResponse.self
        )
    }

    /// Lists the declaration submissions of the company, newest first, filterable by `obligation`, `status`, `periodYear` and `periodMonth` and sortable by `createdAt`, `periodYear`, `obligation`, `period` (the year, then the month), `fileName`, `status` and `externalRef`. `canAmend` is true on the newest submitted or accepted send of a period (per document for a deadline filed as one document per person) whose filing can be corrected; `correction` names the fields `calendar/submit` with `amend: true` takes for it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func submissionsList(request: Requests.SubmissionsListDeclarationsRequest, requestOptions: RequestOptions? = nil) async throws -> SubmissionsListDeclarationsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/declarations/submissions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: SubmissionsListDeclarationsResponse.self
        )
    }
}