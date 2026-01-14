import 'package:flutter/material.dart';

class TipsKeuanganPage extends StatelessWidget {
  const TipsKeuanganPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tips Keuangan'),
        backgroundColor: const Color(0xFF0E0E0E),
      ),
      backgroundColor: const Color(0xFF0E0E0E),
      body: const Center(child: Text('Edukasi finansial & strategi investasi', style: TextStyle(color: Colors.white70))),
    );
  }
}

class MarketPage extends StatelessWidget {
  const MarketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Market'),
        backgroundColor: const Color(0xFF0E0E0E),
      ),
      backgroundColor: const Color(0xFF0E0E0E),
      body: const Center(child: Text('Info pasar saham & crypto', style: TextStyle(color: Colors.white70))),
    );
  }
}

class WalletToolsPage extends StatelessWidget {
  const WalletToolsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet Tools'),
        backgroundColor: const Color(0xFF0E0E0E),
      ),
      backgroundColor: const Color(0xFF0E0E0E),
      body: const Center(child: Text('QR, kirim aset, export transaksi', style: TextStyle(color: Colors.white70))),
    );
  }
}

class PortofolioPage extends StatelessWidget {
  const PortofolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portofolio'),
        backgroundColor: const Color(0xFF0E0E0E),
      ),
      backgroundColor: const Color(0xFF0E0E0E),
      body: const Center(child: Text('Ringkasan aset & performa', style: TextStyle(color: Colors.white70))),
    );
  }
}

class PulsaDataPage extends StatelessWidget {
  const PulsaDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pulsa & Data'),
        backgroundColor: const Color(0xFF0E0E0E),
      ),
      backgroundColor: const Color(0xFF0E0E0E),
      body: const Center(child: Text('Isi pulsa & paket data', style: TextStyle(color: Colors.white70))),
    );
  }
}

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel'),
        backgroundColor: const Color(0xFF0E0E0E),
      ),
      backgroundColor: const Color(0xFF0E0E0E),
      body: const Center(child: Text('Tiket & perjalanan', style: TextStyle(color: Colors.white70))),
    );
  }
}

class GamesPage extends StatelessWidget {
  const GamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Games'),
        backgroundColor: const Color(0xFF0E0E0E),
      ),
      backgroundColor: const Color(0xFF0E0E0E),
      body: const Center(child: Text('Top up game & voucher', style: TextStyle(color: Colors.white70))),
    );
  }
}

/* ================== LAINNYA MENU ================== */

void showLainnyaMenu(BuildContext context) {
  final Color gold = const Color(0xFFD4AF37);
  
  final List<Map<String, dynamic>> menus = [
    {
      'icon': Icons.pie_chart_outline,
      'label': 'Portofolio',
      'color': Colors.purple,
      'page': () => const PortofolioPage(),
    },
    {
      'icon': Icons.candlestick_chart,
      'label': 'Market',
      'color': Colors.blue,
      'page': () => const MarketPage(),
    },
    {
      'icon': Icons.lightbulb_outline,
      'label': 'Tips Keuangan',
      'color': Colors.amber,
      'page': () => const TipsKeuanganPage(),
    },
    {
      'icon': Icons.phone_android,
      'label': 'Pulsa & Data',
      'color': Colors.green,
      'page': () => const PulsaDataPage(),
    },
    {
      'icon': Icons.flight_takeoff,
      'label': 'Travel',
      'color': Colors.cyan,
      'page': () => const TravelPage(),
    },
    {
      'icon': Icons.sports_esports,
      'label': 'Games',
      'color': Colors.pink,
      'page': () => const GamesPage(),
    },
    {
      'icon': Icons.build_outlined,
      'label': 'Wallet Tools',
      'color': Colors.orange,
      'page': () => const WalletToolsPage(),
    },
    {
      'icon': Icons.security,
      'label': 'Keamanan',
      'color': Colors.red,
      'page': null,
    },
  ];

  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.75,
        decoration: BoxDecoration(
          color: const Color(0xFF0E0E0E),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          border: Border.all(color: gold.withOpacity(0.3), width: 1.5),
        ),
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.white.withOpacity(0.1)),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: gold.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.apps_rounded, color: gold, size: 24),
                      const SizedBox(width: 12),
                      Text(
                        'Layanan Lainnya',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: gold,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.white54),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            // Grid Menu
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: GridView.builder(
                  itemCount: menus.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.85,
                  ),
                  itemBuilder: (context, i) {
                    final menu = menus[i];
                    final Widget Function()? pageBuilder = menu['page'] as Widget Function()?;
                    final Color color = menu['color'] as Color;

                    return InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        if (pageBuilder != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => pageBuilder()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('${menu['label']} segera hadir'),
                              backgroundColor: gold.withOpacity(0.8),
                              behavior: SnackBarBehavior.floating,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          );
                        }
                      },
                      borderRadius: BorderRadius.circular(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Icon Container with Animation Effect
                          Container(
                            width: 68,
                            height: 68,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  color.withOpacity(0.25),
                                  const Color(0xFF161616),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: color.withOpacity(0.4),
                                width: 1.5,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: color.withOpacity(0.15),
                                  blurRadius: 12,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Icon(
                              menu['icon'] as IconData,
                              color: color,
                              size: 32,
                            ),
                          ),
                          const SizedBox(height: 10),
                          // Label
                          Text(
                            menu['label'] as String,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              height: 1.2,
                            ),
                          ),

                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}