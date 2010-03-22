p {
  margin-bottom:1.5em;
}


a {
  color: rgb(60,114,168);
  text-decoration: none; 
}

a img {
}

h1 {
  padding:20px 0 0 20px;
  font-size:3em;
}
#h1 { font-size: 16px; } 


li {
  margin-bottom: 3px; }

.section {
  padding:0;
  margin:0;
  margin-bottom:2em;
}
.section h4 {
  background-color:#d6d6d6;
  color:#0079b4;
  font-weight:bold;
  letter-spacing:0.1em;
  text-transform:uppercase;
  font-size:11px;
}

#wrapper  {
  width:960px;
  margin:0 auto;
  border:solid black 1px;
  background:white;
  padding-top:0.5em;
  padding-left:0.6em;
  padding-right:0.2em;
}

#header{
  height:70px;
  text-align:left;
  border-top:0;
}

#search_box { vertical-align:top;margin:30px 20px 0 0;}

#content  {
  border-top:0;
}

/* forms */

legend {
  font-size:1.5em;
  font-weight:bold;
}
fieldset {
  border:solid gray 1px;
  background:#eee;
  padding:2em;
}

fieldset .clearfix label,
fieldset .clearfix input,
fieldset .clearfix select {
  float:left;
}

fieldset .clearfix label {
  width:10em;
  text-align:right;
  margin-right:0.5em;
  line-height:1.8;
}

/* some highlights for the listing table */
thead tr th { 
    font-weight:bold; 
    text-align:center;
}
tr td {
    vertical-align:top;
    text-align:center;
}


.buttons {
  text-align:right;
}
/* hacks */
.clearfix:after {
    content: ".";
    display: block;
    clear: both;
    visibility: hidden;
    line-height: 0;
    height: 0;
}

.clearfix {
    display: inline-block;
}

html[xmlns] .clearfix {
    display: block;
}

* html .clearfix {
    height: 1%;
}

#menu_frame,#content_frame{
top: 0;
bottom: 0; 
}

#menu_frame h2{
  margin-bottom:0.6em;
  background-color:white;
}


#menu_frame,#category_frame,#logo_frame{
float:left;
width:  21.5%;
overflow: hidden;
left: 0; /* menu_frame */
right: 0;
border-right:solid red 1px;
}

#content_frame{
padding:0;
margin:0;
left: 0; /* menu_frame */
right: 0;
overflow: hidden; 
min-height:560px;
}

.inner_frame{
margin: 0px;
overflow: hidden;
}

.menubar {
    vertical-align:bottom;
    padding-top:10px;
}

.menubar ul.menu {
    padding-bottom:15px;
}

.menubar ul.menu li a {
    font-size:100%;
}
div.spacer
{
    width:99%;
    padding:0;
    margin:0;
    padding-top:10px;
    border-top: solid #d6d6d6 0.1em;
}

#header img{
padding:0;
margin:0;
padding-right:76.5%;
}
#header a{
width:15%;
}


#copyright
{
    border-top: solid #d6d6d6 0.1em;
}
#masthead
{
    border-top: solid #d6d6d6 0.1em;
    border-bottom: solid #d6d6d6 0.1em;
    height:105px;
}

#submasthead  {
    padding:0;
    margin:0;
    padding-top:4%;
    padding-bottom:5%;
}

#submasthead img{
vertical-align:bottom;
}

#page_title {
    vertical-align:top; 
    width:100%;
}

#page_name{
  font-size: 18px;
  margin-bottom: 1em; 
  text-align:left;
}
ul.menu{
list-style:none;
}

ul.menu li a, #menu_frame ul.menu li a{
  margin-bottom:0.1em;
  font-size:1.2em;
}
.menubar ul {
}
.menubar ul.menu {
display:inline;
margin-left:0;
text-transform:uppercase;
letter-spacing:0.1em;
padding-top:1.5%;

}
.menubar img {
    padding-right:6.9%;
}

.menubar ul.menu li a{
color:#93a9d5;
}

.menubar ul.menu li{
  margin-left:0.3em;
  margin-right:0.1em;
  border-right: solid #d6d6d6 0.1em;
  margin-bottom:0.1em;
  display:inline;
  list-style-image :url("/images/right_arrow.gif");
}


.menubar .menu li a:hover,li a:hover,
   a:hover{ 
color: rgb(243,0,18);
}


/****************************************************************
 * Site layout CSS
 *
 * h1,..h6
 *
 * wrapper
 *  header
 *      img
 *      a
 *
 *  masthead
 *      img
 *      ul
 *  submasthead
 *      h2
 *      img
 *  content
 *      menu_frame
 *          ul
 *      content_frame
 *          ?
 *  repeatnav
 *  copyright */


#wrapper * {

}

#header img {
}

#header img + a {
  vertical-align:119%;
  font-size:small;
  font-weight:bold;
}

#masthead * {

}

.menubar .menu {
}

#masthead .menubar img {
}
#masthead  > * {
}

#masthead #page_title .cms_links  {
  padding-right:13%;
}

#masthead #page_title .cms_links * {
  margin-right:0.2em;
  letter-spacing:0.2em;
}

#masthead .cms_links *:first-letter {
}

#masthead #page_title {
  
}

#masthead #page_title #page_name {
  display:inline;
  border:solid red 0.1em;
  margin:0;
  padding:0;
}

#masthead #page_title  img {
}



