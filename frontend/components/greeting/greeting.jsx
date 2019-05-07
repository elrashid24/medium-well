import React from 'react';
import { Link } from 'react-router-dom';
import {openModal} from '../../actions/modal_actions'



const Greeting = ({ currentUser, logout, openModal }) => {
    const sessionLinks = () => (
        <nav className="nav-buttons">
            {/* <div className='header-link'>
                <Link to="/" >Medium Well</Link>
            </div> */}
            <button className="login-b" onClick={() => openModal('login')}>Sign in</button>
            &nbsp;&nbsp;
            <button className="signup-b" onClick={() => openModal('signup')}>Get started!</button>
            &nbsp;&nbsp;
        </nav>
    );
    const personalGreeting = () => (
            <nav className='nav-buttons'>
                <button className="logout-button" onClick={logout}>Log Out</button>
            </nav>
    );

    return currentUser ? personalGreeting() : sessionLinks();
};


export default Greeting;


//adds logout button within nav bar 