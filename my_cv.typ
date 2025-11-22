#set page(paper: "a4", margin: (x: 0pt, y: 0pt))
#set text(font: "Poppins", size: 12pt) // Lexend(light)
#set par(justify: true)
#set list(marker: " ")

// #let bg_color = "#39393D" // gray BG
#let bg_color = "#373E4D" // blue
// #let bg_color = "#3D365C" // purple BG

#let head(icon, name, right: true) = box([
    #text(size: 18pt, icon)
    #h(0.5cm)
    #text(size: 18pt, name)
    #v(-0.2cm)
    #stack(dir:ltr, spacing: 0pt,
      line(length: 1.2cm, stroke: {
        if right { 2pt + black } else { 2pt + white}
      }),
      line(length: 75%, stroke: {
        if right { 1pt + black } else { 1pt + white}
      })
    )
  ])


#let edu(year, degree, desciption) = {[
  #v(0.3cm)
  #text(fill: white.transparentize(50%), style: "italic", year)
  #v(-0.7em)
  #line(length: 50%, stroke: white)
  #v(-0.5em)
  #text(weight: "semibold", size: 14pt, degree) \
  #desciption
]}

#let info = [
  #line(length: 100%, stroke: 1.5pt)
  #v(0.5cm)
  // #text(weight: "semibold", [Researcher]) \
  // #link("vitap.ac.in")[VIT-AP University], Amaravathi, \
  Gandhi Nagar, Turuvekere \
  Karnataka, India - 572227\
    #h(4pt) web: #link("hitaishiv.com") \
    #h(2pt)+91-9738092501\
    #h(4pt) #link( "mailto:hello@hitaishiv.com" ),
  #link( "mailto:hitaishi2222@gmail.com" )\
  #v(0.5cm)
]

#let motto = [
  #v(0.5cm)
  #text(weight: "semibold", "Hello, I am Hitaishi V,")

  I am a self driven researcher,
  passionate about finding novel solutions for complex problems
  in field of photonics and lasers. My high motivation towards 
  the ﬁeld lead to some research articles.
  I am seeking postdoc as a platform to achieve my research goals,
  building research communities and improving the institutes 
  reputation are my motto.

  #v(0.5cm)
]

#let first_page_left = {[
  #set text(fill: white)
  #v(0.5cm)
  #head("  " , "Education", right: false)
  #edu("2021 - 2025",
    "Ph.D", [
    Nonlinear optics \
    & Photonics\
    VIT-AP University, AP, India
  ])
  #edu("2021-2024", "Gate Qualified", "82 percentile" )
  #edu("2018 - 2020",
    "Master of Science (Physics)",
    "JSS College of Arts, Commerce & Science, Ooty Road, Mysuru" )
  #edu("2015 - 2018",
    "Bachelor of Science",
    "Dayananada Sagar college of arts science and commerce, Bengaluru" )
  #edu("2009",
    "Diploma course",
    "Basic Computer application and Hardware installation and trouble-shooting with assemble" )
]}

#let experience = [
  #head(" 󰸴 ", "Experience")

  #v(0.5cm)
  I have a strong analytical skills and ideas of principles of FDTD
  (Finite-Difference Time-Domain) and FEM (Finite Element method)
  for simulations and to investigate the propagation of light with
  the waveguide designs. I have modeled and executed simulations
  on waveguide, resulting in the listed publications. I have mentored
  lab classes for the students to teach experiments mentioned in
  syllabus. I am skilled in many software and coding languages
  like Ansys Lumerical, COMSOL Multiphysics, Origin, Python,
  Rust, MATLAB etc. Eager to apply these skills to further
  explore exploration and research in the field of photonics and
  lasers.

  I have been learning photonics based softwares like GDS Factory, Femwell and MEEP for better understanding and relaiable open-source alternatives.
]

#let publications = [
  #head(" 󱉟 ", "Publications")

]

#let first_page_right = {[
  #v(1in)
  #text(size: 49pt, weight: "medium" ,"Dr. Hitaishi V")
  #v(-1.5cm)
  #info
  #line(length: 100%, stroke: 1.5pt)
  #motto
  #experience
]}

#grid(
  columns: (1.5fr, 2.5fr), [ 
    #grid(
      rows: (1fr, auto),
        image("DSC_4271.JPG", width: 100%),
        rect(width: 100%, fill: rgb(bg_color), 
          // stroke: (x: 1pt + rgb("#39393D")),
          height: 21cm, inset: (x: 1cm),
          first_page_left
        ),
      )],
  [
    #rect(width: 100%, height: 24cm, inset: 1cm, stroke: none,
          first_page_right
        )
  ],
)

// --------------------------------------------- PAGE 2

#let skills = {
  head(" 󰁷 ", "Skills" , right: false)
  grid(columns: (1.7fr, 1fr),
    [
    Python\
    MATLAB\
    Ansys Lumerical\
    Linux\
    Latex\
    Typst\
    COMSOL\
    Photoshop\
    Illustrator\
    Rust\
  ],[
         \
         \
        \
        \
        \
        \
       \
       \
      \
      \
  ])
}

#let details_block(heading, detail) = block[
  #text(style: "italic", fill: white.transparentize(50%))[#heading]\
  #detail
  #v(0.3cm)
]

#let persoal_details = block[
  #head(" 󱍲 ", "About Me", right: false)
  #details_block("Father name", "Virupaksha")
  #details_block("Gender", "Male")
  #details_block("Marital status", "Married")
  #details_block("Date of birth", "13/01/1998")
  #details_block("Nationality", "Indian")
  #details_block("Languages known", "English, Hindi, Kannada")
  #details_block("Permanent address", [Sri Nidhi Enterprises,\
                                      Gandhi Nagar, Turuvekere,\
                                            Karnataka - 572227])
]

#let pub(title, authors, journal, doi) = block[
  #title

  #authors
]

#let publications = block[
  #v(1cm)
  #head(" 󱉟 ", "Publications")
  #set text(size: 10.5pt)
  #bibliography("publications.yml", title: none, full: true)
]

#let second_page_left = [
  #v(1.5in)
  #skills
  #v(1in)
  #persoal_details
]

#let second_page_right = [
  #publications
]

#grid(
  columns: (1.5fr, 2.5fr), [ 
    #set text(fill: white)
    #rect(width: 100%, fill: rgb(bg_color), 
      height: 100%, inset: (x: 1cm),
          second_page_left
        )
  ],
  [ #rect(width: 100%, height: 100%, inset: 1cm, stroke: none,
          second_page_right
        ) 
  ],
)

// --------------------------------------------- PAGE 2

#let references = [
  #head("  ", "References", right: false)
  #v(0.3cm)
  #text(style: "italic", weight: "semibold",size: 13pt)[Dr. Nandam Ashok]
  #v(-0.8em)
  #line(stroke: white, length: 30% )
  #v(-0.5em)
    Assistant professor,\
    School of Advanced Sciences,\
    VIT-AP University.\
    #link( "mailto:nandam.ashok@gmail.com" )
    +91-9652132624
  #v(0.5cm)
  #text(style: "italic", weight: "semibold",size: 13pt)[Sunil Kumar]
  #v(-0.8em)
  #line(stroke: white, length: 30% )
  #v(-0.5em)
    Assistant professor,\
    Department of Physics,\
    JSSACS, Ooty road, Mysuru.\
    #link( "mailto:sunilchandru15@gmail.com" )
    +91-89714413835
]

#let declaration = [
  #head(" 󰄵 ", "Declaration", right: false)

  I hereby declare that the information furnished above is true to the best of my knowledge

  #text(style:"italic", weight: "semibold", "- Hitaishi V")
]

#let third_page_left = block[
  #references
  #v(1cm)
  #declaration
]

#let achievements = [
  #head("  ", "Achievements")
  - Awarded Appreciation for academic excellence event held on SSLC by ViPraSS Foundation. Dated 16 June 2013 and in 01st September 2013 by Shree Shankari bank, Tumkur
  - Appreciated for the eﬀorts towards serving the society from Youth for Seva on 5th march 2017
  - Won First Place in the Annual college Chess tournament 2018-19 organized by JSS college of arts commerce and science, Mysuru
  - Won Senior 1st Place in District level chess tournament held on 29 June 2014
]

#let presentations = [
  #head(" 󰐩 " , "Presentations")
  - Presented poster on “Inverted Rib-core Chalcogenide Wave- guide For Supercontinuum Generation” at WRAP-2023 at IIIT Allahabad during 7th-9th dec 2023.
  - Presented paper on “Design and Analysis of Chalcogenide GeAsSe Waveguide for Dispersion Properties” at the ICANA 2022 during 16th -18th nov 2022.
  - Topic presentation on “Swachh Bharath” in conference on Municipal solid waste management organized on 23 rd and 24th Feb 2016 at IISc, Bengaluru.
  - Presented paper on “Self-sustainable Wards from waste” in an event organized by University of Commons
]

#let participation = [
  #head("  ", "Participation")
  - Participated in One day international Conference on “Science and technology for management of emerging environmental issues” held in 7th January 2017 at Jnana Jyothi Auditorium Ben- galuru. Organized by Department of Environmental science, Banglore University
  - Participated in Two day Workshop on “Indian Mathematics, their works and “Astronomy” held on 17th and 18th February 2017 organized by Department of Mathematics, Global Academy of Technology with ISRO.
  - Participated in UGC Sponsored State level seminar on “Role of Nuclear science in energy production” held on March 1 st & 2nd 2019 organized by JSS college of arts, commerce, and science.
  - Participated in two-day UGC sponsored National seminar on "Environmental Degradation and its effects on substance of Life" organized by Department of Botany, Government First grade college, vijayanagara, Bengaluru. In association with Karnataka State pollution Control board held on 4th and 5th of march 2016.
  - Participated in pre-university state level chess tournament 2013-14 at Chamarajanagar. Organized by Department of Karnataka pre university Education, malleshwaram Bengaluru.
] 

// ------------------------------------------------ PAGE 3

#set text(size: 11pt)

#let third_page_right = block[
  #achievements
  #v(0.5cm)
  #presentations
  #v(0.5cm)
  #participation
]

#grid(
  columns: (1.5fr, 2.5fr), [
    #set text(fill: white)
    #rect(width: 100%, fill: rgb(bg_color), 
      height: 100%, inset: (x: 1cm),
        align(horizon, third_page_left)
        )
  ],
  [ #rect(width: 100%, height: 100%, inset: 1cm, stroke: none,
          third_page_right
        )
  ],
)

