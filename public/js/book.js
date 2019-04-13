



// // this code creates the homework dropdown menu items
// $(document).ready(function () {

    



//     for (i = 0; i < homeWork.length; i++) {

//         $('<div>', {
//             class: 'dropdown-item'
//         }).append(
//             $('<a>', {
//                 href: homeWork[i].githubRepoLink,
//                 target: '_blank'
//             }).append(
//                 $('<img>', {
//                     src: homeWork[i].liveLinkImage,
//                     class: 'live-link-img'
//                 })),
//             $('<a>', {
//                 href: homeWork[i].liveLink,
//                 id: 'dropdown-hw-name',
//                 target: '_blank',
//                 text: homeWork[i].hwName
//             }),
//             $('<img>', {
//                 src: homeWork[i].demoImage,
//                 class: 'demo-img'
//             }),
//             ).appendTo('#hw-dropdown-list');
//     };

// })