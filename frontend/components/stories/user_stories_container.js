import { connect } from "react-redux";
import UserShow from "./users_show_page";

const mapStateToProps = state => {
  const userStories = Object.values(state.entities.stories).filter(
    story => story.author_id === state.session.id
  );

  return { stories: userStories };
};

export default connect(mapStateToProps)(UserShow);
