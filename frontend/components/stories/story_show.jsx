import React from "react";
import { Link } from "react-router-dom";
import { DEFAULT_IMAGE } from "../../constants";
import { receiveStory } from "../../util/story_actions";
import { createComment } from "../../util/comment._api_util";
import StoryComment from "./story_comment";
import CommentIndex from "./comment_item";

class StoryShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      claps: Math.floor(Math.random() * 900 + 800),
      error: null,
      comments: this.props.comments
    };
    this.IncrementItem = this.IncrementItem.bind(this);
    this.handleOnChange = this.handleOnChange.bind(this);
  }

  componentDidMount() {
    this.props.fetchStory(this.props.match.params.id);
    this.props.fetchComments();
  }

  IncrementItem() {
    return this.setState({ claps: this.state.claps + 1 });
  }

  handleOnChange(e) {
    this.setState({
      [e.target.name]: e.target.value
    });
  }

  render() {
    const claps = this.state;
    let story = this.props.story;
    if (!story) return null;
    return (
      <div className="show-container">
        <div className="show-title">{story.title}</div>
        <div className="show-author"> Author: Elrashid Elzein</div>
        <div className="claps">
          <div> {this.state.claps} Claps</div>
          <button className="clap-button" onClick={this.IncrementItem}>
            Clap
          </button>
        </div>
        <div className="show-pic-container">
          <img className="show-pic" src={story.photoUrl || DEFAULT_IMAGE} />
        </div>
        <div className="show-body">{story.body}</div>
        <br />
        <div />
        <div>
          <StoryComment
            comments={this.props.comments}
            createComment={this.props.createComment}
            storyId={this.props.story.id}
          />
        </div>
        } />
        <br />
      </div>
    );
  }
}

export default StoryShow;
