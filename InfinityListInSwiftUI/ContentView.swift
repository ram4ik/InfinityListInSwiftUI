//
//  ContentView.swift
//  InfinityListInSwiftUI
//
//  Created by ramil on 24/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var items = Array(1...30)
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                Text("\(item)")
                    .onAppear {
                        let last = self.items.last!
                        if last == item {
                            print("last item")
                            self.items += last+1...last+30
                        }
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
