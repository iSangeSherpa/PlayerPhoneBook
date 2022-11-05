//import Foundation
//
//class DataLoader {
////    @Published var team_data = [TeamData]()
//    
//    func load() {
//        
//        if let fileLocation = Bundle.main.url(forResource: "nba_teams", withExtension: "json") {
//            
//            do {
//                let data = try Data(contentsOf: fileLocation)
//                let jsonDecoder = JSONDecoder()
//                let dataFromJson = try jsonDecoder.decode([TeamData].self, from: data)
//            } catch {
//                print(error.localizedDescription)
//            }
//            
//        }
//    }
//    
//    
//}
