import 'package:faker_dart/faker_dart.dart';

import 'models.dart';

final faker = Faker.instance;
final List<String> names = [
  'London',
  'Paris',
  'Venice',
  'Monaco',
  'Greece',
  'Hawaii',
  'Cancun',
];
final List<String> descriptions = [
  'London is the capital and largest city of England and the United Kingdom, with a population of just over 9 million. ',
  "Paris is the capital and most populous city of France, with an estimated population of 2,165,423 residents in 2019 in an area of more than 105 km² (41 sq mi), making it the 34th most densely populated city in the world in 2020. ",
  'Venice is a city in northeastern Italy and the capital of the Veneto region. It is built on a group of 118 small islands that are separated by canals and linked by over 400 bridges. ',
  'Monaco, officially the Principality of Monaco, is a sovereign city-state and microstate on the French Riviera a few kilometres west of the Italian region of Liguria, in Western Europe, on the Mediterranean Sea.',
  'Greece!! It is situated on the southern tip of the Balkans, and is located at the crossroads of Europe, Asia, and Africa. ',
  'Hawaii, is located in the Pacific Ocean about 2,000 miles (3,200 km) from the U.S. mainland. Tourism in Hawai’i has been considered as an escape from reality resulting in the dismissal of violence faced by Native Hawaiians and locals living on the land. ',
  'Cancún, a city in southeast Mexico on the northeast coast of the Yucatán Peninsula in the Mexican state of Quintana Roo. There are some small Mayan vestiges of the pre-Columbian Maya civilization in Cancún. El Rey (Las Ruinas del Rey) is located in the Hotel Zone. ',
];
final List<String> images = [
  'https://img.freepik.com/free-photo/famous-tower-bridge-evening-london-england_268835-1390.jpg?w=1800&t=st=1663417318~exp=1663417918~hmac=6feab7b31beba464f61feb848ce07d27d3254f3840aaf43af522d7f7212e0a3b',
  'https://img.freepik.com/free-photo/famous-eiffel-tower-paris-with-gorgeous-colors_268835-830.jpg?w=1800&t=st=1663417388~exp=1663417988~hmac=990e20eb2cbfb3b04e7c30be01c6525cda799d8e167212fffedd1697a4383770',
  'https://img.freepik.com/free-photo/boats-parked-water-venice-church-san-giorgio-maggiore-background_181624-16739.jpg?w=1800&t=st=1663418868~exp=1663419468~hmac=c6d06b92c7602b6a88495c79d781df37538407866206222623346e7074c9ccfa',
  'https://img.freepik.com/free-photo/wide-angle-shot-city-monte-carlo-monaco_181624-40863.jpg?w=1800&t=st=1663419015~exp=1663419615~hmac=888d6a8127034f7bbc743f009d38beb3843bec80ead2064fd385b26844d13664',
  'https://img.freepik.com/free-photo/alley-travel-aegean-greek-vacation_1203-4773.jpg?w=1800&t=st=1663419229~exp=1663419829~hmac=2e00feb960b863f01870f70f90ba8d2f44dbf64ac29726cc8880344c41da49a6',
  'https://img.freepik.com/free-photo/landscape-tropical-vacation-palm-summer_1203-5352.jpg?w=1800&t=st=1663419272~exp=1663419872~hmac=1e1672b3d43e1084b030098144648d0c58b384b69e64706d937e6cbcb160d0ba',
  'https://img.freepik.com/free-photo/aerial-view-blue-ocean-wave-sand-beach_335224-730.jpg?w=740&t=st=1663419979~exp=1663420579~hmac=c1a16288a0dc546452c827434b45fe9fbbad891ac9f040fe52e06c2bd4e94e06',
];

final List<CardItem> cardItems = List.generate(
  7,
  (index) => CardItem(
    title: names[index],
    image: images[index],
    description: descriptions[index],
    places: List.generate(
      6,
      (index) => Place(
        name: faker.company.companyName(),
        image: faker.image.image(),
        description: faker.company.catchPhrase(),
      ),
    ),
  ),
);
