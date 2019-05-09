import React from 'react';
import {Link} from 'react-router-dom';

const StoryIndexItem = ({story}) => (
    <div className="story-item">
        <div className="story-text">
            <Link to={`/stories/${story.id}`}>
                <h1 className="story-title">{story.title}</h1>
                <h2 className="story-preview">{story.body}</h2>
            </Link>
        </div>
    </div>
);

export default StoryIndexItem;

