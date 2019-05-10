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
    demoUser = User.create!(first_name: 'demo', last_name: 'user', email: 'demouser@gmail.com', password: '123456')
    
    test_story_0= Story.create!( title:"What Really Happened During Michael Jordan's Flu Game?",
        
        body: "When you’re talking about Michael Jordan’s NBA Playoff basketball career, every conversation evokes moments of greatness. 
     From the incredible performance during his second season where he put up 63 points against the Boston Celtics, to his “last shot” against the Utah Jazz, Michael Jordan has provided fans with an unending amount of memories to look back on fondly. 
     It’s hard to pinpoint exactly what MJ’s greatest playoff moment was, but as we come up on the 18th anniversary of the “Flu Game,” it’s difficult to think of anything that showed just how tough Jordan really was more than that fateful June night.    
     For those of you who may not have been blessed enough to watch “His Airness” live in his prime, let’s just take a second to understand exactly what made this moment so great
     The Bulls, after taking the first two games in the 1997 NBA Finals, were now tied 2-2 with the Jazz heading into a pivotal fifth game in Utah. As fans around the globe tuned in, news broke that Michael Jordan was
      suffering from “flu-like symptoms” and was extremely sick, but would attempt to play in the game anyway. Not only did Jordan play in the game but he played 44 minutes, scoring 38 points, despite being visibly affected by the sickness. 
     It was a moment for the sports history books and one that won’t be forgotten anytime soon.As time passed and the legend of the “Flu Game” grew, new information became public. It was the understanding that Jordan wasn’t suffering from the flu itself that night, but instead was hit with a bad case of food poisoning. Many people even 
     oncocted their own conspiracy theories that Jordan was actually hungover during the game despite many of those close to him confirming the food poisoning story. The most popular theory is one that was confirmed by his trainer. To this day, the legend of 
     the “Flu Game” still amazes fans as Michael Jordan became the physical embodiment of the phrase “mind over matter.” To look into exactly what he may have dealt with during those legendary 44 minutes, we spoke with Dr. Tyeese Gaines, a practicing emergency 
      medicine physician in New Jersey, to get her professional opinion on exactly what Michael Jordan’s body went through on that infamous day. ",
        
     author_id: demoUser.id, 
     
     publish_date: Date.new)
     
         
         
         test_story_1 = Story.create!( title: 'The Curious Case of Paul Pierce and the Wheelchair',
             
            body: "Memory is a malleable thing. In which game was it that Allen Iverson stepped over Tyronn Lue? When did Michael Jordan, wearing no. 45, score 55? That was the season before the Bulls won 72 games … or was it 73?
     The fluidity of memory is part of why the NBA is the most fertile ground, among the major American sports, for conspiracy theories — the parts of the league history that I call the “shadow history.” To be sure, every sport has its conspiracy theories. 
     But none is as shaped by them as the NBA. The frozen envelope, Jordan’s retirement, Donaghy — these are things that are taken as if not exactly fact, also not exactly fiction, by NBA fans.
     On December 20, early in a game between the Utah Jazz and the Golden State Warriors, Jazz marksman Rodney Hood left the court due to what was officially referred to as “gastric distress.” Now, “gastric distress” could refer to any number of digestive maladies,
     resulting in various negative symptoms which one would not want to go through live on television. But since there are numerous examples of athletes and coaches gutting out mere nausea — Michael Jordan’s Flu Game, Alvin Gentry yakking into a wastepaper basket, then-Nuggets player 
     Rodney White vomiting on the left elbow at MSG after Allan Houston attempted a jumper over him, the Butler Bulldog during the Big East tournament — I immediately thought Hood had likely fled to avert the worst possible version of “gastric distress.”
     fter all, losing your lunch in the course of competition is, if anything, one of the culturally agreed-upon marks of a “warrior,” found in the same category of athletic lore as limping around the court after a devastating injury. It suggests athletes pushing themselves beyond the 
     limits of human endurance, into the hallowed realm of Willis Reed, MJ, and Isiah Thomas. Willie Beamen was the hero of Any Given Sunday for a reason.If Paul Pierce had to be carted off the floor during the Finals because he didn’t want people to see his stained butt, then I would talk about that every day.
     Like, I would just walk up to strangers and say “Hey, did you know that Paul Pierce shit his pants during the NBA Finals and covered it, brilliantly, by riding off the floor in a wheelchair?”",
            
       author_id: demoUser.id, 

     publish_date: Date.new)
    

     test_story_2 = Story.create!( title:"Spurs turned off the air conditioning to give LeBron cramps in Game 1 of the 2014 Finals",
        
        body: "In the first game of the championship series, an electrical failure in the system that controls the air conditioning sent temperatures at AT&T Center in San Antonio soaring into the 90s. A gassed LeBron James fell victim to 
        cramping and repeatedly had to leave the game, which Miami was winning before the AC broke down. With James out for the final four minutes of the game, the Spurs went on a 16-3 run to close the game and take a 1-0 series lead.
     First, Gregg Popovich is too classy to have a hand in something like this. Second, the 2014 Spurs were too beautiful a team—a precursor to the following season’s surprising Warriors under Steve Kerr—to warrant such an extreme measure against their Finals opponent. 
     But there are kernels of context that add weight to the conspiracy, and the idea of Popovich impersonating the pettiness of Red Auerbach to give his team an edge is so incongruent with the Popovich persona, the irony brings us great joy.
     Exhibit A for SwelterGate is James’ history of cramping, which first reared its ugly head after Game 1 of the 2009 Eastern Conference finals against a Magic team that would eventually send James home. However, James’ most significant moment of cramping before this 
     game came in the closing minutes of Game 4 during the 2012 NBA Finals. At that point, the pressure was high because James had yet to win a chip, and some attributed the cramps to that psychological battle. After being carried off the court by Juwan Howard late in the game—the 
     veritable Paul Pierce wheelchair of online James trolling from that day forward—James returned a minute later and hit the go-ahead 3-pointer to clinch the win. So, the Spurs must have known James was prone to cramping, regardless of what Gatorade tweeted during the game.
     Exhibit B stems from San Antonio’s blase response to the elevated temperatures in the AT&T Center. ""I don't think I've played in anything like this since I left the islands,"" Tim Duncan, a native of St. Croix, said after the game. “But we handled it pretty well.” 
     That’s one way of putting it. Another is that the international flavor of the Spurs uniquely equipped them to withstand the rigors of the sauna AT&T Center became. ""Me personally, it didn't bother me,"" Tony Parker said after Game 1. Felt like Europe. 
     We never have AC in Europe, so it didn't bother me at all."" The same shrug about the hot climes was repeated by Manu Ginobili, as if the Spurs brass hadn’t given them the correct lines. “I've played more years in situations like this than with AC on the court,” said the Argentinian. “Not a big deal in that case.”",

        author_id: demoUser.id,
        
        publish_date: Date.new)
             
             
        test_story_3 = Story.create!( title:'The NBA suspended Draymond Green in Game 5 the 2016 Finals to extend the series',
           
           body: "In Game 4 of the NBA Finals, LeBron James and Draymond Green became entangled at the top of the arc when Green was trying to set a screen to free Steph Curry. Green hit the floor (James is really big), and James stepped over him, a big no-no in the unwritten rules of on-court machismo. 
           Green lashed out, flicking his hand into James’ groin and inadvertently setting in motion the greatest NBA Finals in the history of the Association. Green was suspended for Game 5 because of the retaliatory hit, and Warriors fans blamed the NBA for attempting to squeeze more money out of what 
           was thought to be a dominant Warriors win, neglecting to mention the massive TV-rights bag the Association secured a couple years previously. Because fans are predictable, they also blamed James for [puts on Kangol bucket hat and LRG backpack] snitching. Like the refs somehow didn’t see Green hit Bron in the gonads.
           Or they had somehow forgotten he’d already kicked Steven Adams in the gibblies during the Western Conference Finals, and body-slammed Michael Beasley, then with the Rockets, even earlier in the playoffs. Suspensions in the playoffs come on a points system,  and Green had exceeded it.
        Tim Donaghy—disgraced former ref, convict and peddler of delicious Joey Crawford knuckle sandwiches—is the one who sounded the alarm on the conspiracy angle. If you can’t trust a discredited former employee who served time in jail and had an axe to grind, who can you trust? However, let’s not forget 
        Donaghy’s prescience about the refs working Game 7. It’s preordained, man! Just ask...Ayesha Curry? Yeah, Steph’s wife claimed it was rigged this time for—you guessed it—money, after her hubbie was assessed a sixth foul in a Game 6 loss.Not only that, but when The Ringer wrote about this conspiracy, 
        the video embed they used suspiciously disappeared. Coincidence, or—nope, it’s a coincidence. Here’s the video (we put a gif above for when the NBA’s Thought Police take it down):We hope this is true just because it makes absolutely no sense, which aligns nicely with our world view since Nov. 8, 2016. 
        he NBA retroactively awarding Green a flagrant 1 was deserved, and it put him over the playoff limit, thereby keeping him out of Game 5, which I’m still not sure the Warriors would have won with him on the floor (Kyrie Irving and James dropped 41 each, and we’ve never seen some as unconscious from the field—17-for-24—as Irving looked in Game 5).
        Plus, if the NBA somehow had known a simple and deserved suspension would lead to the first-ever 3-1 comeback in NBA Finals history, against the only team to ever win 73 regular-season games, spearheaded by the greatest player of his generation for a city in the midst of a 52-year championship drought, in a state 
        that just so happened to be the birthplace of the once-in-a-lifetime player, how can you not be impressed by that total command over the levers of power and influence?",
           
        author_id: demoUser.id, 
            
        publish_date: Date.new)
             
     test_story_4 = Story.create!( title:"Michael Jordan's Flu Game was actually a successful attempt to poison MJ",  
        
        body: "This one could still be true, and the interesting thing about it is that the actual story might be more diabolical than the one falsely repeated before Jordan’s trainer, Tim Grover, set the record straight to True Hoop TV in 2013.     
        Before Game 5 in Salt Lake City, Utah in June of 1997, the hotel where the Bulls were staying stopped serving room service at  9 p.m. Since NBA players keep odd hours, hoping to peak physically around 8 or 9 at night for games, MJ got hungry.
     “I said, Hey, the only thing I could find is a pizza place.” Grover recounted. “[Jordan] said, All right, order pizza. We had been there for a while, so everybody knows what hotel...I mean Park City (didnt have) many hotels back then. Everybody kind of knew where we were staying.
     So we order a pizza, they come to deliver it, five guys come to deliver this pizza,” Grover portended. “I take the pizza, and I tell them, I said, I got a bad feeling about this. I said, I just got a bad feeling about this. Out of everybody in the room, he was the only one that ate. 
     Nobody else...then 2 oclock in the morning, I get a call to my room. I come to the room, hes curled up, hes curled up in the fetal position. Were looking at him. Were finding the team physician at that time. And immediately I said, Its food poisoning. Guaranteed. Not the flu.
     We want this to be true because it makes more sense than the other theory floated around by his rivals that MJ was hungover. MJ liked to kick back from time to time with a beverage, but probably not in Park City before a Finals game. It’s also a lot more nefarious a narrative than 
     simple bad luck if it were the flu. No, this means a pizza parlor in Park City, Utah likely figured out who they were delivering the pizza to at that specific hotel, and poisoned the best player in the world.",
         
     author_id: demoUser.id,
     
     publish_date: Date.new)
         
     test_story_5 = Story.create!( title:' NBA really rigs the Draft Lottery',
        
        body: "The frozen envelope with the folded corner in 1985 when the sad-sack Knicks got Patrick Ewing; the De Vos family gifted back-to-back No. 1 picks in 1992 (Shaq) and 1993 (Chris Webber traded for Penny Hardaway) 
        as payment for buying the team in 1991; Cleveland surreptitiously landing the No. 1 pick in 2003 to nab Ohio native LeBron James; Cleveland again landing the No. 1 pick in 2011 (as well as 2013 and 2014) after losing James in the televised 
        Decision David Stern anxiously warned him not to do; the then-Hornets and new owner Tom Benson getting the right ping pong balls in 2012 to land Anthony Davis; Philly landing the No. 1 pick in 2016 after forcing Sam Hinkie out.
       The sheer number of of supposedly rigged years and the explanations behind them almost disproves the original conspiracy. And do you notice how they seem to increase as the internet becomes more pervasive in popular culture? Yeah, that’s probably just a coincidence. Except, is it?
      But we hope the NBA Draft Lottery is rigged like many believe because that just means the NBA is more diabolical and tighter-lipped than the Illuminati, La Cosa Nostra, Druids, Knights Templar, Skull and Bones, and Freemasons could’ve ever imagined. The NBA successfully 
      kept likely hundreds of technical, behind-the-scenes people silent about a massive conspiracy that can add hundreds of millions of dollars to a franchise with the snatch of a ping pong ball.",
         
        author_id: demoUser.id,
        
        publish_date: Date.new)

        
        
     test_story_6 = Story.create!( title:'Kevin Durant joined the Warriors to slow down Under Armour',
        
        body: "No capital D Decision since James’ in 2010 sent shockwaves through the NBA like Durant’s July Fourth announcement that he was signing with the Warriors two summers ago. Except, unlike James’ humbling loss to Dirk Nowitzki in the 2011 Finals, the Warriors have done exactly what everyone expected 
        when his Players’ Tribune piece dropped: they captured two straight titles and KD won two successive Finals MVPs. Durant said winning was most important, and he wasn’t lying, despite how some self-important NBA fans might view it..'However, there were whispers directly after the announcement that maybe Nike had 
        been in KD’s ear, and that he was actually a trojan horse to curtail Under Armour’s ascendance along with two-time MVP Steph Curry. Under Armour might not make the best kicks, but they had the best pitchman: An empathetic figure at just 6’3” and 180 pounds, Curry was a stand-in for every undersized kid who 
        dreamed of NBA glory.We like this one because rather than place the onus of KD’s decision on his desire to win a ring, it might soothe disgruntled NBA fans to blame the whole thing on the Nike’s attempts to solidify their monopoly over the basketball sneaker market.",
        
         author_id: demoUser.id, 
         
         publish_date: Date.new)
        

        
     test_story_7 = Story.create!( title: 'Marcus Morris played as Markieff Morris in Game 2 of the 2017 Eastern Conference semifinals',
             
            body: "This one gained traction after Washington’s Markieff Morris suffered what looked like a bad ankle injury in Game 1 against the Celtics. Despite the severity of the sprain, he came back to score 16 points and snag 6 rebounds in 26 minutes of action in Game 2. It was the game where Isaiah Thomas dropped 53 points, 
            but Kieff’s play opened up the possibility that Marcus, who played for the Pistons at the time, might’ve played for Kieff instead.Because of their remarkable resemblance, and the fact they used to switch teams back during their AAU days, it had the air of something more than just intrigue. It really seemed possible because we all fools.
            “I think they might know,” Markieff said in 2013 of the identity swap they pulled off as teenagers. “I’m not as skilled as Mook is. We did it before in AAU ball. [The jersey switch] was on the bench. It happened real quick. He had hurt his ankle but I had fouled out. I gave them a little limp back in, like I was hurt and kept playing.”
          Both Markieff and Marcus have similar games, sweet-shooting tweeners who can ostensibly guard both multiple positions, so a switch would be remarkably easy to get past a cursory inspection. Though a trained eye, like Kieff mentioned, would have picked out the differences really quickly.
          USA Today’s Joseph Andrew attended Kansas with both brothers and wrote about their slight differences in tattoos—the “FOE” (family over everything) tattoo below their chins is more compact on Marcus and the ‘E’ on his isn’t as prominent— and the fact Kieff is an inch and a half taller than Marcus with a longer face. 
          Not only that, but Andrew points out that Marcus has a quicker release on his jumper than Kieff. Getting even more real, there might be liability and contractual issues if Marcus had suited up that day. Would they have to re-play the game? What if Washington won? Would it be forfeited? Probably. Plus, there’s no way either would agree to do it, 
          even if we want to believe they’ve done it at least once in the NBA already and have sworn each other to secrecy. USA Today’s Joseph Andrew attended Kansas with both brothers and wrote about their slight differences in tattoos—the “FOE” (family over everything) tattoo below their chins is more compact on Marcus and the ‘E’ on his isn’t as prominent— 
          and the fact Kieff is an inch and a half taller than Marcus with a longer face. Not only that, but Andrew points out that Marcus has a quicker release on his jumper than Kieff. Getting even more real, there might be liability and contractual issues if Marcus had suited up that day. Would they have to re-play the game? What if Washington won? Would it be forfeited? Probably. 
          Plus, there’s no way either would agree to do it, even if we want to believe they’ve done it at least once in the NBA already and have sworn each other to secrecy", 
            
          author_id: demoUser.id, 
             
          publish_date: Date.new)
     
          
     test_story_8 = Story.create!( title: 'Did NBA Really Fix Lakers-Kings Game in 2002?',
             
            body: "Ex-NBA referee Tim Donaghy recently accused the NBA of coercing referees to help the Brooklyn Nets defeat the less glamorous Toronto Raptors in their first round playoff series. This echoes previous claims by Donaghy about the NBA manipulating games. 
            The most notorious example is Game 6 of the 2002 Western Conference finals, when the two-time defending champion Los Angeles Lakers staved off elimination by defeating the Sacramento Kings. Donaghy alleged that two referees (understood to be Dick Bavetta and Bob Delaney) fixed the game.
           Donaghy was convicted of betting on games so he may not seem a reliable accuser, but many considered him an insider with privileged information. And he wasn’t the only one who found something amiss in Game 6. Announcer Bill Walton (throughout the game), prominent sportswriters, and consumer 
           advocate Ralph Nader all ripped the referees for poor calls favoring the Lakers. Many critics noted that the Lakers shot 27 free throws in the fourth quarter, and the Kings only nine.An NBA game could, of course, be fixed. That’s why the NBA maintains an extensive security department. 
           Its concern is largely about addicted, vengeful or mentally ill players, referees, and even owners, perhaps in association with gamblers. History includes several examples of rogues rigging sporting events.But Donaghy’s allegations are more spectacular. He claimed that the NBA hierarchy instigated 
           the fix in 2002 - that the referees received an NBA-approved message to manipulate Game 6 in the perceived best interests of the league - and that the NBA persists in this odious practice. Game 6 in 2002 remains the most likely possibility of a game in which the NBA hierarchy participated in a fix. 
           Was Game 6 fixed?The alleged motive, of course, was money for the owners. This would derive from ensuring a seventh game, and even more so if the Lakers reached the Finals and boosted television ratings. The real payoff would come if nationally prominent teams routinely reached the Finals, translating into more lucrative television contracts.
          Bavetta has attracted much attention, but the referees (all three made questionable calls) were just worker bees. The most important part of Donaghy’s story involved the purported instigators, the unnamed high-level NBA representatives and/or owners.We will assume, for the sake of argument, that the NBA has unsavory officials or owners capable of endorsing 
          fixed games for money, and referees who would follow the lead of their bosses for unspecified benefits. (No one alleged direct bribes.) Out of context, the “Lakers-Finals-Television Ratings-More Money” motive makes sense. However, the NBA is a hugely complex sporting and business enterprise with many competing interests. Television contracts are important to NBA 
          owners but are hardly their only interest, and not necessarily their dominant interest. Many owners crave championships. To begin with, they relish publicity and prestige, which dramatically increase with a title. In addition, owners like Mark Cuban are competitive sportsmen who seek winning for its own sake.Championships also promote profit for the winning team. 
          They yield immediate economic benefits via increased attendance, merchandise sales, advertising revenue and local television ratings/contracts. More importantly, recent studies indicate that every title generates life-long fans, especially among youngsters - a cash cow that keeps on giving for decades.
          The desire of individual owners to win titles conflicts with the “Lakers-Finals-Television Ratings-More Money” theme. Only a few NBA teams have national appeal and a policy favoring them would obviously diminish the chances for all other teams. Owners motivated by winning would never sign on to or tolerate any such policy.In addition, 
          the owners’ individual interests in winning championships have likely contributed to all the major sports leagues adopting policies favoring competitive balance.",
            
          author_id: demoUser.id, 
             
          publish_date: Date.new)

          file_0 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/mj-flu.jpg')
          test_story_0.photo.attach(io: file_0, filename: 'mj-flu.jpg')
          
          file_1 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/pp-wheelchair.jpeg')
          test_story_1.photo.attach(io: file_1, filename: 'pp-wheelchair.jpg')
          
          file_2 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/bron-cramps.jpg')
          test_story_2.photo.attach(io: file_2, filename: 'bron-cramps.jpg')
          
          file_3 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/dray-bron.jpg')
          test_story_3.photo.attach(io: file_3, filename: 'dray-bron.jpg')
          
          file_4 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/flu-2.jpg')
          test_story_4.photo.attach(io: file_4, filename: 'flu-2.jpg')
          
          file_5 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/draft-rig.jpg')
          test_story_5.photo.attach(io: file_5, filename: 'draft-rig.jpg')
          
          file_6 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/next-chapter.jpg')
          test_story_6.photo.attach(io: file_6, filename: 'next-chapter.jpg')
          
          file_7 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/morris.jpg')
          test_story_7.photo.attach(io: file_7, filename: 'morris.jpg')
          
          file_8 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/laker-rig.jpg')
          test_story_8.photo.attach(io: file_8, filename: 'laker-rig.jpg')
          
end


