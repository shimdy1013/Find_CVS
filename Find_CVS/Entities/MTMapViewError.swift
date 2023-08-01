//
//  MTMapViewError.swift
//  FindCVS
//
//  Created by 심두용 on 2023/07/25.
//

import Foundation

enum MTMapViewError: String {
    case failedUpdatingCurrentLocation
    case locationAuthorizationDenied
    
    var errorDescription: String {
        switch self {
        case .failedUpdatingCurrentLocation:
            return "현재 위치를 불러오지 못했습니다. 잠시 후 다시 시도해주세요."
        case .locationAuthorizationDenied:
            return "위치 정보가 비활성화되어서 사용자의 현재 위치를 알 수 없습니다."
        }
    }
}
