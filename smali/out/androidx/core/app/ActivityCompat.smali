.class public Landroidx/core/app/ActivityCompat;
.super Landroidx/core/content/ContextCompat;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityCompat$Api31Impl;,
        Landroidx/core/app/ActivityCompat$Api30Impl;,
        Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;,
        Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;,
        Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;,
        Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
    }
.end annotation


# static fields
.field private static sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Landroidx/core/content/ContextCompat;-><init>()V

    .line 156
    return-void
.end method

.method public static finishAffinity(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 292
    nop

    .line 293
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 297
    return-void
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 309
    nop

    .line 310
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    .line 314
    return-void
.end method

.method public static getPermissionCompatDelegate()Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;
    .registers 1

    .line 174
    sget-object v0, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    return-object v0
.end method

.method public static getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 334
    nop

    .line 335
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)Z
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public static isLaunchedFromBubble(Landroid/app/Activity;)Z
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 583
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 584
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api31Impl;->isLaunchedFromBubble(Landroid/app/Activity;)Z

    move-result v0

    return v0

    .line 585
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_26

    .line 586
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 587
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move v2, v3

    .line 586
    :goto_25
    return v2

    .line 588
    :cond_26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_47

    .line 589
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 590
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_46

    :cond_45
    move v2, v3

    .line 589
    :goto_46
    return v2

    .line 593
    :cond_47
    return v3
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 416
    nop

    .line 417
    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    .line 419
    return-void
.end method

.method public static recreate(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 618
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a

    .line 620
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_14

    .line 621
    :cond_a
    nop

    .line 639
    invoke-static {p0}, Landroidx/core/app/ActivityRecreator;->recreate(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 641
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 644
    :cond_14
    :goto_14
    return-void
.end method

.method public static requestDragAndDropPermissions(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragEvent"    # Landroid/view/DragEvent;

    .line 607
    invoke-static {p0, p1}, Landroidx/core/view/DragAndDropPermissionsCompat;->request(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 500
    sget-object v0, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    if-eqz v0, :cond_b

    .line 501
    invoke-interface {v0, p0, p1, p2}, Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 503
    return-void

    .line 506
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_3d

    aget-object v2, p1, v1

    .line 507
    .local v2, "permission":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 506
    .end local v2    # "permission":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 508
    .restart local v2    # "permission":Ljava/lang/String;
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission request for permissions "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 509
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " must not contain null or empty values"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    .end local v2    # "permission":Ljava/lang/String;
    :cond_3d
    nop

    .line 514
    instance-of v0, p0, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    if-eqz v0, :cond_48

    .line 515
    move-object v0, p0

    check-cast v0, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    .line 516
    invoke-interface {v0, p2}, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 518
    :cond_48
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 540
    return-void
.end method

.method public static requireViewById(Landroid/app/Activity;I)Landroid/view/View;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .line 367
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 368
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 371
    :cond_b
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, "view":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_12

    .line 375
    return-object v0

    .line 373
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroidx/core/app/SharedElementCallback;

    .line 388
    nop

    .line 389
    if-eqz p1, :cond_9

    .line 390
    new-instance v0, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p1}, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroidx/core/app/SharedElementCallback;)V

    goto :goto_a

    .line 391
    :cond_9
    const/4 v0, 0x0

    :goto_a
    nop

    .line 392
    .local v0, "frameworkCallback":Landroid/app/SharedElementCallback;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 394
    .end local v0    # "frameworkCallback":Landroid/app/SharedElementCallback;
    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroidx/core/app/SharedElementCallback;

    .line 407
    nop

    .line 408
    if-eqz p1, :cond_9

    .line 409
    new-instance v0, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p1}, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroidx/core/app/SharedElementCallback;)V

    goto :goto_a

    .line 410
    :cond_9
    const/4 v0, 0x0

    :goto_a
    nop

    .line 411
    .local v0, "frameworkCallback":Landroid/app/SharedElementCallback;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 413
    .end local v0    # "frameworkCallback":Landroid/app/SharedElementCallback;
    return-void
.end method

.method public static setLocusContext(Landroid/app/Activity;Landroidx/core/content/LocusIdCompat;Landroid/os/Bundle;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "locusId"    # Landroidx/core/content/LocusIdCompat;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 678
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_9

    .line 679
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat$Api30Impl;->setLocusContext(Landroid/app/Activity;Landroidx/core/content/LocusIdCompat;Landroid/os/Bundle;)V

    .line 681
    :cond_9
    return-void
.end method

.method public static setPermissionCompatDelegate(Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;)V
    .registers 1
    .param p0, "delegate"    # Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    .line 166
    sput-object p0, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    .line 167
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;

    .line 554
    nop

    .line 555
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 238
    nop

    .line 239
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 243
    return-void
.end method

.method public static startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 275
    nop

    .line 276
    invoke-virtual/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 282
    return-void
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 422
    nop

    .line 423
    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    .line 425
    return-void
.end method
