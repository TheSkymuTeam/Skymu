/*==========================================================*/
// Skymu is copyrighted by The Skymu Team, 2026.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is contingent
// on your agreement to be bound by the terms of our License.
// If you do not wish to abide by those terms, you may not
// use, modify, or distribute any code from the Skymu project.
// License: https://skymu.app/legal/license
/*==========================================================*/

using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Markup;
using System.Windows.Media;

namespace Skymu.UserControls
{
    [ContentProperty(nameof(Bindings))]
    public partial class QuickLTB : UserControl
    {
        public string Key
        {
            get { return (string)GetValue(KeyProperty); }
            set { SetValue(KeyProperty, value); }
        }
        public static readonly DependencyProperty KeyProperty =
            DependencyProperty.Register(
               nameof(Key),
               typeof(string),
               typeof(QuickLTB),
               new PropertyMetadata("", OnAnyChange)
           );

        public ObservableCollection<BindingBase> Bindings { get; } =
            new ObservableCollection<BindingBase>();

        public QuickLTB()
        {
            InitializeComponent();
            UpdateBinding();
            Bindings.CollectionChanged += (_, __) => UpdateBinding();
        }

        public static void OnAnyChange(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            if (d is QuickLTB qltb)
                qltb.UpdateBinding();
        }

        private void UpdateBinding()
        {
            var converter = (IMultiValueConverter)FindResource("SkyLangParseConverter");
            var multiBinding = new MultiBinding
            { 
               Converter = converter,
               ConverterParameter = Key
            };

            if (Bindings != null)
            {
                foreach (var binding in Bindings)
                {
                    multiBinding.Bindings.Add(binding);
                }
            }

            ContentCtrl.SetBinding(ContentControl.ContentProperty, multiBinding);
        }
    }
}