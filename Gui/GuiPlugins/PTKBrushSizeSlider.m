classdef PTKBrushSizeSlider < PTKGuiPluginSlider
    % PTKBrushSizeSlider. Gui Plugin for changing the size of the edit brush
    %
    %     You should not use this class within your own code. It is intended to
    %     be used by the gui of the Pulmonary Toolkit.
    %
    %
    %     Licence
    %     -------
    %     Part of the TD Pulmonary Toolkit. https://github.com/tomdoel/pulmonarytoolkit
    %     Author: Tom Doel, 2014.  www.tomdoel.com
    %     Distributed under the GNU GPL v3 licence. Please see website for details.
    %    
    
    properties
        ButtonText = 'Brush size'
        SelectedText = 'Brush size'
        
        ToolTip = 'Change the size of the editing paint brush'
        Category = 'Paint'
        Visibility = 'Dataset'
        Mode = 'Edit'

        HidePluginInDisplay = false
        PTKVersion = '2'
        ButtonWidth = 6
        ButtonHeight = 1
        Location = 25

        MinValue = 0
        MaxValue = 100
        SmallStep = 0.01
        LargeStep = 0.1
        DefaultValue = 50
        
        EditBoxPosition = 90
        EditBoxWidth = 30

        StackVertically = false
    end
    
    methods (Static)
        function RunGuiPlugin(ptk_gui_app)
        end
        
        function enabled = IsEnabled(ptk_gui_app)
            enabled = ptk_gui_app.IsDatasetLoaded && ptk_gui_app.ImagePanel.OverlayImage.ImageExists && ...
                isequal(ptk_gui_app.ImagePanel.SelectedControl, 'Paint');
        end
        
        function is_selected = IsSelected(ptk_gui_app)
            is_selected = true;
        end
        
        function [value_instance_handle, value_property_name, limits_instance_handle, limits_property_name] = GetHandleAndProperty(ptk_gui_app)
            value_instance_handle = ptk_gui_app.ImagePanel;
            value_property_name = 'PaintBrushSize';
            limits_instance_handle = [];
            limits_property_name = [];
        end
        
    end
end