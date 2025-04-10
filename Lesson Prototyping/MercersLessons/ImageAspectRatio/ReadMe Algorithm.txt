Work through Cousins Example?: fit you into a DIV
- ID imageWidth & imageHeight
  Note: divWidth & divHeight already identified in rect(DIV)
- Calculate Ratio: declare >1 ( or <1 )
  float imageAspectRatio ( w > h ) ? w/h : h/w ;
- ID imageLandscape or portrait using ternary structure (true and false)
  Boolean image Landscape ( w > h ) ? true : false ;
- ID DIV structure using ternary structure
  Boolean divLandscape ( w > h ) ? true : false ;
- Compare two rectangle geometries
  Same: pick width, calculate height
  Different
    - Landscape: pick width, calculate height
    - Portrait: pick height, calculate width
- Compare imageWidth to divWidth (or imageHeight to divHeight): is this bigger or smaller
  Do we mutliply or divide (also depends on ratio we are using, easier to declare which ratio we are using)
- Calculate missing dimension

---

Given and image of width & height, put it into a DIV and maintain aspect ratio. 
- The DIVision will not have the same width & height as the image.
- The computer knows the width and height of the image
- The computer knows the width and height of the DIV
- The computer needs to know if the image is getting bigger or smaller
- The computer needs to know how landscape & portrait is being combined or else mistakes will be made

The computer will take the image pixels in width and height and adjust them to fit the DIV dimensions.
- Called image Compression

Investigation: in WORD or similar app, insert an image
- Change both dimensions at the same time, aspect ratio stays the same
- Change only one dimension, aspect ratio changes

Aspect Ratio: when one dimension changes, the other one is calculated
- Width is changed, height = newWidth x ratio
- Height is changed, width = newHeight x ratio

Aspect Ratio: the ratio is two numbers divided & one number is always bigger than the other. Ratios are either
- greater than 1 ( >1 )
- less than 1 ( <1 )
Square geometry = 1 and is a rare image. Few cameras or computers record square images.

Aspect ratio is used to make an image bigger or smaller
Bigger:		x >1 	|	/ <1 
Smaller:	/ >1	|	x <1

No mistakes: landscape to landscape or portrait to portrait

Mistakes: landscape to portrait or portrait to landscape
- Short story: starting bigger dimension must go to the smaller dimension
- Landscape to Portrait, width is bigger, portraitWidth is the new imageWidth
- Portrait to Landscape, height is bigger, landscape height is the new imageHeight

After students have the basic algorithm and knowledge pieces, do the example backwards in flow diagram
Reference Examples
Creates flow diagram

Code

Create Test cases
