import Foundation

public enum DocumentsListCaptureResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case extracted
    case failed
    case linked
}