import React from 'react';
import {Link} from 'react-router-dom'; 

class StoryShow extends React.Component{
    
    constructor(props){
        super(props); 
    }
    
    
    componentDidMount(){
        this.props.fetchStory(this.props.match.params.id);
    }
    
    render(){
        let story = this.props.story; 
        console.log(story);
        if (!story) return null;
        return (
            
            <div className='show-container'>
                <h1 className='show-title'>{story.title}</h1>
                <div className ='show-author'>
                    Kevin Durant
                </div>
               <div className='show-pic-container'>
                    <img className='show-pic' src={story.photoUrl ? story.photoUrl : ""} />
               </div>
                <div className ='show-body'>
                    {story.body}
                </div>
            </div>
        )
    }
}

export default StoryShow; 