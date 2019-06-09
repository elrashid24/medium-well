import React from "react";
import { Link } from "react-router-dom";
import { DEFAULT_IMAGE } from "../constants";

const StoryList = ({ stories }) => {
  return (
    <div className="story-list-container">
      {stories.map(story => (
        <StoryItem key={story.id} story={story} />
      ))}
    </div>
  );
};

export const StoryItem = ({ story }) => {
  return (
    <Link to={`/story/${story.id}`}>
      <div className="story-item">
        <div className="story-item-text">
          <span className="story-item-title">{story.title}</span>
          <p className="story-item-preview">{story.body.slice(0, 120)}...</p>
          <span className="story-item-author">Author: Stephen A. Smith</span>
        </div>
        <img className="story-item-pic" src={story.photoUrl || DEFAULT_IMAGE} />
      </div>
    </Link>
  );
};
export default StoryList;
