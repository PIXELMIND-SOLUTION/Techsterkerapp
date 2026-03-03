import 'package:flutter/material.dart';

class CourseModuleScreen extends StatefulWidget {
  const CourseModuleScreen({super.key});

  @override
  State<CourseModuleScreen> createState() => _CourseModuleScreenState();
}

class _CourseModuleScreenState extends State<CourseModuleScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Sample data
  final List<Map<String, dynamic>> liveClasses = [
    {
      'courseName': 'Advanced Flutter Development',
      'subject': 'Mobile Development',
      'tutor': 'Dr. Sarah Mitchell',
      'tutorAvatar': 'SM',
      'date': 'Tue, Mar 4, 2026',
      'time': '10:00 AM – 11:30 AM',
      'duration': '90 min',
      'status': 'upcoming',
      'color': Color(0xFF6C63FF),
      'students': 128,
    },
    {
      'courseName': 'UI/UX Design Principles',
      'subject': 'Design',
      'tutor': 'Prof. James Carter',
      'tutorAvatar': 'JC',
      'date': 'Wed, Mar 5, 2026',
      'time': '2:00 PM – 3:30 PM',
      'duration': '90 min',
      'status': 'live',
      'color': Color(0xFFFF6584),
      'students': 94,
    },
    {
      'courseName': 'Data Structures & Algorithms',
      'subject': 'Computer Science',
      'tutor': 'Ms. Priya Nair',
      'tutorAvatar': 'PN',
      'date': 'Thu, Mar 6, 2026',
      'time': '4:00 PM – 5:00 PM',
      'duration': '60 min',
      'status': 'upcoming',
      'color': Color(0xFF43D9AD),
      'students': 210,
    },
    {
      'courseName': 'Machine Learning Basics',
      'subject': 'AI & ML',
      'tutor': 'Dr. Alan Brooks',
      'tutorAvatar': 'AB',
      'date': 'Fri, Mar 7, 2026',
      'time': '11:00 AM – 1:00 PM',
      'duration': '120 min',
      'status': 'completed',
      'color': Color(0xFFFFA756),
      'students': 175,
    },
  ];

  final List<Map<String, dynamic>> recordedClasses = [
    {
      'title': 'Flutter Widgets Deep Dive',
      'tutor': 'Dr. Sarah Mitchell',
      'duration': '1h 24m',
      'views': '2.4k',
      'color': Color(0xFF6C63FF),
      'thumbnail': 'FL',
    },
    {
      'title': 'State Management with Riverpod',
      'tutor': 'Dr. Sarah Mitchell',
      'duration': '58m',
      'views': '1.8k',
      'color': Color(0xFF43D9AD),
      'thumbnail': 'RM',
    },
    {
      'title': 'Navigation & Routing',
      'tutor': 'Prof. James Carter',
      'duration': '45m',
      'views': '3.1k',
      'color': Color(0xFFFF6584),
      'thumbnail': 'NR',
    },
  ];

  final List<Map<String, dynamic>> studyMaterials = [
    {
      'title': 'Flutter Complete Guide PDF',
      'type': 'PDF',
      'size': '4.2 MB',
      'icon': Icons.picture_as_pdf,
      'color': Color(0xFFFF6584),
    },
    {
      'title': 'Widget Cheat Sheet',
      'type': 'PDF',
      'size': '1.1 MB',
      'icon': Icons.picture_as_pdf,
      'color': Color(0xFFFF6584),
    },
    {
      'title': 'Project Source Code',
      'type': 'ZIP',
      'size': '12.8 MB',
      'icon': Icons.folder_zip,
      'color': Color(0xFFFFA756),
    },
    {
      'title': 'Session Slides - Week 3',
      'type': 'PPT',
      'size': '3.5 MB',
      'icon': Icons.slideshow,
      'color': Color(0xFF6C63FF),
    },
  ];

  final List<Map<String, dynamic>> quizzes = [
    {
      'title': 'Flutter Basics Quiz',
      'questions': 20,
      'duration': '30 min',
      'score': '85%',
      'status': 'completed',
      'color': Color(0xFF43D9AD),
    },
    {
      'title': 'State Management Test',
      'questions': 15,
      'duration': '20 min',
      'score': null,
      'status': 'pending',
      'color': Color(0xFF6C63FF),
    },
    {
      'title': 'UI/UX Concept Check',
      'questions': 25,
      'duration': '40 min',
      'score': null,
      'status': 'locked',
      'color': Color(0xFFFFA756),
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0E1A),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            _buildTabBar(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildRecordedClasses(),
                  _buildStudyMaterials(),
                  _buildLiveClasses(),
                  _buildQuizzes(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new,
                      color: Colors.white, size: 18),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  icon:
                      const Icon(Icons.bookmark_border, color: Colors.white, size: 20),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Course Modules',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF6C63FF).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: const Color(0xFF6C63FF).withOpacity(0.4)),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.school_outlined,
                        color: Color(0xFF6C63FF), size: 13),
                    SizedBox(width: 4),
                    Text(
                      'Flutter Pro Bootcamp',
                      style: TextStyle(
                          color: Color(0xFF6C63FF),
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF43D9AD).withOpacity(0.15),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  '72% Complete',
                  style: TextStyle(
                      color: Color(0xFF43D9AD),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.07),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TabBar(
        controller: _tabController,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            colors: [Color(0xFF6C63FF), Color(0xFF9C5FFF)],
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF6C63FF).withOpacity(0.4),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white.withOpacity(0.45),
        labelStyle:
            const TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
        unselectedLabelStyle:
            const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
        tabs: const [
          Tab(text: 'Recorded'),
          Tab(text: 'Study\nMaterials'),
          Tab(text: 'Live\nClasses'),
          Tab(text: 'Quizzes'),
        ],
      ),
    );
  }

  // ──────────────────────────── LIVE CLASSES ────────────────────────────

  Widget _buildLiveClasses() {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      itemCount: liveClasses.length,
      itemBuilder: (context, index) {
        final cls = liveClasses[index];
        final bool isLive = cls['status'] == 'live';
        final bool isCompleted = cls['status'] == 'completed';

        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: const Color(0xFF1A1830),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: isLive
                  ? (cls['color'] as Color).withOpacity(0.5)
                  : Colors.white.withOpacity(0.07),
              width: isLive ? 1.5 : 1,
            ),
            boxShadow: isLive
                ? [
                    BoxShadow(
                      color: (cls['color'] as Color).withOpacity(0.2),
                      blurRadius: 20,
                      spreadRadius: -4,
                    ),
                  ]
                : [],
          ),
          child: Column(
            children: [
              // Top color bar
              Container(
                height: 4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      cls['color'] as Color,
                      (cls['color'] as Color).withOpacity(0.3),
                    ],
                  ),
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Status + subject row
                    Row(
                      children: [
                        if (isLive)
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFF6584).withOpacity(0.15),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: const Color(0xFFFF6584)
                                      .withOpacity(0.4)),
                            ),
                            child: const Row(
                              children: [
                                _PulsingDot(),
                                SizedBox(width: 5),
                                Text(
                                  'LIVE NOW',
                                  style: TextStyle(
                                    color: Color(0xFFFF6584),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                              ],
                            ),
                          )
                        else if (isCompleted)
                          _StatusChip(
                              label: 'COMPLETED',
                              color: const Color(0xFF43D9AD))
                        else
                          _StatusChip(
                              label: 'UPCOMING',
                              color: const Color(0xFFFFA756)),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: (cls['color'] as Color).withOpacity(0.12),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            cls['subject'],
                            style: TextStyle(
                              color: cls['color'] as Color,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    // Course name
                    Text(
                      cls['courseName'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.3,
                      ),
                    ),

                    const SizedBox(height: 14),
                    const Divider(color: Colors.white12, height: 1),
                    const SizedBox(height: 14),

                    // Info grid
                    Row(
                      children: [
                        Expanded(
                          child: _InfoTile(
                            icon: Icons.calendar_today_outlined,
                            label: 'Date',
                            value: cls['date'],
                            color: cls['color'] as Color,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _InfoTile(
                            icon: Icons.access_time_outlined,
                            label: 'Time',
                            value: cls['time'],
                            color: cls['color'] as Color,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    Row(
                      children: [
                        Expanded(
                          child: _InfoTile(
                            icon: Icons.timer_outlined,
                            label: 'Duration',
                            value: cls['duration'],
                            color: cls['color'] as Color,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _InfoTile(
                            icon: Icons.people_alt_outlined,
                            label: 'Enrolled',
                            value: '${cls['students']} students',
                            color: cls['color'] as Color,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 14),
                    const Divider(color: Colors.white12, height: 1),
                    const SizedBox(height: 14),

                    // Tutor row + action button
                    Row(
                      children: [
                        // Avatar
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                cls['color'] as Color,
                                (cls['color'] as Color).withOpacity(0.5),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              cls['tutorAvatar'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Instructor',
                              style: TextStyle(
                                color: Colors.white38,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              cls['tutor'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        if (!isCompleted)
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    cls['color'] as Color,
                                    (cls['color'] as Color)
                                        .withOpacity(0.7),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: (cls['color'] as Color)
                                        .withOpacity(0.35),
                                    blurRadius: 12,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Text(
                                isLive ? 'Join Now' : 'Set Reminder',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          )
                        else
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.07),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Text(
                              'View Recording',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // ──────────────────────────── RECORDED CLASSES ────────────────────────────

  Widget _buildRecordedClasses() {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      itemCount: recordedClasses.length,
      itemBuilder: (context, index) {
        final cls = recordedClasses[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 14),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF1A1830),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Colors.white.withOpacity(0.07)),
          ),
          child: Row(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [cls['color'] as Color, (cls['color'] as Color).withOpacity(0.4)],
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Text(cls['thumbnail'],
                        style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.w800)),
                    Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.play_arrow,
                          color: Colors.white, size: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cls['title'],
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700)),
                    const SizedBox(height: 4),
                    Text(cls['tutor'],
                        style: const TextStyle(
                            color: Colors.white, fontSize: 12)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        _MiniChip(
                            icon: Icons.timer_outlined,
                            label: cls['duration'],
                            color: cls['color'] as Color),
                        const SizedBox(width: 8),
                        _MiniChip(
                            icon: Icons.remove_red_eye_outlined,
                            label: cls['views'],
                            color: cls['color'] as Color),
                      ],
                    ),
                  ],
                ),
              ),
              Icon(Icons.download_outlined,
                  color: Colors.white38, size: 22),
            ],
          ),
        );
      },
    );
  }

  // ──────────────────────────── STUDY MATERIALS ────────────────────────────

  Widget _buildStudyMaterials() {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      itemCount: studyMaterials.length,
      itemBuilder: (context, index) {
        final mat = studyMaterials[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF1A1830),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white.withOpacity(0.07)),
          ),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: (mat['color'] as Color).withOpacity(0.15),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(mat['icon'] as IconData,
                    color: mat['color'] as Color, size: 24),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(mat['title'],
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 4),
                    Text('${mat['type']} • ${mat['size']}',
                        style: const TextStyle(
                            color: Colors.white38, fontSize: 12)),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(
                  color: (mat['color'] as Color).withOpacity(0.15),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Download',
                  style: TextStyle(
                      color: mat['color'] as Color,
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // ──────────────────────────── QUIZZES ────────────────────────────

  Widget _buildQuizzes() {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      itemCount: quizzes.length,
      itemBuilder: (context, index) {
        final quiz = quizzes[index];
        final bool isCompleted = quiz['status'] == 'completed';
        final bool isLocked = quiz['status'] == 'locked';

        return Container(
          margin: const EdgeInsets.only(bottom: 14),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF1A1830),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Colors.white.withOpacity(0.07)),
          ),
          child: Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: isLocked
                      ? Colors.white.withOpacity(0.05)
                      : (quiz['color'] as Color).withOpacity(0.15),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(
                  isCompleted
                      ? Icons.check_circle_outline
                      : isLocked
                          ? Icons.lock_outline
                          : Icons.quiz_outlined,
                  color: isLocked
                      ? Colors.white24
                      : quiz['color'] as Color,
                  size: 26,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(quiz['title'],
                        style: TextStyle(
                            color: isLocked ? Colors.white38 : Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700)),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        _MiniChip(
                            icon: Icons.help_outline,
                            label: '${quiz['questions']} Qs',
                            color: isLocked
                                ? Colors.white24
                                : quiz['color'] as Color),
                        const SizedBox(width: 8),
                        _MiniChip(
                            icon: Icons.timer_outlined,
                            label: quiz['duration'],
                            color: isLocked
                                ? Colors.white24
                                : quiz['color'] as Color),
                        if (isCompleted && quiz['score'] != null) ...[
                          const SizedBox(width: 8),
                          _MiniChip(
                              icon: Icons.star_outline,
                              label: quiz['score'],
                              color: const Color(0xFF43D9AD)),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
              if (!isLocked)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    gradient: isCompleted
                        ? null
                        : LinearGradient(colors: [
                            quiz['color'] as Color,
                            (quiz['color'] as Color).withOpacity(0.7),
                          ]),
                    color:
                        isCompleted ? Colors.white.withOpacity(0.07) : null,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    isCompleted ? 'Retake' : 'Start',
                    style: TextStyle(
                        color: isCompleted ? Colors.white38 : Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

// ──────────────────────────── HELPER WIDGETS ────────────────────────────

class _PulsingDot extends StatefulWidget {
  const _PulsingDot();

  @override
  State<_PulsingDot> createState() => _PulsingDotState();
}

class _PulsingDotState extends State<_PulsingDot>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _anim;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 900))
      ..repeat(reverse: true);
    _anim = Tween<double>(begin: 0.4, end: 1.0).animate(_ctrl);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _anim,
      child: Container(
        width: 7,
        height: 7,
        decoration: const BoxDecoration(
          color: Color(0xFFFF6584),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  final String label;
  final Color color;
  const _StatusChip({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.12),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Text(label,
          style: TextStyle(
              color: color,
              fontSize: 10,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.6)),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;
  const _InfoTile(
      {required this.icon,
      required this.label,
      required this.value,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color.withOpacity(0.07),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.15)),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 15),
          const SizedBox(width: 7),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label,
                    style: TextStyle(
                        color: color.withOpacity(0.7),
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.4)),
                const SizedBox(height: 2),
                Text(value,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w600),
                    overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MiniChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  const _MiniChip(
      {required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: color, size: 12),
        const SizedBox(width: 4),
        Text(label,
            style: TextStyle(
                color: color, fontSize: 11, fontWeight: FontWeight.w600)),
      ],
    );
  }
}