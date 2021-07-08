library introduction_screen;

import 'dart:async';
import 'dart:math';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction/src/model/page_view_model.dart';
import 'package:introduction/src/ui/intro_body.dart';
import 'package:introduction/src/ui/intro_button.dart';
import 'package:introduction/src/ui/intro_header.dart';

class IntroductionScreen extends StatefulWidget {
  /// All pages of the onboarding
  final List<PageViewModel> pages;

  /// Callback when Done button is pressed
  final VoidCallback onDone;

  /// Done button
  final Widget done;

  /// Callback when Skip button is pressed
  final VoidCallback onSkip;

  /// Callback when page change
  final ValueChanged<int> onChange;

  /// Skip button
  final Widget skip;

  /// Next button
  final Widget next;

  /// Is the Skip button should be display
  ///
  /// @Default `false`
  final bool showSkipButton;

  /// Is the progress indicator should be display
  ///
  /// @Default `true`
  final bool isProgress;

  /// Enable or not onTap feature on progress indicator
  ///
  /// @Default `true`
  final bool isProgressTap;

  /// Is the user is allow to change page
  ///
  /// @Default `false`
  final bool freeze;

  /// Global background color (only visible when a page has a transparent background color)
  final Color globalBackgroundColor;

  /// Dots decorator to custom dots color, size and spacing
  final DotsDecorator dotsDecorator;

  /// Animation duration in millisecondes
  ///
  /// @Default `350`
  final int animationDuration;

  /// Index of the initial page
  ///
  /// @Default `0`
  final int initialPage;

  /// Flex ratio of the skip button
  ///
  /// @Default `1`
  final int skipFlex;

  /// Flex ratio of the next/done button
  ///
  /// @Default `1`
  final int nextFlex;

  /// Type of animation between pages
  ///
  /// @Default `Curves.easeIn`
  final Curve curve;

  /// Color of buttons
  final Color color;

  /// Color of skip button
  final Color skipColor;

  /// Color of next button
  final Color nextColor;

  /// Color of done button
  final Color doneColor;

  const IntroductionScreen(
      {Key key,
      @required this.pages,
      @required this.onDone,
      @required this.done,
      this.onSkip,
      this.onChange,
      this.skip,
      this.next,
      this.showSkipButton = false,
      this.isProgress = true,
      this.isProgressTap = true,
      this.freeze = false,
      this.globalBackgroundColor,
      this.dotsDecorator = const DotsDecorator(),
      this.animationDuration = 350,
      this.initialPage = 0,
      this.skipFlex = 1,
      this.nextFlex = 1,
      this.curve = Curves.easeIn,
      this.color,
      this.skipColor,
      this.nextColor,
      this.doneColor})
      : assert(pages != null),
        assert(
          pages.length > 0,
          "You provide at least one page on introduction screen !",
        ),
        assert(onDone != null),
        assert(done != null),
        assert((showSkipButton && skip != null) || !showSkipButton),
        assert(initialPage == null || initialPage >= 0),
        super(key: key);

  @override
  IntroductionScreenState createState() => IntroductionScreenState();
}

class IntroductionScreenState extends State<IntroductionScreen> {
  PageController _pageController;
  double _currentPage = 0.0;
  bool _isSkipPressed = false;
  bool _isScrolling = false;
  List<PageController> _controllers;

  // PageController get controller => _pageController;

  @override
  void initState() {
    super.initState();
    int initialPage = min(widget.initialPage, widget.pages.length - 1);
    _currentPage = initialPage.toDouble();
    _pageController = PageController(initialPage: initialPage);
    _controllers = [];
    _controllers.add(PageController(initialPage: initialPage));
    _controllers.add(PageController(initialPage: initialPage));
  }

  void next() {
    animateScroll(min(_currentPage.round() + 1, widget.pages.length - 1));
  }

  Future<void> _onSkip() async {
    if (widget.onSkip != null) return widget.onSkip();
    await skipToEnd();
  }

  Future<void> skipToEnd() async {
    setState(() => _isSkipPressed = true);
    await animateScroll(widget.pages.length - 1);
    if (mounted) {
      setState(() => _isSkipPressed = false);
    }
  }

  Future<void> animateScroll(int page) async {
    setState(() => _isScrolling = true);
    await _controllers[0].animateToPage(
      page,
      duration: Duration(milliseconds: widget.animationDuration),
      curve: widget.curve,
    );
    _scrollBory(page);
    if (mounted) {
      setState(() => _isScrolling = false);
    }
  }

  void _scrollBory(int page) {
    _controllers[1].jumpToPage(page);
  }

  bool _onScroll(ScrollNotification notification) {
    final metrics = notification.metrics;
    if (metrics is PageMetrics) {
      setState(() => _currentPage = metrics.page);
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final isLastPage = (_currentPage.round() == widget.pages.length - 1);
    bool isSkipBtn = (!_isSkipPressed && !isLastPage && widget.showSkipButton);

    final skipBtn = IntroButton(
      child: widget.skip,
      color: widget.skipColor ?? widget.color,
      onPressed: isSkipBtn ? _onSkip : null,
    );

    final nextBtn = IntroButton(
      child: widget.next,
      color: widget.nextColor ?? widget.color,
      onPressed: next,
    );

    final doneBtn = IntroButton(
      child: widget.done,
      color: widget.doneColor ?? widget.color,
      onPressed: widget.onDone,
    );

    return Scaffold(
      backgroundColor: widget.globalBackgroundColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05),
              child: Column(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.50 ,
                    child: NotificationListener<ScrollNotification>(
                      onNotification: _onScroll,
                      child: PageView(
                        controller: _controllers[0],
                        physics: widget.freeze
                            ? const NeverScrollableScrollPhysics()
                            : const BouncingScrollPhysics(),
                        children: widget.pages
                            .map((p) => IntroPage(page: p))
                            .toList(),
                        onPageChanged: (position) {
                          _scrollBory(position);
                          return widget.onChange;
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: widget.isProgress
                        ? DotsIndicator(
                            dotsCount: widget.pages.length,
                            position: _currentPage,
                            decorator: widget.dotsDecorator,
                            onTap: widget.isProgressTap && !widget.freeze
                                ? (pos) => {
                                      animateScroll(pos.toInt()),
                                      widget.onChange
                                    }
                                : null,
                          )
                        : const SizedBox(),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.40,
                    child: NotificationListener<ScrollNotification>(
                      onNotification: _onScroll,
                      child: PageView(
                        controller: _controllers[1],
                        physics: widget.freeze
                            ? const NeverScrollableScrollPhysics()
                            : const BouncingScrollPhysics(),
                        children: widget.pages
                            .map((p) => IntroBody(page: p))
                            .toList(),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 32.0),
                child: isSkipBtn
                    ? skipBtn
                    : Opacity(opacity: 0.0, child: skipBtn)),
            Positioned(
              bottom: 16.0,
              left: 16.0,
              right: 16.0,
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: widget.nextFlex,
                      child: isLastPage ? doneBtn : nextBtn,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}