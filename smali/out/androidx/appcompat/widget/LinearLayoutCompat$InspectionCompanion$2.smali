.class Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion$2;
.super Ljava/lang/Object;
.source "LinearLayoutCompat$InspectionCompanion.java"

# interfaces
.implements Ljava/util/function/IntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;->mapProperties(Landroid/view/inspector/PropertyMapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/IntFunction<",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;

    .line 66
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion$2;->this$0:Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(I)Ljava/lang/Object;
    .registers 2

    .line 66
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$InspectionCompanion$2;->apply(I)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)Ljava/util/Set;
    .registers 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 70
    .local v0, "flags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_c

    .line 71
    const-string v1, "none"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_c
    const/4 v1, 0x1

    if-ne p1, v1, :cond_14

    .line 74
    const-string v1, "beginning"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_14
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1c

    .line 77
    const-string v1, "middle"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_1c
    const/4 v1, 0x4

    if-ne p1, v1, :cond_24

    .line 80
    const-string v1, "end"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_24
    return-object v0
.end method
