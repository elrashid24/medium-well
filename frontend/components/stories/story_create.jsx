import React from 'react';
import {Link, withRouter, Redirect} from 'react-router-dom';

class StoryCreate extends React.Component {
   
    constructor(props){
        super(props);
        // this.state = this.props.story; 
        this.state = this.props.story;
        this.update = this.update.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    update(field){
        return(e) => this.setState({
            [field] : e.target.value
        })
    }

    handleSubmit(e) {
        const story = this.state; 
        this.props.createStory({story})
    }



    handleSubmit(e) {
        this.props.createStory({story})

    }




    renderErros(errors){
        return (
            <div className ='story-errors'>
                {errors}
            </div>
        )
    }

    render(){
        <div 
        className ='create'>
            <input 
            className ='new-story-title'
            type="text" 
            value = {this.state.title}
            onChange ={this.update(title)}
            placeholder = "Title"
            />
            <br/>
            <input 
            type="text"
            className ='new-story-body'
            value = {this.state.body}
            onChange={this.update(body)}
            placeholder = 'Your Story Here.'
            />
        </div>
        } 
}

export default withRouter(StoryCreate); 