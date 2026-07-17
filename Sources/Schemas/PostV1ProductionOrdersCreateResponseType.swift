import Foundation

public enum PostV1ProductionOrdersCreateResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case assembly
    case disassembly
}