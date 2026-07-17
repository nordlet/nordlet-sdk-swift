import Foundation

public enum PostV1ReferenceVatResolveRequestSupplyType: String, Codable, Hashable, CaseIterable, Sendable {
    case goods
    case services
    case digital
}