import Foundation

public enum PostV1SalesInvoicesCreateRequestLinesItemRecognitionMethod: String, Codable, Hashable, CaseIterable, Sendable {
    case pointInTime = "point_in_time"
    case ratable
    case milestone
    case percentComplete = "percent_complete"
}