//
//  MyRoutesView.swift
//  ClewTwo
//
//  Created by Evelyn on 3/19/23.
//

import SwiftUI

struct MyRoutesView: View {
    let myRoutes: MyRoutes
    
    var body: some View {
        VStack {
            Text("My Routes")
                .font(.largeTitle)
                .multilineTextAlignment(.leading)
            ForEach(0..<MyRoutes.allRoutes.count) {entryIndex in
                    Button(action: {
                        print("Tapped on button with text: \(myRoutes.startPoint) to \(myRoutes.endPoint)")
                    }, label: {
                        VStack(alignment: .leading) {
                            Text("\(myRoutes.startPoint) to \(myRoutes.endPoint)")
                                .multilineTextAlignment(.leading)
                                .bold()
                            Text("Location: \(myRoutes.location)")
                            Text("\(myRoutes.dateRecorded) | \(myRoutes.distanceMinutes) min")
                        }
                    })
                }
                .padding(.vertical, 5.0)
        }
    }
}

struct MyRoutesView_Previews: PreviewProvider {
    static var previews: some View {
        MyRoutesView(myRoutes: MyRoutes(startPoint: "Test Start", endPoint: "Test End", location: "Test Location", distanceMinutes: 4.5, dateRecorded: "3/2/2023"))
    }
}
