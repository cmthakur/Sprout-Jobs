// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function () {
    $("#job_deadline").datepicker( { dateFormat: 'yy-mm-dd', minDate: 0 },{autosize: true});
    $('#ticker').odoTicker({
        number: 56,    //Number to load
        speed: 1500,        //speed in ms
        height: 28          //height of a single number in the CSS sprite
    });
//$(#light).click(function(){lightbox();});
// $(#applicant_submit).click(function(){
//     $.ajax({
//         url : process_short_list_job_path,
//         data : arr,
//         })
//     $(#applicants).html(response)
// });

// $(".applicant_name").click(function(){
//     job_id = $(".applicant_name").id;
//     applicant_id = $(".applicant_name").val;
//     $(#applicants).html(job_id);
//         $.load({
//                 url : "jobs/"+job_id+"/applicants/"+applicant_id',
//                 function(response){
//                                     $(#applicants).html(response);
//                                 }
//             });
//    });

});

