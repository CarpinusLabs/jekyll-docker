# jekyll-docker

Docker image for [Jekyll](https://jekyllrb.com).

Includes

- [jekyll-sitemap](https://github.com/jekyll/jekyll-sitemap)
- [jekyll-feed](https://github.com/jekyll/jekyll-feed)
- [jekyll-seo-tag](https://jekyll.github.io/jekyll-seo-tag/)
- [Minima](https://github.com/jekyll/minima)

## Usage

Create a new blog

```
docker run --rm -v ~/:/src carpinuslabs/jekyll new blog
```

Serve the blog

```
docker run --rm -v ~/blog:/src carpinuslabs/jekyll
```
