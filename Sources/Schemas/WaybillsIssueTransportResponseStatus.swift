import Foundation

public enum WaybillsIssueTransportResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}