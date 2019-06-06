import React from "react";
import TopFeed from "./top_feed";
import PopularStories from "./popular_stories";
import SuggestedStories from "./suggested_stories";

class StoryIndex extends React.Component {
  render() {
    const { stories } = this.props;
    if (stories.length === 0) return null;
    return (
      <div className="main">
        <div className="home-container">
          <div className="top-container">
            <TopFeed stories={stories.slice(0, 5)} />;
          </div>
          <div className="bottom-container">
            <div className="bottom-left-container">
              <div className="bottom-left-items">
                <PopularStories stories={stories.slice(5)} />;
              </div>
            </div>
            <div className="bottom-right-container" />
            <SuggestedStories stories={stories.slice(8)} />;
          </div>
        </div>
      </div>
    );
  }
}
export default StoryIndex;
