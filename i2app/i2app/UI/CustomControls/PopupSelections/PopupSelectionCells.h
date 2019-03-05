//
//  PopupSelectionCells.h
//  i2app
//
//  Created by Arcus Team on 7/23/15.
/*
 * Copyright 2019 Arcus Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
//

#import <UIKit/UIKit.h>


#pragma mark - PopupSelectionTableCell
@interface PopupSelectionTableCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *checkIcon;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;

@property (nonatomic) BOOL checked;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *value;

- (void)setChecked:(BOOL)checked;
- (void)setTitle:(NSString *)title withValue:(NSString *)value;
+ (PopupSelectionTableCell *)createCell:(NSString *)title withValue:(NSString *)value;

@end
#pragma mark -
