import React from 'react';

const PopularStories = ({stories}) => {
    return (
        <div className='popular-stories-container'>
        <h1 className='popular-header'>Popular this Week</h1>
            <h1 className='popular-title'>{stories[0].title}</h1>
            <h2 className='popular-author'>Jake Brown</h2>
            <h1 className='popular-title'>{stories[1].title}</h1>
            <h2 className='popular-author'>Tom Roberts</h2>
            <h1 className='popular-title'>{stories[2].title}</h1>
            <h2 className='popular-author'>Anna Clay</h2>
            <h1 className='popular-title'>{stories[3].title}</h1>
            <h2 className='popular-author'>Jim Bob Cooter</h2>
            <h1 className='popular-title'>{stories[4].title}</h1>
            <h2 className='popular-author'>Homer Davidson</h2>
        </div>
    )
}

export default PopularStories;