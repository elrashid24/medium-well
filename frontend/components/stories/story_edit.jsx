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
    updateStory(story)
      .then(updatedStory => {
        receiveStory(updatedStory);

        return updatedStory;
      })
      .then(updatedStory => {
        this.props.history.push(`/story/${updatedStory.id}`);
      });
  }
  render() {
    console.log(this.state);

    return (
      <div className="edit">
        <form onSubmit={this.handleSubmit}>
          <input
            name="title"
            type="text"
            className="new-story-title"
            type="text"
            value={this.state.title}
            onChange={this.handleOnChange}
          />
          <br />
          <input
            name="body"
            type="text"
            className="edit-story-body"
            value={this.state.body}
            onChange={this.handleOnChange}
          />
          <button type="submit">Update</button>
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
