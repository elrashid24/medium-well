 import React from 'react';
import TopFeed from './top_feed';
import PopularStories from './popular_stories';
import SuggestedStories from './suggested_stories';

class StoryIndex extends React.Component {

    componentDidMount(){
        return this.props.fetchStories(); 
    }

    render() {
        if (this.props.stories.length === 0) return null;
        const stories = this.props.stories; 
        let topSection = <TopFeed stories= {stories.slice(0,3)} />
        let popularSection = <PopularStories stories ={stories.slice(3,8)}/>
        let suggestedStories = <SuggestedStories stories={stories.slice(8)}/> 
        return(
           <div className='home' >
               <div>
                    {topSection}
               </div>
               <div className='bottom-container'>
                    {suggestedStories}
                   {popularSection}
                </div>
           </div>
        )

    }
}
export default StoryIndex 



