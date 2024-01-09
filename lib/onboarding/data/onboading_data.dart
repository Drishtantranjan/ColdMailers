class OnboardingContent {
  String image;
  String title;
  String discription;

  OnboardingContent({required this.image, required this.title, required this.discription});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      title: 'Looking for change',
      image: 'assets/icons/ic_onboarding1.svg',
      discription: "Land your next job with the power of cold mailing. Find personalized cold email and resume templates and contact the recruiters and founders in one click!"
  ),
  OnboardingContent(
      title: 'Tailored email',
      image: 'assets/icons/ic_onboarding2.svg',
      discription: "Personalized cold email templates and contact info for recruiters and founders in just 3 taps!"
  ),
  OnboardingContent(
      title: 'Get hired easily with cold mails!',
      image: 'assets/icons/ic_onboarding3.svg',
      discription: "Get recruiters contacts and point of contacts to apporach and get hired easily!"
  ),
];