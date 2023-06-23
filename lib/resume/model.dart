class ModelEducation {
  final String institution;
  final String duration;
  final String qualification;

  const ModelEducation({
    required this.institution,
    required this.duration,
    required this.qualification,
  });
}

class ModelExperience {
  final String company;
  final String role;
  final String duration;
  final List<String> responsibilities;

  const ModelExperience({
    required this.company,
    required this.role,
    required this.duration,
    required this.responsibilities,
  });
}

class ModelProject {
  final String title;
  final List<String> description;

  const ModelProject({
    required this.title,
    required this.description,
  });
}
