import React from "react";
import { Link } from "react-router-dom";
import { DEFAULT_IMAGE } from "../../constants";
import { receiveStory } from "../../util/story_actions";

class StoryShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      claps: Math.floor(Math.random() * 900 + 800),
      body: "",
      error: null
    };
    // this.handleOnClick = this.handleOnClick.bind(this);
    this.IncrementItem = this.IncrementItem.bind(this);
    this.handleOnChange = this.handleOnChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    this.props.fetchStory(this.props.match.params.id);
  }

  IncrementItem() {
    return this.setState({ claps: this.state.claps + 1 });
  }

  handleOnChange(e) {
    this.setState({
      [e.target.name]: e.target.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();

    const story = {
      title: this.state.title,
      body: this.state.body
    };
    const id = props.match.params.id;

    this.props.history.push(`/story/${id}`);
  }
  render() {
    console.log(this.state);
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
        <form onSubmit={this.handleSubmit}>
          <br />
          <textarea
            name="body"
            type="text"
            className="comment-body"
            value={this.state.body}
            onChange={this.handleOnChange}
            placeholder="Write a Response..."
          />
          <button type="submit" className="publish-button">
            Publish
          </button>
          <br />
          {this.state.error && (
            <span style={{ color: "red" }}>{this.state.error}</span>
          )}
        </form>
      </div>
    );
  }
}

export default StoryShow;
