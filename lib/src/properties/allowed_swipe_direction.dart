/// Class to define the direction in which the card can be swiped
class AllowedSwipeDirection {
  /// Allow the card to be swiped in any direction
  const AllowedSwipeDirection.all()
      : right = true,
        left = true;

  /// Does not allow the card to be swiped in any direction
  const AllowedSwipeDirection.none()
      : right = false,
        left = false;

  /// Allow the card to be swiped in only the specified directions
  const AllowedSwipeDirection.only({
    this.left = false,
    this.right = false,
  });

  /// Allow the card to be swiped symmetrically in horizontal or vertical directions
  const AllowedSwipeDirection.symmetric({
    bool horizontal = false,
  })  : left = horizontal,
        right = horizontal;

  /// Set to true to allow the card to be swiped in the left direction
  final bool left;

  /// Set to true to allow the card to be swiped in the right direction
  final bool right;
}
