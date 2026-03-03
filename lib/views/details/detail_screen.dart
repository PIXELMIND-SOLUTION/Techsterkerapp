import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: CustomScrollView(
        slivers: [
          _buildAppBar(),
          SliverToBoxAdapter(
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: SlideTransition(
                position: _slideAnimation,
                child: Column(
                  children: [
                    _buildHeroSection(),
                    _buildStatsSection(),
                    _buildWhatYouGetSection(),
                    _buildWhoCanLearnSection(),
                    _buildToolsSection(),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      expandedHeight: 0,
      floating: true,
      pinned: true,
      backgroundColor: Colors.white,
      elevation: 0,
      shadowColor: Colors.black.withOpacity(0.1),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF1A1D3F)),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.share_outlined, color: Color(0xFF1A1D3F)),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.bookmark_border, color: Color(0xFF1A1D3F)),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildHeroSection() {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF0F2B5C), Color(0xFF1A4B8F)],
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF1A4B8F).withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Hexagonal pattern overlay
          Positioned.fill(
            child: CustomPaint(painter: HexagonalPatternPainter()),
          ),
          Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFB93850),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Certified Programs Training',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Data Science',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Master the entire data science pipeline. Learn Python, SQL, statistics, machine learning, and data visualization to solve complex business problems.',
                  style: TextStyle(
                    color: Color(0xFFE0E7FF),
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFB93850),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'Enroll Now',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),

                    // Expanded(
                    //   child: OutlinedButton(
                    //     onPressed: () {},
                    //     style: OutlinedButton.styleFrom(
                    //       foregroundColor: Colors.white,
                    //       side: const BorderSide(color: Colors.white, width: 2),
                    //       padding: const EdgeInsets.symmetric(vertical: 16),
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(12),
                    //       ),
                    //     ),
                    //     child: const Text(
                    //       'Download Syllabus',
                    //       style: TextStyle(
                    //         fontSize: 16,
                    //         fontWeight: FontWeight.w600,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Expanded(
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.4),
                              blurRadius: 10,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          icon: const Icon(Icons.download_rounded, size: 22,color: Colors.white,),
                          label: const Text(
                            'Download Syllabus',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5,
                              color: Colors.white
                            ),
                          ),
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
  }

  Widget _buildStatsSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          _buildStatCard(Icons.access_time, '14-16 weeks', 'Duration'),
          const SizedBox(width: 12),
          _buildStatCard(Icons.people_outline, '999+ Students', 'Enrolled'),
          const SizedBox(width: 12),
          _buildStatCard(Icons.book_outlined, '20+ Lessons', 'Content'),
          const SizedBox(width: 12),
          _buildStatCard(Icons.laptop_mac, 'Online', 'Format'),
        ],
      ),
    );
  }

  Widget _buildStatCard(IconData icon, String value, String label) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(icon, color: const Color(0xFFB93850), size: 28),
            const SizedBox(height: 8),
            Text(
              value,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A1D3F),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(fontSize: 11, color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWhatYouGetSection() {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: Color(0xFFB93850),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                'What You\'ll Get',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A1D3F),
                  letterSpacing: -0.5,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          _buildFeatureCard(
            icon: Icons.menu_book_rounded,
            title: 'End-to-End Projects',
            description: 'Build real-world projects from scratch to deployment',
            color: const Color(0xFFFFE5EC),
            iconColor: const Color(0xFFB93850),
          ),
          const SizedBox(height: 12),
          _buildFeatureCard(
            icon: Icons.psychology_outlined,
            title: 'Machine Learning Focus',
            description:
                'Deep dive into ML algorithms and practical applications',
            color: const Color(0xFFE0ECFF),
            iconColor: const Color(0xFF1A4B8F),
          ),
          const SizedBox(height: 12),
          _buildFeatureCard(
            icon: Icons.construction_outlined,
            title: 'Industry-Relevant Tools',
            description: 'Master the latest tools used by data scientists',
            color: const Color(0xFFFFF0E5),
            iconColor: const Color(0xFFFF7A3D),
          ),
          const SizedBox(height: 12),
          _buildFeatureCard(
            icon: Icons.question_answer_outlined,
            title: 'Capstone Project',
            description:
                'Showcase your skills with a comprehensive final project',
            color: const Color(0xFFF0E5FF),
            iconColor: const Color(0xFF8B5CF6),
          ),
          const SizedBox(height: 12),
          _buildFeatureCard(
            icon: Icons.video_call_outlined,
            title: 'Live Mentor Sessions',
            description: 'Get guidance from industry experts in real-time',
            color: const Color(0xFFE5FFF3),
            iconColor: const Color(0xFF10B981),
          ),
          const SizedBox(height: 12),
          _buildFeatureCard(
            icon: Icons.assignment_outlined,
            title: 'Portfolio & Resume Review',
            description:
                'Polish your professional profile for job applications',
            color: const Color(0xFFFFE5F0),
            iconColor: const Color(0xFFEC4899),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required String description,
    required Color color,
    required Color iconColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: iconColor.withOpacity(0.1), width: 1),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: iconColor, size: 28),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A1D3F),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[700],
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWhoCanLearnSection() {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: Color(0xFFB93850),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                'Who Can Learn',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A1D3F),
                  letterSpacing: -0.5,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          _buildAudienceCard(
            icon: '🎓',
            title: 'Students & Freshers',
            description:
                'Perfect for career starters building rock-solid foundations through practical, industry-aligned training.',
            gradient: const LinearGradient(
              colors: [Color(0xFFFFE5EC), Color(0xFFFFD1DC)],
            ),
          ),
          const SizedBox(height: 12),
          _buildAudienceCard(
            icon: '💼',
            title: 'Working Professionals',
            description:
                'Give your career a powerful restart with practical, industry-driven upskilling.',
            gradient: const LinearGradient(
              colors: [Color(0xFFE0ECFF), Color(0xFFCFE0FF)],
            ),
          ),
          const SizedBox(height: 12),
          _buildAudienceCard(
            icon: '💻',
            title: 'Freelancers',
            description:
                'Freelancers can sharpen their competitive edge with high-demand skills and client-winning strategies to grow their independent careers.',
            gradient: const LinearGradient(
              colors: [Color(0xFFE5FFF3), Color(0xFFD1F5E8)],
            ),
          ),
          const SizedBox(height: 12),
          _buildAudienceCard(
            icon: '🚀',
            title: 'Entrepreneurs',
            description:
                'Entrepreneurs accelerate growth by mastering scalable systems, data-driven decisions, and leadership strategies to outpace competitors.',
            gradient: const LinearGradient(
              colors: [Color(0xFFFFF0E5), Color(0xFFFFE5D1)],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAudienceCard({
    required String icon,
    required String title,
    required String description,
    required Gradient gradient,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(icon, style: const TextStyle(fontSize: 40)),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A1D3F),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildToolsSection() {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: Color(0xFFB93850),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                'Tools & Platforms\n You\'ll Learn',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A1D3F),
                  letterSpacing: -0.5,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              _buildToolChip('Python', Colors.blue),
              _buildToolChip('SQL', Colors.orange),
              _buildToolChip('TensorFlow', Colors.orange),
              _buildToolChip('PyTorch', Colors.red),
              _buildToolChip('Pandas', Colors.purple),
              _buildToolChip('NumPy', Colors.blue),
              _buildToolChip('Scikit-learn', Colors.orange),
              _buildToolChip('R', Colors.blue),
              _buildToolChip('Tableau', Colors.blue),
              _buildToolChip('Power BI', Colors.yellow),
              _buildToolChip('MySQL', Colors.blue),
              _buildToolChip('MongoDB', Colors.green),
              _buildToolChip('Git', Colors.red),
              _buildToolChip('Jupyter', Colors.orange),
              _buildToolChip('Gemini AI', Colors.purple),
              _buildToolChip('OpenAI', Colors.green),
              _buildToolChip('Slack', Colors.purple),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildToolChip(String name, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3), width: 1),
      ),
      child: Text(
        name,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: color.withOpacity(0.9),
        ),
      ),
    );
  }
}

class HexagonalPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.05)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    const hexSize = 50.0;
    final hexWidth = hexSize * 1.732;
    final hexHeight = hexSize * 2;

    for (
      double y = -hexHeight;
      y < size.height + hexHeight;
      y += hexHeight * 0.75
    ) {
      for (double x = -hexWidth; x < size.width + hexWidth; x += hexWidth) {
        final offset = (y / (hexHeight * 0.75)).floor() % 2 == 1
            ? hexWidth / 2
            : 0;
        _drawHexagon(canvas, paint, Offset(x + offset, y), hexSize);
      }
    }
  }

  void _drawHexagon(Canvas canvas, Paint paint, Offset center, double size) {
    final path = Path();
    for (int i = 0; i < 6; i++) {
      final angle = (60 * i - 30) * 3.14159 / 180;
      final x =
          center.dx +
          size * (i == 0 ? 1 : 0.866025) * (i < 3 ? 1 : -1).toDouble();
      final y =
          center.dy +
          size * 0.5 * (i == 0 || i == 5 ? 0 : (i < 3 ? 1 : -1)).toDouble();

      if (i == 0) {
        path.moveTo(center.dx + size * 0.866025, center.dy);
      } else {
        final nextAngle = (60 * i - 30) * 3.14159 / 180;
        path.lineTo(
          center.dx +
              size *
                  (1.732 / 2) *
                  (i % 3 == 0 ? 0 : (i < 3 ? 1 : -1)).toDouble(),
          center.dy +
              size *
                  (i == 1 || i == 2 ? 1 : (i == 4 || i == 5 ? -1 : 0))
                      .toDouble(),
        );
      }
    }
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
