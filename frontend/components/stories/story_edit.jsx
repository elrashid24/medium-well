import React from "react";
import { updateStory, fetchStory } from "../../util/story_api_util";
import { receiveStory } from "../../util/story_actions";
import { connect } from "react-redux";
class StoryEdit extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
    this.handleOnChange = this.handleOnChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }
  componentDidMount() {
    const storyId = this.props.match.params.storyId;
    // console.log(storyId);
    // this.myStory = fetchStory(storyId).then(story => console.log(story));
    return fetchStory(storyId).then(story => this.setState({ story }));
  }
  handleOnChange(e) {
    this.setState({
      [e.target.name]: e.target.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const story = this.state;
    if (story.title !== "" && story.body !== "") {
      updateStory(story)
        .then(updatedStory => {
          receiveStory(updatedStory);
          return updatedStory;
        })
        .then(updatedStory => {
          history.push(`/story/${updatedStory.id}`);
        });
    }
  }
  render() {
    console.log(this.state);
    return (
      <div className="edit">
        <form>
          <input
            onSubmit={this.handleSubmit}
            type="title"
            className="new-story-title"
            type="text"
            value={this.state.title}
            onChange={this.handleOnChange}
          />
          <br />
          <input
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
