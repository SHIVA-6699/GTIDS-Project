.class public abstract Landroidx/core/app/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2532
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method

.method private calculateTopPadding()I
    .registers 8

    .line 2990
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2991
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Landroidx/core/R$dimen;->notification_top_pad:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2992
    .local v1, "padding":I
    sget v2, Landroidx/core/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2994
    .local v2, "largePadding":I
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 2995
    .local v3, "fontScale":F
    const v4, 0x3fa66666    # 1.3f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5, v4}, Landroidx/core/app/NotificationCompat$Style;->constrain(FFF)F

    move-result v4

    sub-float/2addr v4, v5

    const v6, 0x3e999998    # 0.29999995f

    div-float/2addr v4, v6

    .line 2999
    .local v4, "largeFactor":F
    sub-float/2addr v5, v4

    int-to-float v6, v1

    mul-float/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    return v5
.end method

.method private static constrain(FFF)F
    .registers 4
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 3003
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move v0, p1

    goto :goto_d

    :cond_6
    cmpl-float v0, p0, p2

    if-lez v0, :cond_c

    move v0, p2

    goto :goto_d

    :cond_c
    move v0, p0

    :goto_d
    return v0
.end method

.method static constructCompatStyleByName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;
    .registers 2
    .param p0, "templateClass"    # Ljava/lang/String;

    .line 2702
    if-eqz p0, :cond_5f

    .line 2703
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_62

    :cond_9
    goto :goto_3c

    :sswitch_a
    const-string v0, "androidx.core.app.NotificationCompat$MessagingStyle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto :goto_3d

    :sswitch_14
    const-string v0, "androidx.core.app.NotificationCompat$BigTextStyle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_3d

    :sswitch_1e
    const-string v0, "androidx.core.app.NotificationCompat$InboxStyle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_3d

    :sswitch_28
    const-string v0, "androidx.core.app.NotificationCompat$BigPictureStyle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_3d

    :sswitch_32
    const-string v0, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_3d

    :goto_3c
    const/4 v0, -0x1

    :goto_3d
    packed-switch v0, :pswitch_data_78

    goto :goto_5f

    .line 2713
    :pswitch_41
    new-instance v0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    return-object v0

    .line 2711
    :pswitch_47
    new-instance v0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    return-object v0

    .line 2709
    :pswitch_4d
    new-instance v0, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    return-object v0

    .line 2707
    :pswitch_53
    new-instance v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    return-object v0

    .line 2705
    :pswitch_59
    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    return-object v0

    .line 2716
    :cond_5f
    :goto_5f
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_62
    .sparse-switch
        -0x2ab80d9c -> :sswitch_32
        -0xa3fb04d -> :sswitch_28
        0x366a678b -> :sswitch_1e
        0x36cfe824 -> :sswitch_14
        0x7c9f11cd -> :sswitch_a
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_59
        :pswitch_53
        :pswitch_4d
        :pswitch_47
        :pswitch_41
    .end packed-switch
.end method

.method private static constructCompatStyleByPlatformName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;
    .registers 3
    .param p0, "platformTemplateClass"    # Ljava/lang/String;

    .line 2674
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2675
    return-object v0

    .line 2677
    :cond_4
    nop

    .line 2678
    const-class v1, Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2679
    new-instance v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    return-object v0

    .line 2681
    :cond_17
    const-class v1, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2682
    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    return-object v0

    .line 2684
    :cond_29
    const-class v1, Landroid/app/Notification$InboxStyle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2685
    new-instance v0, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    return-object v0

    .line 2687
    :cond_3b
    nop

    .line 2688
    const-class v1, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 2689
    new-instance v0, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    return-object v0

    .line 2691
    :cond_4e
    const-class v1, Landroid/app/Notification$DecoratedCustomViewStyle;

    .line 2692
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2691
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 2693
    new-instance v0, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    return-object v0

    .line 2697
    :cond_60
    return-object v0
.end method

.method static constructCompatStyleForBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;
    .registers 3
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 2723
    const-string v0, "androidx.core.app.extra.COMPAT_TEMPLATE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Style;->constructCompatStyleByName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object v0

    .line 2724
    .local v0, "style":Landroidx/core/app/NotificationCompat$Style;
    if-eqz v0, :cond_d

    .line 2725
    return-object v0

    .line 2730
    :cond_d
    const-string v1, "android.selfDisplayName"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 2731
    const-string v1, "android.messagingStyleUser"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_53

    .line 2733
    :cond_1e
    const-string v1, "android.picture"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2734
    new-instance v1, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    return-object v1

    .line 2735
    :cond_2c
    const-string v1, "android.bigText"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 2736
    new-instance v1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    return-object v1

    .line 2737
    :cond_3a
    const-string v1, "android.textLines"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2738
    new-instance v1, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    return-object v1

    .line 2741
    :cond_48
    const-string v1, "android.template"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Style;->constructCompatStyleByPlatformName(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object v1

    return-object v1

    .line 2732
    :cond_53
    :goto_53
    new-instance v1, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    return-object v1
.end method

.method static constructStyleForExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;
    .registers 4
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 2746
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Style;->constructCompatStyleForBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object v0

    .line 2747
    .local v0, "style":Landroidx/core/app/NotificationCompat$Style;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2748
    return-object v1

    .line 2751
    :cond_8
    :try_start_8
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_b} :catch_c

    .line 2752
    return-object v0

    .line 2753
    :catch_c
    move-exception v2

    .line 2754
    .local v2, "e":Ljava/lang/ClassCastException;
    return-object v1
.end method

.method private createColoredBitmap(III)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "iconId"    # I
    .param p2, "color"    # I
    .param p3, "size"    # I

    .line 2931
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p2, "color"    # I
    .param p3, "size"    # I

    .line 2936
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2937
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez p3, :cond_f

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_10

    :cond_f
    move v1, p3

    .line 2938
    .local v1, "width":I
    :goto_10
    if-nez p3, :cond_17

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_18

    :cond_17
    move v2, p3

    .line 2939
    .local v2, "height":I
    :goto_18
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2940
    .local v3, "resultBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2941
    if-eqz p2, :cond_32

    .line 2942
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, p2, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2945
    :cond_32
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2946
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2947
    return-object v3
.end method

.method private createIconWithBackground(IIII)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "iconId"    # I
    .param p2, "size"    # I
    .param p3, "iconSize"    # I
    .param p4, "color"    # I

    .line 2952
    sget v0, Landroidx/core/R$drawable;->notification_icon_background:I

    .line 2953
    if-nez p4, :cond_6

    const/4 v1, 0x0

    goto :goto_7

    :cond_6
    move v1, p4

    .line 2952
    :goto_7
    invoke-direct {p0, v0, v1, p2}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2954
    .local v0, "coloredBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2955
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2956
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 2957
    sub-int v3, p2, p3

    div-int/lit8 v3, v3, 0x2

    .line 2958
    .local v3, "inset":I
    add-int v4, p3, v3

    add-int v5, p3, v3

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2959
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/4 v5, -0x1

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2960
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2961
    return-object v0
.end method

.method public static extractStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Style;
    .registers 3
    .param p0, "notification"    # Landroid/app/Notification;

    .line 2664
    invoke-static {p0}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 2665
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_8

    .line 2666
    const/4 v1, 0x0

    return-object v1

    .line 2668
    :cond_8
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$Style;->constructStyleForExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object v1

    return-object v1
.end method

.method private hideNormalContent(Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "outerView"    # Landroid/widget/RemoteViews;

    .line 2984
    sget v0, Landroidx/core/R$id;->title:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2985
    sget v0, Landroidx/core/R$id;->text2:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2986
    sget v0, Landroidx/core/R$id;->text:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2987
    return-void
.end method


# virtual methods
.method public addCompatExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 2624
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    if-eqz v0, :cond_b

    .line 2625
    const-string v0, "android.summaryText"

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2627
    :cond_b
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    .line 2628
    const-string v1, "android.title.big"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2630
    :cond_14
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Style;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2631
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 2632
    const-string v1, "androidx.core.app.extra.COMPAT_TEMPLATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    :cond_1f
    return-void
.end method

.method public apply(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .registers 2
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 2576
    return-void
.end method

.method public applyStandardTemplate(ZIZ)Landroid/widget/RemoteViews;
    .registers 23
    .param p1, "showSmallIcon"    # Z
    .param p2, "resId"    # I
    .param p3, "fitIn1U"    # Z

    .line 2765
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2766
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move/from16 v4, p2

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2767
    .local v2, "contentView":Landroid/widget/RemoteViews;
    const/4 v3, 0x0

    .line 2768
    .local v3, "showLine3":Z
    const/4 v5, 0x0

    .line 2770
    .local v5, "showLine2":Z
    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->getPriority()I

    move-result v6

    const/4 v7, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ge v6, v7, :cond_28

    move v6, v11

    goto :goto_29

    :cond_28
    move v6, v12

    :goto_29
    move v13, v6

    .line 2771
    .local v13, "minPriority":Z
    nop

    .line 2786
    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_77

    .line 2789
    nop

    .line 2790
    sget v6, Landroidx/core/R$id;->icon:I

    invoke-virtual {v2, v6, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2791
    sget v6, Landroidx/core/R$id;->icon:I

    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2795
    if-eqz p1, :cond_b0

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    if-eqz v6, :cond_b0

    .line 2796
    sget v6, Landroidx/core/R$dimen;->notification_right_icon_size:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 2798
    .local v6, "backgroundSize":I
    sget v7, Landroidx/core/R$dimen;->notification_small_icon_background_padding:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v6, v7

    .line 2800
    .local v7, "iconSize":I
    nop

    .line 2801
    iget-object v8, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->icon:I

    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 2805
    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v9

    .line 2801
    invoke-direct {v0, v8, v6, v7, v9}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2806
    .local v8, "smallBit":Landroid/graphics/Bitmap;
    sget v9, Landroidx/core/R$id;->right_icon:I

    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2807
    .end local v8    # "smallBit":Landroid/graphics/Bitmap;
    nop

    .line 2811
    sget v8, Landroidx/core/R$id;->right_icon:I

    invoke-virtual {v2, v8, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2812
    .end local v6    # "backgroundSize":I
    .end local v7    # "iconSize":I
    goto :goto_b0

    .line 2813
    :cond_77
    if-eqz p1, :cond_b0

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    if-eqz v6, :cond_b0

    .line 2814
    sget v6, Landroidx/core/R$id;->icon:I

    invoke-virtual {v2, v6, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2815
    nop

    .line 2816
    sget v6, Landroidx/core/R$dimen;->notification_large_icon_width:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Landroidx/core/R$dimen;->notification_big_circle_margin:I

    .line 2818
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v6, v7

    .line 2819
    .restart local v6    # "backgroundSize":I
    sget v7, Landroidx/core/R$dimen;->notification_small_icon_size_as_large:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 2821
    .restart local v7    # "iconSize":I
    iget-object v8, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->icon:I

    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 2825
    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Builder;->getColor()I

    move-result v9

    .line 2821
    invoke-direct {v0, v8, v6, v7, v9}, Landroidx/core/app/NotificationCompat$Style;->createIconWithBackground(IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2826
    .restart local v8    # "smallBit":Landroid/graphics/Bitmap;
    sget v9, Landroidx/core/R$id;->icon:I

    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2827
    .end local v6    # "backgroundSize":I
    .end local v7    # "iconSize":I
    .end local v8    # "smallBit":Landroid/graphics/Bitmap;
    nop

    .line 2832
    :cond_b0
    :goto_b0
    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v6, :cond_bf

    .line 2833
    sget v6, Landroidx/core/R$id;->title:I

    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2835
    :cond_bf
    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_cf

    .line 2836
    sget v6, Landroidx/core/R$id;->text:I

    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2837
    const/4 v3, 0x1

    .line 2840
    :cond_cf
    move v6, v12

    .line 2841
    .local v6, "hasRightSide":Z
    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v7, :cond_e8

    .line 2842
    sget v7, Landroidx/core/R$id;->info:I

    iget-object v8, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2843
    sget v7, Landroidx/core/R$id;->info:I

    invoke-virtual {v2, v7, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2844
    const/4 v3, 0x1

    .line 2845
    const/4 v6, 0x1

    move v14, v6

    goto :goto_129

    .line 2846
    :cond_e8
    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    if-lez v7, :cond_121

    .line 2847
    sget v7, Landroidx/core/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 2849
    .local v7, "tooBig":I
    iget-object v8, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v8, v8, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    if-le v8, v7, :cond_106

    .line 2850
    sget v8, Landroidx/core/R$id;->info:I

    sget v9, Landroidx/core/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_118

    .line 2853
    :cond_106
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v8

    .line 2854
    .local v8, "f":Ljava/text/NumberFormat;
    sget v9, Landroidx/core/R$id;->info:I

    iget-object v10, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget v10, v10, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    int-to-long v14, v10

    invoke-virtual {v8, v14, v15}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2856
    .end local v8    # "f":Ljava/text/NumberFormat;
    :goto_118
    sget v8, Landroidx/core/R$id;->info:I

    invoke-virtual {v2, v8, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2857
    const/4 v3, 0x1

    .line 2858
    const/4 v6, 0x1

    .line 2859
    .end local v7    # "tooBig":I
    move v14, v6

    goto :goto_129

    .line 2860
    :cond_121
    sget v7, Landroidx/core/R$id;->info:I

    const/16 v8, 0x8

    invoke-virtual {v2, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v14, v6

    .line 2864
    .end local v6    # "hasRightSide":Z
    .local v14, "hasRightSide":Z
    :goto_129
    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_15a

    .line 2865
    sget v6, Landroidx/core/R$id;->text:I

    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2866
    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_152

    .line 2867
    sget v6, Landroidx/core/R$id;->text2:I

    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v7, v7, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2868
    sget v6, Landroidx/core/R$id;->text2:I

    invoke-virtual {v2, v6, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2869
    const/4 v5, 0x1

    move/from16 v16, v5

    const/16 v15, 0x8

    goto :goto_15e

    .line 2871
    :cond_152
    sget v6, Landroidx/core/R$id;->text2:I

    const/16 v15, 0x8

    invoke-virtual {v2, v6, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_15c

    .line 2864
    :cond_15a
    const/16 v15, 0x8

    .line 2877
    :goto_15c
    move/from16 v16, v5

    .end local v5    # "showLine2":Z
    .local v16, "showLine2":Z
    :goto_15e
    if-eqz v16, :cond_178

    .line 2878
    if-eqz p3, :cond_16e

    .line 2880
    sget v5, Landroidx/core/R$dimen;->notification_subtext_size:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 2882
    .local v5, "subTextSize":F
    sget v6, Landroidx/core/R$id;->text:I

    invoke-virtual {v2, v6, v12, v5}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 2886
    .end local v5    # "subTextSize":F
    :cond_16e
    sget v6, Landroidx/core/R$id;->line1:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 2889
    :cond_178
    iget-object v5, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1d1

    .line 2890
    iget-object v5, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    if-eqz v5, :cond_1be

    .line 2891
    sget v5, Landroidx/core/R$id;->chronometer:I

    invoke-virtual {v2, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2892
    sget v5, Landroidx/core/R$id;->chronometer:I

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 2893
    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v6

    .line 2894
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v8, v8, v17

    add-long/2addr v6, v8

    .line 2892
    const-string v8, "setBase"

    invoke-virtual {v2, v5, v8, v6, v7}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 2895
    sget v5, Landroidx/core/R$id;->chronometer:I

    const-string v6, "setStarted"

    invoke-virtual {v2, v5, v6, v11}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 2896
    iget-object v5, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v5, v5, Landroidx/core/app/NotificationCompat$Builder;->mChronometerCountDown:Z

    if-eqz v5, :cond_1d0

    .line 2897
    sget v5, Landroidx/core/R$id;->chronometer:I

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-boolean v6, v6, Landroidx/core/app/NotificationCompat$Builder;->mChronometerCountDown:Z

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    goto :goto_1d0

    .line 2901
    :cond_1be
    sget v5, Landroidx/core/R$id;->time:I

    invoke-virtual {v2, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2902
    sget v5, Landroidx/core/R$id;->time:I

    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->getWhenIfShowing()J

    move-result-wide v6

    const-string v8, "setTime"

    invoke-virtual {v2, v5, v8, v6, v7}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 2904
    :cond_1d0
    :goto_1d0
    const/4 v14, 0x1

    .line 2906
    :cond_1d1
    sget v5, Landroidx/core/R$id;->right_side:I

    if-eqz v14, :cond_1d7

    move v8, v12

    goto :goto_1d8

    :cond_1d7
    move v8, v15

    :goto_1d8
    invoke-virtual {v2, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2907
    sget v5, Landroidx/core/R$id;->line3:I

    if-eqz v3, :cond_1e0

    goto :goto_1e1

    :cond_1e0
    move v12, v15

    :goto_1e1
    invoke-virtual {v2, v5, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2908
    return-object v2
.end method

.method public build()Landroid/app/Notification;
    .registers 3

    .line 2551
    const/4 v0, 0x0

    .line 2552
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v1, :cond_9

    .line 2553
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 2555
    :cond_9
    return-object v0
.end method

.method public buildIntoRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 11
    .param p1, "outerView"    # Landroid/widget/RemoteViews;
    .param p2, "innerView"    # Landroid/widget/RemoteViews;

    .line 2972
    invoke-direct {p0, p1}, Landroidx/core/app/NotificationCompat$Style;->hideNormalContent(Landroid/widget/RemoteViews;)V

    .line 2973
    sget v0, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 2974
    sget v0, Landroidx/core/R$id;->notification_main_column:I

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 2975
    sget v0, Landroidx/core/R$id;->notification_main_column:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2976
    nop

    .line 2978
    sget v3, Landroidx/core/R$id;->notification_main_column_container:I

    const/4 v4, 0x0

    .line 2979
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;->calculateTopPadding()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2978
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 2981
    return-void
.end method

.method protected clearCompatExtraKeys(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 2653
    const-string v0, "android.summaryText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2654
    const-string v0, "android.title.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2655
    const-string v0, "androidx.core.app.extra.COMPAT_TEMPLATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2656
    return-void
.end method

.method public createColoredBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "iconId"    # I
    .param p2, "color"    # I

    .line 2919
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;I)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p2, "color"    # I

    .line 2927
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/core/app/NotificationCompat$Style;->createColoredBitmap(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public displayCustomViewInline()Z
    .registers 2

    .line 2584
    const/4 v0, 0x0

    return v0
.end method

.method protected getClassName()Ljava/lang/String;
    .registers 2

    .line 2565
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeBigContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 3
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 2600
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 3
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 2592
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeHeadsUpContentView(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;
    .registers 3
    .param p1, "builder"    # Landroidx/core/app/NotificationBuilderWithBuilderAccessor;

    .line 2608
    const/4 v0, 0x0

    return-object v0
.end method

.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 2641
    const-string v0, "android.summaryText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2642
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 2643
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Style;->mSummaryTextSet:Z

    .line 2645
    :cond_11
    const-string v0, "android.title.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 2646
    return-void
.end method

.method public setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 2538
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eq v0, p1, :cond_b

    .line 2539
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Style;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 2540
    if-eqz p1, :cond_b

    .line 2541
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 2544
    :cond_b
    return-void
.end method
