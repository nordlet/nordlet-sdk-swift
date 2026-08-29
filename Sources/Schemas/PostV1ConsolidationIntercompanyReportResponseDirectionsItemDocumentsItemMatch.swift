import Foundation

public enum PostV1ConsolidationIntercompanyReportResponseDirectionsItemDocumentsItemMatch: String, Codable, Hashable, CaseIterable, Sendable {
    case mirrored
    case matchedByNumber = "matched_by_number"
    case missing
}