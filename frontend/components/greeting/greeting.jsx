import React from 'react';
import { Link } from 'react-router-dom';
import {openModal} from '../../actions/modal_actions'



const Greeting = ({ currentUser, logout, openModal }) => {
    const sessionLinks = () => (
        <nav className="login-signup">
           <div className ="Title">
                Medium Well
           </div>
            <button className="login-b" onClick={() => openModal('login')}>Sign in</button>
            &nbsp;&nbsp;
            <button className="sign-in-b" onClick={() => openModal('signup')}>Get started!</button>
            &nbsp;&nbsp;
        </nav>
    );
    const personalGreeting = () => (
        <hgroup className="header-group">
            <h2 className="header-name">Hi, {currentUser.email} !</h2>
            <button className="header-button" onClick={logout}>Log Out</button>
        </hgroup>
    );

    return currentUser ? personalGreeting() : sessionLinks();
};


export default Greeting;
