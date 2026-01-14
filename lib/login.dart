import 'package:flutter/material.dart';
import 'main_navigation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  final usernameC = TextEditingController();
  final passwordC = TextEditingController();
  bool obscure = true;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );
    
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    usernameC.dispose();
    passwordC.dispose();
    super.dispose();
  }

  void login() {
    if (usernameC.text.isNotEmpty && passwordC.text.isNotEmpty) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const MainNavigation()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Username & Password wajib diisi'),
          backgroundColor: const Color(0xFFD4AF37),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final accent = const Color(0xFFD4AF37);
    final width = MediaQuery.of(context).size.width * 0.4;

    return Scaffold(
      backgroundColor: const Color(0xFF0E0E0E),
      body: Center(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Container(
            width: width,
            padding: const EdgeInsets.all(48),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Logo
                Icon(
                  Icons.account_balance_wallet,
                  size: 64,
                  color: accent,
                ),
                const SizedBox(height: 24),
                
                // Title
                Text(
                  'SMART WALLET',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: accent,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(height: 48),
                
                // Username
                _buildTextField(
                  usernameC,
                  'Username',
                  Icons.person_outline,
                ),
                const SizedBox(height: 16),
                
                // Password
                _buildTextField(
                  passwordC,
                  'Password',
                  Icons.lock_outline,
                  isPassword: true,
                ),
                const SizedBox(height: 16),
                
                // Forgot password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Fitur reset password coming soon'),
                          backgroundColor: accent,
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(0, 0),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      'Lupa Password?',
                      style: TextStyle(
                        color: accent,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                
                // Login Button
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton(
                    onPressed: login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: accent,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'MASUK',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                
                // Register link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum punya akun? ',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 14,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('Fitur registrasi coming soon'),
                            backgroundColor: accent,
                            behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(0, 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        'Daftar',
                        style: TextStyle(
                          color: accent,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
    TextEditingController controller,
    String label,
    IconData icon, {
    bool isPassword = false,
  }) {
    final accent = const Color(0xFFD4AF37);
    
    return TextField(
      controller: controller,
      obscureText: isPassword ? obscure : false,
      style: const TextStyle(color: Colors.white, fontSize: 15),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.white54, size: 20),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                  color: Colors.white54,
                  size: 20,
                ),
                onPressed: () => setState(() => obscure = !obscure),
              )
            : null,
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.white.withOpacity(0.4),
          fontSize: 14,
        ),
        floatingLabelStyle: TextStyle(color: accent),
        filled: true,
        fillColor: const Color(0xFF1A1A1A),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: accent, width: 1.5),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
      ),
    );
  }
}