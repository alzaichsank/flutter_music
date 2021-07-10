part of '../main_view.dart';

Widget _buildBodyItem(
  List<SearchData> searchMusic,
  int index,
  BuildContext context,
  MainState state,
) {
  final item = searchMusic[index];
  if (item is SearchData) {
    return _buildItemRow(context, state, index, searchMusic);
  } else {
    return _buildLoadingRow();
  }
}

Center _buildLoadingRow() {
  return Center(
    child: DoubleBounceLoading(
      color: HexColor.toColor(ColorManifest.BLUE_COLOR_2),
    ),
  );
}

Widget _buildItemRow(
  BuildContext context,
  MainState state,
  int index,
  List<SearchData> activities,
) {
  final item = activities[index] as SearchData;
  return Container(
    padding: EdgeInsets.only(
      right: DimensionsManifest.UNIT_2.blockW,
      left: DimensionsManifest.UNIT_2.blockW,
      top: index == 0
          ? DimensionsManifest.UNIT_2.blockH
          : DimensionsManifest.UNIT_1.blockH,
      bottom: index == activities.length - 1
          ? DimensionsManifest.UNIT_1.blockH
          : DimensionsManifest.UNIT_1.blockH,
    ),
    child: ClipRRect(
      borderRadius: ShapeStylesManifest.RADIUS_CIRCULAR_25_ALL,
      child: Container(
        width: double.infinity,
        height: DimensionsManifest.UNIT_15.h,
        child: Material(
          color: HexColor.toColor(ColorManifest.WHITE_COLOR),
          child: InkWell(
            onTap: () => context.read<MainBloc>().add(MainPlayMusic(index)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(child: _buildImage(item, context, state)),
                Expanded(
                  child: _buildDetail(item),
                ),
                if (state.position == index && state.isShowPlayer)
                  Center(child: Icon(Icons.graphic_eq_outlined)),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Container _buildImage(
  SearchData item,
  BuildContext contextParent,
  MainState state,
) {
  return Container(
    margin: EdgeInsets.only(left: DimensionsManifest.UNIT_24),
    height: DimensionsManifest.UNIT_15.h,
    child: AspectRatio(
      aspectRatio: 1 / 1,
      child: Stack(
        children: [
          _buildImagePreview(item.artworkUrl),
        ],
      ),
    ),
  );
}

LayoutBuilder _buildImagePreview(String image) {
  return LayoutBuilder(
    builder: (context, constraints) {
      return ClipRRect(
        borderRadius: ShapeStylesManifest.RADIUS_CIRCULAR_16,
        child: Container(
          width: DimensionsManifest.UNIT_150,
          height: DimensionsManifest.UNIT_150,
          child: Container(
            width: DimensionsManifest.UNIT_150,
            height: DimensionsManifest.UNIT_150,
            child: image != null ? Image.network(image) : null,
          ),
        ),
      );
    },
  );
}

Widget _buildDetail(SearchData item) {
  Text _buildTitle() {
    return Text(
      item.songTitle,
      textAlign: TextAlign.left,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStylesManifest.textFormFieldSemiBold.copyWith(
          color: HexColor.toColor(ColorManifest.HEADER_TEXT_COLOR),
          fontSize: DimensionsManifest.FONT_REGULAR_6),
    );
  }

  Text _buildArtistName() {
    return Text(
      item.artistName,
      maxLines: 1,
      textAlign: TextAlign.justify,
      overflow: TextOverflow.ellipsis,
      style: TextStylesManifest.textFormFieldSemiBold.copyWith(
          color: HexColor.toColor(ColorManifest.BODY_TEXT_COLOR),
          fontSize: DimensionsManifest.FONT_REGULAR_7),
    );
  }

  Text _buildAlbumName() {
    return Text(
      item.albumName,
      maxLines: 1,
      textAlign: TextAlign.justify,
      overflow: TextOverflow.ellipsis,
      style: TextStylesManifest.textFormFieldRegular.copyWith(
          color: HexColor.toColor(ColorManifest.BODY_TEXT_COLOR),
          fontSize: DimensionsManifest.FONT_REGULAR_8),
    );
  }

  return Container(
    margin: EdgeInsets.only(top: DimensionsManifest.UNIT_10),
    padding: EdgeInsets.only(
      left: DimensionsManifest.UNIT_16,
    ),
    width: double.infinity,
    height: DimensionsManifest.UNIT_15.h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(),
        SizedBox(height: DimensionsManifest.UNIT_4),
        _buildArtistName(),
        SizedBox(height: DimensionsManifest.UNIT_4),
        _buildAlbumName(),
      ],
    ),
  );
}
