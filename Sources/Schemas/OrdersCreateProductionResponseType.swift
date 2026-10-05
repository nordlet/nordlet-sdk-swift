import Foundation

public enum OrdersCreateProductionResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case assembly
    case disassembly
}