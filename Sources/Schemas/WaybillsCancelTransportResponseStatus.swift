import Foundation

public enum WaybillsCancelTransportResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}