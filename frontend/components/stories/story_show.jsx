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
        if (!story) return null;
        return (
            <div>
                <div className ='show-title'>
                    {story.title}
                </div>
                
                <div className ='show-body'>
                    {story.body}
                </div>
                
                <div className ='show-author'>
                    {story.id}
                </div>
            </div>
        )
    }
}

export default StoryShow; 