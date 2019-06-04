import React from "react";
import { Link } from "react-router-dom";

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
      <div className="popular-story">
        <div className="popular-body">
          <span className="popular-title">{story.title}</span>
          <p className="popular-preview">{story.body.slice(0, 120)}...</p>
          <span className="popular-author">Author: Stephen A. Smith</span>
        </div>
        <div className="popular-preview">
          {story.photoUrl && (
            <img className="popular-pic" src={story.photoUrl} />
          )}
        </div>
      </div>
    </Link>
  );
};
export default PopularStories;
