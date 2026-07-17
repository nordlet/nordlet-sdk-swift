import Foundation

public enum PostV1SalesInvoicesApplyAdvanceResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
}