import React from "react";
import GreetingContainer from "./greeting/greeting_container";
import { Route, Switch, Link, HashRouter } from "react-router-dom";
import SignUpFormContainer from "./session_form/signup_form_container";
import LogInFormContainer from "./session_form/login_form_container";
import { AuthRoute, ProtectedRoute } from "../util/route_util";
import Modal from "../modal/modal";
import StoryIndexContainer from "./home_page/story_index_container";
import StoryShowContainer from "./stories/story_show_container";
import StoryCreate from "./stories/story_create";
import Header from "./header";
import UserShowContainer from "./stories/user_stories_container";
import { connect } from "react-redux";
import { fetchStories } from "../util/story_actions";
import StoryEdit from "./stories/story_edit";

class App extends React.Component {
  componentDidMount() {
    return this.props.fetchStories();
  }
  render() {
    return (
      <div>
        <div className="navBar-l1">
          <nav className="nav">
            <Link to="/" className="logo">
              <h1>Medium Well</h1>
            </Link>
          </nav>
        </div>
        {/* <Header/> */}
        <Modal />
        <GreetingContainer />
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
const mapDispatchToProps = dispatch => ({
  fetchStories: () => dispatch(fetchStories())
});
export default connect(
  null,
  mapDispatchToProps
)(App);
