/*==========================================================*/
// Skymu is copyrighted by The Skymu Team.
// You may contact The Skymu Team at contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: http://skymu.app/license.txt
/*==========================================================*/

/*==========================================================*/
// IMPORTANT INFORMATION FOR DEVELOPERS, PROJECT MAINTAINERS
// AND CONTRIBUTORS TO SKYMU, CONCERNING THIS PARTICULAR FILE
/*==========================================================*/
// The following code is considered legacy. Its functions
// should be migrated to XAML with the newer SliceControl.
// It is poorly structured and designed with Windows Forms
// paradigms in mind. Do not add any functions to this code.
/*==========================================================*/

using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace Skymu
{
    public static class UI
    {
        // Change this bool to true for a dark theme
        public static bool darkTheme = false;
        public static string resroot = "ResourcesLight";
        public static Dictionary<string, BitmapImage> loadedImages = new Dictionary<string, BitmapImage>();
        public enum CropType { None = 0, VerticalStack = 1, HorizontalStack = 2, VerticalTriSplit = 3, HorizontalTriSplit = 4 }

        // Brushes I'm mostly using for dark theme right now, but later the whole program will rely on
        public static SolidColorBrush darkBlue = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#1d3a55"));
        public static SolidColorBrush white = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#f4f4f4"));

        public static void themeSetterLogin()
        {
            if (darkTheme) // checks if Dark theme is enabled
            {
                resroot = "ResourcesDark";
                Login.Instance.footerPanel.Fill = darkBlue;
                Login.Instance.LoginButton.TextColor = white;
                Login.Instance.SkypeName.Foreground = white;
                Login.Instance.Password.Foreground = white;
                Login.Instance.autoSignInCheck.Foreground = white;
                Login.Instance.startupSeanKypeCheck.Foreground = white;
            }

            loadedImages.Clear();
        }

        public static void themeSetterMain()
        {
            if (darkTheme) // checks if Dark theme is enabled
            {

            }

            var imgPaths = new[]{
                //Tuple.Create("File Name", "Subpath", "Use theme resource root", "XML x.Name", crop width, crop height, crop type)
                Tuple.Create("close", "Window Frame/Aero", false, new[] { MainWindow.Instance.close }, 42, 18, CropType.VerticalStack),
                //Tuple.Create("join", "Window Frame/Aero", false, new[] { MainWindow.Instance.join, 42, 18), ADD LATER!!
                Tuple.Create("maximize", "Window Frame/Aero", false, new[] { MainWindow.Instance.maximize }, 24, 18, CropType.VerticalStack),
                Tuple.Create("minimize", "Window Frame/Aero", false, new[] { MainWindow.Instance.minimize }, 24, 18, CropType.VerticalStack),
                Tuple.Create("longIcon", "Window Frame/Aero", false, new[] { MainWindow.Instance.tbli }, 36, 16, CropType.None),
                Tuple.Create("split", "Window Frame/Aero", false, new[] { MainWindow.Instance.split }, 26, 18, CropType.VerticalStack),
               // Tuple.Create("mainGradient", "Backgrounds", true, new[] { MainWindow.Instance.backgroundImg }, 1400, 883, CropType.None),
                //Tuple.Create("unmaximize", "Window Frame/Aero", false, MainWindow.Instance.close, 42, 18) ADD LATER!!
                };


            foreach (var item in imgPaths)
            {
                themeSetterLogic(item.Item1, item.Item2, item.Item3, item.Item4, item.Item5, item.Item6, item.Item7);
            }

        }

        public static void themeSetterDialog(int dialogImage)
        {
            if (darkTheme) // checks if Dark theme is enabled
            {

            }

            var imgPaths = new[]{
                //Tuple.Create("File Name", "Subpath", "Use theme resource root", "XML x.Name in array", crop width, crop height, crop type)
                Tuple.Create("skypeStandard", "Dialog", false, new[] { Dialog.Instance.DialogImage }, 48, 96, CropType.HorizontalStack),
                };


            foreach (var item in imgPaths)
            {
                themeSetterLogic(item.Item1, item.Item2, item.Item3, item.Item4, item.Item5, item.Item6, item.Item7, dialogImage);
            }

        }

        public static void themeSetterLogic(string imgName, string subpath, bool resrootTheme, Image[] imgArray, int width, int height, CropType crop, int preImage = 0)
        {
            string initpath;
            if (resrootTheme) { initpath = "pack://application:,,,/" + resroot + "/" + subpath + "/"; }
            else { initpath = "pack://application:,,,/Resources/Universal/" + subpath + "/"; }
            string path = initpath + imgName + ".png";

            BitmapImage image = new BitmapImage();
            image.BeginInit();
            image.CacheOption = BitmapCacheOption.OnDemand;
            image.UriSource = new Uri(path, UriKind.RelativeOrAbsolute);
            image.EndInit();
            image.Freeze();
            loadedImages[imgName] = (image);

            if (crop != CropType.None) // directly crop spritesheet if not a Trislice image
            {
                ImageCropper(imgArray, imgName, width, height, preImage, crop);
            }

            else // if it's an image with no need to slice or crop
            {
                imgArray[0].Source = loadedImages[imgName];
            }

        }

        public static void ImageCropper(Image[] imgArray, string imgName, int width, int height, int varB, CropType crop)
        {
            try
            {
                BitmapImage image = loadedImages[imgName];
                int varA = 0, varTemp;

                if (crop == CropType.HorizontalStack)
                {
                    varTemp = varA;
                    varA = varB;
                    varB = varTemp;
                }

                var cropped = new CroppedBitmap(image, new Int32Rect(varA, varB, width, height));

                if (crop == CropType.HorizontalTriSplit || crop == CropType.VerticalTriSplit) // image set to be 3 sliced
                {
                    TriSlicer(imgArray, imgName, cropped);
                }

                else
                {
                    cropped.Freeze(); // makes cropped image read only
                    imgArray[0].Source = cropped; // sets this bitmap as the source
                }
            }

            catch (Exception ex)
            {
                Universal.ExceptionHandler(ex);
            }

        }

        public static void TriSlicer(Image[] imgArray, string imgName, CroppedBitmap toSlice) // image objects to apply the sliced to; name of image; image that needs slicing
        {
            int leftEnd = ((int)(toSlice.PixelWidth * 0.4)); // where the left slice should end 
            int middleEnd = ((int)(toSlice.PixelWidth * 0.6)); // where the middle slice should end 
            int rightEnd = ((int)(toSlice.PixelWidth));
            int height = toSlice.PixelHeight; // image height (TriSlice is horizontal)

            var rects = new[]
            {
                Tuple.Create(0, 0, leftEnd, height),
                Tuple.Create(leftEnd, 0, middleEnd - leftEnd, height),
                Tuple.Create(middleEnd, 0, rightEnd - middleEnd, height)
            };

            for (int count = 0; count < 3; count++)
            {
                var rect = rects[count];
                var cropped = new CroppedBitmap(toSlice, new Int32Rect(rect.Item1, rect.Item2, rect.Item3, rect.Item4));
                cropped.Freeze();
                imgArray[count].Source = cropped;
            }
        }

    }
}
