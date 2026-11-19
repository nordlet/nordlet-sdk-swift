import Foundation

public enum UsDeFranchiseTaxComputeDeclarationsResponseMethod: String, Codable, Hashable, CaseIterable, Sendable {
    case authorizedShares = "authorized-shares"
    case assumedParValueCapital = "assumed-par-value-capital"
    case largeCorporateFiler = "large-corporate-filer"
}