import 'package:flutter/material.dart';
import 'package:promdifarm_app/core/const/index.dart';
import 'package:promdifarm_app/data/models/parcel/parcel.model.dart';

class ParcelCard extends StatelessWidget {
  final Parcel parcel;
  ParcelCard(this.parcel);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: SECONDARY,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7),
                  topRight: Radius.circular(7),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Item Information',
                      style: TextStyle(
                        color: TEXT_LIGHT,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    '${parcel.refNum}',
                    style: TextStyle(
                      color: TEXT_LIGHT,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: DARK,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.maxFinite,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: ACCENT,
                              size: 28.0,
                            ),
                            Expanded(
                              child: Text(
                                ' ${parcel.pickupAddress.address.fullAddress}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: NEUTRAL_PRIMARY_NORMAL,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          children: [
                            Text(
                              'No. Items: ',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: NEUTRAL_PRIMARY_NORMAL,
                              ),
                            ),
                            Text(
                              '${parcel.items.length}',
                              style: TextStyle(
                                color: NEUTRAL_PRIMARY_NORMAL,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Fee: ₱',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: NEUTRAL_PRIMARY_NORMAL,
                              ),
                            ),
                            Text(
                              '${parcel.fee}',
                              style: TextStyle(
                                color: NEUTRAL_PRIMARY_NORMAL,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Weight: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: NEUTRAL_PRIMARY_NORMAL),
                            ),
                            Text(
                              '${parcel.weight}',
                              style: TextStyle(
                                color: NEUTRAL_PRIMARY_NORMAL,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Payment Type.: ',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: NEUTRAL_PRIMARY_NORMAL,
                              ),
                            ),
                            Text(
                              parcel.payment,
                              style: TextStyle(
                                color: NEUTRAL_PRIMARY_NORMAL,
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
          ],
        ),
      ),
    );
  }
}
