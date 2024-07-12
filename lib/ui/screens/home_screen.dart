import 'package:flutter/material.dart';
import 'package:location/location.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> _getCurrentLocation() async {
    final locationData = await Location().getLocation();
    print(locationData.longitude);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restoran app"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: const Text("No location"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  icon: Icon(Icons.location_on),
                  onPressed: _getCurrentLocation,
                  label: Text("Hozirgi manzil"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text(
                    "Open map",
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
