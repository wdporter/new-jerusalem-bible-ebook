module.exports = config => {

  config.addPassthroughCopy("src/META-INF")
  config.addPassthroughCopy("src/metadata.opf")
  config.addPassthroughCopy("src/mimetype")
  config.addPassthroughCopy("src/toc.ncx")

  return {

    dir: {
      input: "src",
      output: "dist"
    }
  }
}