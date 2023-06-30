//
//  ResourcesView.swift
//  manatee_app_v0
//
//  Created by Matthew Leroe on 6/28/23.
//

import SwiftUI

struct ResourcesView: View {
    let resources: [Resource] = [
        Resource(name: "Holy Bible", url: "https://www.biblegateway.com/"),
        Resource(name: "39 Articles Confession", url: "https://www.anglicanism.info/thirty-nine-articles-of-religion"),
        Resource(name: "To Be a Christian Catechism", url: "https://anglicanchurch.net/wp-content/uploads/2020/06/To-Be-a-Christian.pdf"),
        Resource(name: "The Book of Common Prayer, 2019", url: "https://bcp2019.anglicanchurch.net/")
    ]
    
    var body: some View {
        NavigationView {
            List(resources, id: \.name) { resource in
                Link(destination: URL(string: resource.url)!) {
                    Text(resource.name)
                }
            }
            .navigationTitle("Resources")
        }
    }
    
    struct Resource {
        let name: String
        let url: String
    }
}

struct ResourcesView_Previews: PreviewProvider {
    static var previews: some View {
        ResourcesView()
    }
}
