import Foundation

extension Requests {
    public struct PostV1ProductionWorkCentersUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let code: String?
        public let name: String?
        public let costPerHour: String?
        public let costAccountCode: Nullable<String>?
        public let maintenanceIntervalDays: Nullable<Int64>?
        public let isActive: Bool?
        public let notes: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            code: String? = nil,
            name: String? = nil,
            costPerHour: String? = nil,
            costAccountCode: Nullable<String>? = nil,
            maintenanceIntervalDays: Nullable<Int64>? = nil,
            isActive: Bool? = nil,
            notes: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.code = code
            self.name = name
            self.costPerHour = costPerHour
            self.costAccountCode = costAccountCode
            self.maintenanceIntervalDays = maintenanceIntervalDays
            self.isActive = isActive
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.costPerHour = try container.decodeIfPresent(String.self, forKey: .costPerHour)
            self.costAccountCode = try container.decodeNullableIfPresent(String.self, forKey: .costAccountCode)
            self.maintenanceIntervalDays = try container.decodeNullableIfPresent(Int64.self, forKey: .maintenanceIntervalDays)
            self.isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)
            self.notes = try container.decodeNullableIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.code, forKey: .code)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.costPerHour, forKey: .costPerHour)
            try container.encodeNullableIfPresent(self.costAccountCode, forKey: .costAccountCode)
            try container.encodeNullableIfPresent(self.maintenanceIntervalDays, forKey: .maintenanceIntervalDays)
            try container.encodeIfPresent(self.isActive, forKey: .isActive)
            try container.encodeNullableIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case code
            case name
            case costPerHour
            case costAccountCode
            case maintenanceIntervalDays
            case isActive
            case notes
        }
    }
}