import Foundation

extension Requests {
    public struct PostV1AgreementsAgreementsUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let typeId: Nullable<String>?
        public let kind: PostV1AgreementsAgreementsUpdateRequestKind?
        public let name: Nullable<String>?
        public let endDate: Nullable<String>?
        public let autoRenew: Bool?
        public let value: Nullable<String>?
        public let billingPeriod: Nullable<PostV1AgreementsAgreementsUpdateRequestBillingPeriod>?
        public let status: PostV1AgreementsAgreementsUpdateRequestStatus?
        public let notes: Nullable<String>?
        public let documentRef: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            typeId: Nullable<String>? = nil,
            kind: PostV1AgreementsAgreementsUpdateRequestKind? = nil,
            name: Nullable<String>? = nil,
            endDate: Nullable<String>? = nil,
            autoRenew: Bool? = nil,
            value: Nullable<String>? = nil,
            billingPeriod: Nullable<PostV1AgreementsAgreementsUpdateRequestBillingPeriod>? = nil,
            status: PostV1AgreementsAgreementsUpdateRequestStatus? = nil,
            notes: Nullable<String>? = nil,
            documentRef: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.typeId = typeId
            self.kind = kind
            self.name = name
            self.endDate = endDate
            self.autoRenew = autoRenew
            self.value = value
            self.billingPeriod = billingPeriod
            self.status = status
            self.notes = notes
            self.documentRef = documentRef
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.typeId = try container.decodeNullableIfPresent(String.self, forKey: .typeId)
            self.kind = try container.decodeIfPresent(PostV1AgreementsAgreementsUpdateRequestKind.self, forKey: .kind)
            self.name = try container.decodeNullableIfPresent(String.self, forKey: .name)
            self.endDate = try container.decodeNullableIfPresent(String.self, forKey: .endDate)
            self.autoRenew = try container.decodeIfPresent(Bool.self, forKey: .autoRenew)
            self.value = try container.decodeNullableIfPresent(String.self, forKey: .value)
            self.billingPeriod = try container.decodeNullableIfPresent(PostV1AgreementsAgreementsUpdateRequestBillingPeriod.self, forKey: .billingPeriod)
            self.status = try container.decodeIfPresent(PostV1AgreementsAgreementsUpdateRequestStatus.self, forKey: .status)
            self.notes = try container.decodeNullableIfPresent(String.self, forKey: .notes)
            self.documentRef = try container.decodeNullableIfPresent(String.self, forKey: .documentRef)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeNullableIfPresent(self.typeId, forKey: .typeId)
            try container.encodeIfPresent(self.kind, forKey: .kind)
            try container.encodeNullableIfPresent(self.name, forKey: .name)
            try container.encodeNullableIfPresent(self.endDate, forKey: .endDate)
            try container.encodeIfPresent(self.autoRenew, forKey: .autoRenew)
            try container.encodeNullableIfPresent(self.value, forKey: .value)
            try container.encodeNullableIfPresent(self.billingPeriod, forKey: .billingPeriod)
            try container.encodeIfPresent(self.status, forKey: .status)
            try container.encodeNullableIfPresent(self.notes, forKey: .notes)
            try container.encodeNullableIfPresent(self.documentRef, forKey: .documentRef)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case typeId
            case kind
            case name
            case endDate
            case autoRenew
            case value
            case billingPeriod
            case status
            case notes
            case documentRef
        }
    }
}