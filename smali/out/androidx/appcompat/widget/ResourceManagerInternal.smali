.class public final Landroidx/appcompat/widget/ResourceManagerInternal;
.super Ljava/lang/Object;
.source "ResourceManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ResourceManagerInternal$DrawableDelegate;,
        Landroidx/appcompat/widget/ResourceManagerInternal$AsldcInflateDelegate;,
        Landroidx/appcompat/widget/ResourceManagerInternal$AvdcInflateDelegate;,
        Landroidx/appcompat/widget/ResourceManagerInternal$VdcInflateDelegate;,
        Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;,
        Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;,
        Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;
    }
.end annotation


# static fields
.field private static final COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal; = null

.field private static final PLATFORM_VD_CLAZZ:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static final SKIP_DRAWABLE_TAG:Ljava/lang/String; = "appcompat_skip_skip"

.field private static final TAG:Ljava/lang/String; = "ResourceManagerInternal"


# instance fields
.field private mDelegates:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHasCheckedVectorDrawableSetup:Z

.field private mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

.field private mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 86
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/ResourceManagerInternal;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 116
    new-instance v0, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Landroidx/appcompat/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    return-void
.end method

.method private addDelegate(Ljava/lang/String;Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;)V
    .registers 4
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "delegate"    # Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;

    .line 371
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    if-nez v0, :cond_b

    .line 372
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    .line 374
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    return-void
.end method

.method private declared-synchronized addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # J
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    monitor-enter p0

    .line 340
    :try_start_1
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 341
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_27

    .line 342
    iget-object v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/LongSparseArray;

    .line 343
    .local v1, "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-nez v1, :cond_1c

    .line 344
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    move-object v1, v2

    .line 345
    iget-object v2, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .end local p0    # "this":Landroidx/appcompat/widget/ResourceManagerInternal;
    :cond_1c
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2, p3, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2a

    .line 348
    monitor-exit p0

    const/4 v2, 0x1

    return v2

    .line 350
    .end local v1    # "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :cond_27
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 339
    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "key":J
    .end local p4    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "tintList"    # Landroid/content/res/ColorStateList;

    .line 406
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    .line 407
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 409
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 410
    .local v0, "themeTints":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    if-nez v0, :cond_20

    .line 411
    new-instance v1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    move-object v0, v1

    .line 412
    iget-object v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_20
    invoke-virtual {v0, p2, p3}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 415
    return-void
.end method

.method private checkVectorDrawableSetup(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 486
    iget-boolean v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    if-eqz v0, :cond_5

    .line 488
    return-void

    .line 492
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    .line 493
    sget v0, Landroidx/appcompat/resources/R$drawable;->abc_vector_test:I

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 494
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_17

    invoke-static {v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 499
    return-void

    .line 495
    :cond_17
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    .line 496
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createCacheKey(Landroid/util/TypedValue;)J
    .registers 5
    .param p0, "tv"    # Landroid/util/TypedValue;

    .line 171
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 176
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    .line 177
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 179
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 180
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 181
    invoke-static {v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v1

    .line 183
    .local v1, "key":J
    invoke-direct {p0, p1, v1, v2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 184
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_20

    .line 186
    return-object v3

    .line 190
    :cond_20
    iget-object v4, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    if-nez v4, :cond_26

    const/4 v4, 0x0

    goto :goto_2a

    .line 191
    :cond_26
    invoke-interface {v4, p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->createDrawableFor(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_2a
    move-object v3, v4

    .line 193
    if-eqz v3, :cond_35

    .line 194
    iget v4, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 196
    invoke-direct {p0, p1, v1, v2, v3}, Landroidx/appcompat/widget/ResourceManagerInternal;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    .line 199
    :cond_35
    return-object v3
.end method

.method private static createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .registers 5
    .param p0, "tint"    # Landroid/content/res/ColorStateList;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p2, "state"    # [I

    .line 464
    if-eqz p0, :cond_f

    if-nez p1, :cond_5

    goto :goto_f

    .line 467
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 468
    .local v0, "color":I
    invoke-static {v0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    return-object v1

    .line 465
    .end local v0    # "color":I
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized get()Landroidx/appcompat/widget/ResourceManagerInternal;
    .registers 2

    const-class v0, Landroidx/appcompat/widget/ResourceManagerInternal;

    monitor-enter v0

    .line 97
    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;

    if-nez v1, :cond_11

    .line 98
    new-instance v1, Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-direct {v1}, Landroidx/appcompat/widget/ResourceManagerInternal;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 99
    invoke-static {v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->installDefaultInflateDelegates(Landroidx/appcompat/widget/ResourceManagerInternal;)V

    .line 101
    :cond_11
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object v1

    .line 96
    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # J

    monitor-enter p0

    .line 319
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/LongSparseArray;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2d

    .line 320
    .local v0, "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 321
    monitor-exit p0

    return-object v1

    .line 324
    :cond_e
    :try_start_e
    invoke-virtual {v0, p2, p3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 325
    .local v2, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v2, :cond_2b

    .line 327
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 328
    .local v3, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v3, :cond_28

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_2d

    monitor-exit p0

    return-object v1

    .line 332
    .end local p0    # "this":Landroidx/appcompat/widget/ResourceManagerInternal;
    :cond_28
    :try_start_28
    invoke-virtual {v0, p2, p3}, Landroidx/collection/LongSparseArray;->remove(J)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2d

    .line 335
    .end local v3    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2b
    monitor-exit p0

    return-object v1

    .line 318
    .end local v0    # "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .end local v2    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "key":J
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 6
    .param p0, "color"    # I
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    const-class v0, Landroidx/appcompat/widget/ResourceManagerInternal;

    monitor-enter v0

    .line 474
    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    .line 476
    .local v2, "filter":Landroid/graphics/PorterDuffColorFilter;
    if-nez v2, :cond_14

    .line 478
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v3, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v2, v3

    .line 479
    invoke-virtual {v1, p0, p1, v2}, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 482
    :cond_14
    monitor-exit v0

    return-object v2

    .line 473
    .end local v2    # "filter":Landroid/graphics/PorterDuffColorFilter;
    .end local p0    # "color":I
    .end local p1    # "mode":Landroid/graphics/PorterDuff$Mode;
    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 397
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 398
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 399
    .local v0, "tints":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    if-eqz v0, :cond_13

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    :cond_13
    return-object v1

    .line 401
    .end local v0    # "tints":Landroidx/collection/SparseArrayCompat;, "Landroidx/collection/SparseArrayCompat<Landroid/content/res/ColorStateList;>;"
    :cond_14
    return-object v1
.end method

.method private static installDefaultInflateDelegates(Landroidx/appcompat/widget/ResourceManagerInternal;)V
    .registers 1
    .param p0, "manager"    # Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 108
    nop

    .line 114
    return-void
.end method

.method private static isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;

    .line 502
    instance-of v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-nez v0, :cond_17

    .line 503
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 502
    :goto_18
    return v0
.end method

.method private loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 233
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_b8

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 234
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    const-string v2, "appcompat_skip_skip"

    if-eqz v0, :cond_2a

    .line 235
    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    .local v0, "cachedTagName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    if-eqz v0, :cond_28

    iget-object v3, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    .line 237
    invoke-virtual {v3, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_28

    goto :goto_29

    .line 246
    .end local v0    # "cachedTagName":Ljava/lang/String;
    :cond_28
    goto :goto_31

    .line 244
    .restart local v0    # "cachedTagName":Ljava/lang/String;
    :cond_29
    :goto_29
    return-object v1

    .line 248
    .end local v0    # "cachedTagName":Ljava/lang/String;
    :cond_2a
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    .line 251
    :goto_31
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_3c

    .line 252
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 254
    :cond_3c
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 255
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 256
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v3, 0x1

    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 258
    invoke-static {v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v4

    .line 260
    .local v4, "key":J
    invoke-direct {p0, p1, v4, v5}, Landroidx/appcompat/widget/ResourceManagerInternal;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 261
    .local v6, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_51

    .line 267
    return-object v6

    .line 270
    :cond_51
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_b0

    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b0

    .line 273
    :try_start_63
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 274
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 276
    .local v8, "attrs":Landroid/util/AttributeSet;
    :goto_6b
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "type":I
    const/4 v11, 0x2

    if-eq v9, v11, :cond_76

    if-eq v10, v3, :cond_76

    goto :goto_6b

    .line 280
    :cond_76
    if-ne v10, v11, :cond_a0

    .line 284
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "tagName":Ljava/lang/String;
    iget-object v9, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v9, p2, v3}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 289
    iget-object v9, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v9, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;

    .line 290
    .local v9, "delegate":Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;
    if-eqz v9, :cond_95

    .line 291
    nop

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    .line 291
    invoke-interface {v9, p1, v7, v8, v11}, Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;->createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v6, v11

    .line 294
    :cond_95
    if-eqz v6, :cond_9f

    .line 296
    iget v11, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v11}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 297
    invoke-direct {p0, p1, v4, v5, v6}, Landroidx/appcompat/widget/ResourceManagerInternal;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    .line 304
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "delegate":Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;
    .end local v10    # "type":I
    :cond_9f
    goto :goto_b0

    .line 281
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "attrs":Landroid/util/AttributeSet;
    .restart local v10    # "type":I
    :cond_a0
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "No start tag found"

    invoke-direct {v3, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v0    # "tv":Landroid/util/TypedValue;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v4    # "key":J
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resId":I
    throw v3
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_a8} :catch_a8

    .line 302
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "type":I
    .restart local v0    # "tv":Landroid/util/TypedValue;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v4    # "key":J
    .restart local v6    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "resId":I
    :catch_a8
    move-exception v3

    .line 303
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "ResourceManagerInternal"

    const-string v8, "Exception while inflating drawable"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b0
    :goto_b0
    if-nez v6, :cond_b7

    .line 309
    iget-object v3, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, p2, v2}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 311
    :cond_b7
    return-object v6

    .line 314
    .end local v0    # "tv":Landroid/util/TypedValue;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v4    # "key":J
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_b8
    return-object v1
.end method

.method private tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "failIfNotKnown"    # Z
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 204
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 205
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_21

    .line 207
    invoke-static {p4}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 208
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 210
    :cond_10
    invoke-static {p4}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 211
    invoke-static {p4, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 214
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 215
    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v1, :cond_20

    .line 216
    invoke-static {p4, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 218
    .end local v1    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_20
    :goto_20
    goto :goto_35

    :cond_21
    iget-object v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    if-eqz v1, :cond_2c

    invoke-interface {v1, p1, p2, p4}, Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->tintDrawable(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_20

    .line 222
    :cond_2c
    invoke-virtual {p0, p1, p2, p4}, Landroidx/appcompat/widget/ResourceManagerInternal;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 223
    .local v1, "tinted":Z
    if-nez v1, :cond_35

    if-eqz p3, :cond_35

    .line 226
    const/4 p4, 0x0

    .line 229
    .end local v1    # "tinted":Z
    :cond_35
    :goto_35
    return-object p4
.end method

.method static tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V
    .registers 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Landroidx/appcompat/widget/TintInfo;
    .param p2, "state"    # [I

    .line 440
    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 441
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_14

    .line 442
    const-string v0, "ResourceManagerInternal"

    const-string v1, "Mutated drawable is not the same instance as the input."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void

    .line 446
    :cond_14
    iget-boolean v0, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-nez v0, :cond_21

    iget-boolean v0, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v0, :cond_1d

    goto :goto_21

    .line 452
    :cond_1d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3a

    .line 447
    :cond_21
    :goto_21
    nop

    .line 448
    iget-boolean v0, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-eqz v0, :cond_29

    iget-object v0, p1, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    .line 449
    :goto_2a
    iget-boolean v1, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_31

    iget-object v1, p1, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_33

    :cond_31
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 447
    :goto_33
    invoke-static {v0, v1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 455
    :goto_3a
    nop

    .line 460
    return-void
.end method


# virtual methods
.method public declared-synchronized getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    monitor-enter p0

    .line 136
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 136
    .end local p0    # "this":Landroidx/appcompat/widget/ResourceManagerInternal;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resId":I
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "failIfNotKnown"    # Z

    monitor-enter p0

    .line 141
    :try_start_1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->checkVectorDrawableSetup(Landroid/content/Context;)V

    .line 143
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_f

    .line 145
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 147
    .end local p0    # "this":Landroidx/appcompat/widget/ResourceManagerInternal;
    :cond_f
    if-nez v0, :cond_16

    .line 148
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 151
    :cond_16
    if-eqz v0, :cond_1d

    .line 153
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 155
    :cond_1d
    if-eqz v0, :cond_22

    .line 157
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 159
    :cond_22
    monitor-exit p0

    return-object v0

    .line 140
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resId":I
    .end local p3    # "failIfNotKnown":Z
    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    monitor-enter p0

    .line 383
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 385
    .local v0, "tint":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_17

    .line 387
    iget-object v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-interface {v1, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->getTintListForDrawableRes(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_11
    move-object v0, v1

    .line 389
    if-eqz v0, :cond_17

    .line 390
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 393
    .end local p0    # "this":Landroidx/appcompat/widget/ResourceManagerInternal;
    :cond_17
    monitor-exit p0

    return-object v0

    .line 382
    .end local v0    # "tint":Landroid/content/res/ColorStateList;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resId":I
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p1, "resId"    # I

    .line 378
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->getTintModeForDrawableRes(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public declared-synchronized onConfigurationChanged(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 163
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/LongSparseArray;

    .line 164
    .local v0, "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-eqz v0, :cond_e

    .line 166
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 168
    .end local p0    # "this":Landroidx/appcompat/widget/ResourceManagerInternal;
    :cond_e
    monitor-exit p0

    return-void

    .line 162
    .end local v0    # "cache":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .end local p1    # "context":Landroid/content/Context;
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onDrawableLoadedFromResources(Landroid/content/Context;Landroidx/appcompat/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroidx/appcompat/widget/VectorEnabledTintResources;
    .param p3, "resId"    # I

    monitor-enter p0

    .line 355
    :try_start_1
    invoke-direct {p0, p1, p3}, Landroidx/appcompat/widget/ResourceManagerInternal;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 356
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_c

    .line 357
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/VectorEnabledTintResources;->getDrawableCanonical(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 359
    .end local p0    # "this":Landroidx/appcompat/widget/ResourceManagerInternal;
    :cond_c
    if-eqz v0, :cond_15

    .line 360
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_18

    monitor-exit p0

    return-object v1

    .line 362
    :cond_15
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 354
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resources":Landroidx/appcompat/widget/VectorEnabledTintResources;
    .end local p3    # "resId":I
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHooks(Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;)V
    .registers 2
    .param p1, "hooks"    # Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    monitor-enter p0

    .line 132
    :try_start_1
    iput-object p1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 133
    monitor-exit p0

    return-void

    .line 131
    .end local p0    # "this":Landroidx/appcompat/widget/ResourceManagerInternal;
    .end local p1    # "hooks":Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 367
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
