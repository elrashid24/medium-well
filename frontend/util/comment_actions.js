import * as APIUtil from "../util/comment._api_util";

export const RECEIVE_COMMENTS = "RECEIVE_COMMENTS";
export const RECEIVE_COMMENT = "RECEIVE_COMMENT";
export const REMOVE_COMMENT = "REMOVE_COMMENT";

const receiveComments = comments => {
  return {
    type: RECEIVE_COMMENTS,
    comments
  };
};

const receiveComment = comment => {
  return {
    type: RECEIVE_COMMENT,
    comment
  };
};

const removeComment = commentId => {
  return {
    type: REMOVE_COMMENT,
    commentId
  };
};

export const fetchComments = () => dispatch => {
  return APIUtil.fetchComments().then(comments =>
    dispatch(receiveComments(comments))
  );
};

export const fetchComment = id => dispatch => {
  return APIUtil.fetchCommentForStory(id).then(comment =>
    dispatch(receiveComment(comment))
  );
};

export const createComment = comment => dispatch => {
  return APIUtil.createComment(comment).then(comment =>
    dispatch(receiveComment(comment))
  );
};

export const deleteComment = commentId => dispatch => {
  return APIUtil.deleteComment(commentId).then(comment =>
    dispatch(removeComment(commentId))
  );
};
