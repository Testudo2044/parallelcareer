module.exports = {
  plugins: [

      require("tailwindcss"), //追加
      require("autoprefixer"), //追加
      require('postcss-preset-env')({
        autoprefixer: {
        flexbox: 'no-2009'
      },
      stage: 3
    })
  ]
}

// Only run PurgeCSS in production (you can also add staging here)
if (process.env.RAILS_ENV === "production") {
  environment.plugins.push(
    require('@fullhuman/postcss-purgecss')({
      content: [
        './app/views/tops/index.html.erb',
        './app/views/test/index.html.erb'
      ],
      defaultExtractor: content => content.match(/[A-Za-z0-9-_:/]+/g) || []
    })
  )
}

module.exports = environment