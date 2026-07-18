import Foundation

public enum PostV1SalesRecognitionSchedulesListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case recognized
    case cancelled
}