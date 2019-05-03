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

const App = () => (
    <div>
       
        
        <GreetingContainer/>
        <Switch>
            <AuthRoute exact path="/login" component={LogInFormContainer} />
            <AuthRoute exact path="/signup" component={SignUpFormContainer} />
            {/* <Route path='/' component={GreetingContainer}/> */}
        </Switch>
        
    </div>
);

export default App;