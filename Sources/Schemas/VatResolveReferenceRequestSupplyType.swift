import Foundation

public enum VatResolveReferenceRequestSupplyType: String, Codable, Hashable, CaseIterable, Sendable {
    case goods
    case services
    case digital
}