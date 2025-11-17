import 'package:flutter/material.dart';
import 'package:flutter_ai_shop_test/core/constants/constants.dart';
import 'package:flutter_ai_shop_test/core/theme/app_spacing.dart';
import 'package:flutter_ai_shop_test/core/utils/search_debouncer.dart';
import 'package:flutter_ai_shop_test/features/products/presentation/bloc/products_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppSearchBar extends HookWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProductsBloc>();
    final controller = useTextEditingController();
    final debouncer = useMemoized(
      () => SearchDebouncer(milliseconds: Constants.debouncerTimer),
    );

    useListenable(controller);
    useEffect(() {
      return debouncer.dispose;
    }, [debouncer]);

    return Padding(
      padding: AppSpacing.padAll(AppSpacing.l),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: Constants.searchBarHintText,
          prefixIcon: const Icon(Icons.search),
          suffixIcon: controller.text.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    controller.clear();
                    bloc.add(const ProductsEvent.search(''));
                  },
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSpacing.l),
          ),
          filled: true,
        ),
        onChanged: (query) {
          debouncer.run(() {
            bloc.add(ProductsEvent.search(query));
          });
        },
      ),
    );
  }
}
