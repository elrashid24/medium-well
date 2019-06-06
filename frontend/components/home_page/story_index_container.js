import StoryIndex from "./story_index";
import { connect } from "react-redux";

const mapStateToProps = state => ({
  stories: Object.values(state.entities.stories)
});

export default connect(mapStateToProps)(StoryIndex);
