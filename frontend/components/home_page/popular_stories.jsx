import React from 'react';
import {Link} from 'react-router-dom';

const PopularStories = ({stories}) => {
    return (
        <div className='popular-stories-container'>
            <div className='popular-story'>
                <div className ='popular-body'>
                    <Link to={`/story/${stories[0].id}`} className='popular-title'>{stories[0].title}</Link>
                    <p>
                        <Link to={`/story/${stories[0].id}`} className='popular-preview'>{stories[0].body.slice(0, 120)}...</Link>
                    </p>
                    <Link to={`/story/${stories[0].id}`} className='popular-author'>Author: Stephen A. Smith</Link>
                </div>
                <Link to={`/story/${stories[0].id}`} className='popular-preview'>
                    <img className='popular-pic' src={stories[0].photoUrl ? stories[0].photoUrl : ""} />
                </Link> 
            </div>
      
      
      
                <div className='popular-story'>
                    <div className='popular-body'>
                        <Link to={`/story/${stories[1].id}`} className='popular-title'>{stories[1].title}</Link>
                        <p>
                            <Link to={`/story/${stories[1].id}`} className='popular-preview'>{stories[1].body.slice(0, 120)}...</Link>
                        </p>
                        <Link to={`/story/${stories[1].id}`} className='popular-author'>Author: Stephen A. Smith</Link>
                    </div>
                    <Link to={`/story/${stories[1].id}`} className='popular-preview'>
                        <img className='popular-pic' src={stories[1].photoUrl ? stories[1].photoUrl : ""} />
                    </Link>
                </div>
      
      
            <div className='popular-story'>
                <div className='popular-body'>
                    <Link to={`/story/${stories[2].id}`} className='popular-title'>{stories[2].title}</Link>
                    <p>
                        <Link to={`/story/${stories[2].id}`} className='popular-preview'>{stories[2].body.slice(0, 120)}...</Link>
                    </p>
                    <Link to={`/story/${stories[2].id}`} className='popular-author'>Author: Stephen A. Smith</Link>
                </div>
                <Link to={`/story/${stories[2].id}`} className='popular-preview'>
                    <img className='popular-pic' src={stories[2].photoUrl ? stories[2].photoUrl : ""} />
                </Link>
            </div>

            <div className='popular-story'>
                <div className='popular-body'>
                    <Link to={`/story/${stories[3].id}`} className='popular-title'>{stories[3].title}</Link>
                    <p>
                        <Link to={`/story/${stories[3].id}`} className='popular-preview'>{stories[3].body.slice(0, 120)}...</Link>
                    </p>
                    <Link to={`/story/${stories[3].id}`} className='popular-author'>Author: Stephen A. Smith</Link>
                </div>
                <Link to={`/story/${stories[3].id}`} className='popular-preview'>
                    <img className='popular-pic' src={stories[3].photoUrl ? stories[3].photoUrl : ""} />
                </Link>
            </div>


            <div className='popular-story'>
                <div className='popular-body'>
                    <Link to={`/story/${stories[4].id}`} className='popular-title'>{stories[4].title}</Link>
                    <p>
                        <Link to={`/story/${stories[4].id}`} className='popular-preview'>{stories[4].body.slice(0, 120)}...</Link>
                    </p>
                    <Link to={`/story/${stories[4].id}`} className='popular-author'>Author: Stephen A. Smith</Link>
                </div>
                <Link to={`/story/${stories[4].id}`} className='popular-preview'>
                    <img className='popular-pic' src={stories[4].photoUrl ? stories[4].photoUrl : ""} />
                </Link>
            </div>
      
            <div className='popular-story'>
                <div className='popular-body'>
                    <Link to={`/story/${stories[5].id}`} className='popular-title'>{stories[5].title}</Link>
                    <p>
                        <Link to={`/story/${stories[5].id}`} className='popular-preview'>{stories[5].body.slice(0, 120)}...</Link>
                    </p>
                    <Link to={`/story/${stories[5].id}`} className='popular-author'>Author: Stephen A. Smith</Link>
                </div>
                <Link to={`/story/${stories[5].id}`} className='popular-preview'>
                    <img className='popular-pic' src={stories[5].photoUrl ? stories[5].photoUrl : ""} />
                </Link>
            </div>

            <div className='popular-story'>
                <div className='popular-body'>
                    <Link to={`/story/${stories[6].id}`} className='popular-title'>{stories[6].title}</Link>
                    <p>
                        <Link to={`/story/${stories[6].id}`} className='popular-preview'>{stories[6].body.slice(0, 120)}...</Link>
                    </p>
                    <Link to={`/story/${stories[6].id}`} className='popular-author'>Author: Stephen A. Smith</Link>
                </div>
                <Link to={`/story/${stories[6].id}`} className='popular-preview'>
                    <img className='popular-pic' src={stories[6].photoUrl ? stories[6].photoUrl : ""} />
                </Link>
            </div>


            <div className='popular-story'>
                <div className='popular-body'>
                    <Link to={`/story/${stories[7].id}`} className='popular-title'>{stories[7].title}</Link>
                    <p>
                        <Link to={`/story/${stories[7].id}`} className='popular-preview'>{stories[7].body.slice(0, 120)}...</Link>
                    </p>
                    <Link to={`/story/${stories[7].id}`} className='popular-author'>Author: Stephen A. Smith</Link>
                </div>
                <Link to={`/story/${stories[7].id}`} className='popular-preview'>
                    <img className='popular-pic' src={stories[7].photoUrl ? stories[7].photoUrl : ""} />
                </Link>
            </div>

            <div className='popular-story'>
                <div className='popular-body'>
                    <Link to={`/story/${stories[8].id}`} className='popular-title'>{stories[8].title}</Link>
                    <p>
                        <Link to={`/story/${stories[8].id}`} className='popular-preview'>{stories[8].body.slice(0, 120)}...</Link>
                    </p>
                    <Link to={`/story/${stories[8].id}`} className='popular-author'>Author: Stephen A. Smith</Link>
                </div>
                <Link to={`/story/${stories[8].id}`} className='popular-preview'>
                    <img className='popular-pic' src={stories[8].photoUrl ? stories[8].photoUrl : ""} />
                </Link>
            </div>
      
      
      
      
      
      
      </div>
    )
}

export default PopularStories;



