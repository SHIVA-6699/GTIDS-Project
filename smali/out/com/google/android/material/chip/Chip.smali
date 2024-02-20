.class public Lcom/google/android/material/chip/Chip;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "Chip.java"

# interfaces
.implements Lcom/google/android/material/chip/ChipDrawable$Delegate;
.implements Lcom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/Chip$ChipTouchHelper;
    }
.end annotation


# static fields
.field private static final BUTTON_ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "android.widget.Button"

.field private static final CHECKABLE_STATE_SET:[I

.field private static final CHIP_BODY_VIRTUAL_ID:I = 0x0

.field private static final CLOSE_ICON_VIRTUAL_ID:I = 0x1

.field private static final COMPOUND_BUTTON_ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "android.widget.CompoundButton"

.field private static final DEF_STYLE_RES:I

.field private static final EMPTY_BOUNDS:Landroid/graphics/Rect;

.field private static final GENERIC_VIEW_ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field private static final MIN_TOUCH_TARGET_DP:I = 0x30

.field private static final NAMESPACE_ANDROID:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final RADIO_BUTTON_ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "android.widget.RadioButton"

.field private static final SELECTED_STATE:[I

.field private static final TAG:Ljava/lang/String; = "Chip"


# instance fields
.field private chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

.field private closeIconFocused:Z

.field private closeIconHovered:Z

.field private closeIconPressed:Z

.field private deferredCheckedValue:Z

.field private ensureMinTouchTargetSize:Z

.field private final fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

.field private insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

.field private lastLayoutDirection:I

.field private minTouchTargetSize:I

.field private onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private onCloseIconClickListener:Landroid/view/View$OnClickListener;

.field private final rect:Landroid/graphics/Rect;

.field private final rectF:Landroid/graphics/RectF;

.field private ripple:Landroid/graphics/drawable/RippleDrawable;

.field private final touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

.field private touchHelperEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 130
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Chip_Action:I

    sput v0, Lcom/google/android/material/chip/Chip;->DEF_STYLE_RES:I

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/material/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    .line 136
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a1

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/material/chip/Chip;->SELECTED_STATE:[I

    .line 137
    new-array v0, v0, [I

    const v1, 0x101009f

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/chip/Chip;->CHECKABLE_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 192
    sget v0, Lcom/google/android/material/R$attr;->chipStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 196
    sget v4, Lcom/google/android/material/chip/Chip;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->rect:Landroid/graphics/Rect;

    .line 172
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    .line 173
    new-instance v0, Lcom/google/android/material/chip/Chip$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/chip/Chip$1;-><init>(Lcom/google/android/material/chip/Chip;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    .line 198
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 200
    invoke-direct {p0, p2}, Lcom/google/android/material/chip/Chip;->validateAttributes(Landroid/util/AttributeSet;)V

    .line 201
    nop

    .line 202
    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;

    move-result-object v6

    .line 204
    .local v6, "drawable":Lcom/google/android/material/chip/ChipDrawable;
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/chip/Chip;->initMinTouchTarget(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 205
    invoke-virtual {p0, v6}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V

    .line 206
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/android/material/chip/ChipDrawable;->setElevation(F)V

    .line 207
    sget-object v2, Lcom/google/android/material/R$styleable;->Chip:[I

    const/4 v0, 0x0

    new-array v5, v0, [I

    .line 208
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 214
    .local v0, "a":Landroid/content/res/TypedArray;
    nop

    .line 220
    sget v1, Lcom/google/android/material/R$styleable;->Chip_shapeAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    .line 221
    .local v1, "hasShapeAppearanceAttribute":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    new-instance v2, Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-direct {v2, p0, p0}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    iput-object v2, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 224
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    .line 225
    if-nez v1, :cond_5c

    .line 226
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->initOutlineProvider()V

    .line 229
    :cond_5c
    iget-boolean v2, p0, Lcom/google/android/material/chip/Chip;->deferredCheckedValue:Z

    invoke-virtual {p0, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 230
    invoke-virtual {v6}, Lcom/google/android/material/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v6}, Lcom/google/android/material/chip/ChipDrawable;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 233
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    .line 236
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText()Z

    move-result v2

    if-nez v2, :cond_81

    .line 237
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/material/chip/Chip;->setLines(I)V

    .line 238
    invoke-virtual {p0, v2}, Lcom/google/android/material/chip/Chip;->setHorizontallyScrolling(Z)V

    .line 242
    :cond_81
    const v2, 0x800013

    invoke-virtual {p0, v2}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    .line 244
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updatePaddingInternal()V

    .line 245
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->shouldEnsureMinTouchTargetSize()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 246
    iget v2, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 248
    :cond_95
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/chip/Chip;->lastLayoutDirection:I

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/ChipDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/chip/Chip;

    .line 126
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/chip/Chip;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/chip/Chip;

    .line 126
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->hasCloseIcon()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/chip/Chip;

    .line 126
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/material/chip/Chip;)Landroid/view/View$OnClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/chip/Chip;

    .line 126
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/material/chip/Chip;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/chip/Chip;
    .param p1, "x1"    # Z

    .line 126
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/chip/Chip;

    .line 126
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Landroid/graphics/Rect;
    .registers 1

    .line 126
    sget-object v0, Lcom/google/android/material/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    return-object v0
.end method

.method private applyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V
    .registers 2
    .param p1, "chipDrawable"    # Lcom/google/android/material/chip/ChipDrawable;

    .line 481
    invoke-virtual {p1, p0}, Lcom/google/android/material/chip/ChipDrawable;->setDelegate(Lcom/google/android/material/chip/ChipDrawable$Delegate;)V

    .line 482
    return-void
.end method

.method private createCloseIconDrawableState()[I
    .registers 5

    .line 889
    const/4 v0, 0x0

    .line 890
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 891
    add-int/lit8 v0, v0, 0x1

    .line 893
    :cond_9
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    if-eqz v1, :cond_f

    .line 894
    add-int/lit8 v0, v0, 0x1

    .line 896
    :cond_f
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    if-eqz v1, :cond_15

    .line 897
    add-int/lit8 v0, v0, 0x1

    .line 899
    :cond_15
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eqz v1, :cond_1b

    .line 900
    add-int/lit8 v0, v0, 0x1

    .line 902
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 903
    add-int/lit8 v0, v0, 0x1

    .line 906
    :cond_23
    new-array v1, v0, [I

    .line 907
    .local v1, "stateSet":[I
    const/4 v2, 0x0

    .line 909
    .local v2, "i":I
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 910
    const v3, 0x101009e

    aput v3, v1, v2

    .line 911
    add-int/lit8 v2, v2, 0x1

    .line 913
    :cond_33
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    if-eqz v3, :cond_3e

    .line 914
    const v3, 0x101009c

    aput v3, v1, v2

    .line 915
    add-int/lit8 v2, v2, 0x1

    .line 917
    :cond_3e
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    if-eqz v3, :cond_49

    .line 918
    const v3, 0x1010367

    aput v3, v1, v2

    .line 919
    add-int/lit8 v2, v2, 0x1

    .line 921
    :cond_49
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eqz v3, :cond_54

    .line 922
    const v3, 0x10100a7

    aput v3, v1, v2

    .line 923
    add-int/lit8 v2, v2, 0x1

    .line 925
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 926
    const v3, 0x10100a1

    aput v3, v1, v2

    .line 927
    add-int/lit8 v2, v2, 0x1

    .line 929
    :cond_61
    return-object v1
.end method

.method private ensureChipDrawableHasCallback()V
    .registers 3

    .line 446
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_17

    .line 449
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 451
    :cond_17
    return-void
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .registers 3

    .line 938
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 940
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->hasCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_16

    .line 942
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconTouchBounds(Landroid/graphics/RectF;)V

    .line 945
    :cond_16
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .registers 7

    .line 950
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 951
    .local v0, "bounds":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 952
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->rect:Landroid/graphics/Rect;

    return-object v1
.end method

.method private getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .registers 2

    .line 1377
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method private hasCloseIcon()Z
    .registers 2

    .line 933
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private initMinTouchTarget(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 305
    sget-object v2, Lcom/google/android/material/R$styleable;->Chip:[I

    sget v4, Lcom/google/android/material/chip/Chip;->DEF_STYLE_RES:I

    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 306
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 312
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/material/R$styleable;->Chip_ensureMinTouchTargetSize:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/chip/Chip;->ensureMinTouchTargetSize:Z

    .line 314
    nop

    .line 315
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 316
    .local v1, "defaultMinTouchTargetSize":F
    sget v2, Lcom/google/android/material/R$styleable;->Chip_chipMinTouchTargetSize:I

    .line 319
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-double v2, v2

    .line 318
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    .line 321
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    return-void
.end method

.method private initOutlineProvider()V
    .registers 2

    .line 400
    nop

    .line 401
    new-instance v0, Lcom/google/android/material/chip/Chip$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/chip/Chip$2;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 414
    return-void
.end method

.method private insetChipBackgroundDrawable(IIII)V
    .registers 12
    .param p1, "insetLeft"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetRight"    # I
    .param p4, "insetBottom"    # I

    .line 2331
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v6, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    .line 2333
    return-void
.end method

.method private removeBackgroundInset()V
    .registers 2

    .line 2321
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_16

    .line 2322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    .line 2323
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setMinWidth(I)V

    .line 2324
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 2325
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    .line 2327
    :cond_16
    return-void
.end method

.method private setCloseIconHovered(Z)V
    .registers 3
    .param p1, "hovered"    # Z

    .line 866
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    if-eq v0, p1, :cond_9

    .line 867
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    .line 868
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    .line 870
    :cond_9
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .registers 3
    .param p1, "pressed"    # Z

    .line 859
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eq v0, p1, :cond_9

    .line 860
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    .line 861
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    .line 863
    :cond_9
    return-void
.end method

.method private unapplyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V
    .registers 3
    .param p1, "chipDrawable"    # Lcom/google/android/material/chip/ChipDrawable;

    .line 475
    if-eqz p1, :cond_6

    .line 476
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->setDelegate(Lcom/google/android/material/chip/ChipDrawable$Delegate;)V

    .line 478
    :cond_6
    return-void
.end method

.method private updateAccessibilityDelegate()V
    .registers 2

    .line 293
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->hasCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCloseIconVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_19

    .line 294
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    goto :goto_20

    .line 298
    :cond_19
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    .line 301
    :goto_20
    return-void
.end method

.method private updateBackgroundDrawable()V
    .registers 3

    .line 435
    sget-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v0, :cond_8

    .line 436
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateFrameworkRippleBackground()V

    goto :goto_1b

    .line 438
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setUseCompatRipple(Z)V

    .line 439
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 440
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updatePaddingInternal()V

    .line 441
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->ensureChipDrawableHasCallback()V

    .line 443
    :goto_1b
    return-void
.end method

.method private updateFrameworkRippleBackground()V
    .registers 5

    .line 463
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 465
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 466
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    .line 468
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setUseCompatRipple(Z)V

    .line 470
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 471
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updatePaddingInternal()V

    .line 472
    return-void
.end method

.method private updatePaddingInternal()V
    .registers 5

    .line 329
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v0, :cond_f

    goto :goto_59

    .line 332
    :cond_f
    nop

    .line 334
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipEndPadding()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 335
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getTextEndPadding()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 336
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 337
    .local v0, "paddingEnd":I
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 339
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getChipStartPadding()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 340
    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->getTextStartPadding()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 341
    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 342
    .local v1, "paddingStart":I
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v2, :cond_4c

    .line 343
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 344
    .local v2, "padding":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 345
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    .line 346
    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    .line 349
    .end local v2    # "padding":Landroid/graphics/Rect;
    :cond_4c
    nop

    .line 350
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaddingBottom()I

    move-result v3

    .line 349
    invoke-static {p0, v1, v2, v0, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 351
    return-void

    .line 330
    .end local v0    # "paddingEnd":I
    .end local v1    # "paddingStart":I
    :cond_59
    :goto_59
    return-void
.end method

.method private updateTextPaintDrawState()V
    .registers 5

    .line 1365
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1366
    .local v0, "textPaint":Landroid/text/TextPaint;
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_e

    .line 1367
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 1369
    :cond_e
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v1

    .line 1370
    .local v1, "textAppearance":Lcom/google/android/material/resources/TextAppearance;
    if-eqz v1, :cond_1d

    .line 1371
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/material/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 1373
    :cond_1d
    return-void
.end method

.method private validateAttributes(Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;

    .line 367
    if-nez p1, :cond_3

    .line 368
    return-void

    .line 370
    :cond_3
    const-string v0, "background"

    const-string v1, "http://schemas.android.com/apk/res/android"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Chip"

    if-eqz v0, :cond_14

    .line 371
    const-string v0, "Do not set the background; Chip manages its own background drawable."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_14
    const-string v0, "drawableLeft"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_84

    .line 376
    const-string v0, "drawableStart"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7c

    .line 379
    const-string v0, "drawableEnd"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Please set end drawable using R.attr#closeIcon."

    if-nez v0, :cond_76

    .line 382
    const-string v0, "drawableRight"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_70

    .line 385
    const-string v0, "singleLine"

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 386
    const-string v0, "lines"

    invoke-interface {p1, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_68

    .line 387
    const-string v0, "minLines"

    invoke-interface {p1, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_68

    .line 388
    const-string v0, "maxLines"

    invoke-interface {p1, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_68

    .line 392
    const-string v0, "gravity"

    const v3, 0x800013

    invoke-interface {p1, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_67

    .line 395
    const-string v0, "Chip text must be vertically center and start aligned"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_67
    return-void

    .line 389
    :cond_68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_7c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 813
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    if-nez v0, :cond_9

    .line 814
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 816
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 817
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    .line 816
    :goto_1b
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 822
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    if-nez v0, :cond_9

    .line 823
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 825
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 832
    .local v0, "handled":Z
    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 833
    invoke-virtual {v1}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->getKeyboardFocusedVirtualViewId()I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1d

    .line 834
    const/4 v1, 0x1

    return v1

    .line 836
    :cond_1d
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected drawableStateChanged()V
    .registers 4

    .line 874
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->drawableStateChanged()V

    .line 876
    const/4 v0, 0x0

    .line 878
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->isCloseIconStateful()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 879
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->createCloseIconDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconState([I)Z

    move-result v0

    .line 882
    :cond_18
    if-eqz v0, :cond_1d

    .line 883
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->invalidate()V

    .line 885
    :cond_1d
    return-void
.end method

.method public ensureAccessibleTouchTarget(I)Z
    .registers 9
    .param p1, "minTargetPx"    # I

    .line 2251
    iput p1, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    .line 2252
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->shouldEnsureMinTouchTargetSize()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 2253
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_11

    .line 2254
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->removeBackgroundInset()V

    goto :goto_14

    .line 2256
    :cond_11
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    .line 2258
    :goto_14
    return v1

    .line 2261
    :cond_15
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2262
    .local v0, "deltaHeight":I
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2264
    .local v2, "deltaWidth":I
    if-gtz v2, :cond_3d

    if-gtz v0, :cond_3d

    .line 2265
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v3, :cond_39

    .line 2266
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->removeBackgroundInset()V

    goto :goto_3c

    .line 2268
    :cond_39
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    .line 2270
    :goto_3c
    return v1

    .line 2273
    :cond_3d
    if-lez v2, :cond_42

    div-int/lit8 v3, v2, 0x2

    goto :goto_43

    :cond_42
    move v3, v1

    .line 2274
    .local v3, "deltaX":I
    :goto_43
    if-lez v0, :cond_47

    div-int/lit8 v1, v0, 0x2

    .line 2276
    .local v1, "deltaY":I
    :cond_47
    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    const/4 v5, 0x1

    if-eqz v4, :cond_6a

    .line 2277
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2278
    .local v4, "padding":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2279
    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-ne v6, v1, :cond_6a

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    if-ne v6, v1, :cond_6a

    iget v6, v4, Landroid/graphics/Rect;->left:I

    if-ne v6, v3, :cond_6a

    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-ne v6, v3, :cond_6a

    .line 2283
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    .line 2284
    return v5

    .line 2287
    .end local v4    # "padding":Landroid/graphics/Rect;
    :cond_6a
    nop

    .line 2288
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getMinHeight()I

    move-result v4

    if-eq v4, p1, :cond_74

    .line 2289
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 2291
    :cond_74
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getMinWidth()I

    move-result v4

    if-eq v4, p1, :cond_7d

    .line 2292
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinWidth(I)V

    .line 2298
    :cond_7d
    invoke-direct {p0, v3, v1, v3, v1}, Lcom/google/android/material/chip/Chip;->insetChipBackgroundDrawable(IIII)V

    .line 2299
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    .line 2300
    return v5
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 3

    .line 2306
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2307
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2308
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/google/android/material/chip/ChipGroup;

    if-eqz v1, :cond_1a

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipGroup;->isSingleSelection()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2309
    const-string v1, "android.widget.RadioButton"

    return-object v1

    .line 2311
    :cond_1a
    const-string v1, "android.widget.CompoundButton"

    return-object v1

    .line 2313
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2314
    const-string v0, "android.widget.Button"

    return-object v0

    .line 2316
    :cond_26
    const-string v0, "android.view.View"

    return-object v0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 455
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_7

    .line 456
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    return-object v0

    .line 458
    :cond_7
    return-object v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1815
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCheckedIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1850
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCheckedIconTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1059
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getChipCornerRadius()F
    .registers 3

    .line 1127
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_d
    return v1
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    return-object v0
.end method

.method public getChipEndPadding()F
    .registers 2

    .line 2193
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipEndPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1440
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getChipIconSize()F
    .registers 2

    .line 1512
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipIconSize()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1475
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipIconTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getChipMinHeight()F
    .registers 2

    .line 1093
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipMinHeight()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipStartPadding()F
    .registers 2

    .line 1955
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipStartPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1175
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getChipStrokeWidth()F
    .registers 2

    .line 1209
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipStrokeWidth()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1284
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1602
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1718
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .registers 2

    .line 2159
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconEndPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getCloseIconSize()F
    .registers 2

    .line 1673
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconSize()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getCloseIconStartPadding()F
    .registers 2

    .line 2125
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconStartPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1639
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2

    .line 633
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 849
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 850
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->getKeyboardFocusedVirtualViewId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 851
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    if-ne v0, v1, :cond_1d

    .line 852
    :cond_15
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_20

    .line 854
    :cond_1d
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 856
    :goto_20
    return-void
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .registers 2

    .line 1921
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getIconEndPadding()F
    .registers 2

    .line 2023
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getIconEndPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getIconStartPadding()F
    .registers 2

    .line 1989
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getIconStartPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1244
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    .line 1151
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .registers 2

    .line 1886
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getTextEndPadding()F
    .registers 2

    .line 2091
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getTextEndPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getTextStartPadding()F
    .registers 2

    .line 2057
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getTextStartPadding()F

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isCheckable()Z
    .registers 2

    .line 1728
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isCheckedIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1768
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckedIconVisible()Z

    move-result v0

    return v0
.end method

.method public isCheckedIconVisible()Z
    .registers 2

    .line 1762
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCheckedIconVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isChipIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1393
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChipIconVisible()Z

    move-result v0

    return v0
.end method

.method public isChipIconVisible()Z
    .registers 2

    .line 1387
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isChipIconVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isCloseIconEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1556
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCloseIconVisible()Z

    move-result v0

    return v0
.end method

.method public isCloseIconVisible()Z
    .registers 2

    .line 1550
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCloseIconVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 253
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onAttachedToWindow()V

    .line 255
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    .line 256
    return-void
.end method

.method public onChipDrawableSizeChange()V
    .registers 2

    .line 692
    iget v0, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->ensureAccessibleTouchTarget(I)Z

    .line 693
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->requestLayout()V

    .line 694
    nop

    .line 695
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->invalidateOutline()V

    .line 697
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .line 486
    add-int/lit8 v0, p1, 0x2

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 487
    .local v0, "state":[I
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 488
    sget-object v1, Lcom/google/android/material/chip/Chip;->SELECTED_STATE:[I

    invoke-static {v0, v1}, Lcom/google/android/material/chip/Chip;->mergeDrawableStates([I[I)[I

    .line 490
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 491
    sget-object v1, Lcom/google/android/material/chip/Chip;->CHECKABLE_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/google/android/material/chip/Chip;->mergeDrawableStates([I[I)[I

    .line 493
    :cond_1c
    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 841
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 842
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    if-eqz v0, :cond_c

    .line 843
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 845
    :cond_c
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 797
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 798
    .local v0, "action":I
    sparse-switch v0, :sswitch_data_26

    goto :goto_21

    .line 803
    :sswitch_8
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    .line 804
    goto :goto_21

    .line 800
    :sswitch_d
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    .line 801
    nop

    .line 808
    :goto_21
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :sswitch_data_26
    .sparse-switch
        0x7 -> :sswitch_d
        0xa -> :sswitch_8
    .end sparse-switch
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 11
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 269
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 270
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 272
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/chip/ChipGroup;

    if-eqz v0, :cond_4a

    .line 275
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    .line 276
    .local v0, "chipGroup":Lcom/google/android/material/chip/ChipGroup;
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 278
    .local v1, "infoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipGroup;->isSingleLine()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipGroup;->getIndexOfChip(Landroid/view/View;)I

    move-result v2

    goto :goto_36

    :cond_35
    const/4 v2, -0x1

    :goto_36
    move v5, v2

    .line 279
    .local v5, "columnIndex":I
    nop

    .line 281
    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipGroup;->getRowIndex(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 286
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v8

    .line 280
    invoke-static/range {v3 .. v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v2

    .line 279
    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 288
    .end local v0    # "chipGroup":Lcom/google/android/material/chip/ChipGroup;
    .end local v1    # "infoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v5    # "columnIndex":I
    :cond_4a
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 959
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 960
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0

    .line 962
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 356
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onRtlPropertiesChanged(I)V

    .line 360
    iget v0, p0, Lcom/google/android/material/chip/Chip;->lastLayoutDirection:I

    if-eq v0, p1, :cond_c

    .line 361
    iput p1, p0, Lcom/google/android/material/chip/Chip;->lastLayoutDirection:I

    .line 362
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updatePaddingInternal()V

    .line 364
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 761
    const/4 v0, 0x0

    .line 763
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 764
    .local v1, "action":I
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    .line 765
    .local v2, "eventInCloseIcon":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_44

    goto :goto_38

    .line 773
    :pswitch_1b
    iget-boolean v5, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eqz v5, :cond_38

    .line 774
    if-nez v2, :cond_24

    .line 775
    invoke-direct {p0, v4}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    .line 777
    :cond_24
    const/4 v0, 0x1

    goto :goto_38

    .line 781
    :pswitch_26
    iget-boolean v5, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eqz v5, :cond_2e

    .line 782
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->performCloseIconClick()Z

    .line 783
    const/4 v0, 0x1

    .line 787
    :cond_2e
    :pswitch_2e
    invoke-direct {p0, v4}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    .line 788
    goto :goto_38

    .line 767
    :pswitch_32
    if-eqz v2, :cond_38

    .line 768
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    .line 769
    const/4 v0, 0x1

    .line 792
    :cond_38
    :goto_38
    if-nez v0, :cond_42

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_41

    goto :goto_42

    :cond_41
    move v3, v4

    :cond_42
    :goto_42
    return v3

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_32
        :pswitch_26
        :pswitch_1b
        :pswitch_2e
    .end packed-switch
.end method

.method public performCloseIconClick()Z
    .registers 4

    .line 740
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->playSoundEffect(I)V

    .line 743
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_d

    .line 744
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 745
    const/4 v0, 0x1

    .local v0, "result":Z
    goto :goto_e

    .line 747
    .end local v0    # "result":Z
    :cond_d
    const/4 v0, 0x0

    .line 750
    .restart local v0    # "result":Z
    :goto_e
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    if-eqz v1, :cond_18

    .line 751
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->sendEventForVirtualView(II)Z

    .line 754
    :cond_18
    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 526
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_12

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_12

    .line 527
    const-string v0, "Chip"

    const-string v1, "Do not set the background; Chip manages its own background drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 529
    :cond_12
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 531
    :goto_15
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 4
    .param p1, "color"    # I

    .line 516
    const-string v0, "Chip"

    const-string v1, "Do not set the background color; Chip manages its own background drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 535
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_12

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_12

    .line 536
    const-string v0, "Chip"

    const-string v1, "Do not set the background drawable; Chip manages its own background drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 538
    :cond_12
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    :goto_15
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 4
    .param p1, "resid"    # I

    .line 521
    const-string v0, "Chip"

    const-string v1, "Do not set the background resource; Chip manages its own background drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 506
    const-string v0, "Chip"

    const-string v1, "Do not set the background tint list; Chip manages its own background drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 511
    const-string v0, "Chip"

    const-string v1, "Do not set the background tint mode; Chip manages its own background drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void
.end method

.method public setCheckable(Z)V
    .registers 3
    .param p1, "checkable"    # Z

    .line 1750
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1751
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    .line 1753
    :cond_7
    return-void
.end method

.method public setCheckableResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1738
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1739
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckableResource(I)V

    .line 1741
    :cond_7
    return-void
.end method

.method public setChecked(Z)V
    .registers 4
    .param p1, "checked"    # Z

    .line 701
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v0, :cond_7

    .line 703
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->deferredCheckedValue:Z

    goto :goto_1d

    .line 704
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 705
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v0

    .line 706
    .local v0, "wasChecked":Z
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 708
    if-eq v0, p1, :cond_1d

    .line 709
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_1d

    .line 710
    invoke-interface {v1, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 714
    .end local v0    # "wasChecked":Z
    :cond_1d
    :goto_1d
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "checkedIcon"    # Landroid/graphics/drawable/Drawable;

    .line 1837
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1838
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1840
    :cond_7
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .registers 2
    .param p1, "checkedIconEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1804
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    .line 1805
    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .registers 2
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1798
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    .line 1799
    return-void
.end method

.method public setCheckedIconResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1825
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1826
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconResource(I)V

    .line 1828
    :cond_7
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "checkedIconTint"    # Landroid/content/res/ColorStateList;

    .line 1873
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1874
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconTint(Landroid/content/res/ColorStateList;)V

    .line 1876
    :cond_7
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1860
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1861
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconTintResource(I)V

    .line 1863
    :cond_7
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1778
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1779
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(I)V

    .line 1781
    :cond_7
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .registers 3
    .param p1, "checkedIconVisible"    # Z

    .line 1790
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1791
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    .line 1793
    :cond_7
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "chipBackgroundColor"    # Landroid/content/res/ColorStateList;

    .line 1081
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1082
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 1084
    :cond_7
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1069
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1070
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColorResource(I)V

    .line 1072
    :cond_7
    return-void
.end method

.method public setChipCornerRadius(F)V
    .registers 3
    .param p1, "chipCornerRadius"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1162
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1163
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    .line 1165
    :cond_7
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .registers 3
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1138
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1139
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadiusResource(I)V

    .line 1141
    :cond_7
    return-void
.end method

.method public setChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V
    .registers 3
    .param p1, "drawable"    # Lcom/google/android/material/chip/ChipDrawable;

    .line 423
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eq v0, p1, :cond_17

    .line 424
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->unapplyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V

    .line 425
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->setShouldDrawText(Z)V

    .line 429
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->applyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V

    .line 430
    iget v0, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->ensureAccessibleTouchTarget(I)Z

    .line 432
    :cond_17
    return-void
.end method

.method public setChipEndPadding(F)V
    .registers 3
    .param p1, "chipEndPadding"    # F

    .line 2215
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2216
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    .line 2218
    :cond_7
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 2203
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2204
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPaddingResource(I)V

    .line 2206
    :cond_7
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "chipIcon"    # Landroid/graphics/drawable/Drawable;

    .line 1462
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1463
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1465
    :cond_7
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .registers 2
    .param p1, "chipIconEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1429
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    .line 1430
    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .registers 2
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1423
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    .line 1424
    return-void
.end method

.method public setChipIconResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1450
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1451
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconResource(I)V

    .line 1453
    :cond_7
    return-void
.end method

.method public setChipIconSize(F)V
    .registers 3
    .param p1, "chipIconSize"    # F

    .line 1538
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1539
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    .line 1541
    :cond_7
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1524
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1525
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSizeResource(I)V

    .line 1527
    :cond_7
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "chipIconTint"    # Landroid/content/res/ColorStateList;

    .line 1498
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1499
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    .line 1501
    :cond_7
    return-void
.end method

.method public setChipIconTintResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1485
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1486
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTintResource(I)V

    .line 1488
    :cond_7
    return-void
.end method

.method public setChipIconVisible(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1403
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1404
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(I)V

    .line 1406
    :cond_7
    return-void
.end method

.method public setChipIconVisible(Z)V
    .registers 3
    .param p1, "chipIconVisible"    # Z

    .line 1415
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1416
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    .line 1418
    :cond_7
    return-void
.end method

.method public setChipMinHeight(F)V
    .registers 3
    .param p1, "minHeight"    # F

    .line 1115
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1116
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    .line 1118
    :cond_7
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1103
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1104
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeightResource(I)V

    .line 1106
    :cond_7
    return-void
.end method

.method public setChipStartPadding(F)V
    .registers 3
    .param p1, "chipStartPadding"    # F

    .line 1977
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1978
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    .line 1980
    :cond_7
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1965
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1966
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPaddingResource(I)V

    .line 1968
    :cond_7
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "chipStrokeColor"    # Landroid/content/res/ColorStateList;

    .line 1197
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1198
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 1200
    :cond_7
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1185
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1186
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColorResource(I)V

    .line 1188
    :cond_7
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .registers 3
    .param p1, "chipStrokeWidth"    # F

    .line 1231
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1232
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    .line 1234
    :cond_7
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1219
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1220
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidthResource(I)V

    .line 1222
    :cond_7
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "chipText"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1320
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    return-void
.end method

.method public setChipTextResource(I)V
    .registers 3
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1314
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 1315
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "closeIcon"    # Landroid/graphics/drawable/Drawable;

    .line 1625
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1626
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1628
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    .line 1629
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "closeIconContentDescription"    # Ljava/lang/CharSequence;

    .line 1706
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1707
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconContentDescription(Ljava/lang/CharSequence;)V

    .line 1709
    :cond_7
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .registers 2
    .param p1, "closeIconEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1591
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    .line 1592
    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .registers 2
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1585
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    .line 1586
    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .registers 3
    .param p1, "closeIconEndPadding"    # F

    .line 2181
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2182
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    .line 2184
    :cond_7
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 2169
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2170
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPaddingResource(I)V

    .line 2172
    :cond_7
    return-void
.end method

.method public setCloseIconResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1612
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1613
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconResource(I)V

    .line 1615
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    .line 1616
    return-void
.end method

.method public setCloseIconSize(F)V
    .registers 3
    .param p1, "closeIconSize"    # F

    .line 1695
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1696
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    .line 1698
    :cond_7
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1683
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1684
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSizeResource(I)V

    .line 1686
    :cond_7
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .registers 3
    .param p1, "closeIconStartPadding"    # F

    .line 2147
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2148
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    .line 2150
    :cond_7
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 2135
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2136
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPaddingResource(I)V

    .line 2138
    :cond_7
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "closeIconTint"    # Landroid/content/res/ColorStateList;

    .line 1661
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1662
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 1664
    :cond_7
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1649
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1650
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTintResource(I)V

    .line 1652
    :cond_7
    return-void
.end method

.method public setCloseIconVisible(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1566
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    .line 1567
    return-void
.end method

.method public setCloseIconVisible(Z)V
    .registers 3
    .param p1, "closeIconVisible"    # Z

    .line 1576
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1577
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 1579
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    .line 1580
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 548
    if-nez p1, :cond_10

    .line 551
    if-nez p3, :cond_8

    .line 555
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 556
    return-void

    .line 552
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 592
    if-nez p1, :cond_10

    .line 595
    if-nez p3, :cond_8

    .line 599
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 600
    return-void

    .line 596
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 605
    if-nez p1, :cond_10

    .line 608
    if-nez p3, :cond_8

    .line 612
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 613
    return-void

    .line 609
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 621
    if-nez p1, :cond_10

    .line 624
    if-nez p3, :cond_8

    .line 627
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 628
    return-void

    .line 625
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 560
    if-nez p1, :cond_10

    .line 563
    if-nez p3, :cond_8

    .line 567
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 568
    return-void

    .line 564
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 576
    if-nez p1, :cond_10

    .line 579
    if-nez p3, :cond_8

    .line 583
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 584
    return-void

    .line 580
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setElevation(F)V
    .registers 3
    .param p1, "elevation"    # F

    .line 261
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setElevation(F)V

    .line 262
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_a

    .line 263
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setElevation(F)V

    .line 265
    :cond_a
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .registers 4
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    .line 638
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v0, :cond_5

    .line 639
    return-void

    .line 641
    :cond_5
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_14

    .line 644
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 645
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_13

    .line 646
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 648
    :cond_13
    return-void

    .line 642
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Text within a chip are not allowed to scroll."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 2239
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->ensureMinTouchTargetSize:Z

    .line 2240
    iget v0, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->ensureAccessibleTouchTarget(I)Z

    .line 2241
    return-void
.end method

.method public setGravity(I)V
    .registers 4
    .param p1, "gravity"    # I

    .line 498
    const v0, 0x800013

    if-eq p1, v0, :cond_d

    .line 499
    const-string v0, "Chip"

    const-string v1, "Chip text must be vertically center and start aligned"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 501
    :cond_d
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setGravity(I)V

    .line 503
    :goto_10
    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .registers 3
    .param p1, "hideMotionSpec"    # Lcom/google/android/material/animation/MotionSpec;

    .line 1943
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1944
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 1946
    :cond_7
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1931
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1932
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpecResource(I)V

    .line 1934
    :cond_7
    return-void
.end method

.method public setIconEndPadding(F)V
    .registers 3
    .param p1, "iconEndPadding"    # F

    .line 2045
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2046
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    .line 2048
    :cond_7
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 2033
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2034
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPaddingResource(I)V

    .line 2036
    :cond_7
    return-void
.end method

.method public setIconStartPadding(F)V
    .registers 3
    .param p1, "iconStartPadding"    # F

    .line 2011
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2012
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    .line 2014
    :cond_7
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1999
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2000
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPaddingResource(I)V

    .line 2002
    :cond_7
    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 1289
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v0, :cond_5

    .line 1290
    return-void

    .line 1292
    :cond_5
    nop

    .line 1293
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setLayoutDirection(I)V

    .line 1295
    return-void
.end method

.method public setLines(I)V
    .registers 4
    .param p1, "lines"    # I

    .line 660
    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    .line 663
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setLines(I)V

    .line 664
    return-void

    .line 661
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxLines(I)V
    .registers 4
    .param p1, "maxLines"    # I

    .line 676
    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    .line 679
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMaxLines(I)V

    .line 680
    return-void

    .line 677
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxWidth(I)V
    .registers 3
    .param p1, "maxWidth"    # I

    .line 684
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMaxWidth(I)V

    .line 685
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_a

    .line 686
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setMaxWidth(I)V

    .line 688
    :cond_a
    return-void
.end method

.method public setMinLines(I)V
    .registers 4
    .param p1, "minLines"    # I

    .line 668
    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    .line 671
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMinLines(I)V

    .line 672
    return-void

    .line 669
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 721
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListenerInternal:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 722
    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 726
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    .line 727
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    .line 728
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "rippleColor"    # Landroid/content/res/ColorStateList;

    .line 1269
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1270
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 1272
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getUseCompatRipple()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1273
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateFrameworkRippleBackground()V

    .line 1275
    :cond_12
    return-void
.end method

.method public setRippleColorResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1254
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_12

    .line 1255
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColorResource(I)V

    .line 1256
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getUseCompatRipple()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1257
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateFrameworkRippleBackground()V

    .line 1260
    :cond_12
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 3
    .param p1, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1145
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 1146
    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .registers 3
    .param p1, "showMotionSpec"    # Lcom/google/android/material/animation/MotionSpec;

    .line 1908
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1909
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 1911
    :cond_7
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1896
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1897
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpecResource(I)V

    .line 1899
    :cond_7
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 4
    .param p1, "singleLine"    # Z

    .line 652
    if-eqz p1, :cond_6

    .line 655
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setSingleLine(Z)V

    .line 656
    return-void

    .line 653
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .line 1299
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v0, :cond_5

    .line 1300
    return-void

    .line 1302
    :cond_5
    if-nez p1, :cond_9

    .line 1303
    const-string p1, ""

    .line 1305
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    move-object v0, p1

    :goto_12
    invoke-super {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1306
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_1c

    .line 1307
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    :cond_1c
    return-void
.end method

.method public setTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 1357
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextAppearance(I)V

    .line 1358
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_a

    .line 1359
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearanceResource(I)V

    .line 1361
    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    .line 1362
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 1348
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextAppearance(Landroid/content/Context;I)V

    .line 1349
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_a

    .line 1350
    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearanceResource(I)V

    .line 1352
    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    .line 1353
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .registers 3
    .param p1, "textAppearance"    # Lcom/google/android/material/resources/TextAppearance;

    .line 1340
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 1341
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 1343
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    .line 1344
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1330
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    .line 1331
    return-void
.end method

.method public setTextEndPadding(F)V
    .registers 3
    .param p1, "textEndPadding"    # F

    .line 2113
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2114
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    .line 2116
    :cond_7
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 2101
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2102
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPaddingResource(I)V

    .line 2104
    :cond_7
    return-void
.end method

.method public setTextStartPadding(F)V
    .registers 3
    .param p1, "textStartPadding"    # F

    .line 2079
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2080
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    .line 2082
    :cond_7
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 2067
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_7

    .line 2068
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPaddingResource(I)V

    .line 2070
    :cond_7
    return-void
.end method

.method public shouldEnsureMinTouchTargetSize()Z
    .registers 2

    .line 2228
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->ensureMinTouchTargetSize:Z

    return v0
.end method
