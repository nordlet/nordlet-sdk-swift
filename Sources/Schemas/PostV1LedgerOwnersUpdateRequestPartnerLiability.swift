import Foundation

public enum PostV1LedgerOwnersUpdateRequestPartnerLiability: String, Codable, Hashable, CaseIterable, Sendable {
    case general
    case limited
}