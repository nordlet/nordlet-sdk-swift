import Foundation

public enum CreateOfficersRequestRole: String, Codable, Hashable, CaseIterable, Sendable {
    case director
    case managingDirector = "managing_director"
    case boardMember = "board_member"
    case boardChair = "board_chair"
    case supervisoryBoardMember = "supervisory_board_member"
    case secretary
    case representative
    case liquidator
}