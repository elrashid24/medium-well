import React from "react";
import CommentItem from "./comment_item";
class CommentShow extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    console.log(this.props.comment);
    const comments = this.props.comment.map(comment => {
      return <ul>comment.body</ul>;
    });
    <div>{comments}</div>;
  }
}

export default CommentShow;
