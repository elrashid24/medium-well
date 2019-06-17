import { combineReducers } from "redux";
import usersReducer from "./users_reducer";
import storiesReducer from "./stories_reducer";
import commentsReducer from "./comment_reducer";

const entitiesReducer = combineReducers({
  users: usersReducer,
  stories: storiesReducer,
  comments: commentsReducer
});

export default entitiesReducer;
