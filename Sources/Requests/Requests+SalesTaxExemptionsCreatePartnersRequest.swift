import Foundation

extension Requests {
    public struct SalesTaxExemptionsCreatePartnersRequest: Codable, Hashable, Sendable {
        public let partnerId: String
        public let state: SalesTaxExemptionsCreatePartnersRequestState
        public let reasons: [SalesTaxExemptionsCreatePartnersRequestReasonsItem]
        public let otherReason: String?
        public let reasonDetail: String?
        public let businessType: SalesTaxExemptionsCreatePartnersRequestBusinessType
        public let otherBusinessType: String?
        public let idNumber: String
        public let idIssuedBy: String
        public let singlePurchaseReference: String?
        public let signedBy: String?
        public let signerTitle: String?
        public let signedOn: CalendarDate?
        public let receivedOn: CalendarDate
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            partnerId: String,
            state: SalesTaxExemptionsCreatePartnersRequestState,
            reasons: [SalesTaxExemptionsCreatePartnersRequestReasonsItem],
            otherReason: String? = nil,
            reasonDetail: String? = nil,
            businessType: SalesTaxExemptionsCreatePartnersRequestBusinessType,
            otherBusinessType: String? = nil,
            idNumber: String,
            idIssuedBy: String,
            singlePurchaseReference: String? = nil,
            signedBy: String? = nil,
            signerTitle: String? = nil,
            signedOn: CalendarDate? = nil,
            receivedOn: CalendarDate,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.partnerId = partnerId
            self.state = state
            self.reasons = reasons
            self.otherReason = otherReason
            self.reasonDetail = reasonDetail
            self.businessType = businessType
            self.otherBusinessType = otherBusinessType
            self.idNumber = idNumber
            self.idIssuedBy = idIssuedBy
            self.singlePurchaseReference = singlePurchaseReference
            self.signedBy = signedBy
            self.signerTitle = signerTitle
            self.signedOn = signedOn
            self.receivedOn = receivedOn
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.partnerId = try container.decode(String.self, forKey: .partnerId)
            self.state = try container.decode(SalesTaxExemptionsCreatePartnersRequestState.self, forKey: .state)
            self.reasons = try container.decode([SalesTaxExemptionsCreatePartnersRequestReasonsItem].self, forKey: .reasons)
            self.otherReason = try container.decodeIfPresent(String.self, forKey: .otherReason)
            self.reasonDetail = try container.decodeIfPresent(String.self, forKey: .reasonDetail)
            self.businessType = try container.decode(SalesTaxExemptionsCreatePartnersRequestBusinessType.self, forKey: .businessType)
            self.otherBusinessType = try container.decodeIfPresent(String.self, forKey: .otherBusinessType)
            self.idNumber = try container.decode(String.self, forKey: .idNumber)
            self.idIssuedBy = try container.decode(String.self, forKey: .idIssuedBy)
            self.singlePurchaseReference = try container.decodeIfPresent(String.self, forKey: .singlePurchaseReference)
            self.signedBy = try container.decodeIfPresent(String.self, forKey: .signedBy)
            self.signerTitle = try container.decodeIfPresent(String.self, forKey: .signerTitle)
            self.signedOn = try container.decodeIfPresent(CalendarDate.self, forKey: .signedOn)
            self.receivedOn = try container.decode(CalendarDate.self, forKey: .receivedOn)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.partnerId, forKey: .partnerId)
            try container.encode(self.state, forKey: .state)
            try container.encode(self.reasons, forKey: .reasons)
            try container.encodeIfPresent(self.otherReason, forKey: .otherReason)
            try container.encodeIfPresent(self.reasonDetail, forKey: .reasonDetail)
            try container.encode(self.businessType, forKey: .businessType)
            try container.encodeIfPresent(self.otherBusinessType, forKey: .otherBusinessType)
            try container.encode(self.idNumber, forKey: .idNumber)
            try container.encode(self.idIssuedBy, forKey: .idIssuedBy)
            try container.encodeIfPresent(self.singlePurchaseReference, forKey: .singlePurchaseReference)
            try container.encodeIfPresent(self.signedBy, forKey: .signedBy)
            try container.encodeIfPresent(self.signerTitle, forKey: .signerTitle)
            try container.encodeIfPresent(self.signedOn, forKey: .signedOn)
            try container.encode(self.receivedOn, forKey: .receivedOn)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case partnerId
            case state
            case reasons
            case otherReason
            case reasonDetail
            case businessType
            case otherBusinessType
            case idNumber
            case idIssuedBy
            case singlePurchaseReference
            case signedBy
            case signerTitle
            case signedOn
            case receivedOn
        }
    }
}