import Foundation

public enum PostV1ProductionOrdersListResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case assembly
    case disassembly
}