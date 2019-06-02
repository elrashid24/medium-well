import * as StoryApiUtil from "./story_api_util";

export const RECEIVE_ALL_STORIES = "RECEIVE_ALL_STORIES";
export const RECEIVE_STORY = "RECEIVE_STORY";
export const REMOVE_STORY = "REMOVE_STORY";

const receiveAllStories = stories => ({
  type: RECEIVE_ALL_STORIES,
  stories: stories
});

const receiveStory = story => {
  // debugger
  return {
    story: story,
    type: RECEIVE_STORY
  };
};

const removeStory = story => ({
  type: REMOVE_STORY,
  storyId: story.id
});

export const fetchStories = () => dispatch =>
  StoryApiUtil.fetchStories().then(stories => {
    // debugger;
    return dispatch(receiveAllStories(stories));
  });

export const fetchStory = id => dispatch =>
  StoryApiUtil.fetchStory(id).then(story => dispatch(receiveStory(story)));
