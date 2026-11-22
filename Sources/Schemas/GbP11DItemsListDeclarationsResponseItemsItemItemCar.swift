import Foundation

public struct GbP11DItemsListDeclarationsResponseItemsItemItemCar: Codable, Hashable, Sendable {
    public let make: String
    public let registered: CalendarDate
    public let availableFrom: CalendarDate?
    public let availableTo: CalendarDate?
    public let engineSize: Int64?
    public let fuel: GbP11DItemsListDeclarationsResponseItemsItemItemCarFuel?
    public let co2: Int64?
    public let zeroEmissionMileage: Int64?
    public let noApprovedCo2: Bool?
    public let listPrice: String
    public let accessories: String
    public let capitalContribution: String
    public let privateUsePayment: String
    public let fuelWithdrawn: CalendarDate?
    public let fuelReinstated: Bool?
    public let amount: String
    public let fuelAmount: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        make: String,
        registered: CalendarDate,
        availableFrom: CalendarDate? = nil,
        availableTo: CalendarDate? = nil,
        engineSize: Int64? = nil,
        fuel: GbP11DItemsListDeclarationsResponseItemsItemItemCarFuel? = nil,
        co2: Int64? = nil,
        zeroEmissionMileage: Int64? = nil,
        noApprovedCo2: Bool? = nil,
        listPrice: String,
        accessories: String,
        capitalContribution: String,
        privateUsePayment: String,
        fuelWithdrawn: CalendarDate? = nil,
        fuelReinstated: Bool? = nil,
        amount: String,
        fuelAmount: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.make = make
        self.registered = registered
        self.availableFrom = availableFrom
        self.availableTo = availableTo
        self.engineSize = engineSize
        self.fuel = fuel
        self.co2 = co2
        self.zeroEmissionMileage = zeroEmissionMileage
        self.noApprovedCo2 = noApprovedCo2
        self.listPrice = listPrice
        self.accessories = accessories
        self.capitalContribution = capitalContribution
        self.privateUsePayment = privateUsePayment
        self.fuelWithdrawn = fuelWithdrawn
        self.fuelReinstated = fuelReinstated
        self.amount = amount
        self.fuelAmount = fuelAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.make = try container.decode(String.self, forKey: .make)
        self.registered = try container.decode(CalendarDate.self, forKey: .registered)
        self.availableFrom = try container.decodeIfPresent(CalendarDate.self, forKey: .availableFrom)
        self.availableTo = try container.decodeIfPresent(CalendarDate.self, forKey: .availableTo)
        self.engineSize = try container.decodeIfPresent(Int64.self, forKey: .engineSize)
        self.fuel = try container.decodeIfPresent(GbP11DItemsListDeclarationsResponseItemsItemItemCarFuel.self, forKey: .fuel)
        self.co2 = try container.decodeIfPresent(Int64.self, forKey: .co2)
        self.zeroEmissionMileage = try container.decodeIfPresent(Int64.self, forKey: .zeroEmissionMileage)
        self.noApprovedCo2 = try container.decodeIfPresent(Bool.self, forKey: .noApprovedCo2)
        self.listPrice = try container.decode(String.self, forKey: .listPrice)
        self.accessories = try container.decode(String.self, forKey: .accessories)
        self.capitalContribution = try container.decode(String.self, forKey: .capitalContribution)
        self.privateUsePayment = try container.decode(String.self, forKey: .privateUsePayment)
        self.fuelWithdrawn = try container.decodeIfPresent(CalendarDate.self, forKey: .fuelWithdrawn)
        self.fuelReinstated = try container.decodeIfPresent(Bool.self, forKey: .fuelReinstated)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.fuelAmount = try container.decodeIfPresent(String.self, forKey: .fuelAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.make, forKey: .make)
        try container.encode(self.registered, forKey: .registered)
        try container.encodeIfPresent(self.availableFrom, forKey: .availableFrom)
        try container.encodeIfPresent(self.availableTo, forKey: .availableTo)
        try container.encodeIfPresent(self.engineSize, forKey: .engineSize)
        try container.encodeIfPresent(self.fuel, forKey: .fuel)
        try container.encodeIfPresent(self.co2, forKey: .co2)
        try container.encodeIfPresent(self.zeroEmissionMileage, forKey: .zeroEmissionMileage)
        try container.encodeIfPresent(self.noApprovedCo2, forKey: .noApprovedCo2)
        try container.encode(self.listPrice, forKey: .listPrice)
        try container.encode(self.accessories, forKey: .accessories)
        try container.encode(self.capitalContribution, forKey: .capitalContribution)
        try container.encode(self.privateUsePayment, forKey: .privateUsePayment)
        try container.encodeIfPresent(self.fuelWithdrawn, forKey: .fuelWithdrawn)
        try container.encodeIfPresent(self.fuelReinstated, forKey: .fuelReinstated)
        try container.encode(self.amount, forKey: .amount)
        try container.encodeIfPresent(self.fuelAmount, forKey: .fuelAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case make
        case registered
        case availableFrom
        case availableTo
        case engineSize
        case fuel
        case co2
        case zeroEmissionMileage
        case noApprovedCo2
        case listPrice
        case accessories
        case capitalContribution
        case privateUsePayment
        case fuelWithdrawn
        case fuelReinstated
        case amount
        case fuelAmount
    }
}