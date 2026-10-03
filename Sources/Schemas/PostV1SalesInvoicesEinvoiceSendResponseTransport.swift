import Foundation

public enum PostV1SalesInvoicesEinvoiceSendResponseTransport: String, Codable, Hashable, CaseIterable, Sendable {
    case bridge
    case direct
}