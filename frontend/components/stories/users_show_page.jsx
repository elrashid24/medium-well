import React from "react";
import { Link } from "react-router-dom";
import { deleteStory } from "../../util/story_api_util";
import { updateStory } from "../../util/story_api_util";
import { removeStory } from "../../util/story_actions";
import { receiveStory } from "../../util/story_actions";
import { connect } from "react-redux";
import { DEFAULT_IMAGE } from "../../constants";

class UserShow extends React.Component {
  render() {
    return (
      <div className="show-container">
        <h1 className="user-show-">My Stories</h1>
        <ul>
          {this.props.stories.map(story => (
            <li key={story.id}>
              <Link to={`/story/${story.id}`}>
                <span className="show-title">{story.title}</span>
                <Link to="/stories/new" className="new-story-button">
                  Write A story
                </Link>
              </Link>
              <div className="show-pic-container">
                <img
                  className="show-pic"
                  src={story.photoUrl || DEFAULT_IMAGE}
                />
              </div>
              <button
                onClick={() =>
                  deleteStory(story.id).then(() => {
                    this.props.removeStory(story.id);
                  })
                }
              >
                Delete Story
              </button>
              <button
                onClick={() => {
                  this.props.history.push(`/stories/${story.id}/edit`);
                }}
              >
                Edit Story
              </button>
            </li>
          ))}
        </ul>
      </div>
    );
  }
}

const mapDispatchToProps = dispatch => ({
  removeStory: id => dispatch(removeStory(id)),
  receiveStory: story => dispatch(receiveStory(story))
});
export default connect(
  null,
  mapDispatchToProps
)(UserShow);
