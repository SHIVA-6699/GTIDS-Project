.class public final Landroidx/core/widget/TextViewCompat;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/TextViewCompat$OreoCallback;,
        Landroidx/core/widget/TextViewCompat$AutoSizeTextType;
    }
.end annotation


# static fields
.field public static final AUTO_SIZE_TEXT_TYPE_NONE:I = 0x0

.field public static final AUTO_SIZE_TEXT_TYPE_UNIFORM:I = 0x1

.field private static final LINES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextViewCompat"

.field private static sMaxModeField:Ljava/lang/reflect/Field;

.field private static sMaxModeFieldFetched:Z

.field private static sMaximumField:Ljava/lang/reflect/Field;

.field private static sMaximumFieldFetched:Z

.field private static sMinModeField:Ljava/lang/reflect/Field;

.field private static sMinModeFieldFetched:Z

.field private static sMinimumField:Ljava/lang/reflect/Field;

.field private static sMinimumFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoSizeMaxTextSize(Landroid/widget/TextView;)I
    .registers 3
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 456
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_b

    .line 457
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    .line 459
    :cond_b
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_17

    .line 460
    move-object v0, p0

    check-cast v0, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    .line 462
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public static getAutoSizeMinTextSize(Landroid/widget/TextView;)I
    .registers 3
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 439
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_b

    .line 440
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    .line 442
    :cond_b
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_17

    .line 443
    move-object v0, p0

    check-cast v0, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    .line 445
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public static getAutoSizeStepGranularity(Landroid/widget/TextView;)I
    .registers 3
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 422
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_b

    .line 423
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    .line 425
    :cond_b
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_17

    .line 426
    move-object v0, p0

    check-cast v0, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    .line 428
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public static getAutoSizeTextAvailableSizes(Landroid/widget/TextView;)[I
    .registers 3
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 473
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_b

    .line 474
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    .line 476
    :cond_b
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_17

    .line 477
    move-object v0, p0

    check-cast v0, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    .line 479
    :cond_17
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public static getAutoSizeTextType(Landroid/widget/TextView;)I
    .registers 3
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 406
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_b

    .line 407
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v0

    return v0

    .line 409
    :cond_b
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_17

    .line 410
    move-object v0, p0

    check-cast v0, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v0}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeTextType()I

    move-result v0

    return v0

    .line 412
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static getCompoundDrawableTintList(Landroid/widget/TextView;)Landroid/content/res/ColorStateList;
    .registers 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 1029
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    nop

    .line 1031
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getCompoundDrawableTintMode(Landroid/widget/TextView;)Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 1064
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    nop

    .line 1066
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 295
    nop

    .line 296
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstBaselineToTopHeight(Landroid/widget/TextView;)I
    .registers 3
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 788
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getLastBaselineToBottomHeight(Landroid/widget/TextView;)I
    .registers 3
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 798
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static getMaxLines(Landroid/widget/TextView;)I
    .registers 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 226
    nop

    .line 227
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    return v0
.end method

.method public static getMinLines(Landroid/widget/TextView;)I
    .registers 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 252
    nop

    .line 253
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinLines()I

    move-result v0

    return v0
.end method

.method private static getTextDirection(Landroid/text/TextDirectionHeuristic;)I
    .registers 3
    .param p0, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .line 983
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_6

    .line 984
    return v1

    .line 985
    :cond_6
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_b

    .line 986
    return v1

    .line 987
    :cond_b
    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_11

    .line 988
    const/4 v0, 0x2

    return v0

    .line 989
    :cond_11
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_17

    .line 990
    const/4 v0, 0x3

    return v0

    .line 991
    :cond_17
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_1d

    .line 992
    const/4 v0, 0x4

    return v0

    .line 993
    :cond_1d
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_23

    .line 994
    const/4 v0, 0x5

    return v0

    .line 995
    :cond_23
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_29

    .line 996
    const/4 v0, 0x6

    return v0

    .line 997
    :cond_29
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v0, :cond_2f

    .line 998
    const/4 v0, 0x7

    return v0

    .line 1000
    :cond_2f
    return v1
.end method

.method private static getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;
    .registers 6
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 927
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_b

    .line 929
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v0

    .line 932
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_3f

    .line 933
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3f

    .line 938
    nop

    .line 939
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    .line 940
    .local v0, "symbols":Landroid/icu/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    .line 943
    .local v1, "zero":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 944
    .local v2, "firstCodepoint":I
    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v4

    .line 945
    .local v4, "digitDirection":B
    if-eq v4, v3, :cond_3c

    const/4 v3, 0x2

    if-ne v4, v3, :cond_39

    goto :goto_3c

    .line 949
    :cond_39
    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v3

    .line 947
    :cond_3c
    :goto_3c
    sget-object v3, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object v3

    .line 955
    .end local v0    # "symbols":Landroid/icu/text/DecimalFormatSymbols;
    .end local v1    # "zero":Ljava/lang/String;
    .end local v2    # "firstCodepoint":I
    .end local v4    # "digitDirection":B
    :cond_3f
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v3, :cond_46

    move v2, v3

    :cond_46
    move v0, v2

    .line 958
    .local v0, "defaultIsRtl":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_68

    .line 961
    if-eqz v0, :cond_65

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_67

    .line 974
    :pswitch_53
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 972
    :pswitch_56
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 970
    :pswitch_59
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 968
    :pswitch_5c
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 966
    :pswitch_5f
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 964
    :pswitch_62
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 962
    :cond_65
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 961
    :goto_67
    return-object v1

    :pswitch_data_68
    .packed-switch 0x2
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
    .end packed-switch
.end method

.method public static getTextMetricsParams(Landroid/widget/TextView;)Landroidx/core/text/PrecomputedTextCompat$Params;
    .registers 4
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 835
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_10

    .line 836
    new-instance v0, Landroidx/core/text/PrecomputedTextCompat$Params;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params;-><init>(Landroid/text/PrecomputedText$Params;)V

    return-object v0

    .line 838
    :cond_10
    new-instance v0, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    new-instance v1, Landroid/text/TextPaint;

    .line 839
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-direct {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    .line 840
    .local v0, "builder":Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    nop

    .line 841
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setBreakStrategy(I)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    .line 842
    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setHyphenationFrequency(I)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    .line 844
    nop

    .line 845
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    .line 847
    invoke-virtual {v0}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->build()Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v1

    return-object v1
.end method

.method private static retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, "field":Ljava/lang/reflect/Field;
    :try_start_1
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v0, v1

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_c} :catch_d

    .line 120
    goto :goto_2c

    .line 118
    :catch_d
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " field."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextViewCompat"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_2c
    return-object v0
.end method

.method private static retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I
    .registers 5
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 126
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 127
    :catch_5
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " field."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextViewCompat"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    const/4 v0, -0x1

    return v0
.end method

.method public static setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V
    .registers 7
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 361
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_a

    .line 362
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_14

    .line 364
    :cond_a
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_14

    .line 365
    move-object v0, p0

    check-cast v0, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 368
    :cond_14
    :goto_14
    return-void
.end method

.method public static setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V
    .registers 5
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "presetSizes"    # [I
    .param p2, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 387
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_a

    .line 388
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_14

    .line 389
    :cond_a
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_14

    .line 390
    move-object v0, p0

    check-cast v0, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v0, p1, p2}, Landroidx/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 393
    :cond_14
    :goto_14
    return-void
.end method

.method public static setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V
    .registers 4
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "autoSizeTextType"    # I

    .line 326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_a

    .line 327
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_14

    .line 328
    :cond_a
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    if-eqz v0, :cond_14

    .line 329
    move-object v0, p0

    check-cast v0, Landroidx/core/widget/AutoSizeableTextView;

    invoke-interface {v0, p1}, Landroidx/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeWithDefaults(I)V

    .line 331
    :cond_14
    :goto_14
    return-void
.end method

.method public static setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 1013
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    nop

    .line 1015
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 1019
    return-void
.end method

.method public static setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1047
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    nop

    .line 1049
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1054
    return-void
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 151
    nop

    .line 152
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 159
    return-void
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .registers 5
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 210
    nop

    .line 211
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 219
    return-void
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 178
    nop

    .line 179
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 187
    return-void
.end method

.method public static setCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)V
    .registers 3
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 506
    nop

    .line 507
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 506
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 508
    return-void
.end method

.method public static setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V
    .registers 8
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "firstBaselineToTopHeight"    # I

    .line 713
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 714
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    .line 715
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    .line 716
    return-void

    .line 719
    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 721
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    nop

    .line 724
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 725
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .local v1, "fontMetricsTop":I
    goto :goto_21

    .line 727
    .end local v1    # "fontMetricsTop":I
    :cond_1f
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 733
    .restart local v1    # "fontMetricsTop":I
    :goto_21
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p1, v2, :cond_38

    .line 734
    add-int v2, p1, v1

    .line 735
    .local v2, "paddingTop":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    .line 736
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 735
    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 738
    .end local v2    # "paddingTop":I
    :cond_38
    return-void
.end method

.method public static setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V
    .registers 8
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "lastBaselineToBottomHeight"    # I

    .line 758
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 760
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 762
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    nop

    .line 765
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 766
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .local v1, "fontMetricsBottom":I
    goto :goto_17

    .line 768
    .end local v1    # "fontMetricsBottom":I
    :cond_15
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 774
    .restart local v1    # "fontMetricsBottom":I
    :goto_17
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p1, v2, :cond_2e

    .line 775
    sub-int v2, p1, v1

    .line 776
    .local v2, "paddingBottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    .line 777
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    .line 776
    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 779
    .end local v2    # "paddingBottom":I
    :cond_2e
    return-void
.end method

.method public static setLineHeight(Landroid/widget/TextView;I)V
    .registers 5
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "lineHeight"    # I

    .line 816
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 818
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    .line 820
    .local v0, "fontHeight":I
    if-eq p1, v0, :cond_16

    .line 822
    sub-int v1, p1, v0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 824
    :cond_16
    return-void
.end method

.method public static setPrecomputedText(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat;)V
    .registers 5
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "precomputed"    # Landroidx/core/text/PrecomputedTextCompat;

    .line 904
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    .line 907
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat;->getPrecomputedText()Landroid/text/PrecomputedText;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 909
    :cond_e
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getTextMetricsParams(Landroid/widget/TextView;)Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v0

    .line 910
    .local v0, "param":Landroidx/core/text/PrecomputedTextCompat$Params;
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat;->getParams()Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params;->equalsWithoutTextDirection(Landroidx/core/text/PrecomputedTextCompat$Params;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 913
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 915
    .end local v0    # "param":Landroidx/core/text/PrecomputedTextCompat$Params;
    :goto_1f
    return-void

    .line 911
    .restart local v0    # "param":Landroidx/core/text/PrecomputedTextCompat$Params;
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given text can not be applied to TextView."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setTextAppearance(Landroid/widget/TextView;I)V
    .registers 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "resId"    # I

    .line 283
    nop

    .line 284
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 288
    return-void
.end method

.method public static setTextMetricsParams(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat$Params;)V
    .registers 4
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "params"    # Landroidx/core/text/PrecomputedTextCompat$Params;

    .line 862
    nop

    .line 863
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/widget/TextViewCompat;->getTextDirection(Landroid/text/TextDirectionHeuristic;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 866
    nop

    .line 882
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 886
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getBreakStrategy()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 887
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getHyphenationFrequency()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    .line 889
    return-void
.end method

.method public static unwrapCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .registers 3
    .param p0, "callback"    # Landroid/view/ActionMode$Callback;

    .line 541
    instance-of v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;

    if-eqz v0, :cond_12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_12

    .line 542
    move-object v0, p0

    check-cast v0, Landroidx/core/widget/TextViewCompat$OreoCallback;

    invoke-virtual {v0}, Landroidx/core/widget/TextViewCompat$OreoCallback;->getWrappedCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    return-object v0

    .line 544
    :cond_12
    return-object p0
.end method

.method public static wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .registers 4
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 519
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_19

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_19

    instance-of v0, p1, Landroidx/core/widget/TextViewCompat$OreoCallback;

    if-nez v0, :cond_19

    if-nez p1, :cond_13

    goto :goto_19

    .line 529
    :cond_13
    new-instance v0, Landroidx/core/widget/TextViewCompat$OreoCallback;

    invoke-direct {v0, p1, p0}, Landroidx/core/widget/TextViewCompat$OreoCallback;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    return-object v0

    .line 523
    :cond_19
    :goto_19
    return-object p1
.end method
