import Foundation

public enum JobsCreateReportsRequestFormatsItem: String, Codable, Hashable, CaseIterable, Sendable {
    case json
    case xlsx
    case pdf
}