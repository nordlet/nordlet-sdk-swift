import Foundation

public enum PostV1SalesInvoicesIssueResponseVatScheme: String, Codable, Hashable, CaseIterable, Sendable {
    case domestic
    case intraEuB2B = "intra_eu_b2b"
    case reverseCharge = "reverse_charge"
    case ossUnion = "oss_union"
    case ioss
    case marketplaceDeemed = "marketplace_deemed"
    case export
    case outOfScope = "out_of_scope"
    case smeExempt = "sme_exempt"
}