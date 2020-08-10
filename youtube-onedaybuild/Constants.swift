//
//  Constants.swift
//  youtube-onedaybuild
//
//  Created by Lamin Tamba on 10/08/2020.
//

import Foundation

struct Constants {
    static var API_KEY = ""
    static var PLAYLIST_ID = "UUPUeTYyoAwQZ8H05T8dPLZA"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(API_KEY)"
    
}
