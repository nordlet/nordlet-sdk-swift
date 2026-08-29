import Foundation

public struct PostV1FleetNaturaPreviewResponseRowsItem: Codable, Hashable, Sendable {
    public let employeeId: String
    public let employeeName: String
    public let vehicleId: String
    public let plateNumber: String
    public let make: String
    public let model: String
    public let marketValue: String
    public let employerPaysFuel: Bool
    public let ratePercent: String
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        employeeId: String,
        employeeName: String,
        vehicleId: String,
        plateNumber: String,
        make: String,
        model: String,
        marketValue: String,
        employerPaysFuel: Bool,
        ratePercent: String,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.employeeId = employeeId
        self.employeeName = employeeName
        self.vehicleId = vehicleId
        self.plateNumber = plateNumber
        self.make = make
        self.model = model
        self.marketValue = marketValue
        self.employerPaysFuel = employerPaysFuel
        self.ratePercent = ratePercent
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.employeeName = try container.decode(String.self, forKey: .employeeName)
        self.vehicleId = try container.decode(String.self, forKey: .vehicleId)
        self.plateNumber = try container.decode(String.self, forKey: .plateNumber)
        self.make = try container.decode(String.self, forKey: .make)
        self.model = try container.decode(String.self, forKey: .model)
        self.marketValue = try container.decode(String.self, forKey: .marketValue)
        self.employerPaysFuel = try container.decode(Bool.self, forKey: .employerPaysFuel)
        self.ratePercent = try container.decode(String.self, forKey: .ratePercent)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.employeeName, forKey: .employeeName)
        try container.encode(self.vehicleId, forKey: .vehicleId)
        try container.encode(self.plateNumber, forKey: .plateNumber)
        try container.encode(self.make, forKey: .make)
        try container.encode(self.model, forKey: .model)
        try container.encode(self.marketValue, forKey: .marketValue)
        try container.encode(self.employerPaysFuel, forKey: .employerPaysFuel)
        try container.encode(self.ratePercent, forKey: .ratePercent)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case employeeId
        case employeeName
        case vehicleId
        case plateNumber
        case make
        case model
        case marketValue
        case employerPaysFuel
        case ratePercent
        case amount
    }
}