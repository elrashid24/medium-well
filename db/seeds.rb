# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

ActiveRecord::Base.transaction do 
    User.destroy_all
    Story.destroy_all
    demoUser0 = User.create!(first_name: 'Nicky', last_name: 'Scarfo', email: 'AdrianWojnarowski@gmail.com', password: '123456')
    demoUser1 = User.create!(first_name: 'ShamsCharania', last_name: 'Charania',    email: 'ShamsCharania@gmail.com', password: '123456')
    demoUser2 = User.create!(first_name: 'NickWright', last_name: 'Wright', email: 'NickWright@gmail.com', password: '123456')
    demoUser3 = User.create!(first_name: 'Stephen A. Smith', last_name: 'Wojnarowski', email: 'StephenAASmith@gmail.com', password: '123456')
    demoUser4 = User.create!(first_name: 'Skip Bayless', last_name: 'Wojnarowski', email: 'SkipBayless@gmail.com', password: '123456')
    demoUser5 = User.create!(first_name: 'Jim Bob Cooter', last_name: 'Wojnarowski', email: 'JimBobCooter@gmail.com', password: '123456')
    demoUser6 = User.create!(first_name: 'Savannah James', last_name: 'Wojnarowski', email: 'SavannahJames@gmail.com', password: '123456')
    demoUser7 = User.create!(first_name: 'Mark Jackson', last_name: 'Wojnarowski', email: 'MarkJackson@gmail.com', password: '123456')
    demoUser8 = User.create!(first_name: 'Vlade Divac', last_name: 'Wojnarowski', email: 'VladeDivac@gmail.com', password: '123456')
    demoUser9 = User.create!(first_name: 'Max Kellerman', last_name: 'Wojnarowski', email: 'MaxKellerman@gmail.com', password: '123456')
    demoUser10 = User.create!(first_name: 'Shannon Sharpe', last_name: 'Wojnarowski', email: 'ShannonSharpe@gmail.com', password: '123456')
    demoUser11 = User.create!(first_name: 'Kevin Durant', last_name: 'Wojnarowski', email: 'KevinDurant@gmail.com', password: '123456')
    demoUser12 = User.create!(first_name: 'Jalen Rose', last_name: 'Wojnarowski', email: 'JalenRose@gmail.com', password: '123456')
    demoUser13 = User.create!(first_name: 'Cari Champion', last_name: 'Wojnarowski', email: 'CariChampion@gmail.com', password: '123456')
    demoUser14 = User.create!(first_name: 'Colin Cowherd', last_name: 'Wojnarowski', email: 'ColinCowherd@gmail.com', password: '123456')
    demoUser15 = User.create!(first_name: 'Charles Barkley', last_name: 'Wojnarowski', email: 'CharlesBarkley@gmail.com', password: '123456')
    demoUser16 = User.create!(first_name: 'Ernie Johnson', last_name: 'Wojnarowski', email: 'ErnieJohnson@gmail.com', password: '123456')
    demoUser17 = User.create!(first_name: 'Kobe Bryant', last_name: 'Wojnarowski', email: 'KobeBryant@gmail.com', password: '123456')
    demoUser18 = User.create!(first_name: 'Brad Riely', last_name: 'Wojnarowski', email: 'BradRiely@gmail.com', password: '123456')
    
    
    test_story_0 = Story.create!( title:"New World Order: They're Watching you.",
        
        body: "Someone who is a proponent of the Illuminati conspiracy theory believes that there is an elite and secret organization called the “Illuminati” who is seeking to create a dominant world totalitarian government (Bergara & Medej, 2016). This “New World Order,” so named, involves a single government (made up of Illuminati members) that would rule over the entire planet. According to a survey done about the Illuminati, 23% of Americans believe in the Illuminati and New World Order (Bergara & Medej, 2016). There also seems to be a link with conservative beliefs, as many conservatives are unhappy with the amount of involvement of the government in private affairs. There are many different theories as to who runs the illuminati, but the general consensus is that celebrities and government officials alike are part of it. Information about the illuminati is heavily prevalent on the conspiracy theories section of Youtube, in documentaries, and on websites such as www.illuminatiofficial.org. This theory enjoys popularity today, as most people are somewhat aware of the Illuminati, even if they don’t believe in it. This theory is extraordinary because its claims are extraordinary—they go against everything we know about our world currently. As far as we are taught, different countries have different governments, and America especially has safeguards against authoritarianism. The idea that there is a group who will control everything defies the Founding Fathers’ wishes of freedom for citizens—what our country is founded on.

There are many different forms of evidence that people use to justify the existence of the Illuminati. For instance, there are certain symbols such as the Eye of Horus and pyramid (both on US currency), and when people see this in popular media, they believe it is evidence for that company/organization’s involvement in the Illuminati (Hahn, 2018). Another reason people believe that the Illuminati exists is because it did exist in the past (Santoro, 2018). It was created by Weishaupt in Germany, who wanted to have a group where people could have discussions about secularism (Bergara & Medej, 2016). However, during this time period, the Illuminati was about anti-religiosity and free thought. But many people believe that when the Church shut down Weishaupt’s group, it continued underground and exists today under the New World Order plan. Another piece of evidence that supporters use is that cops have become more heavily armed than ever, which is indicative of the government militarizing the police (Santoro, 2018). Under a New World Order, we would have to have a strong police force to control citizens. Finally, there are many claims that the illuminati is “killing celebrities and replacing them with clones” in an attempt to brainwash society (Bergara & Medej, 2016). These claims are backed up by video footage showing certain celebrities looking confused or staring off into space, to suggest that they are “glitching”. For example, there are clips of Beyonce, Eminem, and Al Roker staring off into space or freezing for prolonged periods of time in news clips (Bergara & Medej, 2016).",

        author_id: demoUser2.id,
        
        publish_date: Date.new)
     
         
         
         test_story_1 = Story.create!( title: 'JFK... Who Shot Ya?',
             
            body: "The 35th President of the United States was shot on Friday, November 22, 1963, in Dallas, Texas at 12.30pm . He was fatally wounded by gunshots while riding with his wife - Jacqueline Bouvier Kennedy - in a motorcade. The ten-month investigation of the Warren Commission of 1963 to 1964, the United States House Select Committee on Assassinations (HSCA) of 1976 to 1979, and other government investigations concluded that the President had been assassinated by Lee Harvey Oswald - who was himself shot dead by Jack Ruby while in police custody.

But doubts about the official explanation and the conclusion that Oswald was the lone gunman firing from the Texas Book Depository overlooking Dealey Plaza where Kennedy was hit surfaced soon after the commission report. Footage of the motorcade taken by Abraham Zapruder on 8mm film supported the growing belief that at least four shots were fired - not the three that the Warren Commission claimed. The moments of impact recorded on the film also suggested that at least one of the shots came from a completely different direction to those supposedly fired by Oswald - evidence backed up by testimony of several eye witnesses. Many believed that several shots were fired by gunmen hiding behind a picket fence on a grassy knoll overlooking the plaza.

The assassination is still the subject of widespread speculation and has spawned numerous conspiracy theories, though none of these has been proven. In 1979, the House Select Committee on Assassinations (HSCA) found both the original FBI investigation and the Warren Commission Report to be seriously flawed. The HSCA also concluded that there were at least four shots fired and that it was probable that a conspiracy existed. However, later studies, including one by the National Academy of Sciences, have called into question the accuracy of the evidence used by the HSCA to support its finding of four shots.",
            
       author_id: demoUser1.id, 

     publish_date: Date.new)
    

     

        test_story_2= Story.create!( title:" A Moon Landing in 1969? Unlikely.",
        
        body: "People who think that the Apollo moon landings were not all that they seemed at the time believe that Nasa faked some or all of the landings. Some of the theories surrounding this subject are that the Apollo astronauts did not land on the Moon; Nasa and possibly others intentionally deceived the public into believing the landings did occur by manufacturing, destroying, or tampering with evidence, including photos, telemetry tapes, transmissions, and rock samples; and that Nasa and possibly others continue to actively participate in the conspiracy to this day.

Those who think that Nasa faked some or all of the landings base their theories on photographs from the lunar surface which they claim show camera crosshairs partially behind rocks, a flag planted by Buzz Aldrin moving in a strange way, the lack of stars over the lunar landscape and shadows falling in different direction. Many commentators have published detailed rebuttals to the hoax claims, and these theories have been generally discounted but belief in them - particularly on the web - persists. ",
        
     author_id: demoUser0.id, 
     
     publish_date: Date.new)
             
             
        test_story_3 = Story.create!( title:'Aliens Built the Pyramd of Giza!',
           
           body: "Extraterrestrials helped the ancient Egyptians build the pyramids at Giza. The remains of a human-alien hybrid baby proves intelligent life exists out in the universe, and has visited Earth. And 12-foot-tall people once roamed the earth in abundance.
These are a few of the outlandish theories touted by practitioners of pseudoarchaeology, and the subject of a Paideia class titled Pseudoarchaeology: Why Should I Care? led by Prof. Thomas Landvatter and technologist Beth Platte.Landvatter, assistant professor of classics and humanities, and Platte, an instructional technologist with Reed’s educational technology center, outlined the bizarre claims, rhetorical strategies, and underlying ideology of pseudoarchaeologists in their talk.
The class had to be moved to a larger classroom before it started because of an unexpectedly large student turnout. Originally only planning for a dozen or so attendees, Platte and Landvatter were surprised when more than 30 people showed up in Vollum.
They began the class by asking students to try to distinguish pseudoarchaeology from other forms of pseudoscience. After a few examples, Platte pointed out that “people who are doing pseudoarchaeology are using objects that do exist, but the identification of the object or history around the object” is where much of the fantastical theorizing comes in.",
           
        author_id: demoUser3.id, 
            
        publish_date: Date.new)
             
     test_story_4 = Story.create!( title:"There's no way around it. The Earth is Flat-Out Flat. ",  
        
        body: "Some might take issue with this, based on the flimsy evidence that they can see buildings, hills, trees, mountains and things like that everywhere, and may even be in or on them right now. This is just another example of how blinkered people are. If you look closely, the clues are everywhere.For instance, what’s the tallest supposed mountain on Earth? Everest. Except it isn’t. The name is a giveaway; it’s clearly a morphing of “never rest”, because if you wanted to go to the biggest mountain you’d literally never rest, because it isn’t actually there. What about all those people who have climbed it, you say? Well, consider all the people who have died supposedly doing so. How do you die climbing something that isn’t there? You can’t. They were obviously killed to protect the conspiracy, whereas those who “survived” were willing to play ball.Some might still object, because they’re currently sitting in a tall building. They’re not though, they only “think” they are. In truth, everyone is breathing in a potent mix of hallucinogens that are constantly in the air around us, and these cause us to perceive buildings and tall things where there are none. How did these hallucinogens get in the air? Well, that’s what chemtrails are actually for.",
         
     author_id: demoUser4.id,
     
     publish_date: Date.new)
    
     test_story_6 = Story.create!( title: 'Area 51: Alien Playground',
             
            body: "The universe is vast, filled with galaxies and planets. So much of space is left undiscovered, so there’s a good chance that humans aren’t the only form of life. Conspiracy theorists have generated curiosity about Area 51, a U.S. Air Force military installation in Roswell, Nevada. While the government hasn’t been totally transparent about what happens there, bizarre occurrences have led some people to believe that it’s a center for alien investigations.The main conspiracy of Area 51 stemmed from a mysterious incident that occured in Roswell in 1947 when a flying saucer crashed in a ranch. Some witnesses even claimed to have seen unusual figures, which they assumed to be exterrestrial. The Air Force later debunked these claims, releasing a statement positing that the balloon-like saucer was an atomic monitoring balloon for detecting nuclear blasts.While there are certainly holes in several of the Area 51 conspiracies, the government’s actions make it seem like they’re hiding something from the public. If the Pentagon just released that they’ve been studying UFOs, who knows what information will surface in the next 10-20 years. Regardless of what goes on inside Area 51, it remains highly secretive and continues to puzzle the American people.
The theory caught on in the 1980s, when Robert Lazar claimed he worked near Area 51 for a site called S-4. He stated that S-4 was responsible for reverse-engineering crashed flying saucers. His tale, however, was soon after discovered to have been an untrue fabrication. He had made up an entire backstory that was false.Since the beginnings of the theory, there have been many other testimonials from people claiming to have seen UFOs in Nevada. More theories have surfaced, positing that the government studies time travel, ways to manipulate the weather and teleportation in the facility.  Some people even believe that the moon landing was faked and staged within the boundaries of Area 51. This theory is far-fetched, as there’s considerable evidence that the moon landing couldn’t have been faked.",
            
             author_id: demoUser10.id, 
             
            publish_date: Date.new)
         
     test_story_5 = Story.create!( title:'Psychic Simpsons',
        
        body: "How many of the real-world events depicted in The Simpsons have actually come to pass? Too darn many. The best-known example would have to be the seventeenth episode of season eleven, “Bart to the Future,” which shows Donald Trump as the President of the United States. The episode was first aired in March 2000, seventeen years before this actually came to pass.There are countless examples of events and incidents in The Simpsons having strange parallels, but is the show really predicting the future? What’s actually happening here?
In 2018, The New York Times released a report entitled ‘The Simpsons’ Has Predicted A Lot. Most Of It Can Be Explained.’ It highlights the odd predictions –or coincidences—that have come out of the show over the course of its record run. These have included “the Trump presidency, the discovery of the Higgs boson particle, 9/11 and, most recently, Disney’s takeover of Fox.” There’s something uncanny about these things, there’s no denying, but there are rational explanations too.
For one thing, as long-term viewers will know, The Simpsons has a way of weaving lowbrow and highbrow humor together. One minute, there’ll be a witty-yet-subtle literary reference, and the next, Homer will fall over in melodramatic and hilarious slapstick fashion.
The conclusion many have reached, then, is that “The show is the product of brilliant minds, many Harvard educated… The result is a show packed with references to art, literature, pop culture, politics, and science.” The natural result of this, writes William Irwin in The Simpsons and Philosophy, is that “When that many smart people produce a television show, it’s bound to make some startling ‘predictions.’”
The other thing to bear in mind is just how darn long the show has been going, and how much of a reputation it has for its predictions in the first place. Combine these two factors, and you’re bound to hit on examples of the future being “predicted,” and a huge fuss being made of them when they are.",
         
        author_id: demoUser5.id,
        
        publish_date: Date.new)

        
        
     test_story_10 = Story.create!( title:"Michael Jordan's Real Obsession",
        
        body: "Michael Jordan was one of the greatest players to ever play the game and is considered by many to be the best ever. He was a dominant offensive player who could score as well as anyone and as good as a perimeter defender as there has been.

He was also a winner as he led the Bulls to six championships in the '90s in two different sets of threepeats. 

In the beginning of his career, Jordan was a dominant individual player, but he was overshadowed by the greatness of Magic Johnson and Larry Bird, who were both legends on championships contending teams.

On the other hand, Jordan's Bulls weren't a championship contender until the early '90s (Jordan's 6-7th season) when Scottie Pippen became a great all around player and the majority the great teams in the '80 had declined. 

However, once he had a good enough supporting cast, he completely dominated the league for the majority of the decade and cemented himself as a legend of the game and the best player in the decade.

However, he retired after he led the Bulls to their first three peat for over a year and a half before coming back and leading the team to another three peat.

Why would the face of the league on the best team in the league who was known for his enormous competitive drive and his desire to be the best ever suddenly retire in the middle of his prime? Lets look at the facts. 

In 1992, after winning his second championship, Jordan was called to testify in the criminal trial of James Bouler to explain why why Bouler, a convicted drug dealer, was in possession of a Jordan-signed personal check for $57,000.

First, Jordan claimed it was a business loan, but under oath he admitted that it was a payment for on gambling losses for a single weekend. 

Then, in early 1993, San Diego businessman Richard Equinas revealed in his book Michael and Me: Our Gambling Addiction...My Cry for Help that he had won over $900,000 from Jordan in golf betting.

Around the same time, MJ was spotted in an Atlantic City casino in the early hours on the morning of Game Two of the Eastern Conference Finals. 

After the Bulls won their third championship, the NBA launched an investigation into Jordan's gambling problems to check whether he had violated any league rules. Then, four months later Jordan stunned the world by suddenly retiring from professional basketball.

At the press conference when he was asked if he would ever return he said, 'Five years down the road, if the urge comes back, if the Bulls will have me, if David Stern lets me back in the league, I may come back.' 

Now why in the world would Jordan ever say if David Stern lets him back, then maybe he would come back when the reporter didn't mention Stern's name at all in his question?",
        
         author_id: demoUser6.id, 
         
         publish_date: Date.new)
        

        
     test_story_7 = Story.create!( title: 'The Truth Behind the End of the Kobe-Shaq Era',
             
            body: "One of the most dominant duos in NBA history, Kobe Bryant and Shaquille O’Neal, ruled the league like royalty at the turn of the century. Yet, what could have been a complete domination of 
            the decade by the Los Angeles Lakers turned into arguably the biggest divorce in the league’s modern era. 
            A dynastic reign was cut short because of a long-running feud that could be resolved only by separating the two most valuable players in the Lakers’ lineup.According to many reports, the Kobe-Shaq era ended because two big egos couldn’t be contained on one roster without the team imploding. 
            In the 2004 NBA Finals, with the team bolstered by the addition of Gary Payton and Karl Malone, two all-time greats who were at the tail end of their careers, 
            the Lakers lost to the Detroit Pistons. Not to take anything away from coach Larry Brown’s defense-minded team, but a lack of cohesion and the injury that sidelined Malone in Game 3 took down the more talented Lakers as much as the Pistons’ own talents, their grit, and their determination.",
            
          author_id: demoUser7.id, 
             
          publish_date: Date.new)
     
          
     test_story_8 = Story.create!( title: "The Wilt Chamberlain They Won't Tell You About.",
             
            body: "What if I were to tell you that Wilt Chamberlain was the most skilled basketball player to have ever lived? Much of the myths abouth this awesome giant's career can be debunked. For example, many say he only dominated with his size.This is a common accusation, and to be honest, there is a certain amount of merit to it.
It's an indisputable fact that the average NBA player in the '60s was smaller than the average player of today. During the 1961-62 season, for example, there were only three seven-footers in the nine-team league, along with two guys at 6'11 and three at 6'10. Boston and St. Louis topped out at 6'9.
So the big men like Chamberlain had a major advantage, right?Wrong.If that were true, we'd be talking about Swede Halbrook, the 7'3 center for the Syracuse Nationals, as the best ever. Surely his massive height advantage over everyone, including Wilt Chamberlain, would have made him the preeminent dominant force in the paint of all time. But we're not talking about Halbrook. Teams that Chamberlain played on won almost two thirds of the time. He went to the finals six times and earned two rings. One of those championships meant doing the undoable for the 60s—beating the Boston Celtics.
Equally telling is that every team he moved to in his career got better when he arrived on the scene.
The Philadelphia Warriors went 32-40 in the 1958-59 season for a .444 winning percentage. With the addition of Wilt for the '59-'60 season, the Warriors improved by 17 wins, to 49-26 and instantly became a contender.
Likewise, the lackluster Philadelphia 76ers went from 34-46 in the '63-'64 season to an even .500 team when Chamberlain was acquired midseason the following year. Then, they had a 55-25 year in '65-'66 and were first place in the East with a full season of Chamberlain at center. They followed that up with a championship the very next year.
Only twice in Wilt's entire career did a team he played for have a losing record.
No, Chamberlain did not win championships the way his arch-rival Bill Russell did, but he won significantly more than virtually any other player in any other era.",
            
          author_id: demoUser8.id, 
             
          publish_date: Date.new)
     
          
          test_story_9 = Story.create!( title: 'The Poisoned Pizza that Immortalized Michael Jordan',
             
            body: "When you’re talking about Michael Jordan’s NBA Playoff basketball career, every conversation evokes moments of greatness. From the incredible performance during his second season where he put up 63 points against the Boston Celtics, to his “last shot” against the Utah Jazz, Michael Jordan has provided fans with an unending amount of memories to look back on fondly. It’s hard to pinpoint exactly what MJ’s greatest playoff moment was, but as we come up on the 18th anniversary of the “Flu Game,” it’s difficult to think of anything that showed just how tough Jordan really was more than that fateful June night.So we order a pizza, they come to deliver it, five guys come to deliver this pizza. And I’m just … I take the pizza, and I tell them, I said, ‘I got a bad feeling about this.’ I said, ‘I just got a bad feeling about this.’ Out of everybody in the room, he was the only one that ate. Nobody else … then 2 o’clock in the morning, I get a call to my room. I come to the room, he’s curled up, he’s curled up in the fetal position. We’re looking at him. We’re finding the team physician at that time. And immediately I said, ‘It’s food poisoning.’ Guaranteed. Not the fluTo this day, the legend of the “Flu Game” still amazes fans as Michael Jordan became the physical embodiment of the phrase “mind over matter.” To look into exactly what he may have dealt with during those legendary 44 minutes, we spoke with Dr. Tyeese Gaines, a practicing emergency medicine physician in New Jersey, to get her professional opinion on exactly what Michael Jordan’s body went through on that infamous day.",
            
            author_id: demoUser9.id, 
             
            publish_date: Date.new)
          
          
          
          
            
            
            test_story_11 = Story.create!( title: 'Russell Westbrook is Officially the Problem in OKC',
             
            body: "Russell Westbrook and the Oklahoma City Thunder found themselves on the losing end of another first-round playoff series in the 2019 NBA playoffs. Their series loss against the Portland Trail Blazers was the third straight one-and-done series for OKC.
             Now, there are a lot of questions as to whether Russell Westbrook can continue to be the franchise’s best player. He might be one of the most underrated players in NBA history, but some wonder if 
             Oklahoma City should try to move on from the talented former MVP who is a triple-double machine and restart things with Paul George at the helm. With that in mind let’s explore if 
             Russell Westbrook is the problem with the Oklahoma City Thunder. Since Kevin Durant left for Golden State, Oklahoma City has looked overmatched in each of their playoff series losses. 
             They lost in five games to the Houston Rockets in 2017, and they followed it 
             up with a six-game loss to the Utah Jazz last season. This year things were supposed to be different, as the Thunder looked to be a legitimate threat to Golden State in the West.After looking at everything regarding Oklahoma City Thunder superstar Russell Westbrook, we can say that he is a part of the problem for the team, but he isn’t the only one. 
             A lack of talent at times and iffy coaching decisions don’t help the cause, but Westbrook’s overall decline is a culprit in the recent Thunder woes. Who do you expect to help Oklahoma City turn their playoff misfortune around? ",
            
             author_id: demoUser11.id, 
             
            publish_date: Date.new)
            
            
            test_story_12 = Story.create!( title: 'Golden State Warriors: Steph Curry is the “system',
             
            body: "The Golden State Warriors are currently playing with three All-Stars (including a two-time Finals MVP), boast a 12-4 record that is good for first in the Western Conference, and yet with a 2-2 record in their last four games (inclusive of a 21-point beating by the Houston Rockets) observers agree that this team hasn’t looked like themselves recently.
            How can that be the case then when this squad is the defending NBA champion, they have the one of the two best players in the league in Kevin Durant, a DPOY caliber player in Draymond Green, and one of the greatest shooters in NBA history in Klay Thompson?
            Golden State prides itself on the system of basketball they employ, their “strength in numbers” mentality that is founded upon sharing and moving the basketball. Sure, Stephen Curry has been injured but clearly that shouldn’t mean this team becomes totally different?
            Actually, that is exactly what happens when Steph Curry is taken out of the equation. The Warriors “system” doesn’t work as usual, surrounding players don’t have the same luxury of finding open shots, star players like Durant can’t easily go one-on-one, and opposing defenses suddenly feel they have a chance at halting the juggernaut that is the Warriors.",
            
             author_id: demoUser12.id, 
             
            publish_date: Date.new)
            
            
            test_story_13 = Story.create!( title: 'Kobe Bryant vs. LeBron James: Is Bryant Better Overall?',
             
            body: "Before I start with this topic, I want to make it clear that I do not support any comparison between these two very talented athletes. I believe comparing athletes as finished products.A good example of finished product comparison would be Jordan vs. Magic, Hakeem vs. David Robinson, or even Wilt Chamberlain vs. Kareem Abdul Jabbar.
            These guys played in the same era and against each other for years with memorable battles in the playoffs and the NBA finals.
            Kobe and LeBron’s careers are far from over, and they are yet to play in any games that really matter—playoffs or NBA Finals.
            Though I do not support the comparison, there is certainly a rivalry between those two.
            Both guys continue to deny any kind of rivalry exists, especially Kobe.  Even if Kobe is not interested in there being any rivalry between he and the young man who would be King, the rest of us are. And that's why there's more info floating around the Web today than any of us have time to go through.
            This rivalry has led to all this talk about who’s better.I’ve been in Chicago since the beginning of the year and didn’t have any free time to get a haircut; needless to say I was looking like a cave man and had hair growing on my face in areas I didn’t know could grow hair.
            A friend referred me to this barber shop called A+ Plus Cuts, and I thought to myself.
            I walked into a very heated debate in the barber shop about Kobe and LeBron and who is better.
            The main argument was: Who had the most complete game, and who has the better supporting cast?
            I personally believe that Kobe has the more mature and effective game; very few people in the NBA have had a talent this refreshing, yet entertaining to watch.
            This helped to preserve his aging knees, and he went on to play 35 minutes or more a night for three more seasons.
            For now, LeBron is still improving on his game and adding new assets to his portfolio every day. Last year, he added the long-range shot, and so far it seem like his three-point shots are getting better.
            But for now, his No. 1 asset still remains driving it hard to the basket, over or around an opponent.",
            
             author_id: demoUser13.id, 
             
            publish_date: Date.new)

            test_story_14 = Story.create!( title: 'The Kawhi Leonard Story: Why is he so quiet?',
             
            body: "Charles Barkley thinks Kawhi Leonard is the best player in the world. Coach David Fizdale thinks Leonard is a machine that bleeds antifreeze. Spurs fans will tell you the silent assassin nicknamed the Klaw because of his giant hands would have led San Antonio to the Finals if 
            it wasn’t for dirty-ass Zaza Pachulia. One thing we all can agree on about the former NBA Finals MVP, who celebrates a birthday (or release date if you believe he is a machine that keeps getting better with each software update) today, 
            is he doesn’t look like a very emotional guy. He usually looks like a guy who got dunked on after dunking on someone. He often celebrates wins by looking like he lost. His bench celebrations resemble a 12th man not getting any PT when his team is up by 20 in the fourth.
            Besides the question posted by Nike above, the question a lot of people want to know is, “Why is Kawhi Leonard so quiet?”
            Here’s Youtuber Swishout with an answer while telling “The (emotional) Kawhi Leonard Story.”harles Barkley thinks Kawhi Leonard is the best player in the world. Coach David Fizdale thinks Leonard is a machine that bleeds antifreeze. Spurs fans will tell you the silent assassin nicknamed the Klaw because of his giant hands would have led San Antonio to the Finals if it wasn’t for dirty-ass Zaza Pachulia. One thing we all can agree on about the former NBA Finals MVP, who celebrates a birthday (or release date if you believe he is a machine that keeps getting better with each software update) today, is he doesn’t look like a very emotional guy. He usually looks like a guy who got dunked on after dunking on someone. He often celebrates wins by looking like he lost. His bench celebrations resemble a 12th man not getting any PT when his team is up by 20 in the fourth.
            Besides the question posted by Nike above, the question a lot of people want to know is, “Why is Kawhi Leonard so quiet?”
            Here’s Youtuber Swishout with an answer while telling “The (emotional) Kawhi Leonard Story.”",
            
             author_id: demoUser14.id, 
             
            publish_date: Date.new)

            
            test_story_15 = Story.create!( title: 'The truth behind the end of the Kobe-Shaq Era',
             
            body: "
            One of the most dominant duos in NBA history, Kobe Bryant and Shaquille O’Neal, ruled the league like royalty at the turn of the century. Yet, what could have been a complete domination of 
            the decade by the Los Angeles Lakers turned into arguably the biggest divorce in the league’s modern era. 
            A dynastic reign was cut short because of a long-running feud that could be resolved only by separating the two most valuable players in the Lakers’ lineup.According to many reports, the Kobe-Shaq era ended because two big egos couldn’t be contained on one roster without the team imploding. 
            In the 2004 NBA Finals, with the team bolstered by the addition of Gary Payton and Karl Malone, two all-time greats who were at the tail end of their careers, 
            the Lakers lost to the Detroit Pistons. Not to take anything away from coach Larry Brown’s defense-minded team, but a lack of cohesion and the injury that sidelined Malone in Game 3 took down the more talented Lakers as much as the Pistons’ own talents, their grit, and their determination.",
            
             author_id: demoUser15.id, 
             
            publish_date: Date.new)
            
            
            test_story_16 = Story.create!( title: 'Why the Spurs are always so good',
             
            body: "
            No one should be mystified that the Spurs are doing this, and not just because the Nuggets have very little collective playoff experience beyond Paul Millsap. The Spurs often do this! Here’s why, in my humble opinion: they always know what they are supposed to be doing, and the Spurs’ system on both ends is always designed to support the players’ strengths.
            On the latter, for instance: in a league gone mad with three-pointers, the Spurs have few knockout three-point shooters (four of them, none of them top-three options on the team). As a result of playing to their strengths, San Antonio had the lowest three-point rate in the league. They still had the No. 7 offense in the NBA this season, though. 
            The offense was based around ball protection and getting good shots wherever you find them. DeMar DeRozan and LaMarcus Aldridge shot quite efficiently on twos (DeRozan at 49 percent, Aldridge at 53 percent), Rudy Gay had his most efficient and lowest usage season ever as the third banana, and the others who mixed in focused on taking good shots and moving the ball without giving up turnovers. It worked! On Thursday, the Spurs had seven turnovers and shot 20-29 in the mid-range.
            Meanwhile, the game plan every night is perfectly clear to everyone in a Spurs uniform. They know who they are and who they are not. Some of them are still learning the finer points of defensive philosophy, and it’s not the quickest or longest bunch, which has led to some problems on that end this series and season.
            Both of these things come back down to this, the sole constants in the franchise over the past two and a half decades: the roster always makes sense, and the coaching is impeccable. When the roster has All-NBA-caliber players, the Spurs will be a title contender. When the roster has a fringe all-star or two, the Spurs will be competitive in the playoffs. It’s clockwork, and it should be celebrated.
            All hail the Spurs, the anti-trend, ultra well-managed NBA team that will apparently never go away.
            ",
            
             author_id: demoUser16.id, 
             
            publish_date: Date.new)
            
            
            test_story_17 = Story.create!( title: 'Everybody (Still) Hates Dwight',
             
            body: "
            Dwight Howard is just one team away from completing the dangerous and powerful Southeast Division Infinity Gauntlet. Now a member of the Washington Wizards, he’s set to play for his sixth franchise in eight seasons.
            It’s not solely the quote that’s cringeworthy. If another NBA player, like Nick Young, would’ve said this, it might have come across as a humor-adjacent riff on a complicated career. 
            The most noteworthy part would have been the implication that a player was “stung” by his former team. But these words were said by Dwight Howard.
            Howard has a history of responding to every situation with a corny joke. It doesn’t matter whether he’s asked about a poor performance, team turmoil, or jilted fans; he’ll crack a smile and hit an unamused audience with C-grade open-mic material.",
            
             author_id: demoUser17.id, 
             
            publish_date: Date.new)

             
         
            test_story_18 = Story.create!( title: 'John Wall Contract Worst in NBA History',
             
            body: "
            With the news that John Wall is out long term ​after rupturing his Achilles in a freak accident, the Wizards are forced to deal with the repercussions of a ​contract which was questioned at the time, but now appears truly hopeless.
            Wall signed a max extension two summers ago, in a deal which is expected to pay him $170 million over the next four years. Given the fact that Wall is unlikely to play in the next full calendar year, this is the worst contract in the NBA and it isn't even close.
            For Wall, the money isn't much of a consolation prize, as the former All-Star would much rather be on the court building upon his legacy in the DC metro area. Instead, he leaves the Wizards with little cap flexibility and the rotting corpse of a basketball team.
            ",
            
             author_id: demoUser18.id, 
             
            publish_date: Date.new)

            

          
            file_0 = open('https://medium-well-seed.s3-us-west-1.amazonaws.com/illuminate.jpeg')
            test_story_0.photo.attach(io: file_0, filename: 'illuminate.jpeg')
            
            file_1 = open('https://medium-well-seed.s3-us-west-1.amazonaws.com/jfk.jpeg')
            test_story_1.photo.attach(io: file_1, filename: 'jfk.jpeg')
            
            file_2 = open('https://medium-well-seed.s3-us-west-1.amazonaws.com/moon-landing.jpeg')
            test_story_2.photo.attach(io: file_2, filename: 'moon-landing-jpeg')
          
          file_3 = open('https://medium-well-seed.s3-us-west-1.amazonaws.com/pyramids.jpeg')
          test_story_3.photo.attach(io: file_3, filename: 'pyramids.jpeg')
          
          file_4 = open('https://medium-well-seed.s3-us-west-1.amazonaws.com/falt-earth.jpeg')
          test_story_4.photo.attach(io: file_4, filename: 'falt-earth.jpeg')
          
          file_5 = open('https://medium-well-seed.s3-us-west-1.amazonaws.com/simpsons.jpg')
          test_story_5.photo.attach(io: file_5, filename: 'simpsons.jpg')
          
          file_6 = open('https://medium-well-seed.s3-us-west-1.amazonaws.com/area-51.jpeg')
          test_story_6.photo.attach(io: file_6, filename: 'area-51.jpeg')
          
          
          file_7 = open('https://medium-well-seed.s3-us-west-1.amazonaws.com/jordan-gamble.jpg')
          test_story_7.photo.attach(io: file_7, filename: 'jordan-gamble.jpg')
          
          file_8 = open('https://medium-well-seed.s3-us-west-1.amazonaws.com/wilt.jpg')
          test_story_8.photo.attach(io: file_8, filename: 'wilt.jpg')
          
          file_10 = open('https://medium-well-seed.s3-us-west-1.amazonaws.com/shaq-and-kobe.jpg')
          test_story_10.photo.attach(io: file_10, filename: 'jordan-gamble.jpg')
          
          
          
          file_9 = open('https://medium-well-seed.s3-us-west-1.amazonaws.com/mjfluuu.jpg')
          test_story_9.photo.attach(io: file_9, filename: 'mj-bron.jpg')
          
          
          file_6 = open('https://medium-well-seed.s3-us-west-1.amazonaws.com/area-51.jpeg')
          test_story_6.photo.attach(io: file_6, filename: 'area-51.jpeg')
         
          file_12 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/laker-rig.jpg')
          test_story_12.photo.attach(io: file_12, filename: 'area-51.jpeg')
          
          file_13 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/kobe-bron.jpg')
          test_story_13.photo.attach(io: file_13, filename: 'kobe-bron.jpg')
          
          file_14 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/kawhi.jpg')
          test_story_14.photo.attach(io: file_14, filename: 'kawhi.jpg')
          
          file_15 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/shaq-kobe.jpeg')
          test_story_15.photo.attach(io: file_15, filename: 'shaq-kobe.jpg')
          
          file_16 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/spurs.jpeg')
          test_story_16.photo.attach(io: file_16, filename: 'spurs.jpg')
          
          file_17 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/dwight.jpg')
          test_story_17.photo.attach(io: file_17, filename: 'dwight.jpg')
          
          file_18 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/wall.jpg')
          test_story_18.photo.attach(io: file_18, filename: 'wall.jpg')
          
          
end


