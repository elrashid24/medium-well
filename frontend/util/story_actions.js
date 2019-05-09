import * as StoryApiUtil from './story_api_util';

export const RECEIVE_ALL_STORIES = 'RECEIVE_ALL_STORIES';
export const RECEIVE_STORY = 'RECEIVE_STORY';
export const REMOVE_STORY = 'REMOVE_STORY';

const receiveAllStories = (stories) => ({
    type: RECEIVE_ALL_STORIES, 
    stories: stories 
})

const receiveStory = (story) => ({
    type: RECEIVE_STORY, 
    story: story
})

const removeStory = (story) => ({
    type: REMOVE_STORY, 
    storyId: story.id
})

export const fetchStories = () => (dispatch) => (
    StoryApiUtil.fetchStories().then(stories => {
        // debugger;
        return dispatch(receiveAllStories(stories));
    } 
))

export const fetchStory = id => dispatch => (
    StoryApiUtil.fetchStory(id).then(story => dispatch(receivePost(story)))
);

export const createStory = story => dispatch => (
    StoryApiUtil.createStory(story).then(story => dispatch(receiveStory(story)))
)

export const updateStory = story => dispatch => (
    StoryApiUtil.updateStory(story).then(story => dispatch(receiveStory(story)))
)

export const deleteStory = id => dispatch => (
    StoryApiUtil.deletetory(id).then(story => dispatch(removeStory(story)))
)

