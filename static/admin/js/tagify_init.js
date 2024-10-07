document.addEventListener("DOMContentLoaded", function(){
    var tagInput = document.querySelector('.tagify-input');
    if (tagInput) {
        fetch('/api/get-tags/')  
            .then(response => response.json())
            .then(whitelist => {
                var tagify = new Tagify(tagInput, {
                    whitelist: whitelist,
                    dropdown: {
                        maxItems: 20,
                        enabled: 0,
                        closeOnSelect: false
                    },
                    // originalInputValueFormat: valuesArr => valuesArr.map(item => item.value).join(', ')
                });
                tagify.on('add', function(e) {
                    const addedTag = e.detail.data.value;
                    console.log(e.detail)
                    console.log(whitelist)
                    // // Loại bỏ tag đã thêm khỏi whitelist
                    // tagify.settings.whitelist = tagify.settings.whitelist.filter(tag => tag !== addedTag);
                    // console.log(whitelist)
                    // // Cập nhật lại danh sách gợi ý
                    // tagify.dropdown.hide();
                    // tagify.dropdown.show();
                });

                // tagify.on('remove', function(e) {
                //     const removedTag = e.detail.data.value;

                //     // Thêm lại tag đã xóa vào whitelist nếu không có trong danh sách
                //     if (!tagify.settings.whitelist.includes(removedTag)) {
                //         tagify.settings.whitelist.push(removedTag);
                //     }

                //     // Cập nhật lại danh sách gợi ý
                //     tagify.dropdown.hide();
                //     tagify.dropdown.show();
                // });
            })
            .catch(error => console.error('Error fetching tag list:', error));
    }
});
