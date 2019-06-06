import React from 'react';
import {Link, withRouter} from 'react-router-dom';
import GreetingContainer from './greeting/greeting_container';
import Modal from '../modal/modal';
import {connect} from 'react-redux';

const Header = (props) => {
    const newStory = () => {
        if(!!props.currentUser){
            return (
                <div>
                    <Link to="/stories/new">Write a Story</Link>
                </div>
            )
        } else {
            return(
                <div>

                </div>
            )
        }
    }
    return(
        <div>
            {newStory()}
        </div>
    )
}; 

const mapStateToProps = ({session}) => {
    return {
        currentUser: session.currentUser
    }
}

export default connect(mapStateToProps)(Header)