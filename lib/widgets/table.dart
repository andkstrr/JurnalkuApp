import 'package:flutter/material.dart';

// class RecordTable extends StatelessWidget {
//   const RecordTable({super.key, this.items = const []});
//   final List<Map<String, dynamic>> items;

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(10),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: Colors.grey.shade300),
//         ),
//         child: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Column(
//             children: [
//               _buildTableHeader(),
//               items.isEmpty ? _buildEmptyState() : _buildTableRows(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTableHeader() {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 15),
//       color: Colors.grey.shade100,
//       child: Row(
//         children: const [
//           _TableHeaderCell(label: "NO", width: 60),
//           _TableHeaderCell(label: "KATEGORI", width: 150),
//           _TableHeaderCell(label: "CATATAN", width: 250),
//           _TableHeaderCell(label: "STATUS", width: 120),
//           _TableHeaderCell(label: "DILAPORKAN", width: 150),
//           _TableHeaderCell(label: "UPDATE TERAKHIR", width: 180),
//           _TableHeaderCell(label: "AKSI", width: 100),
//         ],
//       ),
//     );
//   }

//   Widget _buildTableRows() {
//     return Column(
//       children: items.asMap().entries.map((e) {
//         final data = e.value;
//         return Container(
//           padding: const EdgeInsets.symmetric(vertical: 15),
//           decoration: BoxDecoration(
//             border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
//           ),
//           child: Row(
//             children: [
//               _JobTableCell(width: 60, child: Text((e.key + 1).toString())),
//               _TableCell(width: 150, child: Text(data["kategori"])),
//               _TableCell(width: 250, child: Text(data["catatan"])),
//               _TableCell(width: 120, child: Text(data["status"])),
//               _TableCell(width: 150, child: Text(data["tanggal_1"])),
//               _TableCell(width: 180, child: Text(data["tanggal_2"])),
//               _TableCell(width: 100, child: Text(data["aksi"])),
//             ],
//           ),
//         );
//       }).toList(),
//     );
//   }

//   Widget _buildEmptyState() {
//     return Container(
//       width: 1010,
//       height: 250,
//       alignment: Alignment.center,
//       color: Colors.white,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             Icons.check_circle_outline,
//             size: 70,
//             color: Colors.grey.shade400,
//           ),
//           const SizedBox(height: 10),
//           const Text(
//             "Tidak ada catatan",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           Text(
//             "Belum ada catatan sikap yang dilaporkan.",
//             style: TextStyle(color: Colors.grey.shade600),
//           ),
//         ],
//       ),
//     );
//   }
// }

class RecordList extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  const RecordList({super.key, this.items = const []});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.isEmpty
          ? [
              const SizedBox(height: 100),
              const Text("Tidak ada catatan"),
            ]
          : items.map((item) => RecordCard(data: item)).toList(),
    );
  }
}

class RecordCard extends StatefulWidget {
  final Map<String, dynamic> data;

  const RecordCard({super.key, required this.data});

  @override
  State<RecordCard> createState() => _RecordCardState();
}

class _RecordCardState extends State<RecordCard>
    with SingleTickerProviderStateMixin {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 5,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () => setState(() => expanded = !expanded),
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TEXT AREA
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Kategori chip
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.red.shade400,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            widget.data["kategori"],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Judul
                        Text(
                          widget.data["catatan"],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Status chip
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade100,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            widget.data["status"],
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    expanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    size: 28,
                  )
                ],
              ),
            ),
          ),

          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: expanded
                ? Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DetailItem(
                            label: "Catatan", value: widget.data["catatan"]),
                        DetailItem(
                            label: "Status", value: widget.data["status"]),
                        DetailItem(
                            label: "Update Terakhir",
                            value: widget.data["tanggal_2"]),
                        DetailItem(
                            label: "Dilaporkan",
                            value: widget.data["tanggal_1"]),
                        DetailItem(
                          label: "Aksi",
                          value: "Lihat",
                          isLink: true,
                        ),
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

class DetailItem extends StatelessWidget {
  final String label;
  final String value;
  final bool isLink;

  const DetailItem({
    super.key,
    required this.label,
    required this.value,
    this.isLink = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          SizedBox(
            width: 140,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                color: isLink ? Colors.blue : Colors.black87,
                decoration: isLink ? TextDecoration.underline : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class SimpleRecordTable extends StatelessWidget {
  const SimpleRecordTable({super.key, this.items = const []});
  final List<Map<String, dynamic>> items;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              _buildTableHeader(),
              items.isEmpty ? _buildEmptyState() : _buildTableRows(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      color: Colors.grey.shade100,
      child: Row(
        children: const [
          _TableHeaderCell(label: "PENGIRIM", width: 150),
          _TableHeaderCell(label: "TANGGAL", width: 150),
          _TableHeaderCell(label: "KONFIRMASI", width: 150),
        ],
      ),
    );
  }

  Widget _buildTableRows() {
    return Column(
      children: items.map((data) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
          ),
          child: Row(
            children: [
              _TableCell(width: 200, child: Text(data["pengirim"])),
              _TableCell(width: 150, child: Text(data["tanggal"])),
              _TableCell(width: 150, child: Text(data["konfirmasi"])),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildEmptyState() {
    return Container(
      width: 400,
      height: 200,
      alignment: Alignment.center,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.people_outline, size: 60, color: Colors.grey.shade400),
          const SizedBox(height: 10),
          const Text(
            "Belum ada permintaan",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          Text(
            "Belum ada yang mengirim permintaan saksi kepada Anda",
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }
}

class _TableHeaderCell extends StatelessWidget {
  final String label;
  final double width;

  const _TableHeaderCell({required this.label, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          letterSpacing: 1,
        ),
      ),
    );
  }
}

class _TableCell extends StatelessWidget {
  final double width;
  final Widget child;

  const _TableCell({required this.width, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: child,
      ),
    );
  }
}

class JobTable extends StatelessWidget {
  const JobTable({super.key, this.items = const []});

  final List<Map<String, dynamic>> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          _buildHeader(),
          items.isEmpty ? _buildEmptyState() : _buildRows(),
          _buildAddButton(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: const Color(0xFFE5ECF5),
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          _ClickableHeader(label: "Pekerjaan", width: 160),
          _ClickableHeader(label: "Tgl", width: 80),
          _ClickableHeader(label: "Saksi", width: 120),
        ],
      ),
    );
  }

  Widget _buildRows() {
    return Column(
      children: items.map((data) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
          ),
          child: Row(
            children: [
              _JobTableCell(width: 200, child: Text(data["pekerjaan"])),
              _JobTableCell(width: 80, child: Text(data["tanggal"])),
              _JobTableCell(width: 120, child: Text(data["saksi"])),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildEmptyState() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Text(
        "Belum ada pekerjaan yang diinput.",
        style: TextStyle(
          color: Colors.grey.shade700,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  Widget _buildAddButton() {
    return GestureDetector(
      onTap: () {}, 
      child: Container(
        padding: const EdgeInsets.all(12),
        alignment: Alignment.centerLeft,
        child: Text(
          "+ Tambah Pekerjaan",
          style: TextStyle(
            color: Colors.blue.shade700,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class _JobTableCell extends StatelessWidget {
  final double width;
  final Widget child;

  const _JobTableCell({required this.width, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, child: child);
  }
}

class _ClickableHeader extends StatelessWidget {
  final String label;
  final double width;

  const _ClickableHeader({required this.label, required this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {}, 
      child: SizedBox(
        width: width,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
  }

class ProgressTable extends StatelessWidget {
  final String title;
  final List<TableRow> rows;

  const ProgressTable({
    super.key,
    required this.title,
    required this.rows,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 0.5,
          color: Colors.grey,
        ),
        gradient: LinearGradient(
          colors: [Colors.grey.shade100, Colors.grey.shade200],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Kompetensi dan materi pembelajaran",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[600],
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey[300],
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Table(
              columnWidths: const {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
                3: FlexColumnWidth(1),
                4: FlexColumnWidth(2),
              },
              border: TableBorder(
                horizontalInside: BorderSide(color: Colors.grey.shade300),
              ),
              children: [
                const TableRow(
                  decoration: BoxDecoration(color: Colors.transparent),
                  children: [
                    _HeaderCell("KOMPETENSI"),
                    _HeaderCell("GURU"),
                    _HeaderCell("TANGGAL"),
                    _HeaderCell("STATUS"),
                    _HeaderCell("CATATAN"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HeaderCell extends StatelessWidget {
  final String text;
  const _HeaderCell(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 11
        ),
      ),
    );
  }
}
