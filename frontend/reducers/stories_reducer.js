import {RECEIVE_ALL_STORIES, RECEIVE_STORY, REMOVE_STORY} from '../util/story_actions';

const storiesReducer = (oldState = {}, action) => {
    let newState; 
    Object.freeze(oldState); 
    switch (action.type) {
        case RECEIVE_ALL_STORIES:
            // debugger 
            return action.stories;
        case RECEIVE_STORY:
            return Object.assign( {}, oldState, {[action.story.id]: action.story} )
        case REMOVE_STORY:
            newState = Object.assign({}, oldState);
            delete newState[action.storyId];
            return newState; 
        default:
           return oldState;
    }
}
export default storiesReducer; 