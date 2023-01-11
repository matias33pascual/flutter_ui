enum AssetsImages {
  dragonBall;
}

extension AssetsImagesExtension on AssetsImages {
  String getRoute() {
    switch (this) {
      case AssetsImages.dragonBall:
        return 'assets/images/dragon_ball.jpeg';

      default:
        return '';
    }
  }
}
