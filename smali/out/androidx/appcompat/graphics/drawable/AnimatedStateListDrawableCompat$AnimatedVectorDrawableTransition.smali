.class Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;
.super Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatedVectorDrawableTransition"
.end annotation


# instance fields
.field private final mAvd:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;


# direct methods
.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V
    .registers 3
    .param p1, "avd"    # Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$1;)V

    .line 435
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;->mAvd:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 436
    return-void
.end method


# virtual methods
.method public start()V
    .registers 2

    .line 440
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;->mAvd:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    .line 441
    return-void
.end method

.method public stop()V
    .registers 2

    .line 445
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition;->mAvd:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    .line 446
    return-void
.end method
