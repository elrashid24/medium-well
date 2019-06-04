import React from "react";
import { connect } from "react-redux";
import StoryShow from "./story_show";
import { fetchStory } from "../../util/story_actions";

const mapStateToProps = (state, ownProps) => {
  return {
    story: state.entities.stories[ownProps.match.params.id],
    currentUserId: state.session.id
  };
};

const mapDispatchToProps = dispatch => ({
  fetchStory: id => dispatch(fetchStory(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(StoryShow);
