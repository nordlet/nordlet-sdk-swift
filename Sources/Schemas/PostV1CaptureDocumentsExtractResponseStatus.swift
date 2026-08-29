import Foundation

public enum PostV1CaptureDocumentsExtractResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case extracted
    case failed
    case linked
}