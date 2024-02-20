.class Landroidx/appcompat/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# static fields
.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TEXT_FONT_WEIGHT_UNSPECIFIED:I = -0x1


# instance fields
.field private mAsyncFontPending:Z

.field private final mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

.field private mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

.field private mFontTypeface:Landroid/graphics/Typeface;

.field private mFontWeight:I

.field private mStyle:I

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/TextView;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 79
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 80
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 81
    return-void
.end method

.method private applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "info"    # Landroidx/appcompat/widget/TintInfo;

    .line 541
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 542
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    .line 544
    :cond_d
    return-void
.end method

.method private static createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableManager"    # Landroidx/appcompat/widget/AppCompatDrawableManager;
    .param p2, "drawableId"    # I

    .line 548
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 549
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_11

    .line 550
    new-instance v1, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v1}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    .line 551
    .local v1, "tintInfo":Landroidx/appcompat/widget/TintInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 552
    iput-object v0, v1, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 553
    return-object v1

    .line 555
    .end local v1    # "tintInfo":Landroidx/appcompat/widget/TintInfo;
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method private setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 13
    .param p1, "drawableLeft"    # Landroid/graphics/drawable/Drawable;
    .param p2, "drawableTop"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRight"    # Landroid/graphics/drawable/Drawable;
    .param p4, "drawableBottom"    # Landroid/graphics/drawable/Drawable;
    .param p5, "drawableStart"    # Landroid/graphics/drawable/Drawable;
    .param p6, "drawableEnd"    # Landroid/graphics/drawable/Drawable;

    .line 672
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez p5, :cond_5f

    if-eqz p6, :cond_a

    goto/16 :goto_5f

    .line 680
    :cond_a
    if-nez p1, :cond_15

    if-nez p2, :cond_15

    if-nez p3, :cond_15

    if-eqz p4, :cond_13

    goto :goto_15

    :cond_13
    :goto_13
    goto/16 :goto_83

    .line 683
    :cond_15
    :goto_15
    nop

    .line 684
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 685
    .local v4, "existingRel":[Landroid/graphics/drawable/Drawable;
    aget-object v5, v4, v3

    if-nez v5, :cond_49

    aget-object v5, v4, v2

    if-eqz v5, :cond_25

    goto :goto_49

    .line 696
    .end local v4    # "existingRel":[Landroid/graphics/drawable/Drawable;
    :cond_25
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 697
    .local v4, "existingAbs":[Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 698
    if-eqz p1, :cond_31

    move-object v3, p1

    goto :goto_33

    :cond_31
    aget-object v3, v4, v3

    .line 699
    :goto_33
    if-eqz p2, :cond_37

    move-object v1, p2

    goto :goto_39

    :cond_37
    aget-object v1, v4, v1

    .line 700
    :goto_39
    if-eqz p3, :cond_3d

    move-object v2, p3

    goto :goto_3f

    :cond_3d
    aget-object v2, v4, v2

    .line 701
    :goto_3f
    if-eqz p4, :cond_43

    move-object v0, p4

    goto :goto_45

    :cond_43
    aget-object v0, v4, v0

    .line 697
    :goto_45
    invoke-virtual {v5, v3, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_83

    .line 686
    .local v4, "existingRel":[Landroid/graphics/drawable/Drawable;
    :cond_49
    :goto_49
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    aget-object v3, v4, v3

    .line 688
    if-eqz p2, :cond_51

    move-object v1, p2

    goto :goto_53

    :cond_51
    aget-object v1, v4, v1

    :goto_53
    aget-object v2, v4, v2

    .line 690
    if-eqz p4, :cond_59

    move-object v0, p4

    goto :goto_5b

    :cond_59
    aget-object v0, v4, v0

    .line 686
    :goto_5b
    invoke-virtual {v5, v3, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 692
    return-void

    .line 673
    .end local v4    # "existingRel":[Landroid/graphics/drawable/Drawable;
    :cond_5f
    :goto_5f
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 674
    .restart local v4    # "existingRel":[Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 675
    if-eqz p5, :cond_6b

    move-object v3, p5

    goto :goto_6d

    :cond_6b
    aget-object v3, v4, v3

    .line 676
    :goto_6d
    if-eqz p2, :cond_71

    move-object v1, p2

    goto :goto_73

    :cond_71
    aget-object v1, v4, v1

    .line 677
    :goto_73
    if-eqz p6, :cond_77

    move-object v2, p6

    goto :goto_79

    :cond_77
    aget-object v2, v4, v2

    .line 678
    :goto_79
    if-eqz p4, :cond_7d

    move-object v0, p4

    goto :goto_7f

    :cond_7d
    aget-object v0, v4, v0

    .line 674
    :goto_7f
    invoke-virtual {v5, v3, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .end local v4    # "existingRel":[Landroid/graphics/drawable/Drawable;
    goto :goto_13

    .line 704
    :goto_83
    return-void
.end method

.method private setCompoundTints()V
    .registers 2

    .line 660
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 661
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 662
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 663
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 664
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 665
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 666
    return-void
.end method

.method private setTextSizeInternal(IF)V
    .registers 4
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 589
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    .line 590
    return-void
.end method

.method private updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "a"    # Landroidx/appcompat/widget/TintTypedArray;

    .line 342
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_23

    .line 345
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 347
    if-eq v0, v1, :cond_23

    .line 348
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v2

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 352
    :cond_23
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_59

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 353
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_59

    .line 415
    :cond_35
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 417
    iput-boolean v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    .line 418
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    .line 419
    .local v0, "typefaceIndex":I
    packed-switch v0, :pswitch_data_e6

    goto :goto_58

    .line 429
    :pswitch_49
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_58

    .line 425
    :pswitch_4e
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 426
    goto :goto_58

    .line 421
    :pswitch_53
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 422
    nop

    .line 433
    .end local v0    # "typefaceIndex":I
    :cond_58
    :goto_58
    return-void

    .line 354
    :cond_59
    :goto_59
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 355
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 356
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    goto :goto_69

    .line 357
    :cond_67
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    :goto_69
    nop

    .line 358
    .local v0, "fontFamilyId":I
    iget v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 359
    .local v5, "fontWeight":I
    iget v6, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 360
    .local v6, "style":I
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v7

    if-nez v7, :cond_b6

    .line 361
    new-instance v7, Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 362
    .local v7, "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextHelper$1;

    invoke-direct {v8, p0, v5, v6, v7}, Landroidx/appcompat/widget/AppCompatTextHelper$1;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;IILjava/lang/ref/WeakReference;)V

    .line 381
    .local v8, "replyCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    :try_start_80
    iget v9, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v9, v8}, Landroidx/appcompat/widget/TintTypedArray;->getFont(IILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 382
    .local v9, "typeface":Landroid/graphics/Typeface;
    if-eqz v9, :cond_a9

    .line 383
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v3, :cond_a7

    iget v10, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v10, v1, :cond_a7

    .line 385
    nop

    .line 386
    invoke-static {v9, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v10

    iget v11, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    iget v12, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_9f

    move v12, v4

    goto :goto_a0

    :cond_9f
    move v12, v2

    .line 385
    :goto_a0
    invoke-static {v10, v11, v12}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v10

    iput-object v10, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_a9

    .line 389
    :cond_a7
    iput-object v9, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 393
    :cond_a9
    :goto_a9
    iget-object v10, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v10, :cond_af

    move v10, v4

    goto :goto_b0

    :cond_af
    move v10, v2

    :goto_b0
    iput-boolean v10, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z
    :try_end_b2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_80 .. :try_end_b2} :catch_b5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_80 .. :try_end_b2} :catch_b3

    .line 396
    .end local v9    # "typeface":Landroid/graphics/Typeface;
    goto :goto_b6

    .line 394
    :catch_b3
    move-exception v9

    goto :goto_b6

    :catch_b5
    move-exception v9

    .line 398
    .end local v7    # "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    .end local v8    # "replyCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    :cond_b6
    :goto_b6
    iget-object v7, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v7, :cond_e5

    .line 400
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, "fontFamilyName":Ljava/lang/String;
    if-eqz v7, :cond_e5

    .line 402
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v3, :cond_dd

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v3, v1, :cond_dd

    .line 404
    nop

    .line 405
    invoke-static {v7, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    iget v8, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_d6

    move v2, v4

    .line 404
    :cond_d6
    invoke-static {v1, v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_e5

    .line 408
    :cond_dd
    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-static {v7, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 412
    .end local v7    # "fontFamilyName":Ljava/lang/String;
    :cond_e5
    :goto_e5
    return-void

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4e
        :pswitch_49
    .end packed-switch
.end method


# virtual methods
.method applyCompoundDrawablesTints()V
    .registers 6

    .line 523
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_36

    .line 525
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 526
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 527
    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 528
    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 529
    const/4 v3, 0x3

    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 531
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_36
    nop

    .line 532
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_3f

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_53

    .line 533
    :cond_3f
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 534
    .restart local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v2, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 535
    aget-object v1, v0, v1

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 538
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_53
    return-void
.end method

.method autoSizeText()V
    .registers 2

    .line 579
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    .line 580
    return-void
.end method

.method getAutoSizeMaxTextSize()I
    .registers 2

    .line 624
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeMinTextSize()I
    .registers 2

    .line 620
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeStepGranularity()I
    .registers 2

    .line 616
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v0

    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .registers 2

    .line 628
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0
.end method

.method getAutoSizeTextType()I
    .registers 2

    .line 612
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v0

    return v0
.end method

.method getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 633
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 647
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method isAutoSizeEnabled()Z
    .registers 2

    .line 585
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v0

    return v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 38
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 85
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 86
    .local v10, "context":Landroid/content/Context;
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v11

    .line 89
    .local v11, "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    sget-object v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    const/4 v12, 0x0

    invoke-static {v10, v8, v0, v9, v12}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v13

    .line 91
    .local v13, "a":Landroidx/appcompat/widget/TintTypedArray;
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    .line 92
    invoke-virtual {v13}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v6, 0x0

    .line 91
    move-object/from16 v3, p1

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 95
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v14, -0x1

    invoke-virtual {v13, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v15

    .line 97
    .local v15, "ap":I
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 98
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 99
    invoke-virtual {v13, v0, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 98
    invoke-static {v10, v11, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 101
    :cond_46
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 102
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 103
    invoke-virtual {v13, v0, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 102
    invoke-static {v10, v11, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 105
    :cond_5a
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 106
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 107
    invoke-virtual {v13, v0, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 106
    invoke-static {v10, v11, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 109
    :cond_6e
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 110
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 111
    invoke-virtual {v13, v0, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 110
    invoke-static {v10, v11, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 114
    :cond_82
    nop

    .line 115
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 116
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    .line 117
    invoke-virtual {v13, v0, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 116
    invoke-static {v10, v11, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 119
    :cond_97
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 120
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    .line 121
    invoke-virtual {v13, v0, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 120
    invoke-static {v10, v11, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 125
    :cond_ab
    invoke-virtual {v13}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 130
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 131
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v6, v0, Landroid/text/method/PasswordTransformationMethod;

    .line 132
    .local v6, "hasPwdTm":Z
    const/4 v0, 0x0

    .line 133
    .local v0, "allCaps":Z
    const/4 v1, 0x0

    .line 134
    .local v1, "allCapsSet":Z
    const/4 v5, 0x0

    .line 135
    .local v5, "textColor":Landroid/content/res/ColorStateList;
    const/4 v4, 0x0

    .line 136
    .local v4, "textColorHint":Landroid/content/res/ColorStateList;
    const/4 v3, 0x0

    .line 137
    .local v3, "textColorLink":Landroid/content/res/ColorStateList;
    const/4 v2, 0x0

    .line 138
    .local v2, "fontVariation":Ljava/lang/String;
    const/16 v16, 0x0

    .line 141
    .local v16, "localeListString":Ljava/lang/String;
    if-eq v15, v14, :cond_103

    .line 142
    sget-object v14, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v10, v15, v14}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v13

    .line 143
    if-nez v6, :cond_d8

    sget v14, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v14, :cond_d8

    .line 144
    const/4 v1, 0x1

    .line 145
    sget v14, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v12, 0x0

    invoke-virtual {v13, v14, v12}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 148
    :cond_d8
    invoke-direct {v7, v10, v13}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 149
    nop

    .line 164
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v13, v12}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_ec

    .line 165
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v13, v12}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v12

    .line 167
    :cond_ec
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1a

    if-lt v12, v14, :cond_100

    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 168
    invoke-virtual {v13, v12}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_100

    .line 169
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v13, v12}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    :cond_100
    invoke-virtual {v13}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 175
    :cond_103
    sget-object v12, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    const/4 v14, 0x0

    invoke-static {v10, v8, v12, v9, v14}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v12

    .line 177
    .end local v13    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .local v12, "a":Landroidx/appcompat/widget/TintTypedArray;
    if-nez v6, :cond_11e

    sget v13, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_11e

    .line 178
    const/4 v1, 0x1

    .line 179
    sget v13, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    move v13, v0

    move v14, v1

    goto :goto_120

    .line 181
    :cond_11e
    move v13, v0

    move v14, v1

    .end local v0    # "allCaps":Z
    .end local v1    # "allCapsSet":Z
    .local v13, "allCaps":Z
    .local v14, "allCapsSet":Z
    :goto_120
    nop

    .line 196
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 197
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 200
    :cond_12f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_143

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 201
    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_143

    .line 202
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    :cond_143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_16a

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 206
    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 207
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v1, -0x1

    invoke-virtual {v12, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-nez v0, :cond_164

    .line 208
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v1, 0x0

    move/from16 v19, v15

    const/4 v15, 0x0

    .end local v15    # "ap":I
    .local v19, "ap":I
    invoke-virtual {v0, v15, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_16c

    .line 207
    .end local v19    # "ap":I
    .restart local v15    # "ap":I
    :cond_164
    move/from16 v19, v15

    .end local v15    # "ap":I
    .restart local v19    # "ap":I
    goto :goto_16c

    .line 206
    .end local v19    # "ap":I
    .restart local v15    # "ap":I
    :cond_167
    move/from16 v19, v15

    .end local v15    # "ap":I
    .restart local v19    # "ap":I
    goto :goto_16c

    .line 205
    .end local v19    # "ap":I
    .restart local v15    # "ap":I
    :cond_16a
    move/from16 v19, v15

    .line 212
    .end local v15    # "ap":I
    .restart local v19    # "ap":I
    :goto_16c
    invoke-direct {v7, v10, v12}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 213
    invoke-virtual {v12}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 215
    if-eqz v5, :cond_179

    .line 216
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 218
    :cond_179
    if-eqz v4, :cond_180

    .line 219
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 221
    :cond_180
    if-eqz v3, :cond_187

    .line 222
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 224
    :cond_187
    if-nez v6, :cond_18e

    if-eqz v14, :cond_18e

    .line 225
    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 227
    :cond_18e
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1a4

    .line 228
    iget v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    const/4 v15, -0x1

    if-ne v1, v15, :cond_19f

    .line 229
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget v15, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v1, v0, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1a4

    .line 231
    :cond_19f
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 234
    :cond_1a4
    :goto_1a4
    if-eqz v2, :cond_1ab

    .line 235
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 237
    :cond_1ab
    if-eqz v16, :cond_1b7

    .line 238
    nop

    .line 239
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    .line 247
    :cond_1b7
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, v8, v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 249
    sget-boolean v0, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_218

    .line 251
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v0

    if-eqz v0, :cond_211

    .line 253
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 254
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    .line 255
    .local v0, "autoSizeTextSizesInPx":[I
    array-length v1, v0

    if-lez v1, :cond_20a

    .line 256
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    int-to-float v1, v1

    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v1, v1, v15

    if-eqz v1, :cond_1fd

    .line 259
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v15, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 260
    invoke-virtual {v15}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v15

    move-object/from16 v20, v2

    .end local v2    # "fontVariation":Ljava/lang/String;
    .local v20, "fontVariation":Ljava/lang/String;
    iget-object v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 261
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v2

    move-object/from16 v21, v3

    .end local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    .local v21, "textColorLink":Landroid/content/res/ColorStateList;
    iget-object v3, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 262
    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v3

    .line 259
    move-object/from16 v22, v4

    const/4 v4, 0x0

    .end local v4    # "textColorHint":Landroid/content/res/ColorStateList;
    .local v22, "textColorHint":Landroid/content/res/ColorStateList;
    invoke-virtual {v1, v15, v2, v3, v4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_21e

    .line 265
    .end local v20    # "fontVariation":Ljava/lang/String;
    .end local v21    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v22    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v2    # "fontVariation":Ljava/lang/String;
    .restart local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v4    # "textColorHint":Landroid/content/res/ColorStateList;
    :cond_1fd
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const/4 v4, 0x0

    .end local v2    # "fontVariation":Ljava/lang/String;
    .end local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v4    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v20    # "fontVariation":Ljava/lang/String;
    .restart local v21    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v22    # "textColorHint":Landroid/content/res/ColorStateList;
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_21e

    .line 255
    .end local v20    # "fontVariation":Ljava/lang/String;
    .end local v21    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v22    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v2    # "fontVariation":Ljava/lang/String;
    .restart local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v4    # "textColorHint":Landroid/content/res/ColorStateList;
    :cond_20a
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .end local v2    # "fontVariation":Ljava/lang/String;
    .end local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v4    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v20    # "fontVariation":Ljava/lang/String;
    .restart local v21    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v22    # "textColorHint":Landroid/content/res/ColorStateList;
    goto :goto_21e

    .line 251
    .end local v0    # "autoSizeTextSizesInPx":[I
    .end local v20    # "fontVariation":Ljava/lang/String;
    .end local v21    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v22    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v2    # "fontVariation":Ljava/lang/String;
    .restart local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v4    # "textColorHint":Landroid/content/res/ColorStateList;
    :cond_211
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .end local v2    # "fontVariation":Ljava/lang/String;
    .end local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v4    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v20    # "fontVariation":Ljava/lang/String;
    .restart local v21    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v22    # "textColorHint":Landroid/content/res/ColorStateList;
    goto :goto_21e

    .line 249
    .end local v20    # "fontVariation":Ljava/lang/String;
    .end local v21    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v22    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v2    # "fontVariation":Ljava/lang/String;
    .restart local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v4    # "textColorHint":Landroid/content/res/ColorStateList;
    :cond_218
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .line 273
    .end local v2    # "fontVariation":Ljava/lang/String;
    .end local v3    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v4    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v20    # "fontVariation":Ljava/lang/String;
    .restart local v21    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v22    # "textColorHint":Landroid/content/res/ColorStateList;
    :goto_21e
    sget-object v0, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-static {v10, v8, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v12

    .line 276
    const/4 v0, 0x0

    .local v0, "drawableLeft":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, "drawableTop":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 277
    .local v2, "drawableRight":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, "drawableBottom":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .local v4, "drawableStart":Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    .line 278
    .local v15, "drawableEnd":Landroid/graphics/drawable/Drawable;
    move-object/from16 v17, v0

    .end local v0    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .local v17, "drawableLeft":Landroid/graphics/drawable/Drawable;
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableLeftCompat:I

    move-object/from16 v23, v1

    const/4 v1, -0x1

    .end local v1    # "drawableTop":Landroid/graphics/drawable/Drawable;
    .local v23, "drawableTop":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 280
    .local v0, "drawableLeftId":I
    if-eq v0, v1, :cond_23b

    .line 281
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 283
    :cond_23b
    move/from16 v24, v0

    .end local v0    # "drawableLeftId":I
    .local v24, "drawableLeftId":I
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTopCompat:I

    invoke-virtual {v12, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 285
    .local v0, "drawableTopId":I
    if-eq v0, v1, :cond_24b

    .line 286
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v23, v18

    .line 288
    :cond_24b
    move/from16 v25, v0

    .end local v0    # "drawableTopId":I
    .local v25, "drawableTopId":I
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableRightCompat:I

    invoke-virtual {v12, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 290
    .local v0, "drawableRightId":I
    if-eq v0, v1, :cond_25c

    .line 291
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v26, v2

    goto :goto_25e

    .line 290
    :cond_25c
    move-object/from16 v26, v2

    .line 293
    .end local v2    # "drawableRight":Landroid/graphics/drawable/Drawable;
    .local v26, "drawableRight":Landroid/graphics/drawable/Drawable;
    :goto_25e
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableBottomCompat:I

    invoke-virtual {v12, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 295
    .local v2, "drawableBottomId":I
    if-eq v2, v1, :cond_26d

    .line 296
    invoke-virtual {v11, v10, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v27, v3

    goto :goto_26f

    .line 295
    :cond_26d
    move-object/from16 v27, v3

    .line 298
    .end local v3    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    .local v27, "drawableBottom":Landroid/graphics/drawable/Drawable;
    :goto_26f
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableStartCompat:I

    invoke-virtual {v12, v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 300
    .local v3, "drawableStartId":I
    if-eq v3, v1, :cond_27e

    .line 301
    invoke-virtual {v11, v10, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v28, v4

    goto :goto_280

    .line 300
    :cond_27e
    move-object/from16 v28, v4

    .line 303
    .end local v4    # "drawableStart":Landroid/graphics/drawable/Drawable;
    .local v28, "drawableStart":Landroid/graphics/drawable/Drawable;
    :goto_280
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableEndCompat:I

    invoke-virtual {v12, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    .line 305
    .local v4, "drawableEndId":I
    if-eq v4, v1, :cond_28c

    .line 306
    invoke-virtual {v11, v10, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 308
    :cond_28c
    move/from16 v29, v0

    .end local v0    # "drawableRightId":I
    .local v29, "drawableRightId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v30, v2

    .end local v2    # "drawableBottomId":I
    .local v30, "drawableBottomId":I
    move-object/from16 v2, v23

    move/from16 v31, v3

    .end local v3    # "drawableStartId":I
    .local v31, "drawableStartId":I
    move-object/from16 v3, v26

    move/from16 v32, v4

    .end local v4    # "drawableEndId":I
    .local v32, "drawableEndId":I
    move-object/from16 v4, v27

    move-object/from16 v33, v5

    .end local v5    # "textColor":Landroid/content/res/ColorStateList;
    .local v33, "textColor":Landroid/content/res/ColorStateList;
    move-object/from16 v5, v28

    move/from16 v34, v6

    .end local v6    # "hasPwdTm":Z
    .local v34, "hasPwdTm":Z
    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 311
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2bb

    .line 312
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 314
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 316
    .end local v0    # "tintList":Landroid/content/res/ColorStateList;
    :cond_2bb
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2d4

    .line 317
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    .line 318
    const/4 v1, -0x1

    invoke-virtual {v12, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    .line 317
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 319
    .local v0, "tintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 322
    .end local v0    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_2d4
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    const/4 v1, -0x1

    invoke-virtual {v12, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 324
    .local v0, "firstBaselineToTopHeight":I
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v12, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 326
    .local v2, "lastBaselineToBottomHeight":I
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    invoke-virtual {v12, v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 329
    .local v3, "lineHeight":I
    invoke-virtual {v12}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 330
    if-eq v0, v1, :cond_2f1

    .line 331
    iget-object v4, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v4, v0}, Landroidx/core/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    .line 333
    :cond_2f1
    if-eq v2, v1, :cond_2f8

    .line 334
    iget-object v4, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v4, v2}, Landroidx/core/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    .line 336
    :cond_2f8
    if-eq v3, v1, :cond_2ff

    .line 337
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroidx/core/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    .line 339
    :cond_2ff
    return-void
.end method

.method onAsyncTypefaceReceived(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .registers 6
    .param p2, "typeface"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 437
    .local p1, "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    if-eqz v0, :cond_24

    .line 438
    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 439
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 440
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_24

    .line 441
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 442
    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 443
    .local v1, "style":I
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextHelper$2;

    invoke-direct {v2, p0, v0, p2, v1}, Landroidx/appcompat/widget/AppCompatTextHelper$2;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 449
    .end local v1    # "style":I
    goto :goto_24

    .line 450
    :cond_1f
    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 454
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_24
    :goto_24
    return-void
.end method

.method onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 561
    sget-boolean v0, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_7

    .line 562
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->autoSizeText()V

    .line 564
    :cond_7
    return-void
.end method

.method onSetCompoundDrawables()V
    .registers 1

    .line 519
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 520
    return-void
.end method

.method onSetTextAppearance(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 457
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 459
    .local v0, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 464
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 466
    :cond_18
    nop

    .line 492
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 493
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-nez v1, :cond_30

    .line 494
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 498
    :cond_30
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 500
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_4e

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 501
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 502
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "fontVariation":Ljava/lang/String;
    if-eqz v1, :cond_4e

    .line 505
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 508
    .end local v1    # "fontVariation":Ljava/lang/String;
    :cond_4e
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 509
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_5c

    .line 510
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 512
    :cond_5c
    return-void
.end method

.method populateSurroundingTextIfNeeded(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 722
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_f

    if-eqz p2, :cond_f

    .line 723
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 725
    :cond_f
    return-void
.end method

.method setAllCaps(Z)V
    .registers 3
    .param p1, "allCaps"    # Z

    .line 515
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 516
    return-void
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 6
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 601
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 603
    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 4
    .param p1, "presetSizes"    # [I
    .param p2, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 607
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 608
    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .registers 3
    .param p1, "autoSizeTextType"    # I

    .line 593
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeWithDefaults(I)V

    .line 594
    return-void
.end method

.method setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 637
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_b

    .line 638
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 640
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 641
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz p1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    iput-boolean v1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 642
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundTints()V

    .line 643
    return-void
.end method

.method setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 651
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_b

    .line 652
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 654
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 655
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz p1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    iput-boolean v1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 656
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundTints()V

    .line 657
    return-void
.end method

.method setTextSize(IF)V
    .registers 4
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 569
    sget-boolean v0, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_d

    .line 570
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 571
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextHelper;->setTextSizeInternal(IF)V

    .line 574
    :cond_d
    return-void
.end method
