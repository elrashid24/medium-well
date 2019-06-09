import React from "react";
import { Link } from "react-router-dom";
import { DEFAULT_IMAGE } from "../../constants";

class StoryShow extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchStory(this.props.match.params.id);
  }

  render() {
    let story = this.props.story;
    if (!story) return null;
    return (
      <div className="show-container">
        <div className="show-title">{story.title}</div>
        <div className="show-author">Elrashid Elzein</div>
        <div className="show-pic-container">
          <img className="show-pic" src={story.photoUrl || DEFAULT_IMAGE} />
        </div>
        <div className="show-body">{story.body}</div>
      </div>
    );
  }
}

export default StoryShow;
