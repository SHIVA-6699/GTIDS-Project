.class Landroidx/appcompat/widget/SwitchCompat$EmojiCompatInitCallback;
.super Landroidx/emoji2/text/EmojiCompat$InitCallback;
.source "SwitchCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SwitchCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmojiCompatInitCallback"
.end annotation


# instance fields
.field private final mOuterWeakRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Landroidx/appcompat/widget/SwitchCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SwitchCompat;)V
    .registers 3
    .param p1, "view"    # Landroidx/appcompat/widget/SwitchCompat;

    .line 1642
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;-><init>()V

    .line 1643
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat$EmojiCompatInitCallback;->mOuterWeakRef:Ljava/lang/ref/Reference;

    .line 1644
    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 1657
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat$EmojiCompatInitCallback;->mOuterWeakRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    .line 1658
    .local v0, "view":Landroidx/appcompat/widget/SwitchCompat;
    if-eqz v0, :cond_d

    .line 1659
    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->onEmojiCompatInitializedForSwitchText()V

    .line 1661
    :cond_d
    return-void
.end method

.method public onInitialized()V
    .registers 2

    .line 1649
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat$EmojiCompatInitCallback;->mOuterWeakRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    .line 1650
    .local v0, "view":Landroidx/appcompat/widget/SwitchCompat;
    if-eqz v0, :cond_d

    .line 1651
    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->onEmojiCompatInitializedForSwitchText()V

    .line 1653
    :cond_d
    return-void
.end method
