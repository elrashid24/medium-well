import { combineReducers } from 'redux';
import usersReducer from './users_reducer';
import storiesReducer from './stories_reducer';

const entitiesReducer = combineReducers({
    users: usersReducer,
    stories: storiesReducer
});

export default entitiesReducer;