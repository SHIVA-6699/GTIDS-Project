.class Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;
.super Landroid/location/GnssStatus$Callback;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreRGnssStatusTransport"
.end annotation


# instance fields
.field final mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

.field volatile mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroidx/core/location/GnssStatusCompat$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;

    .line 795
    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    .line 796
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "invalid null callback"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 797
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    .line 798
    return-void
.end method


# virtual methods
.method synthetic lambda$onFirstFix$2$androidx-core-location-LocationManagerCompat$PreRGnssStatusTransport(Ljava/util/concurrent/Executor;I)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "ttffMillis"    # I

    .line 848
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-eq v0, p1, :cond_5

    .line 849
    return-void

    .line 851
    :cond_5
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0, p2}, Landroidx/core/location/GnssStatusCompat$Callback;->onFirstFix(I)V

    .line 852
    return-void
.end method

.method synthetic lambda$onSatelliteStatusChanged$3$androidx-core-location-LocationManagerCompat$PreRGnssStatusTransport(Ljava/util/concurrent/Executor;Landroid/location/GnssStatus;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "status"    # Landroid/location/GnssStatus;

    .line 863
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-eq v0, p1, :cond_5

    .line 864
    return-void

    .line 866
    :cond_5
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-static {p2}, Landroidx/core/location/GnssStatusCompat;->wrap(Landroid/location/GnssStatus;)Landroidx/core/location/GnssStatusCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/location/GnssStatusCompat$Callback;->onSatelliteStatusChanged(Landroidx/core/location/GnssStatusCompat;)V

    .line 867
    return-void
.end method

.method synthetic lambda$onStarted$0$androidx-core-location-LocationManagerCompat$PreRGnssStatusTransport(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 818
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-eq v0, p1, :cond_5

    .line 819
    return-void

    .line 821
    :cond_5
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0}, Landroidx/core/location/GnssStatusCompat$Callback;->onStarted()V

    .line 822
    return-void
.end method

.method synthetic lambda$onStopped$1$androidx-core-location-LocationManagerCompat$PreRGnssStatusTransport(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 833
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-eq v0, p1, :cond_5

    .line 834
    return-void

    .line 836
    :cond_5
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0}, Landroidx/core/location/GnssStatusCompat$Callback;->onStopped()V

    .line 837
    return-void
.end method

.method public onFirstFix(I)V
    .registers 4
    .param p1, "ttffMillis"    # I

    .line 842
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 843
    .local v0, "executor":Ljava/util/concurrent/Executor;
    if-nez v0, :cond_5

    .line 844
    return-void

    .line 847
    :cond_5
    new-instance v1, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p1}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$$ExternalSyntheticLambda2;-><init>(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 853
    return-void
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .registers 4
    .param p1, "status"    # Landroid/location/GnssStatus;

    .line 857
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 858
    .local v0, "executor":Ljava/util/concurrent/Executor;
    if-nez v0, :cond_5

    .line 859
    return-void

    .line 862
    :cond_5
    new-instance v1, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$$ExternalSyntheticLambda1;-><init>(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssStatus;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 868
    return-void
.end method

.method public onStarted()V
    .registers 3

    .line 812
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 813
    .local v0, "executor":Ljava/util/concurrent/Executor;
    if-nez v0, :cond_5

    .line 814
    return-void

    .line 817
    :cond_5
    new-instance v1, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$$ExternalSyntheticLambda0;-><init>(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 823
    return-void
.end method

.method public onStopped()V
    .registers 3

    .line 827
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 828
    .local v0, "executor":Ljava/util/concurrent/Executor;
    if-nez v0, :cond_5

    .line 829
    return-void

    .line 832
    :cond_5
    new-instance v1, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport$$ExternalSyntheticLambda3;-><init>(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 838
    return-void
.end method

.method public register(Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 801
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "invalid null executor"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 802
    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 803
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 804
    return-void
.end method

.method public unregister()V
    .registers 2

    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 808
    return-void
.end method
