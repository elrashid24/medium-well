import React from "react";

import ReactQuill from "react-quill";

class CommentItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      comments: null
    };
  }

  render() {
    return (
      <div>
        <div>You Said:</div>
        <br />
        <div>{this.props.comment.body}</div>
      </div>
    );
  }
}

export default CommentItem;
