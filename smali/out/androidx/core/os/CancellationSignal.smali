.class public final Landroidx/core/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .registers 2

    .line 153
    nop

    :goto_1
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v0, :cond_b

    .line 155
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    .line 157
    :goto_8
    goto :goto_1

    .line 156
    :catch_9
    move-exception v0

    goto :goto_8

    .line 159
    :cond_b
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .line 69
    monitor-enter p0

    .line 70
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_7

    .line 71
    monitor-exit p0

    return-void

    .line 73
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    .line 74
    iput-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 75
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    .line 76
    .local v0, "listener":Landroidx/core/os/CancellationSignal$OnCancelListener;
    iget-object v1, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 77
    .local v1, "obj":Ljava/lang/Object;
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_3a

    .line 80
    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 81
    :try_start_14
    invoke-interface {v0}, Landroidx/core/os/CancellationSignal$OnCancelListener;->onCancel()V

    goto :goto_1a

    .line 87
    :catchall_18
    move-exception v3

    goto :goto_23

    .line 83
    :cond_1a
    :goto_1a
    if-eqz v1, :cond_2e

    .line 84
    move-object v3, v1

    check-cast v3, Landroid/os/CancellationSignal;

    invoke-virtual {v3}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_18

    goto :goto_2e

    .line 87
    :goto_23
    monitor-enter p0

    .line 88
    :try_start_24
    iput-boolean v2, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2b

    .line 91
    throw v3

    .line 90
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2

    .line 87
    :cond_2e
    :goto_2e
    monitor-enter p0

    .line 88
    :try_start_2f
    iput-boolean v2, p0, Landroidx/core/os/CancellationSignal;->mCancelInProgress:Z

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit p0

    .line 91
    nop

    .line 92
    return-void

    .line 90
    :catchall_37
    move-exception v2

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_37

    throw v2

    .line 77
    .end local v0    # "listener":Landroidx/core/os/CancellationSignal$OnCancelListener;
    .end local v1    # "obj":Ljava/lang/Object;
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public getCancellationSignalObject()Ljava/lang/Object;
    .registers 3

    .line 138
    nop

    .line 141
    monitor-enter p0

    .line 142
    :try_start_2
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    if-nez v0, :cond_17

    .line 143
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 144
    iget-boolean v1, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v1, :cond_17

    .line 145
    move-object v1, v0

    check-cast v1, Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 148
    :cond_17
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 149
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public isCanceled()Z
    .registers 2

    .line 46
    monitor-enter p0

    .line 47
    :try_start_1
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    monitor-exit p0

    return v0

    .line 48
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/core/os/CancellationSignal$OnCancelListener;

    .line 111
    monitor-enter p0

    .line 112
    :try_start_1
    invoke-direct {p0}, Landroidx/core/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 114
    iget-object v0, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    if-ne v0, p1, :cond_a

    .line 115
    monitor-exit p0

    return-void

    .line 117
    :cond_a
    iput-object p1, p0, Landroidx/core/os/CancellationSignal;->mOnCancelListener:Landroidx/core/os/CancellationSignal$OnCancelListener;

    .line 118
    iget-boolean v0, p0, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_18

    if-nez p1, :cond_13

    goto :goto_18

    .line 121
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    .line 122
    invoke-interface {p1}, Landroidx/core/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 123
    return-void

    .line 119
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit p0

    return-void

    .line 121
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public throwIfCanceled()V
    .registers 2

    .line 57
    invoke-virtual {p0}, Landroidx/core/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 60
    return-void

    .line 58
    :cond_7
    new-instance v0, Landroidx/core/os/OperationCanceledException;

    invoke-direct {v0}, Landroidx/core/os/OperationCanceledException;-><init>()V

    throw v0
.end method
