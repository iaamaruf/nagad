bool isDev = false;

String baseUrlApi(){
  return isDev ? 'https://jsonplaceholder.typicode.com/posts' : 'https://jsonplaceholder.typicode.com/posts';
}