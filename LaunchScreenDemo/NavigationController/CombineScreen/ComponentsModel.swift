//
//  ComponentsModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 12/05/23.
//

import Foundation

struct ComponentsModel {
    let storyBoard: String
    let viewController: String
    let title: String
    static private let autoLayoutStoryBoard = "Main"
    static private let UIComponentsStoryBoardOne = "UIComponents"
    static private let UIComponentsStoryBoardTwo = "UIComponents2"
    
    static func getData() -> [ComponentsModel] {
        
        return [
            
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "LabelViewController", title: "UILabel"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "ButtonViewController", title: "UIButton"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "TextFieldViewController", title: "UITextField"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "TextViewController", title: "UITextView"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "SwitchViewController", title: "UISwitch"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "SliderViewController", title: "UISlider"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "ProgressViewController", title: "UIProgressView"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "SegmentedViewController", title: "UISegmentedControl"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "PageControlViewController", title: "UIPageControl"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "StepperViewController", title: "UIStepper"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "ScrollViewController", title: "UIScrollView"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "TableContentViewController", title: "UITableView"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "DemoTableViewController", title: "UITableView Label Expand"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "StateTableViewController", title: "UITableView State Demo"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "JobViewController", title: "UITableView Company Demo"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "CollectionViewController", title: "UICollectionView"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "DemoCollectionViewController", title: "UICollectionView Artists and Albums"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "ImagePickerViewController", title: "Image Picker"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "PHPickerDemoViewController", title: "PHPicker"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "WebDemoViewController", title: "WKWebView"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "SearchBarDemoViewController", title: "UISearchBar"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardOne, viewController: "StackViewDemoViewController", title: "Stack view"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardTwo, viewController: "ToolBarDemoViewController", title: "UIToolBar"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardTwo, viewController: "PickerDemoViewController", title: "UIPickerView"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardTwo, viewController: "DatePickerDemoViewController", title: "UIDatePicker"),
            ComponentsModel(storyBoard: ComponentsModel.UIComponentsStoryBoardTwo, viewController: "MapViewController", title: "UIMapView"),
        ]
    }
}
