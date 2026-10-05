import Foundation

public enum RecognitionSchedulesListSalesResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case recognized
    case cancelled
}