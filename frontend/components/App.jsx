import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import {
    Route,
    Switch,
    Link,
    HashRouter
} from 'react-router-dom';
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import Modal from '../modal/modal';

const App = () => (
    <div>
        <Modal />
        <Link to ="/" className="header-link">
        home</Link>
        <GreetingContainer/>
        
    </div>
);

export default App;