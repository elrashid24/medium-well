import React from "react";
import TopFeed from "./top_feed";
import PopularStories from "./popular_stories";
import SuggestedStories from "./suggested_stories";

class StoryIndex extends React.Component {
  render() {
    const { stories } = this.props;
    if (stories.length === 0) return null;
    return (
      <div className="home-container">
        <TopFeed stories={stories.slice(0, 5)} />;
        <div className="bottom-container">
          <PopularStories stories={stories.slice(5)} />;
          {/* <SuggestedStories stories={stories.slice(8)} />; */}
        </div>
      </div>
    );
  }
}
export default StoryIndex;
