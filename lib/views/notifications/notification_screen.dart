import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;
  String _selectedFilter = 'All';
  final List<String> _filters = ['All', 'Grades', 'Classes', 'Events', 'Deadlines'];

  final List<Map<String, dynamic>> _notifications = [
    {
      'type': 'grade',
      'icon': Icons.star_rounded,
      'color': Color(0xFFFFB347),
      'bgColor': Color(0xFFFFF4E0),
      'title': 'New Grade Posted',
      'subtitle': 'Mathematics — Calculus II',
      'message': 'Your midterm exam has been graded. You scored 94/100! 🎉',
      'time': '2 min ago',
      'isRead': false,
      'tag': 'Grades',
    },
    {
      'type': 'class',
      'icon': Icons.videocam_rounded,
      'color': Color(0xFF6C63FF),
      'bgColor': Color(0xFFF0EEFF),
      'title': 'Class Starting Soon',
      'subtitle': 'Physics 201 — Dr. Amara',
      'message': 'Your online class begins in 15 minutes. Join the session.',
      'time': '10 min ago',
      'isRead': false,
      'tag': 'Classes',
    },
    {
      'type': 'deadline',
      'icon': Icons.timer_rounded,
      'color': Color(0xFFFF6B6B),
      'bgColor': Color(0xFFFFEEEE),
      'title': 'Assignment Due Tomorrow',
      'subtitle': 'English Literature — Essay',
      'message': 'Your 1500-word essay on Shakespeare is due in 24 hours.',
      'time': '1 hr ago',
      'isRead': false,
      'tag': 'Deadlines',
    },
    {
      'type': 'event',
      'icon': Icons.celebration_rounded,
      'color': Color(0xFF26C6DA),
      'bgColor': Color(0xFFE0F9FC),
      'title': 'Campus Event Today',
      'subtitle': 'Science & Innovation Fair',
      'message': 'The annual fair starts at 3 PM in the Main Hall. Don\'t miss it!',
      'time': '3 hr ago',
      'isRead': true,
      'tag': 'Events',
    },
    {
      'type': 'grade',
      'icon': Icons.star_rounded,
      'color': Color(0xFFFFB347),
      'bgColor': Color(0xFFFFF4E0),
      'title': 'Assignment Graded',
      'subtitle': 'History — Chapter Review',
      'message': 'Prof. Kim has graded your chapter 4 review. Score: 88/100.',
      'time': 'Yesterday',
      'isRead': true,
      'tag': 'Grades',
    },
    {
      'type': 'class',
      'icon': Icons.book_rounded,
      'color': Color(0xFF6C63FF),
      'bgColor': Color(0xFFF0EEFF),
      'title': 'New Course Material',
      'subtitle': 'Chemistry — Lab Manual',
      'message': 'Professor has uploaded the updated lab manual for Unit 5.',
      'time': 'Yesterday',
      'isRead': true,
      'tag': 'Classes',
    },
    {
      'type': 'deadline',
      'icon': Icons.timer_rounded,
      'color': Color(0xFFFF6B6B),
      'bgColor': Color(0xFFFFEEEE),
      'title': 'Project Deadline Extended',
      'subtitle': 'Computer Science — Group Project',
      'message': 'Good news! The deadline has been extended by 3 days.',
      'time': '2 days ago',
      'isRead': true,
      'tag': 'Deadlines',
    },
    {
      'type': 'event',
      'icon': Icons.groups_rounded,
      'color': Color(0xFF26C6DA),
      'bgColor': Color(0xFFE0F9FC),
      'title': 'Study Group Invitation',
      'subtitle': 'Mathematics Study Circle',
      'message': 'You\'ve been invited to join the Math Study Group. 8 members.',
      'time': '3 days ago',
      'isRead': true,
      'tag': 'Events',
    },
  ];

  List<Map<String, dynamic>> get _filtered {
    if (_selectedFilter == 'All') return _notifications;
    return _notifications
        .where((n) => n['tag'] == _selectedFilter)
        .toList();
  }

  int get _unreadCount =>
      _notifications.where((n) => n['isRead'] == false).length;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeOut,
    );
    _fadeController.forward();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    super.dispose();
  }

  void _markAllRead() {
    setState(() {
      for (var n in _notifications) {
        n['isRead'] = true;
      }
    });
  }

  void _markRead(int index) {
    setState(() {
      _notifications[index]['isRead'] = true;
    });
  }

  void _deleteNotification(Map<String, dynamic> item) {
    final index = _notifications.indexOf(item);
    if (index == -1) return;

    final removed = _notifications[index];
    setState(() => _notifications.removeAt(index));

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        backgroundColor: const Color(0xFF1A1A2E),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        duration: const Duration(seconds: 3),
        content: Row(
          children: [
            const Icon(Icons.delete_rounded, color: Color(0xFFFF6B6B), size: 18),
            const SizedBox(width: 10),
            const Expanded(
              child: Text(
                'Notification Deleted Successfully',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() => _notifications.insert(index, removed));
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
              child: const Text(
                'Undo',
                style: TextStyle(
                  color: Color(0xFF6C63FF),
                  fontWeight: FontWeight.w800,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            _buildHeader(),
            _buildFilterBar(),
            _buildNotificationList(),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
          ],
        ),
      ),
    );
  }

  Widget _buildSwipeBackground() {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFFF6B6B),
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.only(right: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.delete_rounded, color: Colors.white, size: 26),
          const SizedBox(height: 4),
          const Text(
            'Delete',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return SliverAppBar(
      expandedHeight: 130,
      floating: false,
      pinned: true,
      elevation: 0,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16, top: 8),
        child: CircleAvatar(
          backgroundColor: const Color(0xFFF0EEFF),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded,
                size: 18, color: Color(0xFF6C63FF)),
            onPressed: () => Navigator.maybePop(context),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16, top: 8),
          child: CircleAvatar(
            backgroundColor: const Color(0xFFF0EEFF),
            child: IconButton(
              icon: const Icon(Icons.done_all_rounded,
                  size: 20, color: Color(0xFF6C63FF)),
              tooltip: 'Mark all as read',
              onPressed: _markAllRead,
            ),
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.only(left: 20, bottom: 16),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF1A1A2E),
                    letterSpacing: -0.5,
                  ),
                ),
                if (_unreadCount > 0) ...[
                  const SizedBox(width: 10),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
                    decoration: BoxDecoration(
                      color: const Color(0xFF6C63FF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '$_unreadCount new',
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterBar() {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(bottom: 14, top: 4),
        child: SizedBox(
          height: 38,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: _filters.length,
            itemBuilder: (context, index) {
              final filter = _filters[index];
              final isSelected = _selectedFilter == filter;
              return GestureDetector(
                onTap: () => setState(() => _selectedFilter = filter),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeInOut,
                  margin: const EdgeInsets.only(right: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? const Color(0xFF6C63FF)
                        : const Color(0xFFF0EEFF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    filter,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: isSelected
                          ? Colors.white
                          : const Color(0xFF6C63FF),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationList() {
    final filtered = _filtered;
    if (filtered.isEmpty) {
      return SliverFillRemaining(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0EEFF),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Icon(Icons.notifications_off_rounded,
                    size: 40, color: Color(0xFF6C63FF)),
              ),
              const SizedBox(height: 16),
              const Text(
                'No notifications here',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1A1A2E),
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'You\'re all caught up!',
                style: TextStyle(fontSize: 13, color: Color(0xFF9E9EBF)),
              ),
            ],
          ),
        ),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final allFiltered = filtered;
            final item = allFiltered[index];
            final originalIndex = _notifications.indexOf(item);

            return TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 1),
              duration: Duration(milliseconds: 300 + index * 60),
              curve: Curves.easeOut,
              builder: (context, value, child) => Opacity(
                opacity: value,
                child: Transform.translate(
                  offset: Offset(0, 20 * (1 - value)),
                  child: child,
                ),
              ),
              child: Dismissible(
                key: ValueKey(item['title'].toString() + item['time'].toString()),
                direction: DismissDirection.endToStart,
                onDismissed: (_) => _deleteNotification(item),
                background: _buildSwipeBackground(),
                child: _NotificationCard(
                  data: item,
                  onTap: () => _markRead(originalIndex),
                ),
              ),
            );
          },
          childCount: filtered.length,
        ),
      ),
    );
  }
}

class _NotificationCard extends StatefulWidget {
  final Map<String, dynamic> data;
  final VoidCallback onTap;

  const _NotificationCard({required this.data, required this.onTap});

  @override
  State<_NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<_NotificationCard> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final isRead = widget.data['isRead'] as bool;
    final color = widget.data['color'] as Color;
    final bgColor = widget.data['bgColor'] as Color;

    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapUp: (_) {
        setState(() => _pressed = false);
        widget.onTap();
      },
      onTapCancel: () => setState(() => _pressed = false),
      child: AnimatedScale(
        scale: _pressed ? 0.97 : 1.0,
        duration: const Duration(milliseconds: 120),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isRead ? Colors.white : const Color(0xFFFAF9FF),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: isRead
                  ? const Color(0xFFEEEEF5)
                  : const Color(0xFFD5D0FF),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: isRead
                    ? Colors.black.withOpacity(0.04)
                    : const Color(0xFF6C63FF).withOpacity(0.08),
                blurRadius: 16,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(widget.data['icon'] as IconData,
                    color: color, size: 24),
              ),
              const SizedBox(width: 14),

              // Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.data['title'] as String,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: isRead
                                  ? FontWeight.w600
                                  : FontWeight.w800,
                              color: const Color(0xFF1A1A2E),
                            ),
                          ),
                        ),
                        if (!isRead)
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Color(0xFF6C63FF),
                              shape: BoxShape.circle,
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: bgColor,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            widget.data['subtitle'] as String,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: color,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.data['message'] as String,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFF5A5A7A),
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.access_time_rounded,
                            size: 13, color: Color(0xFFAAAAAC)),
                        const SizedBox(width: 4),
                        Text(
                          widget.data['time'] as String,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFFAAAAAC),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        if (!isRead)
                          TextButton(
                            onPressed: widget.onTap,
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              backgroundColor: const Color(0xFFF0EEFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Mark read',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF6C63FF),
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
        ),
      ),
    );
  }
}