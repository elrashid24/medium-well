import {
  RECEIVE_COMMENTS,
  RECEIVE_COMMENT,
  REMOVE_COMMENT
} from "../util/comment_actions";

const commentsReducer = (oldState = {}, action) => {
  let newState;
  Object.freeze(oldState);
  switch (action.type) {
    case RECEIVE_COMMENTS:
      return action.comments;
    case RECEIVE_COMMENT:
      return Object.assign({}, oldState, {
        [action.comment.id]: action.comment
      });
    case REMOVE_COMMENT:
      let newState = Object.assign({}, oldState);
      delete newState[action.commentId];
      return newState;
    default:
      return oldState;
  }
};
export default commentsReducer;
