import React from "react";

class CommentItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      comments: null
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const id = this.props.comment.id;
    this.props.deleteComment(id);
  }

  render() {
    // console.log(this.props.comment);
    console.log(this.props.deleteComment);
    return (
      <div className="comment-container">
        <form onSubmit={this.handleSubmit}>
          <ul className="comment">
            <div className="comment-author">You Said:</div>
            <div className="comment-body">{this.props.comment.body}</div>
            <button className="delete-comment-button">Delete</button>
          </ul>
        </form>
      </div>
    );
  }
}

export default CommentItem;
