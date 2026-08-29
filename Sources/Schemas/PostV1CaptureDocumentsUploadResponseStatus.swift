import Foundation

public enum PostV1CaptureDocumentsUploadResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case extracted
    case failed
    case linked
}