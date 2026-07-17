import Foundation

public enum PostV1ReportsVatSummaryRequestSide: String, Codable, Hashable, CaseIterable, Sendable {
    case sales
    case purchases
}