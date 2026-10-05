import Foundation

public enum AnnualAccountsGetDeclarationsResponseApprovalAttachmentsItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case fullReport = "full_report"
    case notes
    case managementReport = "management_report"
    case auditorStatement = "auditor_statement"
    case appropriationResolution = "appropriation_resolution"
    case approvalCertificate = "approval_certificate"
    case generalDataSheet = "general_data_sheet"
    case other
}