.class public Landroidx/emoji2/text/EmojiCompat;
.super Ljava/lang/Object;
.source "EmojiCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiCompat$CompatInternal19;,
        Landroidx/emoji2/text/EmojiCompat$CompatInternal;,
        Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;,
        Landroidx/emoji2/text/EmojiCompat$Config;,
        Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;,
        Landroidx/emoji2/text/EmojiCompat$GlyphChecker;,
        Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;,
        Landroidx/emoji2/text/EmojiCompat$InitCallback;,
        Landroidx/emoji2/text/EmojiCompat$SpanFactory;,
        Landroidx/emoji2/text/EmojiCompat$LoadStrategy;,
        Landroidx/emoji2/text/EmojiCompat$ReplaceStrategy;
    }
.end annotation


# static fields
.field private static final CONFIG_LOCK:Ljava/lang/Object;

.field public static final EDITOR_INFO_METAVERSION_KEY:Ljava/lang/String; = "android.support.text.emoji.emojiCompat_metadataVersion"

.field public static final EDITOR_INFO_REPLACE_ALL_KEY:Ljava/lang/String; = "android.support.text.emoji.emojiCompat_replaceAll"

.field static final EMOJI_COUNT_UNLIMITED:I = 0x7fffffff

.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field public static final LOAD_STATE_DEFAULT:I = 0x3

.field public static final LOAD_STATE_FAILED:I = 0x2

.field public static final LOAD_STATE_LOADING:I = 0x0

.field public static final LOAD_STATE_SUCCEEDED:I = 0x1

.field public static final LOAD_STRATEGY_DEFAULT:I = 0x0

.field public static final LOAD_STRATEGY_MANUAL:I = 0x1

.field private static final NOT_INITIALIZED_ERROR_TEXT:Ljava/lang/String; = "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

.field public static final REPLACE_STRATEGY_ALL:I = 0x1

.field public static final REPLACE_STRATEGY_DEFAULT:I = 0x0

.field public static final REPLACE_STRATEGY_NON_EXISTENT:I = 0x2

.field private static volatile sHasDoneDefaultConfigLookup:Z

.field private static volatile sInstance:Landroidx/emoji2/text/EmojiCompat;


# instance fields
.field final mEmojiAsDefaultStyleExceptions:[I

.field private final mEmojiSpanIndicatorColor:I

.field private final mEmojiSpanIndicatorEnabled:Z

.field private final mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

.field private final mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

.field private final mInitCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/emoji2/text/EmojiCompat$InitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private volatile mLoadState:I

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMetadataLoadStrategy:I

.field final mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

.field final mReplaceAll:Z

.field final mUseEmojiAsDefaultStyle:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 229
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->CONFIG_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroidx/emoji2/text/EmojiCompat$Config;)V
    .registers 4
    .param p1, "config"    # Landroidx/emoji2/text/EmojiCompat$Config;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 341
    const/4 v0, 0x3

    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    .line 342
    iget-boolean v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mReplaceAll:Z

    iput-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mReplaceAll:Z

    .line 343
    iget-boolean v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mUseEmojiAsDefaultStyle:Z

    iput-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mUseEmojiAsDefaultStyle:Z

    .line 344
    iget-object v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiAsDefaultStyleExceptions:[I

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiAsDefaultStyleExceptions:[I

    .line 345
    iget-boolean v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiSpanIndicatorEnabled:Z

    iput-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiSpanIndicatorEnabled:Z

    .line 346
    iget v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiSpanIndicatorColor:I

    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiSpanIndicatorColor:I

    .line 347
    iget-object v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    .line 348
    iget v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoadStrategy:I

    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoadStrategy:I

    .line 349
    iget-object v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 350
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    .line 351
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    .line 352
    iget-object v1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    if-eqz v1, :cond_50

    iget-object v1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    .line 353
    iget-object v1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 355
    :cond_50
    new-instance v0, Landroidx/emoji2/text/EmojiCompat$CompatInternal19;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal19;-><init>(Landroidx/emoji2/text/EmojiCompat;)V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    .line 357
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->loadMetadata()V

    .line 358
    return-void
.end method

.method static synthetic access$000(Landroidx/emoji2/text/EmojiCompat;)Landroidx/emoji2/text/EmojiCompat$GlyphChecker;
    .registers 2
    .param p0, "x0"    # Landroidx/emoji2/text/EmojiCompat;

    .line 111
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    return-object v0
.end method

.method public static get()Landroidx/emoji2/text/EmojiCompat;
    .registers 4

    .line 528
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_3
    sget-object v1, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    .line 530
    .local v1, "localInstance":Landroidx/emoji2/text/EmojiCompat;
    if-eqz v1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 531
    monitor-exit v0

    return-object v1

    .line 532
    .end local v1    # "localInstance":Landroidx/emoji2/text/EmojiCompat;
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .registers 6
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I
    .param p4, "inCodePoints"    # Z

    .line 747
    nop

    .line 748
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/emoji2/text/EmojiProcessor;->handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    move-result v0

    return v0
.end method

.method public static handleOnKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 718
    nop

    .line 719
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/EmojiProcessor;->handleOnKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)Landroidx/emoji2/text/EmojiCompat;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 377
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/emoji2/text/EmojiCompat;->init(Landroid/content/Context;Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;)Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;)Landroidx/emoji2/text/EmojiCompat;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultFactory"    # Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;

    .line 389
    sget-boolean v0, Landroidx/emoji2/text/EmojiCompat;->sHasDoneDefaultConfigLookup:Z

    if-eqz v0, :cond_7

    .line 394
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    return-object v0

    .line 397
    :cond_7
    if-eqz p1, :cond_b

    move-object v0, p1

    goto :goto_11

    .line 398
    :cond_b
    new-instance v0, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;-><init>(Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper;)V

    :goto_11
    nop

    .line 399
    .local v0, "factory":Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;
    invoke-virtual {v0, p0}, Landroidx/emoji2/text/DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory;->create(Landroid/content/Context;)Landroidx/emoji2/text/EmojiCompat$Config;

    move-result-object v0

    .line 401
    .local v0, "config":Landroidx/emoji2/text/EmojiCompat$Config;
    sget-object v1, Landroidx/emoji2/text/EmojiCompat;->CONFIG_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_19
    sget-boolean v2, Landroidx/emoji2/text/EmojiCompat;->sHasDoneDefaultConfigLookup:Z

    if-nez v2, :cond_25

    .line 405
    if-eqz v0, :cond_22

    .line 406
    invoke-static {v0}, Landroidx/emoji2/text/EmojiCompat;->init(Landroidx/emoji2/text/EmojiCompat$Config;)Landroidx/emoji2/text/EmojiCompat;

    .line 409
    :cond_22
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/emoji2/text/EmojiCompat;->sHasDoneDefaultConfigLookup:Z

    .line 412
    :cond_25
    sget-object v2, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    monitor-exit v1

    return-object v2

    .line 413
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public static init(Landroidx/emoji2/text/EmojiCompat$Config;)Landroidx/emoji2/text/EmojiCompat;
    .registers 4
    .param p0, "config"    # Landroidx/emoji2/text/EmojiCompat$Config;

    .line 429
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    .line 430
    .local v0, "localInstance":Landroidx/emoji2/text/EmojiCompat;
    if-nez v0, :cond_19

    .line 431
    sget-object v1, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    :try_start_7
    sget-object v2, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    move-object v0, v2

    .line 433
    if-nez v0, :cond_14

    .line 434
    new-instance v2, Landroidx/emoji2/text/EmojiCompat;

    invoke-direct {v2, p0}, Landroidx/emoji2/text/EmojiCompat;-><init>(Landroidx/emoji2/text/EmojiCompat$Config;)V

    move-object v0, v2

    .line 435
    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    .line 437
    :cond_14
    monitor-exit v1

    goto :goto_19

    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v2

    .line 439
    :cond_19
    :goto_19
    return-object v0
.end method

.method public static isConfigured()Z
    .registers 1

    .line 473
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isInitialized()Z
    .registers 3

    .line 675
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private loadMetadata()V
    .registers 3

    .line 568
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 570
    :try_start_9
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoadStrategy:I

    if-nez v0, :cond_10

    .line 571
    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_26

    .line 574
    :cond_10
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 575
    nop

    .line 577
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    move-result v0

    if-nez v0, :cond_25

    .line 578
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->loadMetadata()V

    .line 580
    :cond_25
    return-void

    .line 574
    :catchall_26
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 575
    throw v0
.end method

.method public static reset(Landroidx/emoji2/text/EmojiCompat$Config;)Landroidx/emoji2/text/EmojiCompat;
    .registers 3
    .param p0, "config"    # Landroidx/emoji2/text/EmojiCompat$Config;

    .line 485
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_3
    new-instance v1, Landroidx/emoji2/text/EmojiCompat;

    invoke-direct {v1, p0}, Landroidx/emoji2/text/EmojiCompat;-><init>(Landroidx/emoji2/text/EmojiCompat$Config;)V

    .line 487
    .local v1, "localInstance":Landroidx/emoji2/text/EmojiCompat;
    sput-object v1, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    .line 488
    monitor-exit v0

    return-object v1

    .line 489
    .end local v1    # "localInstance":Landroidx/emoji2/text/EmojiCompat;
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static reset(Landroidx/emoji2/text/EmojiCompat;)Landroidx/emoji2/text/EmojiCompat;
    .registers 3
    .param p0, "emojiCompat"    # Landroidx/emoji2/text/EmojiCompat;

    .line 500
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_3
    sput-object p0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    .line 502
    sget-object v1, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    monitor-exit v0

    return-object v1

    .line 503
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public static skipDefaultConfigurationLookup(Z)V
    .registers 3
    .param p0, "shouldSkip"    # Z

    .line 513
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->CONFIG_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_3
    sput-boolean p0, Landroidx/emoji2/text/EmojiCompat;->sHasDoneDefaultConfigLookup:Z

    .line 515
    monitor-exit v0

    .line 516
    return-void

    .line 515
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method


# virtual methods
.method public getAssetSignature()Ljava/lang/String;
    .registers 3

    .line 969
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    move-result v0

    const-string v1, "Not initialized yet"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 970
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->getAssetSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmojiSpanIndicatorColor()I
    .registers 2

    .line 693
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiSpanIndicatorColor:I

    return v0
.end method

.method public getLoadState()I
    .registers 3

    .line 663
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 665
    :try_start_9
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_15

    .line 667
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 665
    return v0

    .line 667
    :catchall_15
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 668
    throw v0
.end method

.method public hasEmojiGlyph(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .line 766
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    move-result v0

    const-string v1, "Not initialized yet"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 767
    const-string v0, "sequence cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->hasEmojiGlyph(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public hasEmojiGlyph(Ljava/lang/CharSequence;I)Z
    .registers 5
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "metadataVersion"    # I

    .line 785
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    move-result v0

    const-string v1, "Not initialized yet"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 786
    const-string v0, "sequence cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0, p1, p2}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->hasEmojiGlyph(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public isEmojiSpanIndicatorEnabled()Z
    .registers 2

    .line 684
    iget-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiSpanIndicatorEnabled:Z

    return v0
.end method

.method public load()V
    .registers 4

    .line 552
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoadStrategy:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    const-string v0, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 554
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    .line 556
    :cond_14
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 558
    :try_start_1d
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_3d

    if-nez v0, :cond_2b

    .line 561
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 558
    return-void

    .line 559
    :cond_2b
    :try_start_2b
    iput v1, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_3d

    .line 561
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 562
    nop

    .line 564
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->loadMetadata()V

    .line 565
    return-void

    .line 561
    :catchall_3d
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 562
    throw v0
.end method

.method onMetadataLoadFailed(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v0, "initCallbacks":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/emoji2/text/EmojiCompat$InitCallback;>;"
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 602
    const/4 v1, 0x2

    :try_start_f
    iput v1, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    .line 603
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 604
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_32

    .line 606
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 607
    nop

    .line 608
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;

    iget v3, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    invoke-direct {v2, v0, v3, p1}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Ljava/util/Collection;ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 609
    return-void

    .line 606
    :catchall_32
    move-exception v1

    iget-object v2, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 607
    throw v1
.end method

.method onMetadataLoadSuccess()V
    .registers 5

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v0, "initCallbacks":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/emoji2/text/EmojiCompat$InitCallback;>;"
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 587
    const/4 v1, 0x1

    :try_start_f
    iput v1, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    .line 588
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 589
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_32

    .line 591
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 592
    nop

    .line 594
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;

    iget v3, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    invoke-direct {v2, v0, v3}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Ljava/util/Collection;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 595
    return-void

    .line 591
    :catchall_32
    move-exception v1

    iget-object v2, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 592
    throw v1
.end method

.method public process(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 807
    const/4 v0, 0x0

    if-nez p1, :cond_5

    move v1, v0

    goto :goto_9

    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 808
    .local v1, "length":I
    :goto_9
    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 842
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "maxEmojiCount"    # I

    .line 880
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;
    .registers 13
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "maxEmojiCount"    # I
    .param p5, "replaceStrategy"    # I

    .line 922
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    move-result v0

    const-string v1, "Not initialized yet"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 923
    const-string v0, "start cannot be negative"

    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 924
    const-string v0, "end cannot be negative"

    invoke-static {p3, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 925
    const-string v0, "maxEmojiCount cannot be negative"

    invoke-static {p4, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 926
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p2, p3, :cond_1e

    move v2, v0

    goto :goto_1f

    :cond_1e
    move v2, v1

    :goto_1f
    const-string v3, "start should be <= than end"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 929
    if-nez p1, :cond_28

    .line 930
    const/4 v0, 0x0

    return-object v0

    .line 933
    :cond_28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p2, v2, :cond_30

    move v2, v0

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    const-string v3, "start should be < than charSequence length"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 935
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p3, v2, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v1

    :goto_3e
    const-string v1, "end should be < than charSequence length"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 939
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_62

    if-ne p2, p3, :cond_4c

    goto :goto_62

    .line 944
    :cond_4c
    packed-switch p5, :pswitch_data_64

    .line 953
    iget-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mReplaceAll:Z

    .local v0, "replaceAll":Z
    goto :goto_56

    .line 949
    .end local v0    # "replaceAll":Z
    :pswitch_52
    const/4 v0, 0x0

    .line 950
    .restart local v0    # "replaceAll":Z
    goto :goto_56

    .line 946
    .end local v0    # "replaceAll":Z
    :pswitch_54
    const/4 v0, 0x1

    .line 947
    .restart local v0    # "replaceAll":Z
    nop

    .line 957
    :goto_56
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->process(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 940
    .end local v0    # "replaceAll":Z
    :cond_62
    :goto_62
    return-object p1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_54
        :pswitch_52
    .end packed-switch
.end method

.method public registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V
    .registers 5
    .param p1, "initCallback"    # Landroidx/emoji2/text/EmojiCompat$InitCallback;

    .line 626
    const-string v0, "initCallback cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 630
    :try_start_e
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    goto :goto_1f

    .line 633
    :cond_19
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 631
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;

    iget v2, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    invoke-direct {v1, p1, v2}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Landroidx/emoji2/text/EmojiCompat$InitCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_36

    .line 636
    :goto_2b
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 637
    nop

    .line 638
    return-void

    .line 636
    :catchall_36
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 637
    throw v0
.end method

.method public unregisterInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V
    .registers 4
    .param p1, "initCallback"    # Landroidx/emoji2/text/EmojiCompat$InitCallback;

    .line 646
    const-string v0, "initCallback cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 649
    :try_start_e
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_1e

    .line 651
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 652
    nop

    .line 653
    return-void

    .line 651
    :catchall_1e
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 652
    throw v0
.end method

.method public updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .registers 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 994
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-nez p1, :cond_9

    goto :goto_1a

    .line 997
    :cond_9
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_14

    .line 998
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 1000
    :cond_14
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->updateEditorInfoAttrs(Landroid/view/inputmethod/EditorInfo;)V

    .line 1001
    return-void

    .line 995
    :cond_1a
    :goto_1a
    return-void
.end method
