//
//  ApodViewModel.swift
//  SpaceBS
//
//  Created by ONUR BOSTAN on 19.02.2024.
//

import UIKit
import Foundation

class ApodViewModel {
    let images: [String]
    let apodText: String
    
    init() {
        self.images = ["jw", "dunya", "jwb"]
        self.apodText = """
        Astronomy Picture of the Day (APOD) is a website provided by NASA and Michigan Technological University (MTU) dedicated to astronomical images. Each day a different image or photograph of our universe is featured, along with a brief explanation written by a professional astronomer. Past images are stored in the APOD Archive, with the first image appearing on June 16, 1995. About half of the images that appear on APOD are submitted by volunteers.

        APOD receives most of its volunteer images via email. Beyond that, APOD organizes a public flickr group and a public online discussion forum called “Starship Asterisk*” The Asterisk* forum is also used for those who have a question about an APOD-run image, or want to discuss any topic in astronomy. More than 2500 volunteers have participated in these discussions.

        APOD is one of the oldest and most popular astronomy sites on the web. Its simple html code makes it robust and easily portable, and it is translated into over 20 languages daily by international group of volunteers. Volunteers also coordinate APOD’s presence on Facebook, Instagram, Twitter, Discord, Reddit, Tumblr, YouTube, mastodon, and iPhone and Android apps, and it is available as an email subscription. APOD has over 1.4 million Twitter followers.

        APOD is supported by NASA’s Science Activation Program, NASA’s Astrophysics Science Division, Michigan Technological University, and the University of Maryland.
        """
    }
    func addImagesToScrollView(scrollView: UIScrollView) {
        var contentWidth: CGFloat = 0
        for imageName in images {
            if let image = UIImage(named: imageName) {
                let imageView = UIImageView(image: image)
                imageView.clipsToBounds = true
                imageView.frame = CGRect(x: contentWidth, y: 0, width: scrollView.frame.size.width, height: scrollView.frame.size.height)
                scrollView.addSubview(imageView)
                contentWidth += scrollView.frame.size.width
            }
        }
        scrollView.contentSize = CGSize(width: contentWidth, height: scrollView.frame.size.height)
    }
}


