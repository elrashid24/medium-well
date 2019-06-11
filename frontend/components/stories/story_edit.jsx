import React from "react";
import { updateStory, fetchStory } from "../../util/story_api_util";
import { receiveStory } from "../../util/story_actions";
import { connect } from "react-redux";
class StoryEdit extends React.Component {
  constructor(props) {
    super(props);
    this.state = { title: "", body: "" };
    this.handleOnChange = this.handleOnChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }
  componentDidMount() {
    const storyId = this.props.match.params.storyId;

    return fetchStory(storyId).then(story => this.setState(story));
  }
  handleOnChange(e) {
    this.setState({
      [e.target.name]: e.target.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const story = this.state;
    updateStory(story).then(
      data => {
        this.props.history.push(`/story/${data.id}`);
      },
      () => {
        this.setState({ error: "Title and Body can't be blank." });
      }
    );
  }
  render() {
    console.log(this.state);

    return (
      <div className="create-container">
        <form onSubmit={this.handleSubmit}>
          <input
            name="title"
            type="text"
            className="create-story-title"
            type="text"
            value={this.state.title}
            onChange={this.handleOnChange}
          />
          <br />
          <textarea
            name="body"
            type="text"
            className="create-story-body"
            value={this.state.body}
            onChange={this.handleOnChange}
          />
          <button type="submit" className="publish-button">
            Update
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

const mapDispatchToProps = dispatch => ({
  updateStory: story => dispatch(receiveStory(story)),
  fetchStory: id => dispatch(fetchStory(id))
});
export default connect(
  null,
  mapDispatchToProps
)(StoryEdit);
