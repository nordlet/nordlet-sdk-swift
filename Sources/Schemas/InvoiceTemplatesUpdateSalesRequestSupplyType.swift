import Foundation

public enum InvoiceTemplatesUpdateSalesRequestSupplyType: String, Codable, Hashable, CaseIterable, Sendable {
    case goods
    case services
    case digital
}