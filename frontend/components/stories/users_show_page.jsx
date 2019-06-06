import React from "react";
import { Link } from "react-router-dom";
import { deleteStory } from "../../util/story_api_util";
import { updateStory } from "../../util/story_api_util";
import { removeStory } from "../../util/story_actions";
import { receiveStory } from "../../util/story_actions";
import { connect } from "react-redux";

class UserShow extends React.Component {
  render() {
    return (
      <div>
        <h1>My Stories</h1>
        <ul>
          {this.props.stories.map(story => (
            <li key={story.id}>
              <Link to={`/story/${story.id}`}>
                <span>{story.title}</span>
              </Link>
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
