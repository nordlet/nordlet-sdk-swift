import Foundation

public enum ReportConsolidationRequestCategory: String, Codable, Hashable, CaseIterable, Sendable {
    case micro
    case small
    case medium
    case large
}