#  prepare the output of smooth, so that we can easily plot it with GMT-script
#  Input format: one line header; lon lat azim(between -90 and 90)
#  Output format: same line header; lon lat azim length and lon lat -azim length
#  this avoids all the transformation we would have to do if we read them 
#  as stress data (.prep ..)
#  write fourth column in file, constant value (length) for 4.th column 
#  is given by commandline,
#  write every point twice, second time with azim + 180 degrees
BEGIN{
   linenum = 0
}
{  
   if (linenum == 0) {
      linenum++
      print
      
   } else {   
      linenum++
      print $2"  "$1"  "$3"  "lengt
      print $2"  "$1"  "$3+180"  "lengt

   } 
   
}   
       
