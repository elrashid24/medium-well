import React from 'react';
import {Link} from 'react-router-dom';

const PopularStories = ({stories}) => {
    return (
        <div className='popular-stories-container'>
        <h1 className='popular-header'>Popular this Week</h1>
            <h1>
                <Link to={`/story/${stories[0].id}`} className='popular-title'>{stories[0].title}</Link>
            </h1>
            <h2 >
                <Link to={`/story/${stories[0].id}`} className='left-top-feed-preview'>{stories[0].body.slice(0, 300)}...</Link>
            </h2>
            <div className='show-pic-container'>

                <Link to={`/story/${stories[2].id}`} className='left-top-feed-preview'>
                    <img className='top-right-pic' src={stories[0].photoUrl ? stories[0].photoUrl : ""} />
                </Link>
            </div>

            <h2>
                <Link to={`/story/${stories[0].id}`} className='popular-author'>Author: Stephen A. Smith</Link>
            </h2>
            
            <h1>
                <Link to={`/story/${stories[1].id}`} className='popular-title'>{stories[1].title}</Link>
            </h1>
            <h2 >
                <Link to={`/story/${stories[1].id}`} className='left-top-feed-preview'>{stories[1].body.slice(0, 300)}...</Link>
            </h2>
            <div className='show-pic-container'>

                <Link to={`/story/${stories[1].id}`} className='left-top-feed-preview'>
                    <img className='top-right-pic' src={stories[1].photoUrl ? stories[1].photoUrl : ""} />
                </Link>
            </div>
            
            <h2>
                <Link to={`/story/${stories[1].id}`} className='popular-author'>Author: Skip Bayless</Link>
            </h2>
            
            <h1>
                <Link to={`/story/${stories[2].id}`} className='popular-title'>{stories[2].title}</Link>
            </h1>
            <h2 >
                <Link to={`/story/${stories[2].id}`} className='left-top-feed-preview'>{stories[2].body.slice(0, 300)}...</Link>
            </h2>
            
            <div className='show-pic-container'>

                <Link to={`/story/${stories[2].id}`} className='left-top-feed-preview'>
                    <img className='top-right-pic' src={stories[2].photoUrl ? stories[2].photoUrl : ""} />
                </Link>
            </div>
            <h2>
                <Link to={`/story/${stories[2].id}`} className='popular-author'>Author: Jim Bob Cooter</Link>
            </h2>
            
            <h1>
                <Link to={`/story/${stories[3].id}`} className='popular-title'>{stories[3].title}</Link>
            </h1>
            <h2 >
                <Link to={`/story/${stories[3].id}`} className='left-top-feed-preview'>{stories[3].body.slice(0, 300)}...</Link>
            </h2>
            <div className='show-pic-container'>

                <Link to={`/story/${stories[3].id}`} className='left-top-feed-preview'>
                    <img className='top-right-pic' src={stories[3].photoUrl ? stories[3].photoUrl : ""} />
                </Link>
            </div>
            
            <h2>
                <Link to={`/story/${stories[3].id}`} className='popular-author'>Author: Savannah James</Link>
            </h2>
            
            <h1>
                <Link to={`/story/${stories[4].id}`} className='popular-title'>{stories[4].title}</Link>
            </h1>
            <h2 >
                <Link to={`/story/${stories[4].id}`} className='left-top-feed-preview'>{stories[4].body.slice(0, 300)}...</Link>
            </h2>
            <div className='show-pic-container'>

                <Link to={`/story/${stories[4].id}`} className='left-top-feed-preview'>
                    <img className='top-right-pic' src={stories[4].photoUrl ? stories[4].photoUrl : ""} />
                </Link>
            </div>
            
            <h2>
                <Link to={`/story/${stories[4].id}`} className='popular-author'>Author: Mark Jackson</Link>
            </h2>
        </div>
    )
}

export default PopularStories;


