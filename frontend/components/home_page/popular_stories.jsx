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


//0 = AdrianWojnarowski@gmail.com
//1=ShamsCharania@gmail.com
//2=NickWright@gmail.com
//3=StephenAASmith@gmail.com
//4=SkipBayless@gmail.com
//5=JimBobCooter@gmail.com
//6=SavannahJames@gmail.com
//7=MarkJackson@gmail.com
////8=VladeDivac@gmail.com
//9=MaxKellerman@gmail.com
//10=ShannonSharpe@gmail.com
//11=KevinDurant@gmail.com
//12=JalenRose@gmail.com
//13=CariChampion@gmail.com
//14=ColinCowherd@gmail.com
//15=CharlesBarkley@gmail.com
//16=ErnieJohnson@gmail.com
//17=KobeBryant@gmail.com
//18= BradRiely@gmail.com

//0 = Adrian Wojnarowski
//1=Shams Charania
//2=Nick Wright
//3=Stephen A. Smith
//4=Skip Bayless
//5=Jim Bob Cooter
//6=Savannah James
//7=Mark Jackson
////8=Vlade Divac
//9=Max Kellerman
//10=Shannon Sharpe
//11=Kevin Durant
//12=Jalen Rose
//13=Cari Champion
//14=Colin Cowherd
//15=Charles Barkley
//16=ErnieJ ohnson
//17=TKobe Bryant
//18= Brad Riely