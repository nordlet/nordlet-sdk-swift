import Foundation

public struct PostV1FleetVehiclesCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let plateNumber: String
    public let make: String
    public let model: String
    public let year: Nullable<Int64>
    public let vin: Nullable<String>
    public let fuelType: Nullable<String>
    public let acquisitionDate: Nullable<String>
    public let marketValue: String
    public let fixedAssetId: Nullable<String>
    public let technicalInspectionDue: Nullable<String>
    public let insuranceDue: Nullable<String>
    public let status: PostV1FleetVehiclesCreateResponseStatus
    public let notes: Nullable<String>
    public let currentAssignment: Nullable<PostV1FleetVehiclesCreateResponseCurrentAssignment>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        plateNumber: String,
        make: String,
        model: String,
        year: Nullable<Int64>,
        vin: Nullable<String>,
        fuelType: Nullable<String>,
        acquisitionDate: Nullable<String>,
        marketValue: String,
        fixedAssetId: Nullable<String>,
        technicalInspectionDue: Nullable<String>,
        insuranceDue: Nullable<String>,
        status: PostV1FleetVehiclesCreateResponseStatus,
        notes: Nullable<String>,
        currentAssignment: Nullable<PostV1FleetVehiclesCreateResponseCurrentAssignment>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.plateNumber = plateNumber
        self.make = make
        self.model = model
        self.year = year
        self.vin = vin
        self.fuelType = fuelType
        self.acquisitionDate = acquisitionDate
        self.marketValue = marketValue
        self.fixedAssetId = fixedAssetId
        self.technicalInspectionDue = technicalInspectionDue
        self.insuranceDue = insuranceDue
        self.status = status
        self.notes = notes
        self.currentAssignment = currentAssignment
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.plateNumber = try container.decode(String.self, forKey: .plateNumber)
        self.make = try container.decode(String.self, forKey: .make)
        self.model = try container.decode(String.self, forKey: .model)
        self.year = try container.decode(Nullable<Int64>.self, forKey: .year)
        self.vin = try container.decode(Nullable<String>.self, forKey: .vin)
        self.fuelType = try container.decode(Nullable<String>.self, forKey: .fuelType)
        self.acquisitionDate = try container.decode(Nullable<String>.self, forKey: .acquisitionDate)
        self.marketValue = try container.decode(String.self, forKey: .marketValue)
        self.fixedAssetId = try container.decode(Nullable<String>.self, forKey: .fixedAssetId)
        self.technicalInspectionDue = try container.decode(Nullable<String>.self, forKey: .technicalInspectionDue)
        self.insuranceDue = try container.decode(Nullable<String>.self, forKey: .insuranceDue)
        self.status = try container.decode(PostV1FleetVehiclesCreateResponseStatus.self, forKey: .status)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.currentAssignment = try container.decode(Nullable<PostV1FleetVehiclesCreateResponseCurrentAssignment>.self, forKey: .currentAssignment)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.plateNumber, forKey: .plateNumber)
        try container.encode(self.make, forKey: .make)
        try container.encode(self.model, forKey: .model)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.vin, forKey: .vin)
        try container.encode(self.fuelType, forKey: .fuelType)
        try container.encode(self.acquisitionDate, forKey: .acquisitionDate)
        try container.encode(self.marketValue, forKey: .marketValue)
        try container.encode(self.fixedAssetId, forKey: .fixedAssetId)
        try container.encode(self.technicalInspectionDue, forKey: .technicalInspectionDue)
        try container.encode(self.insuranceDue, forKey: .insuranceDue)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.currentAssignment, forKey: .currentAssignment)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case plateNumber
        case make
        case model
        case year
        case vin
        case fuelType
        case acquisitionDate
        case marketValue
        case fixedAssetId
        case technicalInspectionDue
        case insuranceDue
        case status
        case notes
        case currentAssignment
        case createdAt
    }
}