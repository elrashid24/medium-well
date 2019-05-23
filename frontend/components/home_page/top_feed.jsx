
import React from 'react';
import { Link } from 'react-router-dom';
const TopFeed = ({stories}) => {
    return (
    <div className = 'top-feed-container'>
        
        <div className='top-left'>
            <Link to={`/story/${stories[0].id}`}>
                 
                 <img className='top-left-pic' src={stories[0].photoUrl ? stories[0].photoUrl : ""} />
            </Link>
            
            <div className = 'top-left-story'>
                <Link to={`/story/${stories[0].id}`}>
                    <h1 className='top-left-title'>{stories[0].title}</h1>
                    <h2 className='top-left-preview'>{stories[0].body.slice(0, 120)}...</h2>
                </Link>
                <p className='top-left-author'>
                    <Link to={`/story/${stories[0].id}`}>Whoever</Link>
                </p>
            </div>
         </div>
        

        
        <div className = 'top-middle-container'>
            <div className='top-middle'>
                        <Link to={`/story/${stories[1].id}`}><img className='top-middle-pic' src={stories[1].photoUrl ? stories[1].photoUrl : ""} />
                        </Link>
                <div className='middle-body'>
                    <Link to={`/story/${stories[1].id}`}>
                        <h1 className='top-middle-title'>{stories[1].title}</h1>
                        <h2 className='top-middle-preview'>{stories[1].body.slice(0, 65)}...</h2>
                    </Link>
                    <p className='top-middle-author'>
                        <Link to={`/story/${stories[1].id}`}>Whoever</Link>
                    </p>
                </div>
            </div>

                <div className='top-middle'>
                    <Link to={`/story/${stories[2].id}`}><img className='top-middle-pic' src={stories[2].photoUrl ? stories[2].photoUrl : ""} />
                    </Link>
                    <div className='middle-body'>
                        <Link to={`/story/${stories[2].id}`}>
                            <h1 className='top-middle-title'>{stories[2].title}</h1>
                            <h2 className='top-middle-preview'>{stories[2].body.slice(0, 65)}...</h2>
                        </Link>
                        <p className='top-middle-author'>
                            <Link to={`/story/${stories[2].id}`}>Whoever</Link>
                        </p>
                    </div>
                </div>

                <div className='top-middle'>
                    <Link to={`/story/${stories[3].id}`}><img className='top-middle-pic' src={stories[3].photoUrl ? stories[3].photoUrl : ""} />
                    </Link>
                    <div className='middle-body'>
                        <Link to={`/story/${stories[3].id}`}>
                            <h1 className='top-middle-title'>{stories[3].title}</h1>
                            <h2 className='top-middle-preview'>{stories[3].body.slice(0, 65)}...</h2>
                        </Link>
                        <p className='top-middle-author'>
                            <Link to={`/story/${stories[3].id}`}>Whoever</Link>
                        </p>
                    </div>
                </div>
        </div>       
        
        
            <div className='top-right'>
                <Link to={`/story/${stories[4].id}`}>
                 <img className='top-right-pic' src={stories[4].photoUrl ? stories[4].photoUrl : ""} />
                </Link>

                <div className='top-right-story'>
                    <Link to={`/story/${stories[4].id}`}>
                        <h1 className='top-right-title'>{stories[4].title}</h1>
                        <h2 className='top-right-preview'>{stories[4].body.slice(0, 110)}...</h2>
                    </Link>
                    <p className='top-right-author'>
                        <Link to={`/story/${stories[4].id}`}>Whoever</Link>
                    </p>
                </div>
            </div>
         
         
         </div>       
        
                
  )}

  export default TopFeed; 