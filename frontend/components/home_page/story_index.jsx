import React from "react";
import TopFeed from "./top_feed";
import StoryList from "../StoryList";
import SuggestedStories from "./SuggestedStories";

class StoryIndex extends React.Component {
  render() {
    const { stories } = this.props;
    if (stories.length === 0) return null;
    return (
      <div className="main">
        <div className="home-container">
          <TopFeed stories={stories.slice(0, 5)} />
          <div />
          <div className="bottom-container">
            <StoryList stories={stories.slice(5)} />
            <SuggestedStories stories={stories.slice(-5)} />
          </div>
          <hr id="divider" />
        </div>
      </div>
    );
  }
}
export default StoryIndex;
