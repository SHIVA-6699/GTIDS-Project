.class Landroidx/constraintlayout/motion/widget/ViewTransition$1;
.super Ljava/lang/Object;
.source "ViewTransition.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/motion/widget/ViewTransition;->getInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/motion/widget/ViewTransition;

.field final synthetic val$easing:Landroidx/constraintlayout/core/motion/utils/Easing;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/ViewTransition;Landroidx/constraintlayout/core/motion/utils/Easing;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/constraintlayout/motion/widget/ViewTransition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$easing"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransition;

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$1;->val$easing:Landroidx/constraintlayout/core/motion/utils/Easing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$1;->val$easing:Landroidx/constraintlayout/core/motion/utils/Easing;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
