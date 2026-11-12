import Foundation

public enum VatResolveReferenceRequestSide: String, Codable, Hashable, CaseIterable, Sendable {
    case sale
    case purchase
}