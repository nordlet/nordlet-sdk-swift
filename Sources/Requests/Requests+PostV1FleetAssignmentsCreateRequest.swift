import Foundation

extension Requests {
    public struct PostV1FleetAssignmentsCreateRequest: Codable, Hashable, Sendable {
        public let vehicleId: String
        public let employeeId: String
        public let fromDate: String
        public let toDate: String?
        public let privateUse: Bool?
        public let employerPaysFuel: Bool?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            vehicleId: String,
            employeeId: String,
            fromDate: String,
            toDate: String? = nil,
            privateUse: Bool? = nil,
            employerPaysFuel: Bool? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.vehicleId = vehicleId
            self.employeeId = employeeId
            self.fromDate = fromDate
            self.toDate = toDate
            self.privateUse = privateUse
            self.employerPaysFuel = employerPaysFuel
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.vehicleId = try container.decode(String.self, forKey: .vehicleId)
            self.employeeId = try container.decode(String.self, forKey: .employeeId)
            self.fromDate = try container.decode(String.self, forKey: .fromDate)
            self.toDate = try container.decodeIfPresent(String.self, forKey: .toDate)
            self.privateUse = try container.decodeIfPresent(Bool.self, forKey: .privateUse)
            self.employerPaysFuel = try container.decodeIfPresent(Bool.self, forKey: .employerPaysFuel)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.vehicleId, forKey: .vehicleId)
            try container.encode(self.employeeId, forKey: .employeeId)
            try container.encode(self.fromDate, forKey: .fromDate)
            try container.encodeIfPresent(self.toDate, forKey: .toDate)
            try container.encodeIfPresent(self.privateUse, forKey: .privateUse)
            try container.encodeIfPresent(self.employerPaysFuel, forKey: .employerPaysFuel)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case vehicleId
            case employeeId
            case fromDate
            case toDate
            case privateUse
            case employerPaysFuel
            case notes
        }
    }
}