import Foundation

public enum OrdersCompleteProductionResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case assembly
    case disassembly
}