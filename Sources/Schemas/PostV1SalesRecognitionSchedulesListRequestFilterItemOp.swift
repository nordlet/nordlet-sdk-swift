import Foundation

public enum PostV1SalesRecognitionSchedulesListRequestFilterItemOp: String, Codable, Hashable, CaseIterable, Sendable {
    case eq
    case ne
    case contains
    case gte
    case lte
    case `in`
}