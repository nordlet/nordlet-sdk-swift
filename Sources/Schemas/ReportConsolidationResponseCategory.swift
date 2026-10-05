import Foundation

public enum ReportConsolidationResponseCategory: String, Codable, Hashable, CaseIterable, Sendable {
    case micro
    case small
    case medium
    case large
}