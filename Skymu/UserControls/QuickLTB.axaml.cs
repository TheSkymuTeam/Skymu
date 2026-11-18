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
using Avalonia;
using Avalonia.Controls;
using Avalonia.Data;
using Avalonia.Data.Converters;
using Avalonia.Metadata;

namespace Skymu.UserControls
{
    public partial class QuickLTB : UserControl
    {
        public string Key
        {
            get { return (string)GetValue(KeyProperty); }
            set { SetValue(KeyProperty, value); }
        }
        public static readonly StyledProperty<string> KeyProperty =
            AvaloniaProperty.Register<QuickLTB, string>(nameof(Key), "");

        public ObservableCollection<IBinding> Bindings { get; } =
            new ObservableCollection<IBinding>();

        static QuickLTB()
        {
            KeyProperty.Changed.AddClassHandler<QuickLTB>(OnKeyChange);
        }

        public QuickLTB()
        {
            InitializeComponent();
            UpdateBinding();
            Bindings.CollectionChanged += (_, __) => UpdateBinding();
        }

        public static void OnKeyChange(AvaloniaObject d, AvaloniaPropertyChangedEventArgs e)
        {
            if (d is QuickLTB qltb)
                qltb.UpdateBinding();
        }

        private void UpdateBinding()
        {
            var converter = (IMultiValueConverter)this.FindResource("SkyLangParseConverter");
            var multiBinding = new MultiBinding
            {
                Converter = converter,
                ConverterParameter = Key
            };

            if (Bindings != null)
                foreach (var binding in Bindings)
                    multiBinding.Bindings.Add(binding);

            ContentCtrl.Bind(ContentProperty, multiBinding);
        }
    }
}