import uuid
import os
import re
import locale



def get_file_path(instance, filename):
    ext = filename.split('.')[-1]
    filename = "%s.%s" % (uuid.uuid4(), ext)
    return os.path.join('shop/images/product/', filename)

def get_skip_slug_article(path):
    last_path = path.split('/')[-1]
    skip_slug = None
    match = re.search(r'^(?P<article_slug>[\w-]+)-a\d+\.html$', last_path)
    if (match):
        skip_slug = match.group('article_slug')
    return skip_slug

# def format_currency_vietnam(number):
#     locale.setlocale(locale.LC_ALL, 'vi_VN')
#     formatted_number = locale.format_string("%d", number, grouping=True) + 'đ'
#     return formatted_number

def format_currency_vietnam(number):
    try:
        # Đặt locale cho Việt Nam với UTF-8
        locale.setlocale(locale.LC_ALL, 'vi_VN.UTF-8')
    except locale.Error:
        # Thay thế bằng locale khác nếu không hỗ trợ
        locale.setlocale(locale.LC_ALL, 'en_US.UTF-8')

    # Định dạng số và thêm ký hiệu tiền tệ Việt Nam
    formatted_number = locale.format_string("%d", number, grouping=True) + 'đ'
    return formatted_number