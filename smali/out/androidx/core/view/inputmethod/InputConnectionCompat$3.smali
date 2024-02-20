.class Landroidx/core/view/inputmethod/InputConnectionCompat$3;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"

# interfaces
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/inputmethod/InputConnectionCompat;->createOnCommitContentListenerUsingPerformReceiveContent(Landroid/view/View;)Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 366
    iput-object p1, p0, Landroidx/core/view/inputmethod/InputConnectionCompat$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .registers 10
    .param p1, "inputContentInfo"    # Landroidx/core/view/inputmethod/InputContentInfoCompat;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 370
    move-object v0, p3

    .line 371
    .local v0, "extras":Landroid/os/Bundle;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    const/4 v3, 0x0

    if-lt v1, v2, :cond_32

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_32

    .line 374
    :try_start_c
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->requestPermission()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_29

    .line 379
    nop

    .line 385
    nop

    .line 386
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputContentInfo;

    .line 387
    .local v1, "inputContentInfoFmk":Landroid/view/inputmethod/InputContentInfo;
    new-instance v2, Landroid/os/Bundle;

    if-nez p3, :cond_1f

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_22

    :cond_1f
    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_22
    move-object v0, v2

    .line 388
    const-string v2, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_32

    .line 375
    .end local v1    # "inputContentInfoFmk":Landroid/view/inputmethod/InputContentInfo;
    :catch_29
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "InputConnectionCompat"

    const-string v4, "Can\'t insert content from IME; requestPermission() failed"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    return v3

    .line 390
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_32
    :goto_32
    new-instance v1, Landroid/content/ClipData;

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    new-instance v4, Landroid/content/ClipData$Item;

    .line 391
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v1, v2, v4}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 392
    .local v1, "clip":Landroid/content/ClipData;
    new-instance v2, Landroidx/core/view/ContentInfoCompat$Builder;

    const/4 v4, 0x2

    invoke-direct {v2, v1, v4}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 393
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/view/ContentInfoCompat$Builder;->setLinkUri(Landroid/net/Uri;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object v2

    .line 394
    invoke-virtual {v2, v0}, Landroidx/core/view/ContentInfoCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object v2

    .line 395
    invoke-virtual {v2}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v2

    .line 396
    .local v2, "payload":Landroidx/core/view/ContentInfoCompat;
    iget-object v4, p0, Landroidx/core/view/inputmethod/InputConnectionCompat$3;->val$view:Landroid/view/View;

    invoke-static {v4, v2}, Landroidx/core/view/ViewCompat;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object v4

    if-nez v4, :cond_63

    const/4 v3, 0x1

    :cond_63
    return v3
.end method
