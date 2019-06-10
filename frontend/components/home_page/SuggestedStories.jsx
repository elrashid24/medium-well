import React from "react";
import { Link } from "react-router-dom";

const SuggestedStories = ({ stories }) => {
  return (
    <div className="suggested-container">
      <div className="suggested-header">Popular on Medium Well</div>
      <hr className="suggested-divider" />
      {stories.map((story, index) => (
        <SuggestedStoryItem key={story.id} story={story} number={index + 1} />
      ))}
    </div>
  );
};

const SuggestedStoryItem = ({ story, number }) => {
  return (
    <Link to={`/story/${story.id}`}>
      <div className="suggested-story">
        <span className="suggested-number">0{number}</span>
        <div className="suggested-text">
          <span className="suggested-title">{story.title}</span>
          <p className="suggested-author">Elrashid Elzein</p>
        </div>
      </div>
    </Link>
  );
};
export default SuggestedStories;
