import Foundation

public enum InvoicesGetPublicResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
}