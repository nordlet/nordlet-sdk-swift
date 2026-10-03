import Foundation

public enum PostV1DeclarationsAutomationListResponseRowsItemCertificate: String, Codable, Hashable, CaseIterable, Sendable {
    case ok
    case expiring
    case expired
    case unknown
    case missing
    case notNeeded = "not-needed"
}