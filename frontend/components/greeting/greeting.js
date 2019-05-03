import React from 'react';
import { Link } from 'react-router-dom';



const Greeting = ({ currentUser, logout }) => {
    const sessionLinks = () => (
        <nav className="login-signup">
           <div className ="Title">
                <h1>Medium Well </h1> 
           </div>
            
            <div className="buttons">
                <Link to="/login">Login!</Link>
                &nbsp;or&nbsp;
                <Link to="/signup">Sign up!</Link>
            </div>
          
        </nav>
    );
    const personalGreeting = () => (
        <hgroup className="header-group">
            <h2 className="header-name">Hi, {currentUser.first_name}!</h2>
            <button className="header-button" onClick={logout}>Log Out</button>
        </hgroup>
    );

    return currentUser ? personalGreeting() : sessionLinks();
};


export default Greeting;
