//
//  ViewController.swift
//  1PasswordDropDownMenu
//
//  Created by Salman Biljeek on 1/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBackground
        
        navigationItem.title = "Home"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let plusImage = UIImage(systemName: "plus.circle.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(named: "customBlue") ?? .systemTeal).withConfiguration(UIImage.SymbolConfiguration(pointSize: 26, weight: .regular, scale: .large))
        
        lazy var plusBarButtonItem: UIBarButtonItem = {
            let barButtonItem = UIBarButtonItem()
            let button: UIButton = {
                let button = UIButton(type: .system)
                button.setImage(plusImage, for: .normal)
                button.showsMenuAsPrimaryAction = true
                
                // Menu Images
                let loginImage = UIImage(systemName: "lock.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 78/255, green: 206/255, blue: 214/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .bold))
                let secureNoteImage = UIImage(systemName: "list.bullet.rectangle.portrait.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 253/255, green: 170/255, blue: 10/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .regular))
                let creditCardImage = UIImage(systemName: "creditcard.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 102/255, green: 203/255, blue: 253/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .regular))
                let identityImage = UIImage(systemName: "person.text.rectangle.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 106/255, green: 228/255, blue: 169/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .regular))
                let passwordImage = UIImage(systemName: "key.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 157/255, green: 161/255, blue: 165/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .regular))
                let documentImage = UIImage(systemName: "doc.richtext.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 102/255, green: 203/255, blue: 253/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .regular))
                let apiCredentialImage = UIImage(systemName: "chevron.left.forwardslash.chevron.right")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 66/255, green: 167/255, blue: 173/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .bold))
                let bankAccountImage = UIImage(systemName: "dollarsign.circle.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 253/255, green: 170/255, blue: 10/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .bold))
                let cryptoWalletImage = UIImage(systemName: "creditcard.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 102/255, green: 203/255, blue: 253/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .regular))
                let databaseImage = UIImage(systemName: "shippingbox")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 67/255, green: 166/255, blue: 112/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .heavy))
                let driverLicenseImage = UIImage(systemName: "car.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 241/255, green: 123/255, blue: 165/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .regular))
                let emailAccountImage = UIImage(systemName: "envelope.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 211/255, green: 55/255, blue: 108/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .heavy))
                let medicalRecordImage = UIImage(systemName: "bolt.heart.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 241/255, green: 123/255, blue: 165/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .heavy))
                let membershipImage = UIImage(systemName: "star.square.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 205/255, green: 165/255, blue: 220/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .regular))
                let outdoorLicenseImage = UIImage(systemName: "leaf.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 67/255, green: 166/255, blue: 113/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .regular))
                let passportImage = UIImage(systemName: "globe")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 4/255, green: 114/255, blue: 236/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .heavy))
                let rewardProgramImage = UIImage(systemName: "giftcard.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 240/255, green: 124/255, blue: 165/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .bold))
                let sshKeyImage = UIImage(systemName: "greaterthan")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 255/255, green: 169/255, blue: 3/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .heavy))
                let serverImage = UIImage(systemName: "server.rack")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 184/255, green: 188/255, blue: 194/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .black))
                let socialSecurityNumberImage = UIImage(systemName: "shield.righthalf.filled")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 67/255, green: 166/255, blue: 114/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .bold))
                let softwareLicenseImage = UIImage(systemName: "checkmark.seal")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 40/255, green: 139/255, blue: 255/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .black))
                let wirelessRouterImage = UIImage(systemName: "wifi")?.withRenderingMode(.alwaysOriginal).withTintColor(UIColor(red: 37/255, green: 138/255, blue: 253/255, alpha: 1)).withConfiguration(UIImage.SymbolConfiguration(weight: .regular))
                
                // Menu Items
                let loginItem = UIAction(title: "Login", image: loginImage, handler: { _ in
                    print("Login")
                })
                let secureNoteItem = UIAction(title: "Secure Note", image: secureNoteImage, handler: { _ in
                    print("Secure Note")
                })
                let creditCardItem = UIAction(title: "Credit Card", image: creditCardImage, handler: { _ in
                    print("Credit Card")
                })
                let identityItem = UIAction(title: "Identity", image: identityImage, handler: { _ in
                    print("Identity")
                })
                let passwordItem = UIAction(title: "Password", image: passwordImage, handler: { _ in
                    print("Password")
                })
                let documentItem = UIAction(title: "Document", image: documentImage, handler: { _ in
                    print("Document")
                })
                let apiCredentialItem = UIAction(title: "API Credential", image: apiCredentialImage, handler: { _ in
                    print("API Credential")
                })
                let bankAccountItem = UIAction(title: "Bank Account", image: bankAccountImage, handler: { _ in
                    print("Bank Account")
                })
                let cryptoWalletItem = UIAction(title: "Crypto Wallet", image: cryptoWalletImage, handler: { _ in
                    print("Crypto Wallet")
                })
                let databaseItem = UIAction(title: "Database", image: databaseImage, handler: { _ in
                    print("Database")
                })
                let driverLicenseItem = UIAction(title: "Driver License", image: driverLicenseImage, handler: { _ in
                    print("Driver License")
                })
                let emailAccountItem = UIAction(title: "Email Account", image: emailAccountImage, handler: { _ in
                    print("Email Account")
                })
                let medicalRecordItem = UIAction(title: "Medical Record", image: medicalRecordImage, handler: { _ in
                    print("Medical Record")
                })
                let membershipItem = UIAction(title: "Membership", image: membershipImage, handler: { _ in
                    print("Membership")
                })
                let outdoorLicenseItem = UIAction(title: "Outdoor License", image: outdoorLicenseImage, handler: { _ in
                    print("Outdoor License")
                })
                let passportItem = UIAction(title: "Passport", image: passportImage, handler: { _ in
                    print("Passport")
                })
                let rewardProgramItem = UIAction(title: "Reward Program", image: rewardProgramImage, handler: { _ in
                    print("Reward Program")
                })
                let sshKeyItem = UIAction(title: "SSH Key", image: sshKeyImage, handler: { _ in
                    print("SSH Key")
                })
                let serverItem = UIAction(title: "Server", image: serverImage, handler: { _ in
                    print("Server")
                })
                let socialSecurityNumberItem = UIAction(title: "Social Security Number", image: socialSecurityNumberImage, handler: { _ in
                    print("Social Security Number")
                })
                let softwareLicenseItem = UIAction(title: "Software License", image: softwareLicenseImage, handler: { _ in
                    print("Software License")
                })
                let wirelessRouterItem = UIAction(title: "Wireless Router", image: wirelessRouterImage, handler: { _ in
                    print("Wireless Router")
                })
                
                let section1Children: [UIMenuElement] = [
                    loginItem,
                    secureNoteItem,
                    creditCardItem,
                    identityItem,
                    passwordItem,
                    documentItem
                ]
                let section2Children: [UIMenuElement] = [
                    apiCredentialItem,
                    bankAccountItem,
                    cryptoWalletItem,
                    databaseItem,
                    driverLicenseItem,
                    emailAccountItem,
                    medicalRecordItem,
                    membershipItem,
                    outdoorLicenseItem,
                    passportItem,
                    rewardProgramItem,
                    sshKeyItem,
                    serverItem,
                    socialSecurityNumberItem,
                    softwareLicenseItem,
                    wirelessRouterItem
                ]
                let section1 = UIMenu(title: "", image: nil, identifier: nil, options: .displayInline, children: section1Children)
                let section2 = UIMenu(title: "", image: nil, identifier: nil, options: .displayInline, children: section2Children)
                let children = [section1, section2]
                let menu = UIMenu(title: "", children: children)
                button.menu = menu
                return button
            }()
            barButtonItem.customView = button
            return barButtonItem
        }()
        
        let profileImage = UIImage(systemName: "person.crop.square.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.systemIndigo).withConfiguration(UIImage.SymbolConfiguration(pointSize: 26, weight: .black, scale: .large))
        
        lazy var profileBarButtonItem: UIBarButtonItem = {
            let barButtonItem = UIBarButtonItem()
            let button: UIButton = {
                let button = UIButton(type: .system)
                button.setImage(profileImage, for: .normal)
                return button
            }()
            barButtonItem.customView = button
            return barButtonItem
        }()
        
        navigationItem.rightBarButtonItem = plusBarButtonItem
        navigationItem.leftBarButtonItem = profileBarButtonItem
    }
}

