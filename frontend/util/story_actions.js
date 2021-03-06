import * as StoryApiUtil from "./story_api_util";

export const RECEIVE_ALL_STORIES = "RECEIVE_ALL_STORIES";
export const RECEIVE_STORY = "RECEIVE_STORY";
export const REMOVE_STORY = "REMOVE_STORY";

export const receiveAllStories = stories => ({
  type: RECEIVE_ALL_STORIES,
  stories: stories
});

export const receiveStory = story => {
  // debugger
  return {
    story: story,
    type: RECEIVE_STORY
  };
};

export const removeStory = id => ({
  type: REMOVE_STORY,
  storyId: id
});

export const fetchStories = () => dispatch =>
  StoryApiUtil.fetchStories().then(stories => {
    // debugger;
    return dispatch(receiveAllStories(stories));
  });

export const fetchStory = id => dispatch =>
  StoryApiUtil.fetchStory(id).then(story => dispatch(receiveStory(story)));
