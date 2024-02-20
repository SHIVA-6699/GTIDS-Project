.class public Lcom/google/android/material/appbar/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;,
        Lcom/google/android/material/appbar/AppBarLayout$ChildScrollEffect;,
        Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$Behavior;,
        Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;,
        Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;,
        Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_FORCE:I = 0x8

.field static final PENDING_ACTION_NONE:I


# instance fields
.field private currentOffset:I

.field private downPreScrollRange:I

.field private downScrollRange:I

.field private elevationOverlayAnimator:Landroid/animation/ValueAnimator;

.field private haveChildWithInterpolator:Z

.field private lastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private liftOnScroll:Z

.field private final liftOnScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private liftOnScrollTargetView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private liftOnScrollTargetViewId:I

.field private liftable:Z

.field private liftableOverride:Z

.field private lifted:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private pendingAction:I

.field private statusBarForeground:Landroid/graphics/drawable/Drawable;

.field private tmpStatesArray:[I

.field private totalScrollRange:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 176
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_AppBarLayout:I

    sput v0, Lcom/google/android/material/appbar/AppBarLayout;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 211
    sget v0, Lcom/google/android/material/R$attr;->appBarLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 215
    sget v4, Lcom/google/android/material/appbar/AppBarLayout;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    const/4 v6, -0x1

    iput v6, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    .line 181
    iput v6, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    .line 182
    iput v6, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    .line 186
    const/4 v7, 0x0

    iput v7, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    .line 217
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setOrientation(I)V

    .line 220
    nop

    .line 223
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    if-ne v0, v1, :cond_2e

    .line 224
    invoke-static {p0}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 229
    :cond_2e
    invoke-static {p0, p2, p3, v4}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 232
    sget-object v2, Lcom/google/android/material/R$styleable;->AppBarLayout:[I

    new-array v5, v7, [I

    .line 233
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 236
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/material/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 238
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_69

    .line 239
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 240
    .local v1, "background":Landroid/graphics/drawable/ColorDrawable;
    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 241
    .local v2, "materialShapeDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 242
    invoke-virtual {v2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 243
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 246
    .end local v1    # "background":Landroid/graphics/drawable/ColorDrawable;
    .end local v2    # "materialShapeDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    :cond_69
    sget v1, Lcom/google/android/material/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 247
    sget v1, Lcom/google/android/material/R$styleable;->AppBarLayout_expanded:I

    .line 248
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 247
    invoke-direct {p0, v1, v7, v7}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    .line 253
    :cond_7a
    sget v1, Lcom/google/android/material/R$styleable;->AppBarLayout_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 254
    sget v1, Lcom/google/android/material/R$styleable;->AppBarLayout_elevation:I

    .line 255
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 254
    invoke-static {p0, v1}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 258
    :cond_8c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_b4

    .line 261
    sget v1, Lcom/google/android/material/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 262
    sget v1, Lcom/google/android/material/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    .line 263
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 262
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setKeyboardNavigationCluster(Z)V

    .line 265
    :cond_a3
    sget v1, Lcom/google/android/material/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 266
    sget v1, Lcom/google/android/material/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    .line 267
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 266
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setTouchscreenBlocksFocus(Z)V

    .line 271
    :cond_b4
    sget v1, Lcom/google/android/material/R$styleable;->AppBarLayout_liftOnScroll:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 272
    sget v1, Lcom/google/android/material/R$styleable;->AppBarLayout_liftOnScrollTargetViewId:I

    .line 273
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    .line 275
    sget v1, Lcom/google/android/material/R$styleable;->AppBarLayout_statusBarForeground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    .line 276
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 278
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/AppBarLayout$1;-><init>(Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 286
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/appbar/AppBarLayout;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/appbar/AppBarLayout;

    .line 133
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/appbar/AppBarLayout;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/appbar/AppBarLayout;

    .line 133
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    return-object v0
.end method

.method private clearLiftOnScrollTargetView()V
    .registers 2

    .line 999
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    .line 1000
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1002
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 1003
    return-void
.end method

.method private findLiftOnScrollTargetView(Landroid/view/View;)Landroid/view/View;
    .registers 5
    .param p1, "defaultScrollingView"    # Landroid/view/View;

    .line 981
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2f

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2f

    .line 982
    const/4 v1, 0x0

    .line 983
    .local v1, "targetView":Landroid/view/View;
    if-eqz p1, :cond_10

    .line 984
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 986
    :cond_10
    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_26

    .line 989
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 991
    :cond_26
    if-eqz v1, :cond_2f

    .line 992
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 995
    .end local v1    # "targetView":Landroid/view/View;
    :cond_2f
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    return-object v0
.end method

.method private hasCollapsibleChild()Z
    .registers 4

    .line 527
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_5
    if-ge v0, v1, :cond_1c

    .line 528
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->isCollapsible()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 529
    const/4 v2, 0x1

    return v2

    .line 527
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 532
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private invalidateScrollRanges()V
    .registers 2

    .line 537
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    .line 538
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    .line 539
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    .line 540
    return-void
.end method

.method private setExpanded(ZZZ)V
    .registers 7
    .param p1, "expanded"    # Z
    .param p2, "animate"    # Z
    .param p3, "force"    # Z

    .line 603
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    const/4 v1, 0x0

    if-eqz p2, :cond_a

    const/4 v2, 0x4

    goto :goto_b

    :cond_a
    move v2, v1

    :goto_b
    or-int/2addr v0, v2

    if-eqz p3, :cond_10

    const/16 v1, 0x8

    :cond_10
    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 607
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->requestLayout()V

    .line 608
    return-void
.end method

.method private setLiftableState(Z)Z
    .registers 3
    .param p1, "liftable"    # Z

    .line 864
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eq v0, p1, :cond_b

    .line 865
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    .line 866
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->refreshDrawableState()V

    .line 867
    const/4 v0, 0x1

    return v0

    .line 869
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private shouldDrawStatusBarForeground()Z
    .registers 2

    .line 523
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private shouldOffsetFirstChild()Z
    .registers 5

    .line 1046
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1b

    .line 1047
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1048
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1a

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    .line 1050
    .end local v0    # "firstChild":Landroid/view/View;
    :cond_1b
    return v1
.end method

.method private startLiftOnScrollElevationOverlayAnimation(Lcom/google/android/material/shape/MaterialShapeDrawable;Z)V
    .registers 9
    .param p1, "background"    # Lcom/google/android/material/shape/MaterialShapeDrawable;
    .param p2, "lifted"    # Z

    .line 905
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->design_appbar_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 906
    .local v0, "appBarElevation":F
    const/4 v1, 0x0

    if-eqz p2, :cond_f

    move v2, v1

    goto :goto_10

    :cond_f
    move v2, v0

    .line 907
    .local v2, "fromElevation":F
    :goto_10
    if-eqz p2, :cond_13

    move v1, v0

    .line 909
    .local v1, "toElevation":F
    :cond_13
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1a

    .line 910
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 913
    :cond_1a
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 914
    nop

    .line 915
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$integer;->app_bar_elevation_anim_duration:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    .line 914
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 916
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 917
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/google/android/material/appbar/AppBarLayout$2;

    invoke-direct {v4, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$2;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 931
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 932
    return-void
.end method

.method private updateWillNotDraw()V
    .registers 2

    .line 519
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldDrawStatusBarForeground()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setWillNotDraw(Z)V

    .line 520
    return-void
.end method


# virtual methods
.method public addLiftOnScrollListener(Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;)V
    .registers 3
    .param p1, "liftOnScrollListener"    # Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;

    .line 333
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    return-void
.end method

.method public addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;

    .line 296
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    .line 299
    :cond_b
    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 300
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_1a
    return-void
.end method

.method public addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    .line 306
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V

    .line 307
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 612
    instance-of v0, p1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    return v0
.end method

.method public clearLiftOnScrollListener()V
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 344
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 414
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 417
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldDrawStatusBarForeground()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 419
    .local v0, "saveCount":I
    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->currentOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 420
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 421
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 423
    .end local v0    # "saveCount":I
    :cond_1d
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 4

    .line 427
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 429
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getDrawableState()[I

    move-result-object v0

    .line 431
    .local v0, "state":[I
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 432
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 433
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 435
    :cond_1a
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 133
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 133
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .registers 4

    .line 617
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 133
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 133
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 133
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 133
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 622
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 627
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_d

    .line 628
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 629
    :cond_d
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1a

    .line 630
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 632
    :cond_1a
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lcom/google/android/material/appbar/AppBarLayout;",
            ">;"
        }
    .end annotation

    .line 561
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    return-object v0
.end method

.method getDownNestedPreScrollRange()I
    .registers 9

    .line 699
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 701
    return v0

    .line 704
    :cond_6
    const/4 v0, 0x0

    .line 705
    .local v0, "range":I
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_5b

    .line 706
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 707
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 708
    .local v3, "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 709
    .local v4, "childHeight":I
    iget v5, v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 711
    .local v5, "flags":I
    and-int/lit8 v6, v5, 0x5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_54

    .line 713
    iget v6, v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    iget v7, v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    .line 715
    .local v6, "childRange":I
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_33

    .line 717
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_40

    .line 718
    :cond_33
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_3f

    .line 720
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    sub-int v7, v4, v7

    add-int/2addr v6, v7

    goto :goto_40

    .line 723
    :cond_3f
    add-int/2addr v6, v4

    .line 725
    :goto_40
    if-nez v1, :cond_52

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 728
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v7

    sub-int v7, v4, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 730
    :cond_52
    add-int/2addr v0, v6

    .end local v6    # "childRange":I
    goto :goto_57

    .line 731
    :cond_54
    if-lez v0, :cond_57

    .line 734
    goto :goto_5b

    .line 731
    :cond_57
    :goto_57
    nop

    .line 705
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v4    # "childHeight":I
    .end local v5    # "flags":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 737
    .end local v1    # "i":I
    :cond_5b
    :goto_5b
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    return v1
.end method

.method getDownNestedScrollRange()I
    .registers 9

    .line 742
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 744
    return v0

    .line 747
    :cond_6
    const/4 v0, 0x0

    .line 748
    .local v0, "range":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_c
    if-ge v1, v2, :cond_36

    .line 749
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 750
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 751
    .local v4, "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 752
    .local v5, "childHeight":I
    iget v6, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    iget v7, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 754
    iget v6, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 756
    .local v6, "flags":I
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_36

    .line 758
    add-int/2addr v0, v5

    .line 760
    and-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_33

    .line 764
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v0, v7

    .line 765
    goto :goto_36

    .line 748
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v5    # "childHeight":I
    .end local v6    # "flags":I
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 773
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_36
    :goto_36
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    return v1
.end method

.method public getLiftOnScrollTargetViewId()I
    .registers 2

    .line 967
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    return v0
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .registers 6

    .line 796
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    .line 797
    .local v0, "topInset":I
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 798
    .local v1, "minHeight":I
    if-eqz v1, :cond_e

    .line 800
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    return v2

    .line 804
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v2

    .line 805
    .local v2, "childCount":I
    const/4 v3, 0x1

    if-lt v2, v3, :cond_20

    add-int/lit8 v3, v2, -0x1

    .line 806
    invoke-virtual {p0, v3}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    .line 807
    .local v3, "lastChildMinHeight":I
    :goto_21
    if-eqz v3, :cond_27

    .line 808
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v0

    return v4

    .line 813
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    return v4
.end method

.method getPendingAction()I
    .registers 2

    .line 1029
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    return v0
.end method

.method public getStatusBarForeground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 409
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTargetElevation()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1025
    const/4 v0, 0x0

    return v0
.end method

.method final getTopInset()I
    .registers 2

    .line 1038
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final getTotalScrollRange()I
    .registers 10

    .line 652
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 653
    return v0

    .line 656
    :cond_6
    const/4 v0, 0x0

    .line 657
    .local v0, "range":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_c
    if-ge v1, v2, :cond_43

    .line 658
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 659
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 660
    .local v4, "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 661
    .local v5, "childHeight":I
    iget v6, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 663
    .local v6, "flags":I
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_43

    .line 665
    iget v7, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v5

    iget v8, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v0, v7

    .line 667
    if-nez v1, :cond_36

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 670
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v7

    sub-int/2addr v0, v7

    .line 672
    :cond_36
    and-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_40

    .line 676
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v0, v7

    .line 677
    goto :goto_43

    .line 657
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v5    # "childHeight":I
    .end local v6    # "flags":I
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 685
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_43
    :goto_43
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    return v1
.end method

.method getUpNestedPreScrollRange()I
    .registers 2

    .line 694
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method hasChildWithInterpolator()Z
    .registers 2

    .line 643
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    return v0
.end method

.method hasScrollableChildren()Z
    .registers 2

    .line 689
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isLiftOnScroll()Z
    .registers 2

    .line 948
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    return v0
.end method

.method public isLifted()Z
    .registers 2

    .line 883
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 553
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 555
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 556
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 6
    .param p1, "extraSpace"    # I

    .line 818
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    if-nez v0, :cond_9

    .line 821
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    .line 823
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    .line 824
    .local v0, "extraStates":[I
    array-length v1, v0

    add-int/2addr v1, p1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 826
    .local v1, "states":[I
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eqz v2, :cond_18

    sget v2, Lcom/google/android/material/R$attr;->state_liftable:I

    goto :goto_1b

    :cond_18
    sget v2, Lcom/google/android/material/R$attr;->state_liftable:I

    neg-int v2, v2

    :goto_1b
    const/4 v3, 0x0

    aput v2, v0, v3

    .line 827
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    if-eqz v2, :cond_29

    sget v2, Lcom/google/android/material/R$attr;->state_lifted:I

    goto :goto_2c

    :cond_29
    sget v2, Lcom/google/android/material/R$attr;->state_lifted:I

    neg-int v2, v2

    :goto_2c
    const/4 v3, 0x1

    aput v2, v0, v3

    .line 831
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eqz v2, :cond_36

    sget v2, Lcom/google/android/material/R$attr;->state_collapsible:I

    goto :goto_39

    :cond_36
    sget v2, Lcom/google/android/material/R$attr;->state_collapsible:I

    neg-int v2, v2

    :goto_39
    const/4 v3, 0x2

    aput v2, v0, v3

    .line 832
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    if-eqz v2, :cond_47

    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    if-eqz v2, :cond_47

    sget v2, Lcom/google/android/material/R$attr;->state_collapsed:I

    goto :goto_4a

    :cond_47
    sget v2, Lcom/google/android/material/R$attr;->state_collapsed:I

    neg-int v2, v2

    :goto_4a
    const/4 v3, 0x3

    aput v2, v0, v3

    .line 834
    invoke-static {v1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object v2

    return-object v2
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 637
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 639
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->clearLiftOnScrollTargetView()V

    .line 640
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 484
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 486
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldOffsetFirstChild()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 488
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    .line 489
    .local v0, "topInset":I
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "z":I
    :goto_19
    if-ltz v2, :cond_25

    .line 490
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 489
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 494
    .end local v0    # "topInset":I
    .end local v2    # "z":I
    :cond_25
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateScrollRanges()V

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    .line 497
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v3

    .local v3, "z":I
    :goto_30
    if-ge v2, v3, :cond_48

    .line 498
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 499
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 500
    .local v5, "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    invoke-virtual {v5}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 502
    .local v6, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v6, :cond_45

    .line 503
    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    .line 504
    goto :goto_48

    .line 497
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childLp":Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .end local v6    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 508
    .end local v2    # "i":I
    .end local v3    # "z":I
    :cond_48
    :goto_48
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_57

    .line 509
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 513
    :cond_57
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    if-nez v2, :cond_6a

    .line 514
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    if-nez v2, :cond_67

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->hasCollapsibleChild()Z

    move-result v2

    if-eqz v2, :cond_66

    goto :goto_67

    :cond_66
    move v1, v0

    :cond_67
    :goto_67
    invoke-direct {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftableState(Z)Z

    .line 516
    :cond_6a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 454
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 458
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 459
    .local v0, "heightMode":I
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_40

    .line 460
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 461
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldOffsetFirstChild()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 462
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    move-result v1

    .line 463
    .local v1, "newHeight":I
    sparse-switch v0, :sswitch_data_44

    goto :goto_39

    .line 472
    :sswitch_1f
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v1, v2

    .line 473
    goto :goto_39

    .line 466
    :sswitch_25
    nop

    .line 468
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 467
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v1

    .line 469
    nop

    .line 476
    :goto_39
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setMeasuredDimension(II)V

    .line 479
    .end local v1    # "newHeight":I
    :cond_40
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateScrollRanges()V

    .line 480
    return-void

    :sswitch_data_44
    .sparse-switch
        -0x80000000 -> :sswitch_25
        0x0 -> :sswitch_1f
    .end sparse-switch
.end method

.method onOffsetChanged(I)V
    .registers 5
    .param p1, "offset"    # I

    .line 777
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->currentOffset:I

    .line 779
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->willNotDraw()Z

    move-result v0

    if-nez v0, :cond_b

    .line 780
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 785
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v0, :cond_26

    .line 786
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "z":I
    :goto_14
    if-ge v1, v0, :cond_26

    .line 787
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;

    .line 788
    .local v2, "listener":Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;
    if-eqz v2, :cond_23

    .line 789
    invoke-interface {v2, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;->onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V

    .line 786
    .end local v2    # "listener":Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 793
    .end local v0    # "z":I
    .end local v1    # "i":I
    :cond_26
    return-void
.end method

.method onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 1054
    const/4 v0, 0x0

    .line 1056
    .local v0, "newInsets":Landroidx/core/view/WindowInsetsCompat;
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1058
    move-object v0, p1

    .line 1062
    :cond_8
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1063
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 1064
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->updateWillNotDraw()V

    .line 1065
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->requestLayout()V

    .line 1068
    :cond_18
    return-object p1
.end method

.method public removeLiftOnScrollListener(Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;)Z
    .registers 3
    .param p1, "liftOnScrollListener"    # Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;

    .line 338
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;

    .line 318
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 319
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 321
    :cond_9
    return-void
.end method

.method public removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    .line 325
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V

    .line 326
    return-void
.end method

.method resetPendingAction()V
    .registers 2

    .line 1033
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 1034
    return-void
.end method

.method public setElevation(F)V
    .registers 2
    .param p1, "elevation"    # F

    .line 567
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 569
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    .line 570
    return-void
.end method

.method public setExpanded(Z)V
    .registers 3
    .param p1, "expanded"    # Z

    .line 584
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 585
    return-void
.end method

.method public setExpanded(ZZ)V
    .registers 4
    .param p1, "expanded"    # Z
    .param p2, "animate"    # Z

    .line 599
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    .line 600
    return-void
.end method

.method public setLiftOnScroll(Z)V
    .registers 2
    .param p1, "liftOnScroll"    # Z

    .line 943
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 944
    return-void
.end method

.method public setLiftOnScrollTargetViewId(I)V
    .registers 2
    .param p1, "liftOnScrollTargetViewId"    # I

    .line 956
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    .line 958
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->clearLiftOnScrollTargetView()V

    .line 959
    return-void
.end method

.method public setLiftable(Z)Z
    .registers 3
    .param p1, "liftable"    # Z

    .line 843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    .line 844
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftableState(Z)Z

    move-result v0

    return v0
.end method

.method public setLiftableOverrideEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 859
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    .line 860
    return-void
.end method

.method public setLifted(Z)Z
    .registers 3
    .param p1, "lifted"    # Z

    .line 878
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(ZZ)Z

    move-result v0

    return v0
.end method

.method setLiftedState(Z)Z
    .registers 3
    .param p1, "lifted"    # Z

    .line 887
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(ZZ)Z

    move-result v0

    return v0
.end method

.method setLiftedState(ZZ)Z
    .registers 4
    .param p1, "lifted"    # Z
    .param p2, "force"    # Z

    .line 892
    if-eqz p2, :cond_22

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    if-eq v0, p1, :cond_22

    .line 893
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    .line 894
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->refreshDrawableState()V

    .line 895
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_20

    .line 896
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->startLiftOnScrollElevationOverlayAnimation(Lcom/google/android/material/shape/MaterialShapeDrawable;Z)V

    .line 898
    :cond_20
    const/4 v0, 0x1

    return v0

    .line 900
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public setOrientation(I)V
    .registers 4
    .param p1, "orientation"    # I

    .line 544
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 548
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 549
    return-void

    .line 545
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 357
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_46

    .line 358
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 359
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 361
    :cond_a
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_10
    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 362
    if-eqz v1, :cond_40

    .line 363
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 364
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 366
    :cond_23
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 367
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    move v1, v2

    :goto_38
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 368
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 370
    :cond_40
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->updateWillNotDraw()V

    .line 371
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 373
    :cond_46
    return-void
.end method

.method public setStatusBarForegroundColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 385
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    .line 386
    return-void
.end method

.method public setStatusBarForegroundResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 398
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    .line 399
    return-void
.end method

.method public setTargetElevation(F)V
    .registers 2
    .param p1, "elevation"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1014
    nop

    .line 1015
    invoke-static {p0, p1}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 1017
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .line 444
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 446
    const/4 v0, 0x0

    if-nez p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    move v1, v0

    .line 447
    .local v1, "visible":Z
    :goto_9
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_10

    .line 448
    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 450
    :cond_10
    return-void
.end method

.method shouldLift(Landroid/view/View;)Z
    .registers 4
    .param p1, "defaultScrollingView"    # Landroid/view/View;

    .line 971
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->findLiftOnScrollTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 972
    .local v0, "scrollingView":Landroid/view/View;
    if-nez v0, :cond_7

    .line 973
    move-object v0, p1

    .line 975
    :cond_7
    if-eqz v0, :cond_18

    .line 976
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-lez v1, :cond_18

    :cond_16
    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 975
    :goto_19
    return v1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 439
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
