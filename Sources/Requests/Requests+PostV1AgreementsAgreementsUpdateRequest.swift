import Foundation

extension Requests {
    public struct PostV1AgreementsAgreementsUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let typeId: Nullable<String>?
        public let name: Nullable<String>?
        public let endDate: Nullable<String>?
        public let autoRenew: Bool?
        public let value: Nullable<String>?
        public let status: PostV1AgreementsAgreementsUpdateRequestStatus?
        public let notes: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            typeId: Nullable<String>? = nil,
            name: Nullable<String>? = nil,
            endDate: Nullable<String>? = nil,
            autoRenew: Bool? = nil,
            value: Nullable<String>? = nil,
            status: PostV1AgreementsAgreementsUpdateRequestStatus? = nil,
            notes: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.typeId = typeId
            self.name = name
            self.endDate = endDate
            self.autoRenew = autoRenew
            self.value = value
            self.status = status
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.typeId = try container.decodeNullableIfPresent(String.self, forKey: .typeId)
            self.name = try container.decodeNullableIfPresent(String.self, forKey: .name)
            self.endDate = try container.decodeNullableIfPresent(String.self, forKey: .endDate)
            self.autoRenew = try container.decodeIfPresent(Bool.self, forKey: .autoRenew)
            self.value = try container.decodeNullableIfPresent(String.self, forKey: .value)
            self.status = try container.decodeIfPresent(PostV1AgreementsAgreementsUpdateRequestStatus.self, forKey: .status)
            self.notes = try container.decodeNullableIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeNullableIfPresent(self.typeId, forKey: .typeId)
            try container.encodeNullableIfPresent(self.name, forKey: .name)
            try container.encodeNullableIfPresent(self.endDate, forKey: .endDate)
            try container.encodeIfPresent(self.autoRenew, forKey: .autoRenew)
            try container.encodeNullableIfPresent(self.value, forKey: .value)
            try container.encodeIfPresent(self.status, forKey: .status)
            try container.encodeNullableIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case typeId
            case name
            case endDate
            case autoRenew
            case value
            case status
            case notes
        }
    }
}