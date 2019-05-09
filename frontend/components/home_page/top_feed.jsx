import React from 'react';
import { Link } from 'react-router-dom';

const TopFeed = ({stories}) => {
    return (
        <div className ='top-feed-container'>
            <div className ='top-left'>
                <h1 className='left-top-feed-title'>{stories[0].title}</h1>
                <h2 className='left-top-feed-preview'>{stories[0].body.slice(0, 300)}...</h2>
            </div>
            <div className ='top-middle'>
                <h1 className='middle-top-feed-title'>{stories[1].title}</h1>
                <h2 className='middle-top-feed-preview'>{stories[1].body.slice(0, 300)}...</h2>
            </div>
            <div className ='top-right'>
                <h1 className='right-top-feed-title'>{stories[2].title}</h1>
                <h2 className='right-top-feed-preview'>{stories[2].body.slice(0, 300)}...</h2>
            </div>
        </div>
    )
}

export default TopFeed; 

//ask ryan how to move this shit to the right of hte apge 