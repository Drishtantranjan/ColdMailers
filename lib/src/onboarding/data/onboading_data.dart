class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent({required this.image, required this.title, required this.description});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      title: 'Looking for job change?',
      image: 'assets/icons/onboarding/ic_onboarding1.svg',
      description: "Empower your job search with the effectiveness of cold mailing. Discover personalized cold email and resume templates, and effortlessly connect with recruiters and founders in just one click!"
  ),
  OnboardingContent(
      title: 'Need tailored emails?',
      image: 'assets/icons/onboarding/ic_onboarding2.svg',
      description: "Craft personalized cold email templates and access contact information for recruiters and founders with ease – all accomplished in just 3 taps! Simplify your outreach and make a lasting impression."
  ),


  OnboardingContent(
      title: 'Get Hired Easily with ColdMails!',
      image: 'assets/icons/onboarding/ic_onboarding3.svg',
      description: "Unlock opportunities by obtaining recruiters contacts. Approach your dream job effortlessly and increase your chances of getting hired!"
  ),

];