import Foundation

public enum WaybillsListTransportResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}