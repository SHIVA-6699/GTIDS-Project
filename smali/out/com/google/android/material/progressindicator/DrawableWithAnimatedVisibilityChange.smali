.class abstract Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableWithAnimatedVisibilityChange.java"

# interfaces
.implements Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;


# static fields
.field private static final DEFAULT_DRAWABLE_RESTART:Z = false

.field private static final GROW_DURATION:I = 0x1f4

.field private static final GROW_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private animationCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

.field final baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

.field final context:Landroid/content/Context;

.field private growFraction:F

.field private hideAnimator:Landroid/animation/ValueAnimator;

.field private ignoreCallbacks:Z

.field private internalAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private mockGrowFraction:F

.field private mockHideAnimationRunning:Z

.field private mockShowAnimationRunning:Z

.field final paint:Landroid/graphics/Paint;

.field private showAnimator:Landroid/animation/ValueAnimator;

.field private totalAlpha:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 423
    new-instance v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$3;

    const-class v1, Ljava/lang/Float;

    const-string v2, "growFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->GROW_FRACTION:Landroid/util/Property;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseSpec"    # Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 83
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->paint:Landroid/graphics/Paint;

    .line 84
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->context:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 86
    new-instance v0, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    invoke-direct {v0}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 88
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setAlpha(I)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->dispatchAnimationStart()V

    return-void
.end method

.method static synthetic access$101(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;ZZ)Z
    .registers 4
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 42
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->dispatchAnimationEnd()V

    return-void
.end method

.method private dispatchAnimationEnd()V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->internalAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    if-eqz v0, :cond_7

    .line 179
    invoke-virtual {v0, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    if-eqz v0, :cond_23

    iget-boolean v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    if-nez v1, :cond_23

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 183
    .local v1, "callback":Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
    invoke-virtual {v1, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 184
    .end local v1    # "callback":Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
    goto :goto_13

    .line 186
    :cond_23
    return-void
.end method

.method private dispatchAnimationStart()V
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->internalAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    if-eqz v0, :cond_7

    .line 167
    invoke-virtual {v0, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 169
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    if-eqz v0, :cond_23

    iget-boolean v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    if-nez v1, :cond_23

    .line 170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 171
    .local v1, "callback":Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
    invoke-virtual {v1, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 172
    .end local v1    # "callback":Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
    goto :goto_13

    .line 174
    :cond_23
    return-void
.end method

.method private varargs endAnimatorWithoutCallbacks([Landroid/animation/ValueAnimator;)V
    .registers 6
    .param p1, "animators"    # [Landroid/animation/ValueAnimator;

    .line 298
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    .line 299
    .local v0, "ignoreCallbacksOrig":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    .line 300
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p1, v2

    .line 301
    .local v3, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    .line 300
    .end local v3    # "animator":Landroid/animation/ValueAnimator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 303
    :cond_11
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->ignoreCallbacks:Z

    .line 304
    return-void
.end method

.method private maybeInitializeAnimators()V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x2

    if-nez v0, :cond_23

    .line 95
    sget-object v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->GROW_FRACTION:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_44

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 97
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setShowAnimator(Landroid/animation/ValueAnimator;)V

    .line 100
    :cond_23
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_43

    .line 101
    sget-object v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->GROW_FRACTION:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_4c

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 103
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setHideAnimator(Landroid/animation/ValueAnimator;)V

    .line 106
    :cond_43
    return-void

    :array_44
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private setHideAnimator(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "hideAnimator"    # Landroid/animation/ValueAnimator;

    .line 367
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 368
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set hideAnimator while the current hideAnimator is running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_13
    :goto_13
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    .line 375
    new-instance v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$2;-><init>(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 386
    return-void
.end method

.method private setShowAnimator(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "showAnimator"    # Landroid/animation/ValueAnimator;

    .line 337
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 338
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set showAnimator while the current showAnimator is running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_13
    :goto_13
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    .line 344
    new-instance v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$1;-><init>(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 353
    return-void
.end method


# virtual methods
.method public clearAnimationCallbacks()V
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    .line 153
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 316
    iget v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    return v0
.end method

.method getGrowFraction()F
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->isShowAnimationEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->isHideAnimationEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 391
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 394
    :cond_13
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockHideAnimationRunning:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockShowAnimationRunning:Z

    if-eqz v0, :cond_1c

    goto :goto_1f

    .line 397
    :cond_1c
    iget v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->growFraction:F

    return v0

    .line 395
    :cond_1f
    :goto_1f
    iget v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockGrowFraction:F

    return v0
.end method

.method getHideAnimator()Landroid/animation/ValueAnimator;
    .registers 2

    .line 357
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    .line 327
    const/4 v0, -0x3

    return v0
.end method

.method public hideNow()Z
    .registers 2

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    move-result v0

    return v0
.end method

.method public isHiding()Z
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockHideAnimationRunning:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 204
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isShowing()Z
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockShowAnimationRunning:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .registers 3
    .param p1, "callback"    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 122
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    if-nez v0, :cond_b

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    .line 125
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 126
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_18
    return-void
.end method

.method public setAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .line 310
    iput p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    .line 311
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->invalidateSelf()V

    .line 312
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 321
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 322
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->invalidateSelf()V

    .line 323
    return-void
.end method

.method setGrowFraction(F)V
    .registers 3
    .param p1, "growFraction"    # F

    .line 401
    iget v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->growFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 402
    iput p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->growFraction:F

    .line 403
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->invalidateSelf()V

    .line 405
    :cond_b
    return-void
.end method

.method setInternalAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .registers 2
    .param p1, "callback"    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 161
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->internalAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 162
    return-void
.end method

.method setMockHideAnimationRunning(ZF)V
    .registers 3
    .param p1, "running"    # Z
    .param p2, "fraction"    # F

    .line 417
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockHideAnimationRunning:Z

    .line 418
    iput p2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockGrowFraction:F

    .line 419
    return-void
.end method

.method setMockShowAnimationRunning(ZF)V
    .registers 3
    .param p1, "running"    # Z
    .param p2, "fraction"    # F

    .line 410
    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockShowAnimationRunning:Z

    .line 411
    iput p2, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->mockGrowFraction:F

    .line 412
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    move-result v0

    return v0
.end method

.method public setVisible(ZZZ)Z
    .registers 6
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z
    .param p3, "animate"    # Z

    .line 236
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->context:Landroid/content/Context;

    .line 237
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->getSystemAnimatorDurationScale(Landroid/content/ContentResolver;)F

    move-result v0

    .line 240
    .local v0, "systemAnimatorDurationScale":F
    if-eqz p3, :cond_15

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisibleInternal(ZZZ)Z

    move-result v1

    return v1
.end method

.method setVisibleInternal(ZZZ)Z
    .registers 9
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z
    .param p3, "animate"    # Z

    .line 253
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->maybeInitializeAnimators()V

    .line 254
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    .line 256
    return v1

    .line 259
    :cond_d
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    goto :goto_14

    :cond_12
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    .line 261
    .local v0, "animatorInAction":Landroid/animation/ValueAnimator;
    :goto_14
    const/4 v2, 0x1

    if-nez p3, :cond_2d

    .line 262
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 263
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_28

    .line 266
    :cond_21
    new-array v2, v2, [Landroid/animation/ValueAnimator;

    aput-object v0, v2, v1

    invoke-direct {p0, v2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->endAnimatorWithoutCallbacks([Landroid/animation/ValueAnimator;)V

    .line 269
    :goto_28
    invoke-super {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    return v1

    .line 272
    :cond_2d
    if-eqz p3, :cond_36

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 274
    return v1

    .line 279
    :cond_36
    if-eqz p1, :cond_41

    invoke-super {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_41

    :cond_3f
    move v3, v1

    goto :goto_42

    :cond_41
    :goto_41
    move v3, v2

    .line 280
    .local v3, "changed":Z
    :goto_42
    if-eqz p1, :cond_4b

    iget-object v4, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 281
    invoke-virtual {v4}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->isShowAnimationEnabled()Z

    move-result v4

    goto :goto_51

    :cond_4b
    iget-object v4, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    invoke-virtual {v4}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->isHideAnimationEnabled()Z

    move-result v4

    .line 282
    .local v4, "specAnimationEnabled":Z
    :goto_51
    if-nez v4, :cond_5b

    .line 284
    new-array v2, v2, [Landroid/animation/ValueAnimator;

    aput-object v0, v2, v1

    invoke-direct {p0, v2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->endAnimatorWithoutCallbacks([Landroid/animation/ValueAnimator;)V

    .line 285
    return v3

    .line 288
    :cond_5b
    if-nez p2, :cond_68

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v1

    if-nez v1, :cond_64

    goto :goto_68

    .line 292
    :cond_64
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_6b

    .line 290
    :cond_68
    :goto_68
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 294
    :goto_6b
    return v3
.end method

.method public start()V
    .registers 3

    .line 193
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisibleInternal(ZZZ)Z

    .line 194
    return-void
.end method

.method public stop()V
    .registers 3

    .line 199
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisibleInternal(ZZZ)Z

    .line 200
    return-void
.end method

.method public unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .registers 3
    .param p1, "callback"    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 138
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    if-eqz v0, :cond_1c

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 139
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->animationCallbacks:Ljava/util/List;

    .line 143
    :cond_1a
    const/4 v0, 0x1

    return v0

    .line 145
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method
