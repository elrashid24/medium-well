import React from 'react'; 
import {Link} from 'react-router-dom'; 

const SuggestedStories = ({stories}) => {
    return(
        <div className ='bottom-right-container'>
            <div class-name ='bottom-right-header'>
                Popular on Medium Well
            </div>
            <div className = 'numbering'>
                <div className = 'bottom-right-body'>
                    <Link to={`/story/${stories[0].id}`} className='bottom-right-title'>{stories[0].title}</Link>
                    <Link to={`/story/${stories[0].id}`} className='bottom-right-author'>Author: Stephen A. Smith</Link>
                </div>
            </div>
        </div>
    )}
    export default SuggestedStories;