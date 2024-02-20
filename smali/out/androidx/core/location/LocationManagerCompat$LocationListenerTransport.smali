.class Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationListenerTransport"
.end annotation


# instance fields
.field final mExecutor:Ljava/util/concurrent/Executor;

.field volatile mListener:Landroidx/core/location/LocationListenerCompat;


# direct methods
.method constructor <init>(Landroidx/core/location/LocationListenerCompat;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "listener"    # Landroidx/core/location/LocationListenerCompat;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const-string v0, "invalid null listener"

    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/location/LocationListenerCompat;

    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 609
    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 610
    return-void
.end method

.method static synthetic lambda$register$0(Ljava/lang/ref/WeakReference;)Z
    .registers 2
    .param p0, "reference"    # Ljava/lang/ref/WeakReference;

    .line 622
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$unregister$1(Ljava/lang/ref/WeakReference;)Z
    .registers 2
    .param p0, "reference"    # Ljava/lang/ref/WeakReference;

    .line 649
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method synthetic lambda$onFlushComplete$4$androidx-core-location-LocationManagerCompat$LocationListenerTransport(Landroidx/core/location/LocationListenerCompat;I)V
    .registers 4
    .param p1, "listener"    # Landroidx/core/location/LocationListenerCompat;
    .param p2, "requestCode"    # I

    .line 704
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_5

    .line 705
    return-void

    .line 707
    :cond_5
    invoke-interface {p1, p2}, Landroidx/core/location/LocationListenerCompat;->onFlushComplete(I)V

    .line 708
    return-void
.end method

.method synthetic lambda$onLocationChanged$2$androidx-core-location-LocationManagerCompat$LocationListenerTransport(Landroidx/core/location/LocationListenerCompat;Landroid/location/Location;)V
    .registers 4
    .param p1, "listener"    # Landroidx/core/location/LocationListenerCompat;
    .param p2, "location"    # Landroid/location/Location;

    .line 674
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_5

    .line 675
    return-void

    .line 677
    :cond_5
    invoke-interface {p1, p2}, Landroidx/core/location/LocationListenerCompat;->onLocationChanged(Landroid/location/Location;)V

    .line 678
    return-void
.end method

.method synthetic lambda$onLocationChanged$3$androidx-core-location-LocationManagerCompat$LocationListenerTransport(Landroidx/core/location/LocationListenerCompat;Ljava/util/List;)V
    .registers 4
    .param p1, "listener"    # Landroidx/core/location/LocationListenerCompat;
    .param p2, "locations"    # Ljava/util/List;

    .line 689
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_5

    .line 690
    return-void

    .line 692
    :cond_5
    invoke-interface {p1, p2}, Landroidx/core/location/LocationListenerCompat;->onLocationChanged(Ljava/util/List;)V

    .line 693
    return-void
.end method

.method synthetic lambda$onProviderDisabled$7$androidx-core-location-LocationManagerCompat$LocationListenerTransport(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V
    .registers 4
    .param p1, "listener"    # Landroidx/core/location/LocationListenerCompat;
    .param p2, "provider"    # Ljava/lang/String;

    .line 749
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_5

    .line 750
    return-void

    .line 752
    :cond_5
    invoke-interface {p1, p2}, Landroidx/core/location/LocationListenerCompat;->onProviderDisabled(Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method synthetic lambda$onProviderEnabled$6$androidx-core-location-LocationManagerCompat$LocationListenerTransport(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V
    .registers 4
    .param p1, "listener"    # Landroidx/core/location/LocationListenerCompat;
    .param p2, "provider"    # Ljava/lang/String;

    .line 734
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_5

    .line 735
    return-void

    .line 737
    :cond_5
    invoke-interface {p1, p2}, Landroidx/core/location/LocationListenerCompat;->onProviderEnabled(Ljava/lang/String;)V

    .line 738
    return-void
.end method

.method synthetic lambda$onStatusChanged$5$androidx-core-location-LocationManagerCompat$LocationListenerTransport(Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "listener"    # Landroidx/core/location/LocationListenerCompat;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 719
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-eq v0, p1, :cond_5

    .line 720
    return-void

    .line 722
    :cond_5
    invoke-interface {p1, p2, p3, p4}, Landroidx/core/location/LocationListenerCompat;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 723
    return-void
.end method

.method public onFlushComplete(I)V
    .registers 5
    .param p1, "requestCode"    # I

    .line 698
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 699
    .local v0, "listener":Landroidx/core/location/LocationListenerCompat;
    if-nez v0, :cond_5

    .line 700
    return-void

    .line 703
    :cond_5
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda2;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 709
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5
    .param p1, "location"    # Landroid/location/Location;

    .line 668
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 669
    .local v0, "listener":Landroidx/core/location/LocationListenerCompat;
    if-nez v0, :cond_5

    .line 670
    return-void

    .line 673
    :cond_5
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda5;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Landroid/location/Location;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 679
    return-void
.end method

.method public onLocationChanged(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 683
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 684
    .local v0, "listener":Landroidx/core/location/LocationListenerCompat;
    if-nez v0, :cond_5

    .line 685
    return-void

    .line 688
    :cond_5
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda3;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 694
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;

    .line 743
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 744
    .local v0, "listener":Landroidx/core/location/LocationListenerCompat;
    if-nez v0, :cond_5

    .line 745
    return-void

    .line 748
    :cond_5
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda4;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 754
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;

    .line 728
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 729
    .local v0, "listener":Landroidx/core/location/LocationListenerCompat;
    if-nez v0, :cond_5

    .line 730
    return-void

    .line 733
    :cond_5
    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda0;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 739
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 13
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 713
    iget-object v6, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 714
    .local v6, "listener":Landroidx/core/location/LocationListenerCompat;
    if-nez v6, :cond_5

    .line 715
    return-void

    .line 718
    :cond_5
    iget-object v7, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda6;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda6;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 724
    return-void
.end method

.method public register()V
    .registers 4

    .line 614
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 615
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 616
    .local v0, "transports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;>;>;"
    if-nez v0, :cond_1b

    .line 617
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 618
    sget-object v1, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 621
    :cond_1b
    nop

    .line 622
    new-instance v1, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 633
    :goto_24
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    return-void
.end method

.method public unregister()Z
    .registers 4

    .line 638
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 639
    .local v0, "listener":Landroidx/core/location/LocationListenerCompat;
    if-nez v0, :cond_6

    .line 640
    const/4 v1, 0x0

    return v1

    .line 642
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->mListener:Landroidx/core/location/LocationListenerCompat;

    .line 644
    sget-object v1, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    .line 645
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 646
    .local v1, "transports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;>;>;"
    if-eqz v1, :cond_27

    .line 648
    nop

    .line 649
    new-instance v2, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 658
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 659
    sget-object v2, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_27
    const/4 v2, 0x1

    return v2
.end method
