.class public final Landroidx/core/os/MessageCompat;
.super Ljava/lang/Object;
.source "MessageCompat.java"


# static fields
.field private static sTryIsAsynchronous:Z

.field private static sTrySetAsynchronous:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/os/MessageCompat;->sTrySetAsynchronous:Z

    .line 39
    sput-boolean v0, Landroidx/core/os/MessageCompat;->sTryIsAsynchronous:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static isAsynchronous(Landroid/os/Message;)Z
    .registers 2
    .param p0, "message"    # Landroid/os/Message;

    .line 97
    nop

    .line 98
    invoke-virtual {p0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v0

    return v0
.end method

.method public static setAsynchronous(Landroid/os/Message;Z)V
    .registers 2
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "async"    # Z

    .line 71
    nop

    .line 72
    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 73
    return-void
.end method
