import 'package:Health_Spot/presentation/screens/disease%20diagnosis/disease_diagnosis.dart';
import 'package:Health_Spot/presentation/screens/disease_layout/disease_layout.dart';
import 'package:Health_Spot/presentation/screens/emergency_cases/Emergency_cases.dart';
import 'package:Health_Spot/presentation/screens/herbal%20medicine/herbal_medicine.dart';
import 'package:Health_Spot/presentation/screens/physio/physio.dart';
import 'package:Health_Spot/presentation/screens/side_effects/sides_effects.dart';
import 'package:Health_Spot/presentation/screens/test.dart';

List<Map> categories = [
  {
    'image': 'assets/images/reminder.jpg',
    'name': 'Reminder',
    'screen': DiseaseLayoutScreens(),
  },
  {
    'image': 'assets/images/First Aid.jpg',
    'name': 'Emergency',
    'screen': EmergencyCases()
  },
  {
    'image': 'assets/images/Physiotherapy.jpg',
    'name': 'Physio Therapy',
    'screen': Physio()
  },
  {
    'image': 'assets/images/sideseffect.jpg',
    'name': 'Sides Effects',
    'screen': SidesEffects()
  },
  {
    'image': 'assets/images/herbalM.jpg',
    'name': 'Herbal Medicine',
    'screen': HerbalMedicine()
  },
  // {
  //   'image': 'assets/images/disease diagnosis.jpeg',
  //   'name': 'disease diagnosis',
  //   'screen': DiseaseDiagnosis()
  // },
];
