/*==========================================================*/
// Copyright © The Skymu Team and other contributors.
// For any inquiries or concerns, email contact@skymu.app.
/*==========================================================*/
// Modification or redistribution of this code is governed
// by the terms set out in the project license agreement.
// If you do not comply with those terms, you may not
// modify or distribute any original code from the project.
/*==========================================================*/
// License: https://skymu.app/legal/license
// SPDX-License-Identifier: AGPL-3.0-or-later
/*==========================================================*/

using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Markup;

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
               new PropertyMetadata("", OnKeyChange)
           );

        public ObservableCollection<BindingBase> Bindings { get; } =
            new ObservableCollection<BindingBase>();

        public QuickLTB()
        {
            InitializeComponent();
            UpdateBinding();
            Bindings.CollectionChanged += (_, __) => UpdateBinding();
        }

        public static void OnKeyChange(DependencyObject d, DependencyPropertyChangedEventArgs e)
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
                foreach (var binding in Bindings)
                    multiBinding.Bindings.Add(binding);

            ContentCtrl.SetBinding(ContentProperty, multiBinding);
        }
    }
}