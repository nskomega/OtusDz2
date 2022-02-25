//
//  Routes.swift
//  DanilovOtusDZ2
//
//  Created by Mikhail Danilov on 25.02.2022.
//

import SwiftUIRouter

extension NavigationRouteLink {
    static var second: NavigationRouteLink { "/second" }
    static var third: NavigationRouteLink { "/third" }
    static var fourth: NavigationRouteLink { "/fourth" }


}
extension Array where Element == NavigationRoute {
    static var all: [NavigationRoute] {
        let second = NavigationRoute(path: "/second", destination: SecondScreen())
        let third = NavigationRoute(path: "/third", destination: ThirdScreen())
        let fourth = NavigationRoute(path: "/fourth", destination: FourthScreen())
    return [second, third, fourth]
    }
}

