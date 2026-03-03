import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:techstecker_app/provider/navbar/navbar_provider.dart';
import 'package:techstecker_app/views/home/batch_screen.dart';
import 'package:techstecker_app/views/home/courses_screen.dart';
import 'package:techstecker_app/views/home/home_screen.dart';
import 'package:techstecker_app/views/home/service_screen.dart';

class NavbarScreen extends StatelessWidget {
  const NavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavbarProvider>(
      builder: (context, navProvider, child) {
        return Scaffold(
          body: IndexedStack(
            index: navProvider.currentIndex,
            children: const [
              HomeScreen(),
              CoursesScreen(),
              BatchScreen(),
              ServiceScreen(),
            ],
          ),
          bottomNavigationBar: _buildBottomNavigationBar(context, navProvider),
        );
      },
    );
  }

  Widget _buildBottomNavigationBar(
    BuildContext context,
    BottomNavbarProvider navProvider,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                context: context,
                icon: Icons.home_outlined,
                activeIcon: Icons.home,
                label: 'Home',
                index: 0,
                currentIndex: navProvider.currentIndex,
                onTap: () => navProvider.setIndex(0),
              ),
              _buildNavItem(
                context: context,
                icon: Icons.school_outlined,
                activeIcon: Icons.school_outlined,
                label: 'Courses',
                index: 1,
                currentIndex: navProvider.currentIndex,
                onTap: () => navProvider.setIndex(1),
              ),
              _buildNavItem(
                context: context,
                icon: Icons.group_outlined,
                activeIcon: Icons.group_outlined,
                label: 'Batches',
                index: 2,
                currentIndex: navProvider.currentIndex,
                onTap: () => navProvider.setIndex(2),
              ),
              _buildNavItem(
                context: context,
                icon: Icons.miscellaneous_services_outlined,
                activeIcon: Icons.miscellaneous_services_outlined,
                label: 'Services',
                index: 3,
                currentIndex: navProvider.currentIndex,
                onTap: () => navProvider.setIndex(3),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required BuildContext context,
    required IconData icon,
    required IconData activeIcon,
    required String label,
    required int index,
    required int currentIndex,
    required VoidCallback onTap,
  }) {
    final bool isActive = currentIndex == index;
    const Color activeColor = Color(0xFF8B1538);
    final Color inactiveColor = Colors.grey[600]!;

    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        splashColor: activeColor.withOpacity(0.1),
        highlightColor: activeColor.withOpacity(0.05),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: isActive ? activeColor.withOpacity(0.1) : Colors.transparent,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: Icon(
                  isActive ? activeIcon : icon,
                  key: ValueKey(isActive),
                  color: isActive ? activeColor : inactiveColor,
                  size: 26,
                ),
              ),
              const SizedBox(height: 4),
              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 300),
                style: TextStyle(
                  fontSize: isActive ? 12 : 11,
                  fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
                  color: isActive ? activeColor : inactiveColor,
                ),
                child: Text(label),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
