import Foundation

public enum GbCorporationTaxComputeDeclarationsResponsePartsItemRate: String, Codable, Hashable, CaseIterable, Sendable {
    case main
    case smallProfits = "small_profits"
    case marginalRelief = "marginal_relief"
}