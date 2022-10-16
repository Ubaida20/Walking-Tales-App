part of '../challenges.dart';

class _Friends extends StatelessWidget {
  const _Friends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: Space.all(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                StaticUtils.dp,
                height: 70.h,
              ),
              Column(
                children: [
                  Text(
                    'Newbie',
                    style: AppText.b1,
                  ),
                  Text(
                    'Lv. 9',
                    style: AppText.h2b,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'Friends',
                    style: AppText.b1,
                  ),
                  Text(
                    '229',
                    style: AppText.h2b,
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'Points',
                    style: AppText.b1,
                  ),
                  Text(
                    '1.5K',
                    style: AppText.h2b,
                  )
                ],
              )
            ],
          ),
          Space.y1,
          AppButton(
            color: Colors.green,
            child: Text(
              'Create challenge',
              style: AppText.b1b.cl(Colors.white),
            ),
            onPressed: () {},
          ),
          AppDividers.simple(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Current leaderboard',
                style: AppText.h2b,
              ),
              InkWell(
                onTap: () {},
                child: const Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
          Space.y1,
          SizedBox(
            height: AppDimensions.normalize(135),
            width: MediaQuery.of(context).size.width,
            child: SfCartesianChart(
              isTransposed: true,
              series: [
                BarSeries(
                  width: 0.95.w,
                  color: Colors.green,
                  borderColor: Colors.green,
                  dataLabelSettings: DataLabelSettings(
                    isVisible: true,
                    builder: (data, point, series, pointIndex, seriesIndex) {
                      return Image.asset(
                        StaticUtils.dp,
                        height: 30.h,
                      );
                    },
                  ),
                  dataSource: const [9, 8, 7, 6, 5],
                  xValueMapper: (donation, value) => donation,
                  yValueMapper: (donation, value) => value,
                ),
              ],
            ),
          ),
          AppDividers.simple(context),
          Text(
            'Friends challenges',
            style: AppText.h2b,
          ),
          Text(
            'Compete with your friends in winning both your health and the pool prize!',
            style: AppText.b2,
          ),
          Space.y1,
          for (int i = 0; i < 12; i++)
            const WidgetAnimator(
              child: ChallengeCard(
                shadowColor: Colors.green,
              ),
            )
        ],
      ),
    );
  }
}
