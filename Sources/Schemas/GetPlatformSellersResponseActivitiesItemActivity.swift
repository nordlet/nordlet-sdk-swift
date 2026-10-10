import Foundation

public enum GetPlatformSellersResponseActivitiesItemActivity: String, Codable, Hashable, CaseIterable, Sendable {
    case immovableProperty = "immovable_property"
    case personalServices = "personal_services"
    case saleOfGoods = "sale_of_goods"
    case transportationRental = "transportation_rental"
}