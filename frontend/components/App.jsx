import React from "react";
import { Route, Switch } from "react-router-dom";
import { connect } from "react-redux";

// components
import AuthModal from "./AuthModal";
import { ProtectedRoute } from "../util/route_util";
import StoryIndexContainer from "./home_page/story_index_container";
import StoryShowContainer from "./stories/story_show_container";
import StoryCreate from "./stories/story_create";
import UserShowContainer from "./stories/user_stories_container";
import StoryEdit from "./stories/story_edit";
import { NavBar } from "./NavBar";

// actions
import { fetchStories } from "../util/story_actions";
import { openModal } from "../actions/modal_actions";
import { logout } from "../actions/session_actions";

class App extends React.Component {
  componentDidMount() {
    return this.props.fetchStories();
  }
  render() {
    const {
      isLoggedIn,
      openLoginModal,
      openSignupModal,
      onLogout
    } = this.props;
    return (
      <div className="app">
        <NavBar
          isLoggedIn={isLoggedIn}
          openLoginModal={openLoginModal}
          openSignupModal={openSignupModal}
          onLogout={onLogout}
        />

        <AuthModal />
        <Switch>
          <ProtectedRoute exact path="/stories/new" component={StoryCreate} />
          <ProtectedRoute
            exact
            path="/stories/mine"
            component={UserShowContainer}
          />
          <ProtectedRoute
            exact
            path="/stories/:storyId/edit"
            component={StoryEdit}
          />
          <Route exact path="/story/:id" component={StoryShowContainer} />
          <Route path="/" component={StoryIndexContainer} />
        </Switch>
      </div>
    );
  }
}

const mapStateToProps = state => ({
  isLoggedIn: state.session.id
});

const mapDispatchToProps = dispatch => ({
  fetchStories: () => dispatch(fetchStories()),
  openLoginModal: () => dispatch(openModal("login")),
  openSignupModal: () => dispatch(openModal("signup")),
  onLogout: () => dispatch(logout())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(App);
