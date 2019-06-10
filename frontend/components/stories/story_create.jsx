import React from "react";
import { createStory } from "../../util/story_api_util";
import { connect } from "react-redux";
import { receiveStory } from "../../util/story_actions";
import Unsplash from "unsplash-js";
import { UNSPLASH_ACCESS_KEY, UNSPLASH_SECRET } from "../../constants";

// const unsplash = create Unsplash({
//   applicationId: UNSPLASH_ACCESS_KEY,
//   secret: UNSPLASH_SECRET,
//   // TODO: For some reason we are not authorized to get images from unsplash.
//   headers: {
//     Authorization: UNSPLASH_ACCESS_KEY
//   }
// });

class StoryCreate extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: "",
      body: "",
      photoURL: null,
      error: null,
      likes: 0
    };
    this.handleOnChange = this.handleOnChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  // componentDidMount() {
  //   unsplash.photos
  //     .getRandomPhoto()
  //     .then(res => JSON.stringify(res))
  //     .then(json => {
  //       // receive the photoURL from the json
  //       // add photoURL to state
  //       // maybe add ability to refresh photo.
  //       // photoURL === null, then run this. or
  //     });
  // }

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
            className="create-story-title"
            type="text"
            value={this.state.title}
            onChange={this.handleOnChange}
            placeholder="Title"
          />
          <br />
          <textarea
            name="body"
            type="text"
            className="create-story-body"
            value={this.state.body}
            onChange={this.handleOnChange}
            placeholder="Tell your story..."
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

const mapDispatchToProps = dispatch => ({
  receiveStory: id => dispatch(receiveStory(id))
});

export default connect(
  null,
  mapDispatchToProps
)(StoryCreate);
