import Foundation

public enum PostV1SalesInvoicesEinvoiceStatusResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case sent
    case accepted
    case rejected
}