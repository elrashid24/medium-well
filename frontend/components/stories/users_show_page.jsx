import React from "react";
import { Link } from "react-router-dom";
import { deleteStory } from "../../util/story_api_util";
import { removeStory } from "../../util/story_actions";
import { receiveStory } from "../../util/story_actions";
import { connect } from "react-redux";
import { DEFAULT_IMAGE } from "../../constants";
import { PROFILE_PIC } from "../../constants";

class UserShow extends React.Component {
  render() {
    const { stories, removeStory, history } = this.props;

    return (
      <div className="user-show">
        <div className="user-story-list">
          <h1 className="title">Rusty Schackleford</h1>
          <div className="user-stats">
            <p>Member since March 11, 2019</p>
            <p>Stories: 1</p>
            <p>Followers: 3,571,489</p>
          </div>
          {/* <div className="profile-pic-container">
            <img src={PROFILE_PIC} className="top-middle-pic" />
          </div> */}
          <hr className="divider" />
          {stories.map(story => {
            return (
              <UserStoryItem
                story={story}
                key={story.id}
                onClickDelete={() =>
                  deleteStory(story.id).then(() => {
                    removeStory(story.id);
                  })
                }
                onClickEdit={() => {
                  history.push(`/stories/${story.id}/edit`);
                }}
                onClickNew={() => {
                  history.push(`/stories/new`);
                }}
              />
            );
          })}
        </div>
      </div>
    );
  }
}

const UserStoryItem = ({ story, onClickEdit, onClickDelete, onClickNew }) => {
  return (
    <div className="user-story-item">
      <div className="user-story-header">
        <div className="user-story-author">
          <div className="name">{story.author || "Rusty Schackleford"}</div>
        </div>
        <div className="user-story-btns">
          <button className="new-story-button" onClick={onClickNew}>
            New Story
          </button>
          <button className="edit-story-button" onClick={onClickEdit}>
            Edit Story
          </button>
          <button className="delete-story-button" onClick={onClickDelete}>
            Delete Story
          </button>
        </div>
      </div>
      <Link to={`/story/${story.id}`}>
        <div className="user-story-img-container">
          <img
            className="user-story-img"
            src={story.photoUrl || DEFAULT_IMAGE}
          />
        </div>
        <div className="user-story-text">
          <div className="user-story-title">{story.title}</div>
          <div className="user-story-preview">
            {story.body.slice(0, 110)}...
          </div>
        </div>
      </Link>
    </div>
  );
};

const mapDispatchToProps = dispatch => ({
  removeStory: id => dispatch(removeStory(id)),
  receiveStory: story => dispatch(receiveStory(story))
});
export default connect(
  null,
  mapDispatchToProps
)(UserShow);
