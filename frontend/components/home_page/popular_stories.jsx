import React from 'react';
import {Link} from 'react-router-dom';

const PopularStories = ({stories}) => {
    return (
        <div className='popular-stories-container'>
        <h1 className='popular-header'>Popular this Week</h1>
            <h1>
                <Link to={`/story/${stories[0].id}`} className='popular-title'>{stories[0].title}</Link>
            </h1>
            
            <h2>
                <Link to={`/story/${stories[0].id}`} className='popular-author'>Tony Brothers</Link>
            </h2>
            
            <h1>
                <Link to={`/story/${stories[1].id}`} className='popular-title'>{stories[1].title}</Link>
            </h1>
            
            <h2>
                <Link to={`/story/${stories[1].id}`} className='popular-author'>Nicky Lewis</Link>
            </h2>
            
            <h1>
                <Link to={`/story/${stories[2].id}`} className='popular-title'>{stories[2].title}</Link>
            </h1>
            
            <h2>
                <Link to={`/story/${stories[2].id}`} className='popular-author'>Jim Bob Cooter</Link>
            </h2>
            
            <h1>
                <Link to={`/story/${stories[3].id}`} className='popular-title'>{stories[3].title}</Link>
            </h1>
            
            <h2>
                <Link to={`/story/${stories[3].id}`} className='popular-author'>Ayeesha Curry</Link>
            </h2>
            
            <h1>
                <Link to={`/story/${stories[4].id}`} className='popular-title'>{stories[4].title}</Link>
            </h1>
            
            <h2>
                <Link to={`/story/${stories[4].id}`} className='popular-author'>Ricky Suggs</Link>
            </h2>
        </div>
    )
}

export default PopularStories;


