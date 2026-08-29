import Foundation

extension Requests {
    public struct PostV1ProductionWorkCentersCreateRequest: Codable, Hashable, Sendable {
        public let code: String
        public let name: String
        public let costPerHour: String?
        public let costAccountCode: String?
        public let maintenanceIntervalDays: Int64?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            code: String,
            name: String,
            costPerHour: String? = nil,
            costAccountCode: String? = nil,
            maintenanceIntervalDays: Int64? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.code = code
            self.name = name
            self.costPerHour = costPerHour
            self.costAccountCode = costAccountCode
            self.maintenanceIntervalDays = maintenanceIntervalDays
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.code = try container.decode(String.self, forKey: .code)
            self.name = try container.decode(String.self, forKey: .name)
            self.costPerHour = try container.decodeIfPresent(String.self, forKey: .costPerHour)
            self.costAccountCode = try container.decodeIfPresent(String.self, forKey: .costAccountCode)
            self.maintenanceIntervalDays = try container.decodeIfPresent(Int64.self, forKey: .maintenanceIntervalDays)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.code, forKey: .code)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.costPerHour, forKey: .costPerHour)
            try container.encodeIfPresent(self.costAccountCode, forKey: .costAccountCode)
            try container.encodeIfPresent(self.maintenanceIntervalDays, forKey: .maintenanceIntervalDays)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case code
            case name
            case costPerHour
            case costAccountCode
            case maintenanceIntervalDays
            case notes
        }
    }
}