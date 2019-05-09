import React from 'react';
import {connect} from 'react-redux';
import StoryShow from './story_show'
import fetchStory from '../../util/story_actions';

const mapStateToProps = (state, ownProps) ({
    story: state.entities.stories[ownProps.match.params.id],
    currentUser: state.session.currentUser
})

const mapDispatchToProps = dispatch => ({
    getStory: (id) => dispatch(fetchStory(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(StoryShow);



