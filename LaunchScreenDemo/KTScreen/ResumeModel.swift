//
//  TableViewModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 26/04/23.
//

import UIKit

struct ResumeModel {
    
    //MARK: - Variables
    var imageName: String?
    var titleLabel: String?
    var subtitleLabel: String?
    var countryLabel: String?
    var dateLabel: String?
    var cvBtn: String?
    var pdfBrn: String?
    var description: String?
    
    static func getExperience() -> [ResumeModel] {
        return [ResumeModel(imageName: "spotify", titleLabel: "Mobile Application Developer Mobile Application Developer ", subtitleLabel: "Simform Solutions Pvt Ltd Simform Solutions Pvt Ltd", countryLabel: "Ahmedabad, India", dateLabel: "July 20 - December 23"),
                ResumeModel(imageName: "education", titleLabel: "Computer Science", subtitleLabel: "Bachelor | Caltech", countryLabel: "Pasadena", dateLabel: "2017 - 2020"),
                ResumeModel(imageName: "spotify", titleLabel: "UX Intern", subtitleLabel: "Spotify", countryLabel: "San Jose, US", dateLabel: "Dec 20 - Feb 21"),
                ResumeModel(imageName: "education", titleLabel: "Computer Science Simform Solutions Pvt LtdSimform Solutions Pvt Ltd", subtitleLabel: "Bachelor | Caltech", countryLabel: "Pasadena", dateLabel: "2017 - 2020")
                ]
    }
    
    static func getEducation() -> [ResumeModel] {
        return [ResumeModel(imageName: "education", titleLabel: "Education", subtitleLabel: "Bachelor | Caltech", countryLabel: "Pasadena", dateLabel: "2017 - 2020"),
                ResumeModel(imageName: "spotify", titleLabel: "Mobile Application Developer Mobile Application Developer ", subtitleLabel: "Simform Solutions Pvt Ltd Simform Solutions Pvt Ltd", countryLabel: "Ahmedabad, India", dateLabel: "July 20 - December 23"),
                ResumeModel(imageName: "spotify", titleLabel: "Mobile Application Developer Mobile Application Developer ", subtitleLabel: "Simform Solutions Pvt Ltd Simform Solutions Pvt Ltd", countryLabel: "Ahmedabad, India", dateLabel: "July 20 - December 23"),
                ResumeModel(imageName: "spotify", titleLabel: "Mobile Application Developer Mobile Application Developer ", subtitleLabel: "Simform Solutions Pvt Ltd Simform Solutions Pvt Ltd", countryLabel: "Ahmedabad, India", dateLabel: "July 20 - December 23")]
    }
    
    static func getResumeData() -> [ResumeModel] {
        return [ResumeModel(titleLabel: "Mohammed Hanif Bij Mohammed Hanif Bij Mohammed Hanif Bij Mohammed Hanif Bij", subtitleLabel: "Mobile app developer Mobile app developer Mobile app developer Mobile app developer", cvBtn: "CV", pdfBrn: "PDF", description: "Creative UX Designer with 6+ years of experience in optimizing user experience through innovative solutions and dynamic interface designs. Successful in enhancing user engagement for well-known brands, providing a compelling user experience to improve brand loyalty and customer retention. Creative UX Designer with 6+ years of experience in optimizing user experience through innovative solutions and dynamic interface designs. Successful in enhancing user engagement for well-known brands, providing a compelling user experience to improve brand loyalty and customer retention.")]
    }
    
    static func getPortfolio() -> [ResumeModel] {
        return [ResumeModel(imageName: "image1"),
                ResumeModel(imageName: "image2"),
                ResumeModel(imageName: "image3"),
                ResumeModel(imageName: "image4"),
                ResumeModel(imageName: "image5"),
                ResumeModel(imageName: "image6")
            ]
    }
}
