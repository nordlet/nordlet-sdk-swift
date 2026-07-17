import Foundation

public enum PostV1HrTimesheetsUpsertRequestDaysItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case work
    case businessTrip = "business_trip"
    case vacation
    case sick
    case holiday
    case unpaid
}