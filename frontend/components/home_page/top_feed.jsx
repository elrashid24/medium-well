import React from 'react';
import { Link } from 'react-router-dom';

const TopFeed = ({stories}) => {
    return (
        <div className ='top-feed-container'>
            <div className ='top-left'>
                <h1>
                    <Link to={`/story/${stories[0].id}`} className='left-top-feed-title'>{stories[0].title}</Link>
                </h1>
                <h2 >
                    <Link to={`/story/${stories[0].id}`} className='left-top-feed-preview'>{stories[0].body.slice(0, 300)}...</Link>
                </h2>
                <img className='dale-redcorn' src={window.images.dale_redcorn}/>
            </div>
            <div className ='top-middle'>
                <h1>
                    <Link to={`/story/${stories[1].id}`} className='middle-top-feed-title'>{stories[1].title}</Link>
                </h1>
                <h2>
                    <Link to={`/story/${stories[1].id}`} className='middle-top-feed-preview'>{stories[1].body.slice(0, 300)}...</Link>
                </h2>
            </div>
            <div className ='top-right'>
                <h1 >
                    <Link to={`/story/${stories[2].id}`} className='right-top-feed-title'>{stories[2].title}</Link>
                </h1>
                <h2>
                    <Link to={`/story/${stories[2].id}`} className='right-top-feed-preview'>{stories[2].body.slice(0, 300)}...</Link>
                </h2>
            </div>
        </div>
    )
}

export default TopFeed; 

//ask ryan how to move this shit to the right of the page


