import Foundation

public enum VatResolveReferenceRequestGoodsKind: String, Codable, Hashable, CaseIterable, Sendable {
    case installed
    case energyNetwork = "energy_network"
}