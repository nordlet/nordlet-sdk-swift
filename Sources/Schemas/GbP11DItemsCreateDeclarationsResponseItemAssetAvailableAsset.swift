import Foundation

public enum GbP11DItemsCreateDeclarationsResponseItemAssetAvailableAsset: String, Codable, Hashable, CaseIterable, Sendable {
    case holidayAccommodation = "holiday accommodation"
    case timeshareAccommodation = "timeshare accommodation"
    case aircraft
    case boat
    case corporateHospitality = "corporate hospitality"
    case multiple
    case other
}