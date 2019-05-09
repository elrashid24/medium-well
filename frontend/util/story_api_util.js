export const fetchStories = () => (
    $.ajax({
        method: 'GET',
        url: 'api/stories',
    })
);

export const fetchStory = id =>{
    // debugger
    return(
    $.ajax({
        method: 'GET',
        url: `api/stories/${id}`
    }))
};

export const createStory = story => (
    $.ajax({
        url: 'api/stories',
        method: 'POST',
        data: { story }
    })
);

export const updateStory = story => (
    $.ajax({
        url: `api/stories/${story.id}`,
        method: 'PATCH',
        data: { story }
    })
);

export const deleteStory = id => (
    $.ajax({
        url: `api/stories/${id}`,
        method: 'DELETE'
    })
);