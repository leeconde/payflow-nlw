import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BarcodeSannerPage extends StatefulWidget {
  const BarcodeSannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeSannerPageState createState() => _BarcodeSannerPageState();
}

class _BarcodeSannerPageState extends State<BarcodeSannerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              'Escaneie o código de barras do boleto',
              style: TextStyles.buttonBackground,
            ),
            centerTitle: true,
            leading: BackButton(
              color: AppColors.background,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ],
          ),
          bottomNavigationBar: SetLabelButton(
            primaryLabel: 'Inserir código do boleto',
            primaryOnPressed: () {},
            secodaryLabel: 'Adicionar da galeria',
            secodaryOnPressed: () {},
          ),
        ),
      ),
    );
  }
}
