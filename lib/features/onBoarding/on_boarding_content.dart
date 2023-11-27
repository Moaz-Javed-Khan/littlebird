class OnboardingContent {
  String image = "a";
  String title = "b";
  String description = "c";

  OnboardingContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnboardingContent> contents = [
  OnboardingContent(
    title: "Be a parent or continue\nas a child",
    image: "assets/onboarding_img_1.png",
    description:
        "Get an overview of every activity of your\nkids and family members and keep in\ntouch all the time",
  ),
  OnboardingContent(
    title: 'View previous location and\ntrack live location',
    image: "assets/onboarding_img_2.png",
    description:
        "Get an overview of every activity of your\nkids and family members and keep in\ntouch all the time",
  ),
  OnboardingContent(
    title: 'Access imappropriate media\nfrom other devices',
    image: "assets/onboarding_img_3.png",
    description:
        "Get an overview of every activity of your\nkids and family members and keep in\ntouch all the time",
  ),
  OnboardingContent(
    title: 'Get emergrncy alerts from\nother devices',
    image: "assets/onboarding_img_4.png",
    description:
        "Get an overview of every activity of your\n  kids and family members and keep in\ntouch all the time",
  ),
];
