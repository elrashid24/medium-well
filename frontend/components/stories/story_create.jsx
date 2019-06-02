import React from "react";
import { Link, withRouter, Redirect } from "react-router-dom";
import { createStory } from "../../util/story_api_util";

class StoryCreate extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: "",
      body: "",
      error: null
    };
    this.handleOnChange = this.handleOnChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
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
    createStory(story).then(
      response => console.log("this worked!", response),
      err => this.setState({ error: err })
    );
  }

  render() {
    return (
      <div className="create">
        <form onSubmit={this.handleSubmit}>
          <input
            name="title"
            className="new-story-title"
            type="text"
            value={this.state.title}
            onChange={this.handleOnChange}
            placeholder="Title"
          />
          <br />
          <input
            name="body"
            type="text"
            className="new-story-body"
            value={this.state.body}
            onChange={this.handleOnChange}
            placeholder="Your Story Here."
          />
          <button type="submit">Publish</button>
        </form>
      </div>
    );
  }
}

export default withRouter(StoryCreate);
