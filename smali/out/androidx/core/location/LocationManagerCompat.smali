.class public final Landroidx/core/location/LocationManagerCompat;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;,
        Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;,
        Landroidx/core/location/LocationManagerCompat$Api28Impl;,
        Landroidx/core/location/LocationManagerCompat$Api30Impl;,
        Landroidx/core/location/LocationManagerCompat$Api31Impl;,
        Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;,
        Landroidx/core/location/LocationManagerCompat$GnssLazyLoader;
    }
.end annotation


# static fields
.field private static final GET_CURRENT_LOCATION_TIMEOUT_MS:J = 0x7530L

.field private static final MAX_CURRENT_LOCATION_AGE_MS:J = 0x2710L

.field private static final PRE_N_LOOPER_TIMEOUT_S:J = 0x5L

.field private static sContextField:Ljava/lang/reflect/Field;

.field static final sLocationListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/location/LocationListener;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static sRequestLocationUpdatesExecutorMethod:Ljava/lang/reflect/Method;

.field private static sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 225
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentLocation(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .registers 14
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "cancellationSignal"    # Landroidx/core/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationManager;",
            "Ljava/lang/String;",
            "Landroidx/core/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p4, "consumer":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<Landroid/location/Location;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_a

    .line 186
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/location/LocationManagerCompat$Api30Impl;->getCurrentLocation(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 188
    return-void

    .line 191
    :cond_a
    if-eqz p2, :cond_f

    .line 192
    invoke-virtual {p2}, Landroidx/core/os/CancellationSignal;->throwIfCanceled()V

    .line 195
    :cond_f
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 196
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_2d

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0}, Landroidx/core/location/LocationCompat;->getElapsedRealtimeMillis(Landroid/location/Location;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 199
    .local v1, "locationAgeMs":J
    const-wide/16 v3, 0x2710

    cmp-long v3, v1, v3

    if-gez v3, :cond_2d

    .line 200
    new-instance v3, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda1;

    invoke-direct {v3, p4, v0}, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda1;-><init>(Landroidx/core/util/Consumer;Landroid/location/Location;)V

    invoke-interface {p3, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 201
    return-void

    .line 205
    .end local v1    # "locationAgeMs":J
    :cond_2d
    new-instance v1, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;

    invoke-direct {v1, p0, p3, p4}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;-><init>(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    .line 207
    .local v1, "listener":Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 208
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    .line 207
    move-object v2, p0

    move-object v3, p1

    move-object v7, v1

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 210
    if-eqz p2, :cond_49

    .line 211
    new-instance v2, Landroidx/core/location/LocationManagerCompat$1;

    invoke-direct {v2, v1}, Landroidx/core/location/LocationManagerCompat$1;-><init>(Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;)V

    invoke-virtual {p2, v2}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 220
    :cond_49
    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v2, v3}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->startTimeout(J)V

    .line 221
    return-void
.end method

.method public static getGnssHardwareModelName(Landroid/location/LocationManager;)Ljava/lang/String;
    .registers 3
    .param p0, "locationManager"    # Landroid/location/LocationManager;

    .line 388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 389
    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$Api28Impl;->getGnssHardwareModelName(Landroid/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 391
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGnssYearOfHardware(Landroid/location/LocationManager;)I
    .registers 3
    .param p0, "locationManager"    # Landroid/location/LocationManager;

    .line 400
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 401
    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$Api28Impl;->getGnssYearOfHardware(Landroid/location/LocationManager;)I

    move-result v0

    return v0

    .line 403
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static hasProvider(Landroid/location/LocationManager;Ljava/lang/String;)Z
    .registers 5
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_b

    .line 146
    invoke-static {p0, p1}, Landroidx/core/location/LocationManagerCompat$Api31Impl;->hasProvider(Landroid/location/LocationManager;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 150
    :cond_b
    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 151
    return v1

    .line 156
    :cond_17
    const/4 v0, 0x0

    :try_start_18
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_1c} :catch_21

    if-eqz v2, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v0

    :goto_20
    return v1

    .line 157
    :catch_21
    move-exception v1

    .line 160
    return v0
.end method

.method public static isLocationEnabled(Landroid/location/LocationManager;)Z
    .registers 3
    .param p0, "locationManager"    # Landroid/location/LocationManager;

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 101
    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$Api28Impl;->isLocationEnabled(Landroid/location/LocationManager;)Z

    move-result v0

    return v0

    .line 104
    :cond_b
    nop

    .line 132
    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 133
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 132
    :goto_20
    return v0
.end method

.method static synthetic lambda$getCurrentLocation$0(Landroidx/core/util/Consumer;Landroid/location/Location;)V
    .registers 2
    .param p0, "consumer"    # Landroidx/core/util/Consumer;
    .param p1, "location"    # Landroid/location/Location;

    .line 200
    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$registerGnssStatusCallback$1(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "myTransport"    # Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 516
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
    .registers 9
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "baseHandler"    # Landroid/os/Handler;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;

    .line 469
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_2d

    .line 470
    sget-object v0, Landroidx/core/location/LocationManagerCompat$GnssLazyLoader;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 471
    :try_start_b
    sget-object v1, Landroidx/core/location/LocationManagerCompat$GnssLazyLoader;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    .line 472
    invoke-virtual {v1, p3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;

    .line 473
    .local v1, "transport":Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;
    if-nez v1, :cond_1b

    .line 474
    new-instance v4, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;

    invoke-direct {v4, p3}, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;-><init>(Landroidx/core/location/GnssStatusCompat$Callback;)V

    move-object v1, v4

    .line 476
    :cond_1b
    invoke-virtual {p0, p2, v1}, Landroid/location/LocationManager;->registerGnssStatusCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssStatus$Callback;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 477
    sget-object v3, Landroidx/core/location/LocationManagerCompat$GnssLazyLoader;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3, p3, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    monitor-exit v0

    return v2

    .line 480
    :cond_28
    monitor-exit v0

    return v3

    .line 482
    .end local v1    # "transport":Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_2a

    throw v1

    .line 483
    :cond_2d
    nop

    .line 484
    if-eqz p1, :cond_32

    move v0, v2

    goto :goto_33

    :cond_32
    move v0, v3

    :goto_33
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 485
    sget-object v0, Landroidx/core/location/LocationManagerCompat$GnssLazyLoader;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 486
    :try_start_39
    sget-object v1, Landroidx/core/location/LocationManagerCompat$GnssLazyLoader;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    .line 487
    invoke-virtual {v1, p3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    .line 488
    .local v1, "transport":Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;
    if-nez v1, :cond_4a

    .line 489
    new-instance v4, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    invoke-direct {v4, p3}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;-><init>(Landroidx/core/location/GnssStatusCompat$Callback;)V

    move-object v1, v4

    goto :goto_4d

    .line 491
    :cond_4a
    invoke-virtual {v1}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->unregister()V

    .line 493
    :goto_4d
    invoke-virtual {v1, p2}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->register(Ljava/util/concurrent/Executor;)V

    .line 495
    invoke-virtual {p0, v1, p1}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 496
    sget-object v3, Landroidx/core/location/LocationManagerCompat$GnssLazyLoader;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3, p3, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    monitor-exit v0

    return v2

    .line 499
    :cond_5d
    monitor-exit v0

    return v3

    .line 501
    .end local v1    # "transport":Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_39 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method public static registerGnssStatusCallback(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;Landroid/os/Handler;)Z
    .registers 5
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_f

    .line 425
    invoke-static {p2}, Landroidx/core/os/ExecutorCompat;->create(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v0

    return v0

    .line 428
    :cond_f
    new-instance v0, Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;

    invoke-direct {v0, p2}, Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-static {p0, v0, p1}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v0

    return v0
.end method

.method public static registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
    .registers 5
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;

    .line 454
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_c

    .line 455
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v0

    return v0

    .line 457
    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 458
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_16

    .line 459
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 461
    :cond_16
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0, v1, p1, p2}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result v1

    return v1
.end method

.method public static removeUpdates(Landroid/location/LocationManager;Landroidx/core/location/LocationListenerCompat;)V
    .registers 8
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "listener"    # Landroidx/core/location/LocationListenerCompat;

    .line 362
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 363
    nop

    .line 364
    :try_start_4
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 365
    .local v1, "transports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;>;>;"
    if-eqz v1, :cond_2e

    .line 366
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 367
    .local v3, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    .line 368
    .local v4, "transport":Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->unregister()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 369
    invoke-virtual {p0, v4}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 371
    .end local v3    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;>;"
    .end local v4    # "transport":Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
    :cond_2d
    goto :goto_10

    .line 373
    .end local v1    # "transports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;>;>;"
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_33

    .line 377
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 378
    return-void

    .line 373
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public static requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationListenerCompat;Landroid/os/Looper;)V
    .registers 13
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroidx/core/location/LocationRequestCompat;
    .param p3, "listener"    # Landroidx/core/location/LocationListenerCompat;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 321
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_18

    .line 322
    nop

    .line 323
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest()Landroid/location/LocationRequest;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 324
    invoke-static {v1}, Landroidx/core/os/ExecutorCompat;->create(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 322
    invoke-static {p0, p1, v0, v1, p3}, Landroidx/core/location/LocationManagerCompat$Api31Impl;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 325
    return-void

    .line 328
    :cond_18
    nop

    .line 330
    :try_start_19
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_3c

    .line 331
    const-class v0, Landroid/location/LocationManager;

    const-string v5, "requestLocationUpdates"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/location/LocationRequest;

    aput-object v7, v6, v2

    const-class v7, Landroid/location/LocationListener;

    aput-object v7, v6, v4

    const-class v7, Landroid/os/Looper;

    aput-object v7, v6, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationManagerCompat;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    .line 334
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 337
    :cond_3c
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v0

    .line 338
    .local v0, "request":Landroid/location/LocationRequest;
    if-eqz v0, :cond_50

    .line 339
    sget-object v5, Landroidx/core/location/LocationManagerCompat;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object p3, v3, v4

    aput-object p4, v3, v1

    invoke-virtual {v5, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19 .. :try_end_4f} :catch_57
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_19 .. :try_end_4f} :catch_55
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_4f} :catch_53
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_19 .. :try_end_4f} :catch_51

    .line 341
    return-void

    .line 338
    .end local v0    # "request":Landroid/location/LocationRequest;
    :cond_50
    goto :goto_58

    .line 345
    :catch_51
    move-exception v0

    goto :goto_59

    .line 343
    :catch_53
    move-exception v0

    goto :goto_58

    :catch_55
    move-exception v0

    goto :goto_58

    :catch_57
    move-exception v0

    .line 347
    :goto_58
    nop

    .line 350
    :goto_59
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->getIntervalMillis()J

    move-result-wide v3

    .line 351
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->getMinUpdateDistanceMeters()F

    move-result v5

    .line 350
    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 352
    return-void
.end method

.method public static requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Ljava/util/concurrent/Executor;Landroidx/core/location/LocationListenerCompat;)V
    .registers 20
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroidx/core/location/LocationRequestCompat;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroidx/core/location/LocationListenerCompat;

    .line 243
    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_18

    .line 244
    nop

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest()Landroid/location/LocationRequest;

    move-result-object v0

    .line 244
    invoke-static {p0, v9, v0, v11, v12}, Landroidx/core/location/LocationManagerCompat$Api31Impl;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 246
    return-void

    .line 249
    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-lt v0, v1, :cond_5e

    .line 251
    :try_start_22
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sRequestLocationUpdatesExecutorMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_41

    .line 252
    const-class v0, Landroid/location/LocationManager;

    const-string v1, "requestLocationUpdates"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/location/LocationRequest;

    aput-object v7, v6, v3

    const-class v7, Ljava/util/concurrent/Executor;

    aput-object v7, v6, v5

    const-class v7, Landroid/location/LocationListener;

    aput-object v7, v6, v2

    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationManagerCompat;->sRequestLocationUpdatesExecutorMethod:Ljava/lang/reflect/Method;

    .line 255
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 258
    :cond_41
    invoke-virtual {v10, v9}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v0

    .line 259
    .local v0, "request":Landroid/location/LocationRequest;
    if-eqz v0, :cond_55

    .line 260
    sget-object v1, Landroidx/core/location/LocationManagerCompat;->sRequestLocationUpdatesExecutorMethod:Ljava/lang/reflect/Method;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v11, v6, v5

    aput-object v12, v6, v2

    invoke-virtual {v1, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/NoSuchMethodException; {:try_start_22 .. :try_end_54} :catch_5c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_22 .. :try_end_54} :catch_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_54} :catch_58
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_22 .. :try_end_54} :catch_56

    .line 262
    return-void

    .line 259
    .end local v0    # "request":Landroid/location/LocationRequest;
    :cond_55
    goto :goto_5d

    .line 266
    :catch_56
    move-exception v0

    goto :goto_5e

    .line 264
    :catch_58
    move-exception v0

    goto :goto_5d

    :catch_5a
    move-exception v0

    goto :goto_5d

    :catch_5c
    move-exception v0

    .line 268
    :goto_5d
    nop

    .line 271
    :cond_5e
    :goto_5e
    new-instance v0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    invoke-direct {v0, v12, v11}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;-><init>(Landroidx/core/location/LocationListenerCompat;Ljava/util/concurrent/Executor;)V

    move-object v13, v0

    .line 273
    .local v13, "transport":Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
    nop

    .line 275
    :try_start_65
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_84

    .line 276
    const-class v0, Landroid/location/LocationManager;

    const-string v1, "requestLocationUpdates"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/location/LocationRequest;

    aput-object v7, v6, v3

    const-class v7, Landroid/location/LocationListener;

    aput-object v7, v6, v5

    const-class v7, Landroid/os/Looper;

    aput-object v7, v6, v2

    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationManagerCompat;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    .line 279
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 282
    :cond_84
    invoke-virtual {v10, v9}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v0

    move-object v1, v0

    .line 283
    .local v1, "request":Landroid/location/LocationRequest;
    if-eqz v1, :cond_a7

    .line 284
    sget-object v6, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    monitor-enter v6
    :try_end_8e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_65 .. :try_end_8e} :catch_ae
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_65 .. :try_end_8e} :catch_ac
    .catch Ljava/lang/IllegalAccessException; {:try_start_65 .. :try_end_8e} :catch_aa
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_65 .. :try_end_8e} :catch_a8

    .line 285
    :try_start_8e
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sRequestLocationUpdatesLooperMethod:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v13, v4, v5

    .line 286
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    aput-object v3, v4, v2

    .line 285
    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-virtual {v13}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->register()V

    .line 288
    monitor-exit v6

    return-void

    .line 289
    :catchall_a4
    move-exception v0

    monitor-exit v6
    :try_end_a6
    .catchall {:try_start_8e .. :try_end_a6} :catchall_a4

    .end local v13    # "transport":Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
    .end local p0    # "locationManager":Landroid/location/LocationManager;
    .end local p1    # "provider":Ljava/lang/String;
    .end local p2    # "locationRequest":Landroidx/core/location/LocationRequestCompat;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "listener":Landroidx/core/location/LocationListenerCompat;
    :try_start_a6
    throw v0
    :try_end_a7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a6 .. :try_end_a7} :catch_ae
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a6 .. :try_end_a7} :catch_ac
    .catch Ljava/lang/IllegalAccessException; {:try_start_a6 .. :try_end_a7} :catch_aa
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a6 .. :try_end_a7} :catch_a8

    .line 283
    .end local v1    # "request":Landroid/location/LocationRequest;
    .restart local v13    # "transport":Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;
    .restart local p0    # "locationManager":Landroid/location/LocationManager;
    .restart local p1    # "provider":Ljava/lang/String;
    .restart local p2    # "locationRequest":Landroidx/core/location/LocationRequestCompat;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "listener":Landroidx/core/location/LocationListenerCompat;
    :cond_a7
    goto :goto_af

    .line 293
    :catch_a8
    move-exception v0

    goto :goto_b0

    .line 291
    :catch_aa
    move-exception v0

    goto :goto_af

    :catch_ac
    move-exception v0

    goto :goto_af

    :catch_ae
    move-exception v0

    .line 295
    :goto_af
    nop

    .line 298
    :goto_b0
    sget-object v14, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    monitor-enter v14

    .line 299
    :try_start_b3
    invoke-virtual/range {p2 .. p2}, Landroidx/core/location/LocationRequestCompat;->getIntervalMillis()J

    move-result-wide v3

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroidx/core/location/LocationRequestCompat;->getMinUpdateDistanceMeters()F

    move-result v5

    .line 301
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    .line 299
    move-object v1, p0

    move-object/from16 v2, p1

    move-object v6, v13

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 302
    invoke-virtual {v13}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->register()V

    .line 303
    monitor-exit v14

    .line 304
    return-void

    .line 303
    :catchall_cb
    move-exception v0

    monitor-exit v14
    :try_end_cd
    .catchall {:try_start_b3 .. :try_end_cd} :catchall_cb

    throw v0
.end method

.method public static unregisterGnssStatusCallback(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;)V
    .registers 4
    .param p0, "locationManager"    # Landroid/location/LocationManager;
    .param p1, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;

    .line 570
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1b

    .line 571
    sget-object v0, Landroidx/core/location/LocationManagerCompat$GnssLazyLoader;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 572
    :try_start_9
    sget-object v1, Landroidx/core/location/LocationManagerCompat$GnssLazyLoader;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    .line 573
    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;

    .line 574
    .local v1, "transport":Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;
    if-eqz v1, :cond_16

    .line 575
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    .line 577
    .end local v1    # "transport":Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;
    :cond_16
    monitor-exit v0

    goto :goto_30

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw v1

    .line 578
    :cond_1b
    nop

    .line 579
    sget-object v0, Landroidx/core/location/LocationManagerCompat$GnssLazyLoader;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    .line 580
    :try_start_1f
    sget-object v1, Landroidx/core/location/LocationManagerCompat$GnssLazyLoader;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    .line 581
    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    .line 583
    .local v1, "transport":Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;
    if-eqz v1, :cond_2f

    .line 584
    invoke-virtual {v1}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->unregister()V

    .line 585
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    .line 587
    .end local v1    # "transport":Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;
    :cond_2f
    monitor-exit v0

    .line 598
    :goto_30
    return-void

    .line 587
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1f .. :try_end_33} :catchall_31

    throw v1
.end method
