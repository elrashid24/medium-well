import {connect} from "react-redux"; 
import {createStory} from "../../util/story_actions"; 
import StoryCreate from "./story_create";
import { create } from "domain";


const mapStateToProps = (state) => ({
   story: {
      title: "",
      body: "",
      publish_date: ""
   }, 
   currentUser: state.session.currentUser 
})

 const mapDispatchToProps = dispatch => ({
    createStory: (story) => dispatch(createStory(story))
})

export default connect(mapStateToProps, mapDispatchToProps)(StoryCreate);