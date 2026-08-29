import Foundation

public enum PostV1CaptureDocumentsListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case extracted
    case failed
    case linked
}