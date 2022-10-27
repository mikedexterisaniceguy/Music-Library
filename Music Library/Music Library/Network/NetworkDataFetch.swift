//
//  NetworkDataFetch.swift
//  Music Library
//
//  Created by 123 on 26.10.22.
//

import Foundation

final class NetworkDataFetch {
    
    static let shared = NetworkDataFetch()
    
    private init() {}
    
    func fetchAlbum(urlString: String, responce: @escaping (AlbumModel?, Error?) -> Void) {
        
        NetworkRequest.shared.requestData(urlString: urlString) { result in
            switch result {
            case .success(let data):
                do {
                    let albums = try JSONDecoder().decode(AlbumModel.self, from: data)
                    responce(albums, nil)
                } catch let jsonError {
                    print("Error", jsonError) // jsonError - возвращается если у нас не бьются имена из джейсона и в модели куда парсятся данные
                    
                }
            case .failure(let error):
                print("Не удалось получить значение \(error.localizedDescription)")
                responce(nil, error)
            }
        }
    }
    
    func fetchSongs(urlString: String, responce: @escaping (SongsModel?, Error?) -> Void) {
        
        NetworkRequest.shared.requestData(urlString: urlString) { result in
            switch result {
            case .success(let data):
                do {
                    let albums = try JSONDecoder().decode(SongsModel.self, from: data)
                    responce(albums, nil)
                } catch let jsonError {
                    print("Error", jsonError) // jsonError - возвращается если у нас не бьются имена из джейсона и в модели куда парсятся данные
                    
                }
            case .failure(let error):
                print("Не удалось получить значение \(error.localizedDescription)")
                responce(nil, error)
            }
        }
    }
}
