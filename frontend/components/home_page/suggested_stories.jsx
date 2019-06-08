import React from "react";
import { Link } from "react-router-dom";
import { DEFAULT_IMAGE } from "../../constants";

const SuggestedStories = ({ stories }) => {
  return (
    <div className="suggested-stories-container">
      {" "}
      <div className="suggested-header">Popular on Medium Well</div>
      {stories.map(story => (
        <SuggestedStoryItem key={story.id} story={story} />
      ))}
    </div>
  );
};

const SuggestedStoryItem = ({ story }) => {
  return (
    <Link to={`/story/${story.id}`}>
      <div className="bottom-right-story">
        <span className="bottom-right-title">{story.title}</span>
        <span className="bottom-right-author">Author: Stephen A. Smith</span>
      </div>
    </Link>
  );
};
export default SuggestedStories;
