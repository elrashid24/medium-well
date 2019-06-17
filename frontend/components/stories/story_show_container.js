import React from "react";
import { connect } from "react-redux";
import StoryShow from "./story_show";
import { fetchStory } from "../../util/story_actions";
import {
  fetchComment,
  createComment,
  deleteComment,
  fetchComments
} from "../../util/comment_actions";

const mapStateToProps = (state, ownProps) => {
  return {
    story: state.entities.stories[ownProps.match.params.id],
    currentUserId: state.session.id,

    comments: Object.values(state.entities.comments).filter(
      comment =>
        parseInt(comment.story_id) === parseInt(ownProps.match.params.id)
    )
  };
};

const mapDispatchToProps = dispatch => ({
  fetchStory: id => dispatch(fetchStory(id)),
  createComment: comment => dispatch(createComment(comment)),
  fetchComment: id => dispatch(fetchComment(id)),
  deleteComment: id => dispatch(deleteComment(id)),
  fetchComments: () => dispatch(fetchComments())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(StoryShow);
