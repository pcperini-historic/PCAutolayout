# UIView+PCAutolayoutBindingExtensions #
## Methods ##
### addConstraintBindingToView:onAttribute: ###

    - (void)addConstraintBindingToView:(UIView *)view onAttribute:(NSLayoutAttribute)attribute;
    
Adds the a constraint to the receiver binding it to the given view on the given attribute.

_Parameters_

- `view`: The view to which to bind the receiver.

- `attribute`: The attribute on which to bind the views

_Discussion_

This method adds the constraint to the super-most view, of the receiver and `view`. The constraint's relationship is Equal, its multiplier is 1, and its constant is 0.

# UIView+PCAutolayoutConstraintExtensions #
## Properties ##
### heightConstraint ###

    @property (nonatomic, readonly) NSLayoutConstraint *heightConstraint;

The primary constraint responsible for the view's height.

_Discussion_

The constraint might be applied to the view's superview.

### horizontalOriginConstraint ###

    @property (nonatomic, readonly) NSLayoutConstraint *horizontalOriginConstraint;
    
The primary constraint responsible for the view's horizontal origin.

_Discussion_

The constraint might be applied to the view's superview.

### verticalOriginConstraint ###

    @property (nonatomic, readonly) NSLayoutConstraint *verticalOriginConstraint;

The primary constraint responsible for the view's vertical origin.

_Discussion_

The constraint might be applied to the view's superview.

### widthConstraint ###

    @property (nonatomic, readonly) NSLayoutConstraint *widthConstraint;
    
The primary constraint responsible for the view's width.

_Discussion_

The constraint might be applied to the view's superview.

### heightConstraint ###

    @property (nonatomic, readonly) NSLayoutConstraint *heightConstraint;
    
The primary constraint responsible for the view's height.

_Discussion_

The constraint might be applied to the view's superview.

## Methods ##

### addConstraint:withIdentifier: ###

    - (void)addConstraint:(NSLayoutConstraint *)constraint withIdentifier:(NSString *)identifier;
    
Adds the given constraint to the receiver with the given identifier.

_Parameters_

- `constraint`: The constraint to add.

- `identifier`: The identifier for the constraint.

### constraintWithIdentifier: ###

    - (NSLayoutConstraint *)constraintWithIdentifier:(NSString *)identifier;  

Returns the constraint with the given identifier.

_Parameters_

- `identifier`: The constraint's identifier.

_Returns_

The constraint with the given identifier.

# NSLayoutConstraint+PCAutolayoutIdentifierExtensions #

## Properties ##

### identifier ###

    @property (nonatomic) NSString *identifier;

A string identifying the constraint.