import { connect } from "react-redux";
import { createStory } from "../../util/story_actions";
import { logout } from "../../actions/session_actions";
import Greeting from "./greeting";
import { openModal } from "../../actions/modal_actions";
import { create } from "domain";

const mapStateToProps = ({ session, entities: { users } }) => {
  return {
    currentUser: users[session.id]
  };
};

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  openModal: modal => dispatch(openModal(modal)),
  createStory: story => dispatch(createStory(story))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Greeting);
