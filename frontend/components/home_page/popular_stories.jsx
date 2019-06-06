import React from "react";
import { Link } from "react-router-dom";
import { DEFAULT_IMAGE } from "../../constants";

const PopularStories = ({ stories }) => {
  return (
    <div className="popular-stories-container">
      {stories.map(story => (
        <PopularStoryItem key={story.id} story={story} />
      ))}
    </div>
  );
};

const PopularStoryItem = ({ story }) => {
  return (
    <Link to={`/story/${story.id}`}>
      <div className="bottom-left-story">
        <span className="bottom-left-title">{story.title}</span>
        <p className="bottom-left-preview">{story.body.slice(0, 120)}...</p>
        <span className="bottom-left-author">Author: Stephen A. Smith</span>
      </div>
      <img className="bottom-left-pic" src={story.photoUrl || DEFAULT_IMAGE} />
    </Link>
  );
};
export default PopularStories;
