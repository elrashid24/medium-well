import React from "react";
import CommentItem from "./comment_item";

class StoryComment extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      body: "",
      error: null,
      res: ""
    };
    this.handleOnChange = this.handleOnChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleOnChange(e) {
    this.setState({
      [e.target.name]: e.target.value
    });
  }
  handleSubmit(e) {
    e.preventDefault();
    const comment = {
      body: this.state.body,
      story_id: this.props.storyId
    };
    this.props
      .createComment(comment)
      .then(
        res => {
          this.setState({ res: res });
        },
        () => {
          this.setState({ error: "You must be logged in to leave a comment." });
        }
      )
      .then(this.setState({ body: "" }));
  }

  render() {
    const comments = this.props.comments.reverse().map((comment, i) => {
      return (
        <CommentItem
          key={comment.id}
          comment={comment}
          deleteComment={this.props.deleteComment}
        />
      );
    });
    return (
      <div>
        <form onSubmit={this.handleSubmit}>
          <br />
          <textarea
            name="body"
            type="text"
            className="comment-body"
            value={this.state.body}
            onChange={this.handleOnChange}
            placeholder="Write a Response..."
          />
          <button type="submit" className="publish-button">
            Comment
          </button>

          <div className="comment-header">Comments:</div>

          {this.state.error && (
            <span style={{ color: "red" }}>{this.state.error}</span>
          )}
        </form>
        <br />
        <div />
        <br />
        <div />
        {comments}
      </div>
    );
  }
}

export default StoryComment;
