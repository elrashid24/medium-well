import React from 'react'; 
import {Link} from 'react-router-dom'; 

const SuggestedStories = ({stories}) => {
    return(
        <div className='favorite-stories-container'>
                <h1 className='favorite-header'>Fan Favorites</h1>
                <h1>
                    <Link to={`/story/${stories[0].id}`} className='favorite-title'>{stories[0].title}</Link>
                </h1>
                <h2 >
                    <Link to={`/story/${stories[0].id}`} className='left-top-feed-preview'>{stories[0].body.slice(0, 300)}...</Link>
                </h2>
                <div className='show-pic-container'>

                    <Link to={`/story/${stories[0].id}`} className='left-top-feed-preview'>
                        <img className='top-right-pic' src={stories[0].photoUrl ? stories[0].photoUrl : ""} />
                    </Link>
                </div>

                <h2>
                    <Link to={`/story/${stories[0].id}`} className='favorite-author'>Author: Stephen A. Smith</Link>
                </h2>
        </div>
        

    )
}

export default SuggestedStories; 

//stories 8-end 
//allign them on the bottom left of the page 
//add pictures or link?
//show apge for individual story where it has a picture?
