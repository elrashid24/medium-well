import React from "react";
import { Link } from "react-router-dom";

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
        <h1 className="show-title">{story.title}</h1>
        <div className="show-author">{story.first_name}</div>
        <div className="show-pic-container">
          <img
            className="show-pic"
            src={story.photoUrl ? story.photoUrl : "../mark_henry.jpg"}
          />
        </div>
        <div className="show-body">{story.body}</div>
      </div>
    );
  }
}

export default StoryShow;
