import Foundation

extension Requests {
    public struct VehiclesUpdateFleetRequest: Codable, Hashable, Sendable {
        public let id: String
        public let plateNumber: String?
        public let make: String?
        public let model: String?
        public let year: Nullable<Int64>?
        public let vin: Nullable<String>?
        public let fuelType: Nullable<VehiclesUpdateFleetRequestFuelType>?
        public let acquisitionDate: Nullable<CalendarDate>?
        public let marketValue: String?
        public let fixedAssetId: Nullable<String>?
        public let technicalInspectionDue: Nullable<CalendarDate>?
        public let insuranceDue: Nullable<CalendarDate>?
        public let status: VehiclesUpdateFleetRequestStatus?
        public let notes: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            plateNumber: String? = nil,
            make: String? = nil,
            model: String? = nil,
            year: Nullable<Int64>? = nil,
            vin: Nullable<String>? = nil,
            fuelType: Nullable<VehiclesUpdateFleetRequestFuelType>? = nil,
            acquisitionDate: Nullable<CalendarDate>? = nil,
            marketValue: String? = nil,
            fixedAssetId: Nullable<String>? = nil,
            technicalInspectionDue: Nullable<CalendarDate>? = nil,
            insuranceDue: Nullable<CalendarDate>? = nil,
            status: VehiclesUpdateFleetRequestStatus? = nil,
            notes: Nullable<String>? = nil,
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
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.plateNumber = try container.decodeIfPresent(String.self, forKey: .plateNumber)
            self.make = try container.decodeIfPresent(String.self, forKey: .make)
            self.model = try container.decodeIfPresent(String.self, forKey: .model)
            self.year = try container.decodeNullableIfPresent(Int64.self, forKey: .year)
            self.vin = try container.decodeNullableIfPresent(String.self, forKey: .vin)
            self.fuelType = try container.decodeNullableIfPresent(VehiclesUpdateFleetRequestFuelType.self, forKey: .fuelType)
            self.acquisitionDate = try container.decodeNullableIfPresent(CalendarDate.self, forKey: .acquisitionDate)
            self.marketValue = try container.decodeIfPresent(String.self, forKey: .marketValue)
            self.fixedAssetId = try container.decodeNullableIfPresent(String.self, forKey: .fixedAssetId)
            self.technicalInspectionDue = try container.decodeNullableIfPresent(CalendarDate.self, forKey: .technicalInspectionDue)
            self.insuranceDue = try container.decodeNullableIfPresent(CalendarDate.self, forKey: .insuranceDue)
            self.status = try container.decodeIfPresent(VehiclesUpdateFleetRequestStatus.self, forKey: .status)
            self.notes = try container.decodeNullableIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.plateNumber, forKey: .plateNumber)
            try container.encodeIfPresent(self.make, forKey: .make)
            try container.encodeIfPresent(self.model, forKey: .model)
            try container.encodeNullableIfPresent(self.year, forKey: .year)
            try container.encodeNullableIfPresent(self.vin, forKey: .vin)
            try container.encodeNullableIfPresent(self.fuelType, forKey: .fuelType)
            try container.encodeNullableIfPresent(self.acquisitionDate, forKey: .acquisitionDate)
            try container.encodeIfPresent(self.marketValue, forKey: .marketValue)
            try container.encodeNullableIfPresent(self.fixedAssetId, forKey: .fixedAssetId)
            try container.encodeNullableIfPresent(self.technicalInspectionDue, forKey: .technicalInspectionDue)
            try container.encodeNullableIfPresent(self.insuranceDue, forKey: .insuranceDue)
            try container.encodeIfPresent(self.status, forKey: .status)
            try container.encodeNullableIfPresent(self.notes, forKey: .notes)
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
        }
    }
}