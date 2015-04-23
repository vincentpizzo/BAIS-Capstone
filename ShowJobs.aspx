<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ShowJobs.aspx.vb" Inherits="ShowJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>

    <script type="text/javascript">
      function init_map(map_canvas_id, lat, lng, zoomLevel) {
         var myLatLng = new google.maps.LatLng(lat, lng);

         var options = {
            zoom: zoomLevel,
            center: myLatLng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
         };

         var map_canvas = document.getElementById(map_canvas_id);

         var map = new google.maps.Map(map_canvas, options);
      }
   </script>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
   <h2>Iowa City, Iowa</h2>
   
   <div id="my_map" style="width:800px;height:800px"></div>
   
   <p>
      You are viewing a hybrid map of Iowa City!
   </p>
   
   <script type="text/javascript">
       init_map('my_map', 41.6611277, -91.5301683, 14);

       



        var marker = new google.maps.Marker({ title: "Marker Title", position: new google.maps.LatLng(lat, lng) });
        marker.setMap(mapObject);

        var markers =
   [
      {
          title: "Calvin Hall",
          position: new google.maps.LatLng(41.6624914, -91.5361998)
      },
      {
          title: "Papa John Business Building",
          position: new google.maps.LatLng(41.6644153, -91.5340121)
      },
      {
          title: "Pomerantz Center",
          position: new google.maps.LatLng(41.6652720, -91.5343578)
      },
      {
          title: "Kinnick Stadium",
          position: new google.maps.LatLng(41.6604534, -91.5522263)
      }
   ];

        var map = new google.maps.Map(map_canvas, options);

        // Place markers
        for (var i = 0; i < markers.length; i++) {
            var marker = new google.maps.Marker(markers[i]);
            marker.setMap(map);
        }

    </script>

</asp:Content>

