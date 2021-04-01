//
//  ModelData.swift
//  Landmarks
//
//  Created by Leandro Vitor on 31/03/21.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Error to import file")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Error to load")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Error")
    }
}
