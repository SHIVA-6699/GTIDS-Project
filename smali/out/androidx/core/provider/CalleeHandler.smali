.class Landroidx/core/provider/CalleeHandler;
.super Ljava/lang/Object;
.source "CalleeHandler.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create()Landroid/os/Handler;
    .registers 2

    .line 36
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_10

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .local v0, "handler":Landroid/os/Handler;
    goto :goto_15

    .line 39
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_10
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 41
    .restart local v0    # "handler":Landroid/os/Handler;
    :goto_15
    return-object v0
.end method
