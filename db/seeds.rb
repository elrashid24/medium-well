# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do 
    User.destroy_all
    Story.destroy_all
    demoUser = User.create!(first_name: 'demo', last_name: 'user', email: 'demouser@gmail.com', password: '123456')
    
    testStory1 = Story.create!(title:'Dale Knows Joseph Isnt His Son And Intentionally Plays The Fool',
        
        body: 'While Dale might not be the sharpest tool he caught on immediately to what was going on. 
        The man is beyond paranoid to the point where he thinks the government and aliens are keeping tabs on him
        So if Dale knows this, why doesnt he do anything about it? Because he has a prefect life and doesnt want to 
        jepordize it. He is a great father and loves Joseph dearly. His wife pays ,majority of hte bills
         He has a spiritual hallucination where he was lying in bed with his wife 
         but she had the head of a mantis and decapitated him representing revelation. 
         Honestly I think he knew right from beginning.',
        
         author_id: demoUser.id, 
         
         publish_date: Date.new)
     
         testStory2 = Story.create!(title:'Peggy Suffered A Serious Brain Injury, Giving Her Narcissistic Personality Disorder',
             
            body: 'Sometimes, a new perspective comes along that completely changes how you view a show
             Basicallt they suggeast that when Peggy suffered a near fata skydiving accident in the Season 3
             finale, she acutally suffered permenant brain damage. From the start of Season 4 on, 
             Peggy is decidedly more narcissistic and dismissive of others. Her rudimentary 
             Spanish language skills also seem to deteriorate. Therefore its apparent that 
             her accident radically altered her perosnality.', 
            
             author_id: demoUser.id, 
             
             publish_date: Date.new)

    testStory3 = Story.create!(title:'Boomhauer Is An Undercover Spy Keeping Tabs On Dale', 
        
        body: "In the last episode of the series, the one where Bobby joins the college meat-inspecting team, 
        it's revealed that Boomhauer is, in fact, a Texas Ranger. At no other point in the series, is any mention 
        made of this. It seems rather odd, as Hank, Dale, and Bill will often talk about their work with each other, 
        and yet no one seems interested in Boomhauer's law-enforcement career, nor, do they ever mention him having a job at all. 
        Until the final reveal, it seemed like Boomhauer was free all hours of the day to chase women and sunbathe. 
        Why would Boomhauer's closest friends not ever question or discuss his job? especially considering the numerous 
        times the characters have broken the law, such as stealing a tank from the Army base? It's simple; they have no idea he's a 
        Texas Ranger. And they have no idea, because he's undercover.",
         
        author_id: demoUser.id,
        
        publish_date: Date.new)
    
        testStory4 = Story.create!(title:'Peggy Suffered A Serious Brain Injury, Giving Her Narcissistic Personality Disorder',
        
        body: 'Sometimes, a new perspective comes along that completely changes how you view a show
             Basicallt they suggeast that when Peggy suffered a near fata skydiving accident in the Season 3
             finale, she acutally suffered permenant brain damage. From the start of Season 4 on, 
             Peggy is decidedly more narcissistic and dismissive of others. Her rudimentary 
             Spanish language skills also seem to deteriorate. Therefore its apparent that 
             her accident radically altered her perosnality.',
         
        author_id: demoUser.id,
        
        publish_date: Date.new)

        
        testStory5 = Story.create!(title:'Dale Knows Joseph Isnt His Son And Intentionally Plays The Fool',
        
        body: 'While Dale might not be the sharpest tool he caught on immediately to what was going on. 
        The man is beyond paranoid to the point where he thinks the government and aliens are keeping tabs on him
        So if Dale knows this, why doesnt he do anything about it? Because he has a prefect life and doesnt want to 
        jepordize it. He is a great father and loves Joseph dearly. His wife pays ,majority of hte bills
         He has a spiritual hallucination where he was lying in bed with his wife 
         but she had the head of a mantis and decapitated him representing revelation. 
         Honestly I think he knew right from beginning.',
        
         author_id: demoUser.id, 
         
         publish_date: Date.new)

        testStory6 = Story.create!(title:'Peggy Suffered A Serious Brain Injury, Giving Her Narcissistic Personality Disorder',
        
        body: 'Sometimes, a new perspective comes along that completely changes how you view a show
             Basicallt they suggeast that when Peggy suffered a near fata skydiving accident in the Season 3
             finale, she acutally suffered permenant brain damage. From the start of Season 4 on, 
             Peggy is decidedly more narcissistic and dismissive of others. Her rudimentary 
             Spanish language skills also seem to deteriorate. Therefore its apparent that 
             her accident radically altered her perosnality.',
         
        author_id: demoUser.id,
        
        publish_date: Date.new)

        testStory7 = Story.create!(title:'Dale Knows Joseph Isnt His Son And Intentionally Plays The Fool',
        
        body: 'While Dale might not be the sharpest tool he caught on immediately to what was going on. 
        The man is beyond paranoid to the point where he thinks the government and aliens are keeping tabs on him
        So if Dale knows this, why doesnt he do anything about it? Because he has a prefect life and doesnt want to 
        jepordize it. He is a great father and loves Joseph dearly. His wife pays ,majority of hte bills
         He has a spiritual hallucination where he was lying in bed with his wife 
         but she had the head of a mantis and decapitated him representing revelation. 
         Honestly I think he knew right from beginning.',
        
         author_id: demoUser.id, 
         
         publish_date: Date.new)

        testStory8 = Story.create!(title:'Boomhauer Is An Undercover Spy Keeping Tabs On Dale', 
        
        body: "In the last episode of the series, the one where Bobby joins the college meat-inspecting team, 
        it's revealed that Boomhauer is, in fact, a Texas Ranger. At no other point in the series, is any mention 
        made of this. It seems rather odd, as Hank, Dale, and Bill will often talk about their work with each other, 
        and yet no one seems interested in Boomhauer's law-enforcement career, nor, do they ever mention him having a job at all. 
        Until the final reveal, it seemed like Boomhauer was free all hours of the day to chase women and sunbathe. 
        Why would Boomhauer's closest friends not ever question or discuss his job? especially considering the numerous 
        times the characters have broken the law, such as stealing a tank from the Army base? It's simple; they have no idea he's a 
        Texas Ranger. And they have no idea, because he's undercover.",
         
        author_id: demoUser.id,
        
        publish_date: Date.new)

        testStory9 = Story.create!(title:'Peggy Suffered A Serious Brain Injury, Giving Her Narcissistic Personality Disorder',
        
        body: 'Sometimes, a new perspective comes along that completely changes how you view a show
             Basicallt they suggeast that when Peggy suffered a near fata skydiving accident in the Season 3
             finale, she acutally suffered permenant brain damage. From the start of Season 4 on, 
             Peggy is decidedly more narcissistic and dismissive of others. Her rudimentary 
             Spanish language skills also seem to deteriorate. Therefore its apparent that 
             her accident radically altered her perosnality.',
         
        author_id: demoUser.id,
        
        publish_date: Date.new)

        testStory10 = Story.create!(title:'Boomhauer Is An Undercover Spy Keeping Tabs On Dale', 
        
        body: "In the last episode of the series, the one where Bobby joins the college meat-inspecting team, 
        it's revealed that Boomhauer is, in fact, a Texas Ranger. At no other point in the series, is any mention 
        made of this. It seems rather odd, as Hank, Dale, and Bill will often talk about their work with each other, 
        and yet no one seems interested in Boomhauer's law-enforcement career, nor, do they ever mention him having a job at all. 
        Until the final reveal, it seemed like Boomhauer was free all hours of the day to chase women and sunbathe. 
        Why would Boomhauer's closest friends not ever question or discuss his job? especially considering the numerous 
        times the characters have broken the law, such as stealing a tank from the Army base? It's simple; they have no idea he's a 
        Texas Ranger. And they have no idea, because he's undercover.",
         
        author_id: demoUser.id,
        
        publish_date: Date.new)

        testStory11 = Story.create!(title:'Boomhauer Is An Undercover Spy Keeping Tabs On Dale', 
        
        body: "In the last episode of the series, the one where Bobby joins the college meat-inspecting team, 
        it's revealed that Boomhauer is, in fact, a Texas Ranger. At no other point in the series, is any mention 
        made of this. It seems rather odd, as Hank, Dale, and Bill will often talk about their work with each other, 
        and yet no one seems interested in Boomhauer's law-enforcement career, nor, do they ever mention him having a job at all. 
        Until the final reveal, it seemed like Boomhauer was free all hours of the day to chase women and sunbathe. 
        Why would Boomhauer's closest friends not ever question or discuss his job? especially considering the numerous 
        times the characters have broken the law, such as stealing a tank from the Army base? It's simple; they have no idea he's a 
        Texas Ranger. And they have no idea, because he's undercover.",
         
        author_id: demoUser.id,
        
        publish_date: Date.new)

        testStory12 = Story.create!(title:'Boomhauer Is An Undercover Spy Keeping Tabs On Dale', 
        
        body: "In the last episode of the series, the one where Bobby joins the college meat-inspecting team, 
        it's revealed that Boomhauer is, in fact, a Texas Ranger. At no other point in the series, is any mention 
        made of this. It seems rather odd, as Hank, Dale, and Bill will often talk about their work with each other, 
        and yet no one seems interested in Boomhauer's law-enforcement career, nor, do they ever mention him having a job at all. 
        Until the final reveal, it seemed like Boomhauer was free all hours of the day to chase women and sunbathe. 
        Why would Boomhauer's closest friends not ever question or discuss his job? especially considering the numerous 
        times the characters have broken the law, such as stealing a tank from the Army base? It's simple; they have no idea he's a 
        Texas Ranger. And they have no idea, because he's undercover.",
         
        author_id: demoUser.id,
        
        publish_date: Date.new)
    
end


