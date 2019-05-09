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
import StoryIndexContainer from './home_page/story_index_container';
import StoryShowContainer from './stories/story_show_container';

const App = () => (
    <div>
        <div className='navBar-l1'>
            <nav className='nav'>
                <Link to ='/' className='logo'><h1>Medium Well</h1></Link>
            </nav>
        </div>
        <Modal />
        <GreetingContainer/>
        <Switch>
            <Route exact path = '/story/:id' component = {StoryShowContainer}/>
            <Route path = '/' component = {StoryIndexContainer}/>
        </Switch>
    </div>
);

export default App;


