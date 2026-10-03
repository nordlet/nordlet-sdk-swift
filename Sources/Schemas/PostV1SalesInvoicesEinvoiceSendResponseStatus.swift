import Foundation

public enum PostV1SalesInvoicesEinvoiceSendResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case sent
    case accepted
    case rejected
}