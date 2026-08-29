import Foundation

public enum PostV1ReferenceEuVatRatesSyncResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case running
    case succeeded
    case failed
}