module.exports = {
  account_name: 'biggs',
  endpoint: '/netlify/pets-blog',
  queries: [
    {
      query: `{
            getPosts {
              title
              body
              published
              id
              categories {
                name
              }
            }
          }`,
      convert_to: '.md',
      slug_field: 'title',
      body_field: 'body',
      folder: 'content/blog',
    },
  ],
};
