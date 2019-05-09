import StoryIndex from './story_index'
import { connect } from 'react-redux';
import { fetchStories } from '../../util/story_actions'


const mapStateToProps = state => ({
    stories: Object.values(state.entities.stories)
})

const mapDispatchToProps = dispatch => ({
    fetchStories: () => dispatch(fetchStories())
}) 

export default connect(mapStateToProps, mapDispatchToProps)(StoryIndex);