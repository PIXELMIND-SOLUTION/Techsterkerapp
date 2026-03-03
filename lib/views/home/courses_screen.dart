
import 'package:flutter/material.dart';
import 'package:techstecker_app/views/details/detail_screen.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Course Categories',
          style: TextStyle(
            color: Color(0xFF2C3E50),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Container(
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              labelColor: const Color(0xFFB71C1C),
              unselectedLabelColor: const Color(0xFF757575),
              indicatorColor: const Color(0xFFB71C1C),
              indicatorWeight: 3,
              labelStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              tabs: const [
                Tab(text: 'Certified Programs'),
                Tab(text: 'Elite Courses'),
                Tab(text: 'Healthcare'),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildCertifiedPrograms(),
          _buildEliteCourses(),
          _buildHealthcareCourses(),
        ],
      ),
    );
  }

  Widget _buildCertifiedPrograms() {
    final programs = [
      {
        'title': 'Data Science',
        'duration': '14-16 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/2103/2103633.png',
        'color': const Color(0xFF2196F3),
      },
      {
        'title': 'Full Stack Python',
        'duration': '12-14 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/5968/5968350.png',
        'color': const Color(0xFFF57C00),
        'highlighted': true,
      },
      {
        'title': 'Generative AI',
        'duration': '12-14 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/8637/8637099.png',
        'color': const Color(0xFF00BCD4),
      },
      {
        'title': 'Full Stack Java',
        'duration': '12-15 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/226/226777.png',
        'color': const Color(0xFFE91E63),
      },
      {
        'title': 'Cloud Computing',
        'duration': '12-14 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/2920/2920277.png',
        'color': const Color(0xFF3F51B5),
      },
      {
        'title': 'DevOps',
        'duration': '8-11 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/919/919853.png',
        'color': const Color(0xFF009688),
      },
      {
        'title': 'Cyber Security',
        'duration': '20 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/6195/6195699.png',
        'color': const Color(0xFF673AB7),
      },
      {
        'title': 'Digital Marketing with AI',
        'duration': '5-8 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/3029/3029619.png',
        'color': const Color(0xFFFF5722),
      },
      {
        'title': 'Automation Testing',
        'duration': '5-9 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/1705/1705312.png',
        'color': const Color(0xFF795548),
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: programs.length,
      itemBuilder: (context, index) {
        final program = programs[index];
        final isHighlighted = program['highlighted'] == false;

        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: isHighlighted
                ? const Color(0xFFFFEBEE)
                : Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: isHighlighted
                ? Border.all(color: const Color(0xFFB71C1C), width: 2)
                : null,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: (program['color'] as Color).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Image.network(
                        program['image'] as String,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(
                            Icons.image_not_supported,
                            color: program['color'] as Color,
                            size: 28,
                          );
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                program['color'] as Color,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            program['title'] as String,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2C3E50),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              Flexible(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFB71C1C).withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: const Text(
                                    'Certified Programs',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xFFB71C1C),
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Icon(
                                Icons.access_time,
                                size: 14,
                                color: Colors.grey[600],
                              ),
                              const SizedBox(width: 4),
                              Flexible(
                                child: Text(
                                  program['duration'] as String,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey[600],
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.grey[400],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildEliteCourses() {
    final courses = [
      {
        'title': 'Data Analyst',
        'duration': '12-14 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/9672/9672610.png',
        'color': const Color(0xFF4CAF50),
      },
      {
        'title': 'Frontend Development',
        'duration': '12-14 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/1005/1005141.png',
        'color': const Color(0xFF2196F3),
      },
      {
        'title': 'Backend Development',
        'duration': '10-12 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/2906/2906206.png',
        'color': const Color(0xFF9C27B0),
      },
      {
        'title': 'Business Analyst',
        'duration': '10-12 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/3281/3281289.png',
        'color': const Color(0xFF00BCD4),
      },
      {
        'title': 'Agile Methodology',
        'duration': '8-9 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/6461/6461819.png',
        'color': const Color(0xFFFF9800),
      },
      {
        'title': 'Computer Networking',
        'duration': '9-12 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/1157/1157034.png',
        'color': const Color(0xFFE91E63),
        'highlighted': true,
      },
      {
        'title': 'Organizational Behavior & Work',
        'duration': '10-12 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/681/681494.png',
        'color': const Color(0xFF607D8B),
      },
      {
        'title': 'Prompt Engineering',
        'duration': '7-11 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/10466/10466565.png',
        'color': const Color(0xFF3F51B5),
      },
      {
        'title': 'Graphic Design',
        'duration': '7-11 weeks',
        'image': 'https://cdn-icons-png.flaticon.com/512/3220/3220336.png',
        'color': const Color(0xFFE91E63),
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        final course = courses[index];
        final isHighlighted = course['highlighted'] == false;

        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: isHighlighted
                ? const Color(0xFFFFEBEE)
                : Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: isHighlighted
                ? Border.all(color: const Color(0xFFB71C1C), width: 2)
                : null,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: (course['color'] as Color).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Image.network(
                        course['image'] as String,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(
                            Icons.image_not_supported,
                            color: course['color'] as Color,
                            size: 28,
                          );
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                course['color'] as Color,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course['title'] as String,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2C3E50),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              Flexible(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFB71C1C).withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: const Text(
                                    'Elite Courses',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xFFB71C1C),
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Icon(
                                Icons.access_time,
                                size: 14, 
                                color: Colors.grey[600],
                              ),
                              const SizedBox(width: 4),
                              Flexible(
                                child: Text(
                                  course['duration'] as String,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey[600],
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.grey[400],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildHealthcareCourses() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.medical_services_outlined,
            size: 80,
            color: Colors.grey[300],
          ),
          const SizedBox(height: 16),
          Text(
            'Healthcare Courses',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Coming Soon',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}