import Foundation

/// 6240: 621 transfer price, 6211 transfer price with a party under TuMS § 52¹, 622 income not received or cost not incurred, 623 hybrid mismatch (TuMS §§ 54⁷, 54⁸), 624 market value on a transfer to a tonnage unit
public enum EeTsdAnnexesSetDeclarationsRequestAnnex6RelatedPartiesItemTypeCode: String, Codable, Hashable, CaseIterable, Sendable {
    case sixHundredTwentyOne = "621"
    case sixHundredTwentyTwo = "622"
    case sixHundredTwentyThree = "623"
    case sixHundredTwentyFour = "624"
    case sixThousandTwoHundredEleven = "6211"
}