//
//  MyRoutesView.swift
//  ClewTwo
//
//  Created by Evelyn on 3/19/23.
//

import SwiftUI

struct MyRoutesView: View {
    @ObservedObject var myRoutes = MyRoutesViewModel()
    
    var body: some View {
        VStack {
            Text("My Routes")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
            ForEach(myRoutes.routes, id: \.self) {route in
                    Button(action: {
                        print("Tapped on button with text: \(route.startPoint) to \(route.endPoint)")
                    }, label: {
                        VStack(alignment: .leading) {
                            Text("\(route.startPoint) to \(route.endPoint)")
                                .multilineTextAlignment(.leading)
                                .bold()
                            Text("Location: \(route.location)")
                            Text("\(route.dateRecorded) | \(route.distanceMinutes) min")
                        }
                    })
                }
                .padding(.vertical, 5.0)
        }
    }
}

struct MyRoutesView_Previews: PreviewProvider {
    static var previews: some View {
        MyRoutesView()
    }
}
