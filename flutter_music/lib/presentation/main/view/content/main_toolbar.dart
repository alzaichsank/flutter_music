part of '../main_view.dart';

class MainToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) => ToolbarHolder(
        child: _buildToolbar(context, state),
      ),
    );
  }

  Widget _buildToolbar(BuildContext context, MainState state) {
    Row _buildHeader() => Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: FormTextField(
                enable: true,
                type: FormTextFieldType.SEARCH,
                onChanged: (String value) =>
                    context.read<MainBloc>().add(MainQueryChanged(value)),
                showError: false,
                hintText: "Search ...",
                textInputAction: TextInputAction.search,
              ),
            ),
          ],
        );

    return Center(
      child: _buildHeader(),
    );
  }
}
