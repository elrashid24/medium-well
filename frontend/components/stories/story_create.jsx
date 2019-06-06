import React from "react";
import { createStory } from "../../util/story_api_util";
import { connect } from "react-redux";
import { receiveStory } from "../../util/story_actions";

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
    const { receiveStory, history } = this.props;
    const story = {
      title: this.state.title,
      body: this.state.body
    };

    createStory(story).then(
      data => {
        history.push(`/story/${data.id}`);
      },
      () => {
        this.setState({ error: "Oops! Something went wrong." });
      }
    );
  }

  render() {
    console.log(this.state);
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
          <br />
          {this.state.error && (
            <span style={{ color: "red" }}>{this.state.error}</span>
          )}
        </form>
      </div>
    );
  }
}

const mapDispatchToProps = dispatch => ({
  receiveStory: id => dispatch(receiveStory(id))
});

export default connect(
  null,
  mapDispatchToProps
)(StoryCreate);
