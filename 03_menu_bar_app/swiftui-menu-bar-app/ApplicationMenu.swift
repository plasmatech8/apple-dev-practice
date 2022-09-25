//
//  ApplicationMenu.swift
//  swiftui-menu-bar-app
//
//  Created by Mark Connelly on 25/9/2022.
//

import Foundation
import SwiftUI

class ApplicationMenu: NSObject {
    let menu = NSMenu()
    
    func createMenu() -> NSMenu  {
        // The content of the menu bar
        let contentView = ContentView()
        
        // The menu bar hosting object
        let topView = NSHostingController(rootView: contentView)
        topView.view.frame.size = CGSize(width: 225, height: 225)
        
        // The menu bar items
        let customMenuItem = NSMenuItem()
        customMenuItem.view = topView.view
        menu.addItem(customMenuItem)
        menu.addItem(NSMenuItem.separator())
        
        // About button
        let aboutMenuItem = NSMenuItem(title: "About this app", action: #selector(about), keyEquivalent: "")
        aboutMenuItem.target = self
        menu.addItem(aboutMenuItem)
        
        // Link button
        let linkMenuItem = NSMenuItem(title: "Go to website", action: #selector(openLink), keyEquivalent: "")
        linkMenuItem.target = self
        menu.addItem(linkMenuItem)
        linkMenuItem.representedObject = "https://github.com/plasmatech8/swift-practice"
        
        // Quit button
        let quitMenuItem = NSMenuItem(title: "Quit", action: #selector(quit), keyEquivalent: "q")
        quitMenuItem.target = self
        menu.addItem(quitMenuItem)
        
        return menu
    }

    @objc func about(sender: NSMenuItem) {
        NSApp.orderFrontStandardAboutPanel()
    }
    
    @objc func openLink(sender: NSMenuItem) {
        let link = sender.representedObject as! String
        guard let url = URL(string: link) else {return}
        NSWorkspace.shared.open(url)
    }
    
    @objc func quit(sender: NSMenuItem) {
        NSApp.terminate(self)
    }
}
