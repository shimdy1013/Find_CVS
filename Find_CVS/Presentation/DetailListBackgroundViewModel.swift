//
//  DetailListBackgroundViewModel.swift
//  Find_CVS
//
//  Created by 심두용 on 2023/08/01.
//

import RxCocoa
import RxSwift

struct DetailListBackgroundViewModel {
    // viewModel -> view
    let isStatusLabelHidden: Signal<Bool>
    
    // 외부에서 전달받을 값
    let shouldHideStatusLabel = PublishSubject<Bool>()
    
    init() {
        isStatusLabelHidden = shouldHideStatusLabel
            .asSignal(onErrorJustReturn: true)
    }
}
