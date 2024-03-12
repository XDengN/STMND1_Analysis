// Define input and output directories
inputDir = "/Volumes/DX_5T_Data/STMND1/230413_RPE_WT_KO_cilia/img/";
outputDir = "/Volumes/DX_5T_Data/STMND1/230413_RPE_WT_KO_cilia/Zproject_max/";

// Get a list of all files in the input directory
fileList = getFileList(inputDir);

// Loop through each file in the list
for (i = 0; i < fileList.length; i++) {

  // Open the file
  open(inputDir + fileList[i]);

  // Project Z sections by maximum values
  run("Z Project...", "projection=[Max Intensity]");

  // Save the image to the output directory with the same name as the input file
  saveAs("Tiff", outputDir + fileList[i]);

  // Close the image
  close();
  close();
}


//Here's how to use this code:

    //Change the inputDir and outputDir variables to the appropriate paths for your system.
    //Copy and paste the code into the ImageJ macro editor (Plugins > Macros > New).
    //Click the "Run" button to execute the macro.

//This code will open each file in the input directory one by one, project the Z sections by maximum values, save the resulting image to the output directory with the same name as the input file, and then close the image before moving on to the next file.
