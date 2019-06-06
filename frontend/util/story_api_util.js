import { useNativePromise } from "./useNativePromise";

export const fetchStories = () =>
  $.ajax({
    method: "GET",
    url: "api/stories"
  });

export const fetchStory = id => {
  // debugger
  return $.ajax({
    method: "GET",
    url: `api/stories/${id}`
  });
};

export const createStory = story =>
  useNativePromise(
    $.ajax({
      url: "api/stories",
      method: "POST",
      data: { story }
    })
  );

export const updateStory = story =>
  useNativePromise(
    $.ajax({
      url: `api/stories/${story.id}`,
      method: "PATCH",
      data: { story }
    })
  );

export const deleteStory = id =>
  $.ajax({
    url: `api/stories/${id}`,
    method: "DELETE"
  });
