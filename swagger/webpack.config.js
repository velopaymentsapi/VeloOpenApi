const path = require('path');

module.exports = {
  entry: './src/index.js',
  mode: "production",
  module: {
    rules: [
      {
        test: /\.css$/,
        use: ['style-loader', 'css-loader']
      },
      {
        test: /\.yaml/,
        use: ['yaml-loader', 'json-loader', 'yaml-frontmatter-loader']
      }
    ]
  },
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle.js'
  }
};