import Foundation

public enum VatSummaryReportsRequestSide: String, Codable, Hashable, CaseIterable, Sendable {
    case sales
    case purchases
}