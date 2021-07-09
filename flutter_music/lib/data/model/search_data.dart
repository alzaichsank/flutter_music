class SearchData {
  final num idArtist;
  final num idCollection;
  final String artistName;
  final String artworkUrl;
  final String songTitle;
  final String albumName;
  final String previewUrl;

  SearchData(Map json)
      : idArtist = json["artistId"],
        idCollection = json["collectionId"],
        artistName = json["artistName"],
        artworkUrl = json["artworkUrl60"],
        songTitle = json["trackName"],
        albumName = json["collectionName"],
        previewUrl = json["previewUrl"];
}
