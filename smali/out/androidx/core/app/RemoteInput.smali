.class public final Landroidx/core/app/RemoteInput;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/RemoteInput$Builder;,
        Landroidx/core/app/RemoteInput$EditChoicesBeforeSending;,
        Landroidx/core/app/RemoteInput$Source;
    }
.end annotation


# static fields
.field public static final EDIT_CHOICES_BEFORE_SENDING_AUTO:I = 0x0

.field public static final EDIT_CHOICES_BEFORE_SENDING_DISABLED:I = 0x1

.field public static final EDIT_CHOICES_BEFORE_SENDING_ENABLED:I = 0x2

.field private static final EXTRA_DATA_TYPE_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.dataTypeResultsData"

.field public static final EXTRA_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.resultsData"

.field private static final EXTRA_RESULTS_SOURCE:Ljava/lang/String; = "android.remoteinput.resultsSource"

.field public static final RESULTS_CLIP_LABEL:Ljava/lang/String; = "android.remoteinput.results"

.field public static final SOURCE_CHOICE:I = 0x1

.field public static final SOURCE_FREE_FORM_INPUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RemoteInput"


# instance fields
.field private final mAllowFreeFormTextInput:Z

.field private final mAllowedDataTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChoices:[Ljava/lang/CharSequence;

.field private final mEditChoicesBeforeSending:I

.field private final mExtras:Landroid/os/Bundle;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V
    .registers 10
    .param p1, "resultKey"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "choices"    # [Ljava/lang/CharSequence;
    .param p4, "allowFreeFormTextInput"    # Z
    .param p5, "editChoicesBeforeSending"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "ZI",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p7, "allowedDataTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroidx/core/app/RemoteInput;->mResultKey:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Landroidx/core/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    .line 99
    iput-object p3, p0, Landroidx/core/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    .line 100
    iput-boolean p4, p0, Landroidx/core/app/RemoteInput;->mAllowFreeFormTextInput:Z

    .line 101
    iput p5, p0, Landroidx/core/app/RemoteInput;->mEditChoicesBeforeSending:I

    .line 102
    iput-object p6, p0, Landroidx/core/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    .line 103
    iput-object p7, p0, Landroidx/core/app/RemoteInput;->mAllowedDataTypes:Ljava/util/Set;

    .line 104
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    .line 105
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_27

    .line 106
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setEditChoicesBeforeSending requires setAllowFreeFormInput"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_27
    :goto_27
    return-void
.end method

.method public static addDataResultToIntent(Landroidx/core/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V
    .registers 11
    .param p0, "remoteInput"    # Landroidx/core/app/RemoteInput;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/app/RemoteInput;",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 466
    .local p2, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_e

    .line 467
    invoke-static {p0}, Landroidx/core/app/RemoteInput;->fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/app/RemoteInput;->addDataResultToIntent(Landroid/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V

    goto :goto_6b

    .line 468
    :cond_e
    nop

    .line 469
    invoke-static {p1}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 470
    .local v0, "clipDataIntent":Landroid/content/Intent;
    if-nez v0, :cond_1b

    .line 471
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    .line 473
    :cond_1b
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 474
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/Uri;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 475
    .local v3, "mimeType":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 476
    .local v4, "uri":Landroid/net/Uri;
    if-nez v3, :cond_3e

    .line 477
    goto :goto_23

    .line 479
    :cond_3e
    nop

    .line 480
    invoke-static {v3}, Landroidx/core/app/RemoteInput;->getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 481
    .local v5, "resultsBundle":Landroid/os/Bundle;
    if-nez v5, :cond_4f

    .line 482
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v5, v6

    .line 484
    :cond_4f
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-static {v3}, Landroidx/core/app/RemoteInput;->getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 486
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/Uri;>;"
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "resultsBundle":Landroid/os/Bundle;
    goto :goto_23

    .line 487
    :cond_62
    const-string v1, "android.remoteinput.results"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 489
    .end local v0    # "clipDataIntent":Landroid/content/Intent;
    :goto_6b
    return-void
.end method

.method public static addResultsToIntent([Landroidx/core/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 12
    .param p0, "remoteInputs"    # [Landroidx/core/app/RemoteInput;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "results"    # Landroid/os/Bundle;

    .line 402
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_e

    .line 403
    invoke-static {p0}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_48

    .line 404
    :cond_e
    nop

    .line 408
    nop

    .line 409
    invoke-static {p1}, Landroidx/core/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 412
    .local v0, "existingTextResults":Landroid/os/Bundle;
    invoke-static {p1}, Landroidx/core/app/RemoteInput;->getResultsSource(Landroid/content/Intent;)I

    move-result v1

    .line 414
    .local v1, "resultsSource":I
    if-nez v0, :cond_1c

    .line 415
    move-object v0, p2

    goto :goto_1f

    .line 417
    :cond_1c
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 419
    :goto_1f
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_22
    if-ge v4, v2, :cond_44

    aget-object v5, p0, v4

    .line 421
    .local v5, "input":Landroidx/core/app/RemoteInput;
    nop

    .line 423
    invoke-virtual {v5}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v6

    .line 422
    invoke-static {p1, v6}, Landroidx/core/app/RemoteInput;->getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 424
    .local v6, "existingDataResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    const/4 v7, 0x1

    new-array v7, v7, [Landroidx/core/app/RemoteInput;

    .line 425
    .local v7, "arr":[Landroidx/core/app/RemoteInput;
    aput-object v5, v7, v3

    .line 426
    nop

    .line 427
    invoke-static {v7}, Landroidx/core/app/RemoteInput;->fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v8

    .line 426
    invoke-static {v8, p1, v0}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 428
    if-eqz v6, :cond_41

    .line 429
    invoke-static {v5, p1, v6}, Landroidx/core/app/RemoteInput;->addDataResultToIntent(Landroidx/core/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V

    .line 419
    .end local v5    # "input":Landroidx/core/app/RemoteInput;
    .end local v6    # "existingDataResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    .end local v7    # "arr":[Landroidx/core/app/RemoteInput;
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 434
    :cond_44
    invoke-static {p1, v1}, Landroidx/core/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    .line 435
    .end local v0    # "existingTextResults":Landroid/os/Bundle;
    .end local v1    # "resultsSource":I
    nop

    .line 454
    :goto_48
    return-void
.end method

.method static fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;
    .registers 6
    .param p0, "src"    # Landroidx/core/app/RemoteInput;

    .line 561
    new-instance v0, Landroid/app/RemoteInput$Builder;

    .line 562
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 564
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 565
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 566
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 567
    .local v0, "builder":Landroid/app/RemoteInput$Builder;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_4a

    .line 568
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v1

    .line 569
    .local v1, "allowedDataTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_4a

    .line 570
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 571
    .local v3, "allowedDataType":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/app/RemoteInput$Builder;->setAllowDataType(Ljava/lang/String;Z)Landroid/app/RemoteInput$Builder;

    .line 572
    .end local v3    # "allowedDataType":Ljava/lang/String;
    goto :goto_39

    .line 575
    .end local v1    # "allowedDataTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_57

    .line 576
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setEditChoicesBeforeSending(I)Landroid/app/RemoteInput$Builder;

    .line 578
    :cond_57
    invoke-virtual {v0}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v1

    return-object v1
.end method

.method static fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;
    .registers 4
    .param p0, "srcArray"    # [Landroidx/core/app/RemoteInput;

    .line 549
    if-nez p0, :cond_4

    .line 550
    const/4 v0, 0x0

    return-object v0

    .line 552
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Landroid/app/RemoteInput;

    .line 553
    .local v0, "result":[Landroid/app/RemoteInput;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 554
    aget-object v2, p0, v1

    invoke-static {v2}, Landroidx/core/app/RemoteInput;->fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    move-result-object v2

    aput-object v2, v0, v1

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 556
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method static fromPlatform(Landroid/app/RemoteInput;)Landroidx/core/app/RemoteInput;
    .registers 6
    .param p0, "src"    # Landroid/app/RemoteInput;

    .line 583
    new-instance v0, Landroidx/core/app/RemoteInput$Builder;

    .line 584
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v0

    .line 586
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v0

    .line 587
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v0

    .line 588
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v0

    .line 589
    .local v0, "builder":Landroidx/core/app/RemoteInput$Builder;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_4a

    .line 590
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v1

    .line 591
    .local v1, "allowedDataTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_4a

    .line 592
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 593
    .local v3, "allowedDataType":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroidx/core/app/RemoteInput$Builder;->setAllowDataType(Ljava/lang/String;Z)Landroidx/core/app/RemoteInput$Builder;

    .line 594
    .end local v3    # "allowedDataType":Ljava/lang/String;
    goto :goto_39

    .line 597
    .end local v1    # "allowedDataTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_57

    .line 598
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/RemoteInput$Builder;->setEditChoicesBeforeSending(I)Landroidx/core/app/RemoteInput$Builder;

    .line 600
    :cond_57
    invoke-virtual {v0}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object v1

    return-object v1
.end method

.method private static getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;

    .line 605
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 606
    .local v0, "clipData":Landroid/content/ClipData;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 607
    return-object v1

    .line 609
    :cond_8
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 610
    .local v2, "clipDescription":Landroid/content/ClipDescription;
    const-string v3, "text/vnd.android.intent"

    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 611
    return-object v1

    .line 613
    :cond_15
    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.remoteinput.results"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 614
    return-object v1

    .line 616
    :cond_26
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "remoteInputResultKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 338
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 339
    invoke-static {p0, p1}, Landroid/app/RemoteInput;->getDataResultsFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 340
    :cond_b
    nop

    .line 341
    invoke-static {p0}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 342
    .local v0, "clipDataIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 343
    return-object v1

    .line 345
    :cond_14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 346
    .local v2, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/Uri;>;"
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 347
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 348
    .local v5, "key":Ljava/lang/String;
    const-string v6, "android.remoteinput.dataTypeResultsData"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 349
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, "mimeType":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 351
    goto :goto_25

    .line 353
    :cond_48
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 354
    .local v7, "bundle":Landroid/os/Bundle;
    invoke-virtual {v7, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 355
    .local v8, "uriStr":Ljava/lang/String;
    if-eqz v8, :cond_25

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_59

    .line 356
    goto :goto_25

    .line 358
    :cond_59
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-interface {v2, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v8    # "uriStr":Ljava/lang/String;
    :cond_60
    goto :goto_25

    .line 361
    :cond_61
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_68

    goto :goto_69

    :cond_68
    move-object v1, v2

    :goto_69
    return-object v1
.end method

.method private static getExtraResultsKeyForData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.remoteinput.dataTypeResultsData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 376
    nop

    .line 377
    invoke-static {p0}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getResultsSource(Landroid/content/Intent;)I
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;

    .line 530
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 531
    invoke-static {p0}, Landroid/app/RemoteInput;->getResultsSource(Landroid/content/Intent;)I

    move-result v0

    return v0

    .line 532
    :cond_b
    nop

    .line 533
    invoke-static {p0}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 534
    .local v0, "clipDataIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 535
    return v1

    .line 537
    :cond_14
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.remoteinput.resultsSource"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static setResultsSource(Landroid/content/Intent;I)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "source"    # I

    .line 505
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a

    .line 506
    invoke-static {p0, p1}, Landroid/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    goto :goto_25

    .line 507
    :cond_a
    nop

    .line 508
    invoke-static {p0}, Landroidx/core/app/RemoteInput;->getClipDataIntentFromIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 509
    .local v0, "clipDataIntent":Landroid/content/Intent;
    if-nez v0, :cond_17

    .line 510
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    .line 512
    :cond_17
    const-string v1, "android.remoteinput.resultsSource"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 513
    const-string v1, "android.remoteinput.results"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 515
    .end local v0    # "clipDataIntent":Landroid/content/Intent;
    :goto_25
    return-void
.end method


# virtual methods
.method public getAllowFreeFormInput()Z
    .registers 2

    .line 156
    iget-boolean v0, p0, Landroidx/core/app/RemoteInput;->mAllowFreeFormTextInput:Z

    return v0
.end method

.method public getAllowedDataTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Landroidx/core/app/RemoteInput;->mAllowedDataTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getChoices()[Ljava/lang/CharSequence;
    .registers 2

    .line 130
    iget-object v0, p0, Landroidx/core/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEditChoicesBeforeSending()I
    .registers 2

    .line 164
    iget v0, p0, Landroidx/core/app/RemoteInput;->mEditChoicesBeforeSending:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 171
    iget-object v0, p0, Landroidx/core/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 123
    iget-object v0, p0, Landroidx/core/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getResultKey()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Landroidx/core/app/RemoteInput;->mResultKey:Ljava/lang/String;

    return-object v0
.end method

.method public isDataOnly()Z
    .registers 2

    .line 143
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v0

    if-nez v0, :cond_25

    .line 144
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_25

    .line 145
    :cond_13
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 146
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 143
    :goto_26
    return v0
.end method
