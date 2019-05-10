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
    demoUser0 = User.create!(first_name: 'AdrianWojnarowski', last_name: 'Wojnarowski', email: 'AdrianWojnarowski@gmail.com', password: '123456')
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
        
     author_id: demoUser0.id, 
     
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
            
       author_id: demoUser1.id, 

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

        author_id: demoUser2.id,
        
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
           
        author_id: demoUser3.id, 
            
        publish_date: Date.new)
             
     test_story_4 = Story.create!( title:"Michael Jordan's Flu Game was actually a successful attempt to poison MJ",  
        
        body: "This one could still be true, and the interesting thing about it is that the actual story might be more diabolical than the one falsely repeated before Jordan’s trainer, Tim Grover, set the record straight to True Hoop TV in 2013.     
        Before Game 5 in Salt Lake City, Utah in June of 1997, the hotel where the Bulls were staying stopped serving room service at  9 p.m. Since NBA players keep odd hours, hoping to peak physically around 8 or 9 at night for games, MJ got hungry.
     “I said, Hey, the only thing I could find is a pizza place.” Grover recounted. “[Jordan] said, All right, order pizza. We had been there for a while, so everybody knows what hotel...I mean Park City (didnt have) many hotels back then. Everybody kind of knew where we were staying.
     So we order a pizza, they come to deliver it, five guys come to deliver this pizza,” Grover portended. “I take the pizza, and I tell them, I said, I got a bad feeling about this. I said, I just got a bad feeling about this. Out of everybody in the room, he was the only one that ate. 
     Nobody else...then 2 oclock in the morning, I get a call to my room. I come to the room, hes curled up, hes curled up in the fetal position. Were looking at him. Were finding the team physician at that time. And immediately I said, Its food poisoning. Guaranteed. Not the flu.
     We want this to be true because it makes more sense than the other theory floated around by his rivals that MJ was hungover. MJ liked to kick back from time to time with a beverage, but probably not in Park City before a Finals game. It’s also a lot more nefarious a narrative than 
     simple bad luck if it were the flu. No, this means a pizza parlor in Park City, Utah likely figured out who they were delivering the pizza to at that specific hotel, and poisoned the best player in the world.",
         
     author_id: demoUser4.id,
     
     publish_date: Date.new)
         
     test_story_5 = Story.create!( title:' NBA really rigs the Draft Lottery',
        
        body: "The frozen envelope with the folded corner in 1985 when the sad-sack Knicks got Patrick Ewing; the De Vos family gifted back-to-back No. 1 picks in 1992 (Shaq) and 1993 (Chris Webber traded for Penny Hardaway) 
        as payment for buying the team in 1991; Cleveland surreptitiously landing the No. 1 pick in 2003 to nab Ohio native LeBron James; Cleveland again landing the No. 1 pick in 2011 (as well as 2013 and 2014) after losing James in the televised 
        Decision David Stern anxiously warned him not to do; the then-Hornets and new owner Tom Benson getting the right ping pong balls in 2012 to land Anthony Davis; Philly landing the No. 1 pick in 2016 after forcing Sam Hinkie out.
       The sheer number of of supposedly rigged years and the explanations behind them almost disproves the original conspiracy. And do you notice how they seem to increase as the internet becomes more pervasive in popular culture? Yeah, that’s probably just a coincidence. Except, is it?
      But we hope the NBA Draft Lottery is rigged like many believe because that just means the NBA is more diabolical and tighter-lipped than the Illuminati, La Cosa Nostra, Druids, Knights Templar, Skull and Bones, and Freemasons could’ve ever imagined. The NBA successfully 
      kept likely hundreds of technical, behind-the-scenes people silent about a massive conspiracy that can add hundreds of millions of dollars to a franchise with the snatch of a ping pong ball.",
         
        author_id: demoUser5.id,
        
        publish_date: Date.new)

        
        
     test_story_6 = Story.create!( title:'Kevin Durant joined the Warriors to slow down Under Armour',
        
        body: "No capital D Decision since James’ in 2010 sent shockwaves through the NBA like Durant’s July Fourth announcement that he was signing with the Warriors two summers ago. Except, unlike James’ humbling loss to Dirk Nowitzki in the 2011 Finals, the Warriors have done exactly what everyone expected 
        when his Players’ Tribune piece dropped: they captured two straight titles and KD won two successive Finals MVPs. Durant said winning was most important, and he wasn’t lying, despite how some self-important NBA fans might view it..'However, there were whispers directly after the announcement that maybe Nike had 
        been in KD’s ear, and that he was actually a trojan horse to curtail Under Armour’s ascendance along with two-time MVP Steph Curry. Under Armour might not make the best kicks, but they had the best pitchman: An empathetic figure at just 6’3” and 180 pounds, Curry was a stand-in for every undersized kid who 
        dreamed of NBA glory.We like this one because rather than place the onus of KD’s decision on his desire to win a ring, it might soothe disgruntled NBA fans to blame the whole thing on the Nike’s attempts to solidify their monopoly over the basketball sneaker market.",
        
         author_id: demoUser6.id, 
         
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
            
          author_id: demoUser7.id, 
             
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
            
          author_id: demoUser8.id, 
             
          publish_date: Date.new)
     
          
          test_story_9 = Story.create!( title: 'Michael Jordan or LeBron James: Which one is the Greatest of All Time?',
             
            body: "It’s tough to top perfection. Or, to be more accurate, the perception of perfection.Michael Jordan won his six rings in six Finals tries, with those two three-peats separated by his first retirement and that brief-but-fascinating minor league baseball career. 
            They say nobody bats 1.000, but his ability to do just that on the NBA’s greatest stage is the main reason his playoff legacy remains unmatched.Pick a player not named Jordan who’s considered an all-time great, and they had a blemish on their Finals resume. From LeBron James' five Finals losses to Bill Russell (11-1), Kareem Abdul-Jabbar (6-4), Magic Johnson (5-4), Wilt Chamberlain (2-4), Kobe Bryant (5-2), Shaquille O’Neal (4-2), Larry Bird (3-2), and Tim Duncan (5-1), they all fell short at the end at least once. And unlike James, who faltered badly in the 2011 Finals loss against Dallas and was below his Superman standards in 2007 (a sweep by San Antonio) and 2014 (a five-game Spurs win), Jordan met the moment every time while taking down plenty of greats along the way.
            James admitted he needed to become a more complete player after the 2011 Finals. He did that, using his ability, intelligence and work ethic. James and Jordan are different in many ways but their determination to be the best is a shared trait.James also plays in an era of social media and over-the-top hyper-criticism. Imagine if Jordan played in the social media era. He would’ve been crushed for losing to Boston and Detroit over and over early in his career. Remember, Jordan punched at least two teammates – Steve Kerr and Will Perdue – and harangued Bill Cartwright. If James punched a teammate today, Twitter would break.
            Also, consider the expectations placed on James as a teen. He was supposed to be the next greatest and not only lived up to those expectations for 17 years but surpassed them. James is the greatest player ever.Or at least one of a select few.",
            
            author_id: demoUser9.id, 
             
            publish_date: Date.new)
          
          
          test_story_10 = Story.create!( title: 'The Case for Wilt Chamberlain as the Best Ever',
             
            body: "With two of the very best active players in LeBron James and Kevin Durant currently playing in the NBA Finals, it is not uncommon to see the age-old debate of who was the best ever come up. There are a handful of names that are always bandied about and impassioned arguments made in favor of each one.
            Michael Jordan, Bill Russell and Magic Johnson seem to be the most common names to come up. LeBron's name, along with Kobe Bryant's, have begun to be mentioned now and then.
            But, the best that ever was—and always will be—none other than Wilt Chamberlain.
            Wilt is also usually in the conversation, but his accomplishments are frequently derided and dismissed as a function of his era, the league he was playing in and the competition he faced. Moreover, there are the accusations of his selfish play inflating his stats and the inevitable argument that he didn't win enough championships.
            Well, let's see if we can address some of those issues and put it all into context with what the other greats of the game did.",
            
             author_id: demoUser10.id, 
             
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
          
          file_9 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/mj-bron.jpg')
          test_story_9.photo.attach(io: file_9, filename: 'mj-bron.jpg')
          
          file_10 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/laker-rig.jpg')
          test_story_10.photo.attach(io: file_10, filename: 'wilt.jpg')
          
          file_11 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/russ.jpeg')
          test_story_11.photo.attach(io: file_11, filename: 'russ.jpg')
         
          file_12 = open('https://s3-us-west-1.amazonaws.com/medium-well-seed/laker-rig.jpg')
          test_story_12.photo.attach(io: file_12, filename: 'steph.jpg')
          
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


