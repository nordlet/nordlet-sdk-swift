import Foundation

public enum IntercompanyReportConsolidationResponseDirectionsItemDocumentsItemMatch: String, Codable, Hashable, CaseIterable, Sendable {
    case mirrored
    case matchedByNumber = "matched_by_number"
    case missing
}