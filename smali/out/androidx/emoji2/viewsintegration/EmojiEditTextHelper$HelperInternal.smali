.class Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;
.super Ljava/lang/Object;
.source "EmojiEditTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HelperInternal"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .registers 2
    .param p1, "keyListener"    # Landroid/text/method/KeyListener;

    .line 234
    return-object p1
.end method

.method isEnabled()Z
    .registers 2

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 239
    return-object p1
.end method

.method setEmojiReplaceStrategy(I)V
    .registers 2
    .param p1, "replaceStrategy"    # I

    .line 248
    return-void
.end method

.method setEnabled(Z)V
    .registers 2
    .param p1, "isEnabled"    # Z

    .line 252
    return-void
.end method

.method setMaxEmojiCount(I)V
    .registers 2
    .param p1, "maxEmojiCount"    # I

    .line 244
    return-void
.end method