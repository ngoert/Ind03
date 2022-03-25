//
//  State.swift
//  Ind03_Goertemiller_Nicholas
//
//  Created by Nicholas Goertemiller on 3/23/22.
//

import Foundation

struct State: Decodable {
  let name: String
  let nickName: nickName
  
  enum nickName: Decodable {
    case YellowhammerState
    case TheLastFrontier
    case TheGrandCanyonState
    case TheNaturalState
    case TheGoldenState
    case TheCentennialState
    case TheConstitutionState
    case TheFirstState
    case TheSunshineState
    case ThePeachState
    case TheAlohaState
    case TheGemState
    case PrairieState
    case TheHoosierState
    case TheHawkeyeState
    case TheSunflowerState
    case TheBluegrassState
    case ThePelicanState
    case ThePineTreeState
    case TheOldLineState
    case TheBayState
    case TheGreatLakesState
    case TheNorthStarState
    case TheMagnoliaState
    case TheShowMeState
    case TheTreasureState
    case TheCornhuskerState
    case TheSilverState
    case TheGraniteState
    case TheGardenState
    case TheLandofEnchantment
    case TheEmpireState
    case TheTarHeelState
    case ThePeaceGardenState
    case TheBuckeyeState
    case TheSoonerState
    case TheBeaverState
    case TheKeystoneState
    case TheOceanState
    case ThePalmettoState
    case MountRushmoreState
    case TheVolunteerState
    case TheLoneStarState
    case TheBeehiveState
    case TheGreenMountainState
    case TheOldDominionState
    case TheEvergreenState
    case TheMountainState
    case TheBadgerState
    case TheEqualityorCowboyState
  }
}

extension State.nickName: CaseIterable { }

extension State.nickName: RawRepresentable {
  typealias RawValue = String
  
  init?(rawValue: RawValue) {
    switch rawValue {
    case "Yellowhammer State, Area: 50,744": self = .YellowhammerState
    case "The Last Frontier, Area: 571,951": self = .TheLastFrontier
    case "The Grand Canyon State, Area: 113,635": self = .TheGrandCanyonState
    case "The Natural State, Area: 52,068": self = .TheNaturalState
    case "The Golden State, Area: 155,959": self = .TheGoldenState
    case "The Centennial State, Area: 103,718": self = .TheCentennialState
    case "The Constitution State, Area: 4,845": self = .TheConstitutionState
    case "The First State, Area: 1,954": self = .TheFirstState
    case "The Sunshine State, Area: 53,927": self = .TheSunshineState
    case "The Peach State, Area: 57,906": self = .ThePeachState
    case "The Aloha State, Area: 6,423": self = .TheAlohaState
    case "The Gem State, Area: 82,747": self = .TheGemState
    case "Prairie State, Area: 55,584": self = .PrairieState
    case "The Hoosier State, Area: 35,867": self = .TheHoosierState
    case "The Hawkeye State, Area: 55,869": self = .TheHawkeyeState
    case "The Sunflower State, Area: 81,815": self = .TheSunflowerState
    case "The Bluegrass State, Area: 39,728": self = .TheBluegrassState
    case "The Pelican State, Area: 43,562": self = .ThePelicanState
    case "The Pine Tree State, Area: 30,862": self = .ThePineTreeState
    case "The Old Line State, Area: 9,774": self = .TheOldLineState
    case "The Bay State, Area: 7,840": self = .TheBayState
    case "The Great Lakes State, Area: 56,804": self = .TheGreatLakesState
    case "The North Star State, Area: 79,610": self = .TheNorthStarState
    case "The Magnolia State, Area: 46,907": self = .TheMagnoliaState
    case "The Show Me State, Area: 68,886": self = .TheShowMeState
    case "The Treasure State, Area: 145,552": self = .TheTreasureState
    case "The Cornhusker State, Area: 76,872": self = .TheCornhuskerState
    case "The Silver State, Area: 109,826": self = .TheSilverState
    case "The Granite State, Area: 8,968": self = .TheGraniteState
    case "The Garden State, Area: 7,417": self = .TheGardenState
    case "The Land of Enchantment, Area: 121,356": self = .TheLandofEnchantment
    case "The Empire State, Area: 47,214": self = .TheEmpireState
    case "The Tar Heel State, Area: 48,711": self = .TheTarHeelState
    case "The Peace Garden State, Area: 68,976": self = .ThePeaceGardenState
    case "The Buckeye State, Area: 40,948": self = .TheBuckeyeState
    case "The Sooner State,  Area: 68,667": self = .TheSoonerState
    case "The Beaver State, Area: 95,997": self = .TheBeaverState
    case "The Keystone State, Area: 44,817": self = .TheKeystoneState
    case "The Ocean State, Area: 1,045": self = .TheOceanState
    case "The Palmetto State, Area: 30,109": self = .ThePalmettoState
    case "Mount Rushmore State, Area: 75,885": self = .MountRushmoreState
    case "The Volunteer State, Area: 41,217": self = .TheVolunteerState
    case "The Lone Star State, Area: 261,797": self = .TheLoneStarState
    case "The Beehive State, Area: 82,144": self = .TheBeehiveState
    case "The Green Mountain State, Area: 9,250": self = .TheGreenMountainState
    case "The Old Dominion State, Area: 39,594": self = .TheOldDominionState
    case "The Evergreen State, Area: 66,544": self = .TheEvergreenState
    case "The Mountain State, Area: 24,078": self = .TheMountainState
    case "The Badger State, Area: 54,310": self = .TheBadgerState
    case "The Equality or Cowboy State, Area: 97,100": self = .TheEqualityorCowboyState
    default: return nil
    }
  }
  
  var rawValue: RawValue {
    switch self {
    case .YellowhammerState: return "Yellowhammer State, Area: 50,744"
    case .TheLastFrontier: return "The Last Frontier, Area: 571,951"
    case .TheGrandCanyonState: return "The Grand Canyon State, Area: 113,635"
    case .TheNaturalState: return "The Natural State, Area: 52,068"
    case .TheGoldenState: return "The Golden State, Area: 155,959"
    case .TheCentennialState: return "The Centennial State, Area: 103,718"
    case .TheConstitutionState: return "The Constitution State, Area: 4,845"
    case .TheFirstState: return "The First State, Area: 1,954"
    case .TheSunshineState: return "The Sunshine State, Area: 53,927"
    case .ThePeachState: return "The Peach State, Area: 57,906"
    case .TheAlohaState: return "The Aloha State, Area: 6,423"
    case .TheGemState: return "The Gem State, Area: 82,747"
    case .PrairieState: return "Prairie State, Area: 55,584"
    case .TheHoosierState: return "The Hoosier State, Area: 35,867"
    case .TheHawkeyeState: return "The Hawkeye State, Area: 55,869"
    case .TheSunflowerState: return "The Sunflower State, Area: 81,815"
    case .TheBluegrassState: return "The Bluegrass State, Area: 39,728"
    case .ThePelicanState: return "The Pelican State, Area: 43,562"
    case .ThePineTreeState: return "The Pine Tree State, Area: 30,862"
    case .TheOldLineState: return "The Old Line State, Area: 9,774"
    case .TheBayState: return "The Bay State, Area: 7,840"
    case .TheGreatLakesState: return "The Great Lakes State, Area: 56,804"
    case .TheNorthStarState: return "The North Star State, Area: 79,610"
    case .TheMagnoliaState: return "The Magnolia State, Area: 46,907"
    case .TheShowMeState: return "The Show Me State, Area: 68,886"
    case .TheTreasureState: return "The Treasure State, Area: 145,552"
    case .TheCornhuskerState: return "The Cornhusker State, Area: 76,872"
    case .TheSilverState: return "The Silver State, Area: 109,826"
    case .TheGraniteState: return "The Granite State, Area: 8,968"
    case .TheGardenState: return "The Garden State, Area: 7,417"
    case .TheLandofEnchantment: return "The Land of Enchantment, Area: 121,356"
    case .TheEmpireState: return "The Empire State, Area: 47,214"
    case .TheTarHeelState: return "The Tar Heel State, Area: 48,711"
    case .ThePeaceGardenState: return "The Peace Garden State, Area: 68,976"
    case .TheBuckeyeState: return "The Buckeye State, Area: 40,948"
    case .TheSoonerState: return "The Sooner State,  Area: 68,667"
    case .TheBeaverState: return "The Beaver State, Area: 95,997"
    case .TheKeystoneState: return "The Keystone State, Area: 44,817"
    case .TheOceanState: return "The Ocean State, Area: 1,045"
    case .ThePalmettoState: return "The Palmetto State, Area: 30,109"
    case .MountRushmoreState: return "Mount Rushmore State, Area: 75,885"
    case .TheVolunteerState: return "The Volunteer State, Area: 41,217"
    case .TheLoneStarState: return "The Lone Star State, Area: 261,797"
    case .TheBeehiveState: return "The Beehive State, Area: 82,144"
    case .TheGreenMountainState: return "The Green Mountain State, Area: 9,250"
    case .TheOldDominionState: return "The Old Dominion State, Area: 39,594"
    case .TheEvergreenState: return "The Evergreen State, Area: 66,544"
    case .TheMountainState: return "The Mountain State, Area: 24,078"
    case .TheBadgerState: return "The Badger State, Area: 54,310"
    case .TheEqualityorCowboyState: return "The Equality or Cowboy State, Area: 97,100"
    }
  }
}



// .json file that contains all information for the states

extension State {
  static func states() -> [State] {
    guard
      let url = Bundle.main.url(forResource: "states", withExtension: "json"),
      let data = try? Data(contentsOf: url)
      else {
        return []
    }
    
    do {
      let decoder = JSONDecoder()
      return try decoder.decode([State].self, from: data)
    } catch {
      return []
    }
  }
}
