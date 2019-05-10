import React from 'react';
import { Link } from 'react-router-dom';

const TopFeed = ({stories}) => {
    return (
        <div className ='top-feed-container'>
            <div className ='top-left'>
                <h1>
                    <Link to={`/story/${stories[0].id}`} className='left-top-feed-title'>{stories[0].title}</Link>
                </h1>
                <div>
                    <Link to={`/story/${stories[0].id}`} className='top-left-author' >Adrian Wojnarowski</Link>
                </div>
                <h2 >
                    <Link to={`/story/${stories[0].id}`} className='left-top-feed-preview'>{stories[0].body.slice(0, 300)}...</Link>
                </h2>
                <div className='show-pic-container'>
                   
                    <Link to={`/story/${stories[0].id}`} className='left-top-feed-preview'>
                        <img className='top-left-pic' src={stories[0].photoUrl ? stories[0].photoUrl : ""} />
                    </Link>
                </div>
            </div>
            <div className ='top-middle'>
                <h1>
                    <Link to={`/story/${stories[1].id}`} className='middle-top-feed-title'>{stories[1].title}</Link>
                </h1>
                <div>
                    <Link to={`/story/${stories[1].id}`} className='top-left-author' >Shams Charania </Link>
                </div>
                <h2>
                    <Link to={`/story/${stories[1].id}`} className='middle-top-feed-preview'>{stories[1].body.slice(0, 300)}...</Link>
                </h2>
                <div className='show-pic-container'>

                    <Link to={`/story/${stories[1].id}`} className='left-top-feed-preview'>
                        <img className='top-middle-pic' src={stories[1].photoUrl ? stories[1].photoUrl : ""} />
                    </Link>
                </div>
            </div>
            <div className ='top-right'>
                <h1 >
                    <Link to={`/story/${stories[2].id}`} className='right-top-feed-title'>{stories[2].title}</Link>
                </h1>
                <div>
                    <Link to={`/story/${stories[2].id}`} className='top-left-author' >Nick Wright </Link>
                </div>
                <h2>
                    <Link to={`/story/${stories[2].id}`} className='right-top-feed-preview'>{stories[2].body.slice(0, 300)}...</Link>
                </h2>
                <div className='show-pic-container'>

                    <Link to={`/story/${stories[2].id}`} className='left-top-feed-preview'>
                        <img className='top-right-pic' src={stories[2].photoUrl ? stories[2].photoUrl : ""} />
                    </Link>
                </div>
            </div>
        </div>
    )
}

export default TopFeed; 

//ask ryan how to move this shit to the right of the page


