import Foundation

public enum PostV1ReportsJobsCreateRequestFormatsItem: String, Codable, Hashable, CaseIterable, Sendable {
    case json
    case xlsx
    case pdf
}