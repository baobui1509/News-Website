APP_VALUE_STATUS_ACTIVE = "public"
APP_PATH_PAGES = "pages/"
APP_VALUE_LAYOUT_DEFAULT = 'list'
APP_VALUE_STATUS_CONTACT_DEFAULT = False
APP_VALUE_STATUS_DEFAULT = 'private'
TABLE_CATEGORY_SHOW = "Category"
TABLE_ARTICLE_SHOW = "Article"
TABLE_FEED_SHOW = "Feed"
TABLE_CONTACT_SHOW = "Contact"
APP_VALUE_IMAGE_DEFAULT = '/media/news/images/feed/no-image.png'
APP_VALUE_STATUS_CHOICES = (
        ('private', 'Private'),
        ('public', 'Public')
    )
APP_VALUE_STATUS_CONTACT_CHOICES = (
        (True, 'Contacted'),
        (False, 'Not contacted yet')
    )
APP_VALUE_LAYOUT_CHOICES = (
        ('list', 'List'),
        ('grid', 'Grid')
    )

SETTING_ARTICLE_TOTAL_ITEMS_SPECIAL = 5
SETTING_ARTICLE_TOTAL_ITEMS_PER_PAGE = 8
SETTING_ARTICLE_TOTAL_ITEMS_RELATED = 6
SETTING_PRICE_COIN_TOTAL_ITEMS = 5
SETTING_PRICE_GOLD_TOTAL_ITEMS = 5
SETTING_ARTICLE_TOTAL_ITEM_RANDOM = 3
SETTING_ARTICLE_TOTAL_ITEMS_RECENT = 5
SETTING_FEED_TOTAL_ITEMS_SIDEBAR = 5
SETTING_CATEGORY_TOTAL_ITEMS_SIDEBAR = 5

SETTING_API_LINK_PRICE_COIN = 'https://apiforlearning.zendvn.com/api/get-coin'
SETTING_API_LINK_PRICE_GOLD = 'https://apiforlearning.zendvn.com/api/get-gold'


ADMIN_SRC_JS = ('admin/js/general.js', 'admin/js/jquery-3.6.0.min.js', 'admin/js/slugify.min.js')
ADMIN_SRC_CSS = {'all': ('admin/css/custom.css',)}
ADMIN_HEADER_NAME = "BAO BUI Administration"