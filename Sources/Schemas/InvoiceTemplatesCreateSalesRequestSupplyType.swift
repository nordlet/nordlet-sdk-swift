import Foundation

public enum InvoiceTemplatesCreateSalesRequestSupplyType: String, Codable, Hashable, CaseIterable, Sendable {
    case goods
    case services
    case digital
}