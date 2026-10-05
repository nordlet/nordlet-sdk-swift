import Foundation

extension Requests {
    public struct VehiclesCreateFleetRequest: Codable, Hashable, Sendable {
        public let plateNumber: String
        public let make: String
        public let model: String
        public let year: Int64?
        public let vin: String?
        public let fuelType: VehiclesCreateFleetRequestFuelType?
        public let acquisitionDate: CalendarDate?
        public let marketValue: String?
        public let fixedAssetId: String?
        public let technicalInspectionDue: CalendarDate?
        public let insuranceDue: CalendarDate?
        public let notes: String?
        public let documents: [VehiclesCreateFleetRequestDocumentsItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            plateNumber: String,
            make: String,
            model: String,
            year: Int64? = nil,
            vin: String? = nil,
            fuelType: VehiclesCreateFleetRequestFuelType? = nil,
            acquisitionDate: CalendarDate? = nil,
            marketValue: String? = nil,
            fixedAssetId: String? = nil,
            technicalInspectionDue: CalendarDate? = nil,
            insuranceDue: CalendarDate? = nil,
            notes: String? = nil,
            documents: [VehiclesCreateFleetRequestDocumentsItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
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
            self.notes = notes
            self.documents = documents
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.plateNumber = try container.decode(String.self, forKey: .plateNumber)
            self.make = try container.decode(String.self, forKey: .make)
            self.model = try container.decode(String.self, forKey: .model)
            self.year = try container.decodeIfPresent(Int64.self, forKey: .year)
            self.vin = try container.decodeIfPresent(String.self, forKey: .vin)
            self.fuelType = try container.decodeIfPresent(VehiclesCreateFleetRequestFuelType.self, forKey: .fuelType)
            self.acquisitionDate = try container.decodeIfPresent(CalendarDate.self, forKey: .acquisitionDate)
            self.marketValue = try container.decodeIfPresent(String.self, forKey: .marketValue)
            self.fixedAssetId = try container.decodeIfPresent(String.self, forKey: .fixedAssetId)
            self.technicalInspectionDue = try container.decodeIfPresent(CalendarDate.self, forKey: .technicalInspectionDue)
            self.insuranceDue = try container.decodeIfPresent(CalendarDate.self, forKey: .insuranceDue)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.documents = try container.decodeIfPresent([VehiclesCreateFleetRequestDocumentsItem].self, forKey: .documents)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.plateNumber, forKey: .plateNumber)
            try container.encode(self.make, forKey: .make)
            try container.encode(self.model, forKey: .model)
            try container.encodeIfPresent(self.year, forKey: .year)
            try container.encodeIfPresent(self.vin, forKey: .vin)
            try container.encodeIfPresent(self.fuelType, forKey: .fuelType)
            try container.encodeIfPresent(self.acquisitionDate, forKey: .acquisitionDate)
            try container.encodeIfPresent(self.marketValue, forKey: .marketValue)
            try container.encodeIfPresent(self.fixedAssetId, forKey: .fixedAssetId)
            try container.encodeIfPresent(self.technicalInspectionDue, forKey: .technicalInspectionDue)
            try container.encodeIfPresent(self.insuranceDue, forKey: .insuranceDue)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.documents, forKey: .documents)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
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
            case notes
            case documents
        }
    }
}