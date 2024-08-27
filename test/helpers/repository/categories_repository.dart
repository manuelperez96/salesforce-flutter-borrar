import 'package:sf_commerce_sdk/models/responses/category/category.dart';

const responseJSON = {
  'limit': 1,
  'data': [
    {
      'categories': [
        {
          'id': 'newarrivals',
          'name': 'New Arrivals',
          'onlineSubCategoriesCount': 3,
          'pageDescription':
              'Shop all new arrivals including women and mens clothing, '
                  'jewelry, accessories, suits & more at Commerce Cloud',
          'pageTitle': 'Women and Mens New Arrivals in Clothing, Jewelry, '
              'Accessories & More',
          'parentCategoryId': 'root',
          'parentCategoryTree': [
            {'id': 'newarrivals', 'name': 'New Arrivals'},
          ],
          'c_enableCompare': false,
          'c_headerMenuBanner':
              '<img alt="New Arrivals Image" src="https://zzrj-031.dx.commercecloud.salesforce.com/on/demandware.static/-/Sites-storefront-catalog-m-en/default/dwa8ca251a/images/slot/landing/cat-landing-slotbottom-womens-clothing.jpg" width="225" />',
          'c_headerMenuOrientation': 'Vertical',
          'c_showInMenu': true,
        },
        {
          'id': 'womens',
          'name': 'Womens',
          'onlineSubCategoriesCount': 3,
          'pageDescription':
              "Women's range. Fashionable and stylish Shoes, jackets and  all "
                  'other clothing for unbeatable comfort day in, day out. '
                  'Practical and fashionable styles wherever the occasion.',
          'pageKeywords':
              'womens boots, womens shoes, wome sandals, womens clothing, '
                  'womens apparel, womens jackets',
          'pageTitle': "Women's Footwear, Outerwear, Clothing & Accessories",
          'parentCategoryId': 'root',
          'parentCategoryTree': [
            {'id': 'womens', 'name': 'Womens'},
          ],
          'c_enableCompare': true,
          'c_headerMenuBanner':
              "<img alt=\"Women's Catalog Image\" src=\"https://zzrj-031.dx.commercecloud.salesforce.com/on/demandware.static/-/Sites-storefront-catalog-m-en/default/dwaae4a0a2/images/slot/landing/cat-landing-slotbanner-womens.jpg\" width=\"480\" />",
          'c_headerMenuOrientation': 'Horizontal',
          'c_showInMenu': true,
          'c_slotBannerImage':
              'https://zzrj-031.dx.commercecloud.salesforce.com/on/demandware.static/-/Sites-storefront-catalog-m-en/default/dwaae4a0a2/images/slot/landing/cat-landing-slotbanner-womens.jpg',
        },
        {
          'id': 'mens',
          'name': 'Mens',
          'onlineSubCategoriesCount': 2,
          'pageDescription':
              "Men's range. Hard-wearing boots, jackets and clothing for "
                  'unbeatable comfort day in, day out. Practical, easy-to-wear '
                  "styles wherever you're headed.",
          'pageKeywords': 'mens boots, mens shoes, mens clothing, mens apparel,'
              ' mens jackets',
          'pageTitle': "Men's Footwear, Outerwear, Clothing & Accessories",
          'parentCategoryId': 'root',
          'parentCategoryTree': [
            {'id': 'mens', 'name': 'Mens'},
          ],
          'c_enableCompare': true,
          'c_headerMenuBanner':
              "<img alt=\"Men's Category Image\" src=\"https://zzrj-031.dx.commercecloud.salesforce.com/on/demandware.static/-/Sites-storefront-catalog-m-en/default/dwe5dec932/images/slot/landing/cat-landing-slotbanner-mens.jpg\" width=\"433\" />",
          'c_headerMenuOrientation': 'Horizontal',
          'c_showInMenu': true,
          'c_slotBannerImage':
              'https://zzrj-031.dx.commercecloud.salesforce.com/on/demandware.static/-/Sites-storefront-catalog-m-en/default/dwe5dec932/images/slot/landing/cat-landing-slotbanner-mens.jpg',
        },
        {
          'id': 'electronics',
          'name': 'Electronics',
          'onlineSubCategoriesCount': 5,
          'pageDescription':
              'Shop Electronics including the latest in televisions, digital'
                  ' cameras, camcorders, mp3, ipod, mobil phones, GPS & gaming'
                  ' at Commerce Cloud',
          'pageKeywords': 'televisions, digital cameras, camcorders, mp3, ipod,'
              ' mobil phones, GPS, gaming',
          'pageTitle':
              'Shop Electronics Including Televisions, Digital Cameras,'
                  ' iPods & More',
          'parentCategoryId': 'root',
          'parentCategoryTree': [
            {'id': 'electronics', 'name': 'Electronics'},
          ],
          'c_enableCompare': true,
          'c_headerMenuBanner':
              '<img alt="Electronics Category Image" src="https://zzrj-031.dx.commercecloud.salesforce.com/on/demandware.static/-/Sites-storefront-catalog-m-en/default/dw145c36f2/images/slot/landing/cat-landing-slotbottom-electronics.jpg" width="195" />',
          'c_headerMenuOrientation': 'Vertical',
          'c_showInMenu': true,
        },
        {
          'id': 'gift-certificates',
          'name': 'Gift Certificates',
          'onlineSubCategoriesCount': 0,
          'parentCategoryId': 'root',
          'parentCategoryTree': [
            {'id': 'gift-certificates', 'name': 'Gift Certificates'},
          ],
          'c_alternativeUrl':
              'https://zzrj-031.dx.commercecloud.salesforce.com/on/demandware.store/Sites-RefArch-Site/en_US/GiftCert-Purchase',
          'c_enableCompare': false,
          'c_showInMenu': true,
        },
        {
          'id': 'top-seller',
          'name': 'Top Sellers',
          'onlineSubCategoriesCount': 0,
          'parentCategoryId': 'root',
          'parentCategoryTree': [
            {'id': 'top-seller', 'name': 'Top Sellers'},
          ],
          'c_alternativeUrl':
              'https://zzrj-031.dx.commercecloud.salesforce.com/on/demandware.store/Sites-RefArch-Site/en_US/Search-Show?cgid=root&amp;srule=top-sellers',
          'c_enableCompare': false,
          'c_showInMenu': true,
        }
      ],
      'id': 'root',
      'name': 'Storefront Catalog - EN - RA',
      'onlineSubCategoriesCount': 6,
    }
  ],
  'total': 1,
};

const categoryListModel = [
  Category(
    id: 'id',
    name: 'name',
    onlineSubCategoriesCount: 4,
    parentCategoryId: 'parentCategoryId',
    cHeaderMenuBanner: 'cHeaderMenuBanner',
  ),
  Category(
    id: 'id2',
    name: 'name',
    onlineSubCategoriesCount: 4,
    parentCategoryId: 'parentCategoryId',
    cHeaderMenuBanner: 'cHeaderMenuBanner',
  ),
];
