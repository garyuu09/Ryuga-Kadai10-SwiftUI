//
//  ContentView.swift
//  Kadai10-SwiftUI
//
//  Created by Ryuga on 2023/03/20.
//

import SwiftUI

struct ContentView: View {
    let prefecture = [
        "北海道",
        "青森県",
        "岩手県",
        "宮城県",
        "秋田県",
        "山形県",
        "福島県",
        "茨城県",
        "栃木県",
        "群馬県",
        "埼玉県",
        "千葉県",
    ]
    var body: some View {
        List {
            VStack {
                    ForEach (0..<12){ index in
                        HStack {
                            Text(prefecture[index])
                            Spacer()
                            Text(String(index + 1) + "番目の都道府県です")
                        }
                }
            }
            HStack {
                Text("北海道")
                Spacer()
                Text("1番目の都道府県です")
            }
            .listRowBackground(Color.red)

            HStack {
                Text("青森県")
                Spacer()
                Text("2番目の都道府県です")
            }
            .listRowBackground(Color.green)

            HStack {
                Text("岩手県")
                Spacer()
                Text("3番目の都道府県です")
            }
            .listRowBackground(Color.blue)
        }
        .listStyle(.plain)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
