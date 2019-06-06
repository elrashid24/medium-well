export function useNativePromise(ajaxPromise) {
  const nativePromise = Promise.resolve(ajaxPromise);
  return nativePromise.then(
    response => {
      return response;
    },
    error => {
      return error;
    }
  );
}
