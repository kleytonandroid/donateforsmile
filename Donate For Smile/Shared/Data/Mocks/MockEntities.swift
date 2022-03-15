//
//  MockEntities.swift
//  Donate For Smile (iOS)
//
//  Created by Kleyton Santos on 10/02/22.
//

import Foundation


let mockFundraisers = [FundraiserDO(cover: "cover_campaign",
                                    title: "Help me to overcome Debt",
                                    donatedAvatars: ["avatar_empty","avatar_profile_example","avatar_empty","avatar_profile_example"],
                                    totalDonated: 800,
                                    category: .poverty,
                                    goal: 5000,
                                    raised: 2300,
                                    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit dolor sit  consectetur... ",
                                    organiser: nil),
                       FundraiserDO(cover: "cover_campaign_education",
                                    title: "Help them for education",
                                    donatedAvatars: ["avatar_empty","avatar_profile_example"],
                                    totalDonated: 5,
                                    category: .education,
                                    goal: 10000,
                                    raised: 3300,
                                    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit dolor sit  consectetur... ",
                                    organiser: nil),
                       FundraiserDO(cover: "cover_campaign_sports",
                                    title: "Participation at cycle race",
                                    donatedAvatars: ["avatar_empty","avatar_profile_example","avatar_profile_example"],
                                    totalDonated: 55,
                                    category: .sports,
                                    goal: 500,
                                    raised: 480,
                                    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit dolor sit  consectetur... ",
                                    organiser: nil),
                       FundraiserDO(cover: "cover_campaign_poverty",
                                    title: "Raising the orphans",
                                    donatedAvatars: [],
                                    totalDonated: 0,
                                    category: .poverty,
                                    goal: 2000,
                                    raised: 370,
                                    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit dolor sit  consectetur... ",
                                    organiser: nil)
]

let mockPosts = [PostDO(title: "The Inspiring People Helping With Coronavirus Efforts",
                        cover: "post_cover_example",
                        content: "Six Ways to Get Help Millions of businesses across the US are …….. Read more .",
                        liked: false,
                        authorName: "Kleyton",
                        authorAvatar: "",
                        createdAt: "July 26, 2021 • 7 min read"),
                 PostDO(title: "Coronavirus Relief for Small Businesses",
                        cover: "cover_campaign_poverty",
                        content: "Six Ways to Get Help Millions of businesses across the US are …….. Read more .",
                        liked: false,
                        authorName: "Kleyton",
                        authorAvatar: "",
                        createdAt: "July 26, 2021 • 7 min read")
                 
]
