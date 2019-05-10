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
                
                <h1>
                    <Link to={`/story/${stories[1].id}`} className='favorite-title'>{stories[1].title}</Link>
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
                <Link to={`/story/${stories[1].id}`} className='favorite-author'>Author: Max Kellerman</Link>
            </h2>

            <h1>
                <Link to={`/story/${stories[2].id}`} className='favorite-title'>{stories[2].title}</Link>
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
                <Link to={`/story/${stories[2].id}`} className='favorite-author'>Author: Shannon Sharpe</Link>
            </h2>

            <h1>
                <Link to={`/story/${stories[3].id}`} className='favorite-title'>{stories[3].title}</Link>
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
                <Link to={`/story/${stories[3].id}`} className='favorite-author'>Author: Zach Lowe</Link>
            </h2>

            <h1>
                <Link to={`/story/${stories[4].id}`} className='favorite-title'>{stories[4].title}</Link>
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
                <Link to={`/story/${stories[4].id}`} className='favorite-author'>Author: Jalen Rose</Link>
            </h2>

            <h1>
                <Link to={`/story/${stories[5].id}`} className='favorite-title'>{stories[5].title}</Link>
            </h1>
            <h2 >
                <Link to={`/story/${stories[5].id}`} className='left-top-feed-preview'>{stories[5].body.slice(0, 300)}...</Link>
            </h2>
            <div className='show-pic-container'>

                <Link to={`/story/${stories[5].id}`} className='left-top-feed-preview'>
                    <img className='top-right-pic' src={stories[5].photoUrl ? stories[5].photoUrl : ""} />
                </Link>
            </div>
            <h2>
                <Link to={`/story/${stories[5].id}`} className='favorite-author'>Author: Cari Champion</Link>
            </h2>

            <h1>
                <Link to={`/story/${stories[6].id}`} className='favorite-title'>{stories[6].title}</Link>
            </h1>
            <h2 >
                <Link to={`/story/${stories[6].id}`} className='left-top-feed-preview'>{stories[6].body.slice(0, 300)}...</Link>
            </h2>
            <div className='show-pic-container'>

                <Link to={`/story/${stories[6].id}`} className='left-top-feed-preview'>
                    <img className='top-right-pic' src={stories[6].photoUrl ? stories[6].photoUrl : ""} />
                </Link>
            </div>
            <h2>
                <Link to={`/story/${stories[6].id}`} className='favorite-author'>Author: Colin Cowherd</Link>
            </h2>

            <h1>
                <Link to={`/story/${stories[7].id}`} className='favorite-title'>{stories[7].title}</Link>
            </h1>
            <h2 >
                <Link to={`/story/${stories[7].id}`} className='left-top-feed-preview'>{stories[7].body.slice(0, 300)}...</Link>
            </h2>
            <div className='show-pic-container'>

                <Link to={`/story/${stories[7].id}`} className='left-top-feed-preview'>
                    <img className='top-right-pic' src={stories[7].photoUrl ? stories[7].photoUrl : ""} />
                </Link>
            </div>
            <h2>
                <Link to={`/story/${stories[7].id}`} className='favorite-author'>Charles Barkley</Link>
            </h2>

            <h1>
                <Link to={`/story/${stories[8].id}`} className='favorite-title'>{stories[8].title}</Link>
            </h1>
            <h2 >
                <Link to={`/story/${stories[8].id}`} className='left-top-feed-preview'>{stories[8].body.slice(0, 300)}...</Link>
            </h2>
            <div className='show-pic-container'>

                <Link to={`/story/${stories[8].id}`} className='left-top-feed-preview'>
                    <img className='top-right-pic' src={stories[8].photoUrl ? stories[8].photoUrl : ""} />
                </Link>
            </div>
            <h2>
                <Link to={`/story/${stories[8].id}`} className='favorite-author'>Author: Ernie Johnson</Link>
            </h2>

            <h1>
                <Link to={`/story/${stories[9].id}`} className='favorite-title'>{stories[9].title}</Link>
            </h1>
            <h2 >
                <Link to={`/story/${stories[9].id}`} className='left-top-feed-preview'>{stories[9].body.slice(0, 300)}...</Link>
            </h2>
            <div className='show-pic-container'>

                <Link to={`/story/${stories[9].id}`} className='left-top-feed-preview'>
                    <img className='top-right-pic' src={stories[9].photoUrl ? stories[9].photoUrl : ""} />
                </Link>
            </div>
            <h2>
                <Link to={`/story/${stories[9].id}`} className='favorite-author'>Author: Tom Fields</Link>
            </h2>

            <h1>
                <Link to={`/story/${stories[10].id}`} className='favorite-title'>{stories[10].title}</Link>
            </h1>
            <h2 >
                <Link to={`/story/${stories[10].id}`} className='left-top-feed-preview'>{stories[10].body.slice(0, 300)}...</Link>
            </h2>
            <div className='show-pic-container'>

                <Link to={`/story/${stories[10].id}`} className='left-top-feed-preview'>
                    <img className='top-right-pic' src={stories[10].photoUrl ? stories[10].photoUrl : ""} />
                </Link>
            </div>
            <h2>
                <Link to={`/story/${stories[10].id}`} className='favorite-author'>Author: Brad Riely</Link>
            </h2>
                
        </div>
        

    )
}

export default SuggestedStories; 

//stories 8-end 
//allign them on the bottom left of the page 
//add pictures or link?
//show apge for individual story where it has a picture?
