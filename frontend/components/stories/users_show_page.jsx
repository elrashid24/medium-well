import React from "react";
import { Link } from "react-router-dom";

class UserShow extends React.Component {
  render() {
    return (
      <div>
        <h1>My Stories</h1>
        <ul>
          {this.props.stories.map(story => (
            <Link key={story.id} to={`/story/${story.id}`}>
              <li>{story.title}</li>
            </Link>
          ))}
        </ul>
      </div>
    );
  }
}

export default UserShow;
