//
//  MyRoutesViewModel.swift
//  ClewTwo
//
//  Created by Evelyn on 3/21/23.
//

import Foundation
import SwiftUI

class MyRoutesViewModel: ObservableObject {
    @Published var routes = MyRoutes.allRoutes
}
