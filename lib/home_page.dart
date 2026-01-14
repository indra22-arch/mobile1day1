import 'package:flutter/material.dart';
import 'utils/formatter.dart';
import 'lainnya_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  bool showSaldo = true;
  final Color gold = const Color(0xFFD4AF37);
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
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _topBar(),
            const SizedBox(height: 24),
            _saldoCard(),
            const SizedBox(height: 20),
            _quickActions(),
            const SizedBox(height: 24),
            _menuGrid(context),
            const SizedBox(height: 24),
            _promoSection(),
          ],
        ),
      ),
    );
  }

  // ================= TOP BAR =================
  Widget _topBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [gold.withOpacity(0.3), gold.withOpacity(0.1)],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.account_balance_wallet, color: gold, size: 24),
            ),
            const SizedBox(width: 12),
            Text(
              'Smart Wallet',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: gold,
              ),
            ),
          ],
        ),
        Row(
          children: [
            _iconButton(Icons.notifications_none, () {
              _showComingSoon(context, 'Notifikasi');
            }),
            const SizedBox(width: 8),
            _iconButton(Icons.help_outline, () {
              _showComingSoon(context, 'Bantuan');
            }),
          ],
        ),
      ],
    );
  }

  Widget _iconButton(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFF161616),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white10),
        ),
        child: Icon(icon, color: Colors.white70, size: 20),
      ),
    );
  }

  // ================= SALDO CARD =================
  Widget _saldoCard() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF161616),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: gold.withOpacity(0.3), width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total Saldo',
                style: TextStyle(color: Colors.white54, fontSize: 13),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: gold.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(Icons.trending_up, color: gold, size: 14),
                    const SizedBox(width: 4),
                    Text(
                      '+12.5%',
                      style: TextStyle(
                        color: gold,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Text(
                  showSaldo ? rupiah.format(12000000) : '••••••••',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: gold,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: gold.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  icon: Icon(
                    showSaldo ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                    color: gold,
                    size: 22,
                  ),
                  onPressed: () => setState(() => showSaldo = !showSaldo),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _miniInfo(Icons.account_balance, 'Rekening', '3'),
                Container(width: 1, height: 30, color: Colors.white10),
                _miniInfo(Icons.credit_card, 'Kartu', '2'),
                Container(width: 1, height: 30, color: Colors.white10),
                _miniInfo(Icons.savings, 'Tabungan', '1'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _miniInfo(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, color: gold, size: 20),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            color: gold,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white38, fontSize: 10),
        ),
      ],
    );
  }

  // ================= QUICK ACTIONS =================
  Widget _quickActions() {
    return Row(
      children: [
        Expanded(
          child: _quickActionButton(
            Icons.arrow_upward,
            'Kirim',
            Colors.blue,
            () => _showComingSoon(context, 'Transfer'),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _quickActionButton(
            Icons.arrow_downward,
            'Minta',
            Colors.green,
            () => _showComingSoon(context, 'Request'),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _quickActionButton(
            Icons.show_chart,
            'Market',
            gold,
            () => _showComingSoon(context, 'Market Saham'),
          ),
        ),
      ],
    );
  }

  Widget _quickActionButton(IconData icon, String label, Color color, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: const Color(0xFF161616),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color.withOpacity(0.3)),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 24),
            const SizedBox(height: 6),
            Text(
              label,
              style: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  // ================= MENU GRID =================
  Widget _menuGrid(BuildContext context) {
    final List<Map<String, dynamic>> menus = [
      {'icon': Icons.send, 'label': 'Transfer', 'color': Colors.blue},
      {'icon': Icons.receipt_long, 'label': 'Pembayaran', 'color': Colors.orange},
      {'icon': Icons.add_circle_outline, 'label': 'Top Up', 'color': Colors.green},
      {'icon': Icons.currency_bitcoin, 'label': 'Crypto', 'color': Colors.amber},
      {'icon': Icons.show_chart, 'label': 'Saham', 'color': Colors.purple},
      {'icon': Icons.card_giftcard, 'label': 'Promo', 'color': Colors.pink},
      {'icon': Icons.monetization_on_outlined, 'label': 'Emas', 'color': gold},
      {'icon': Icons.apps, 'label': 'Lainnya', 'color': Colors.white70},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Layanan',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: gold,
          ),
        ),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: menus.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 18,
            crossAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final item = menus[index];
            return _menuItem(context, item);
          },
        ),
      ],
    );
  }

  Widget _menuItem(BuildContext context, Map<String, dynamic> item) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: () {
        if (item['label'] == 'Lainnya') {
          showLainnyaMenu(context);
        } else {
          _showComingSoon(context, item['label']);
        }
      },
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  (item['color'] as Color).withOpacity(0.2),
                  const Color(0xFF161616),
                ],
              ),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: (item['color'] as Color).withOpacity(0.3),
              ),
            ),
            child: Icon(
              item['icon'],
              color: item['color'],
              size: 28,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            item['label'],
            style: const TextStyle(
              fontSize: 11,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  // ================= PROMO SECTION =================
  Widget _promoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Promo Spesial',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: gold,
              ),
            ),
            TextButton(
              onPressed: () => _showComingSoon(context, 'Lihat Semua'),
              child: Text(
                'Lihat Semua',
                style: TextStyle(color: gold, fontSize: 12),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 140,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _promoCard(
                'Cashback 50%',
                'Transfer gratis biaya admin',
                Icons.local_offer,
                Colors.blue,
              ),
              const SizedBox(width: 12),
              _promoCard(
                'Bonus Emas',
                'Top up minimal Rp 100.000',
                Icons.card_giftcard,
                gold,
              ),
              const SizedBox(width: 12),
              _promoCard(
                'Gratis Biaya',
                'Pembayaran listrik & pulsa',
                Icons.flash_on,
                Colors.orange,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _promoCard(String title, String subtitle, IconData icon, Color color) {
    return InkWell(
      onTap: () => _showComingSoon(context, title),
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color.withOpacity(0.2),
              const Color(0xFF161616),
            ],
          ),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color.withOpacity(0.3)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(icon, color: color, size: 24),
                ),
                const Spacer(),
                Icon(Icons.arrow_forward_ios, color: color, size: 16),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showComingSoon(BuildContext context, String title) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$title coming soon'),
        backgroundColor: gold.withOpacity(0.8),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}