.class Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion$1;
.super Ljava/lang/Object;
.source "AppCompatButton$InspectionCompanion.java"

# interfaces
.implements Ljava/util/function/IntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mapProperties(Landroid/view/inspector/PropertyMapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/IntFunction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;

    .line 45
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion$1;->this$0:Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(I)Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion$1;->apply(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # I

    .line 48
    packed-switch p1, :pswitch_data_e

    .line 54
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :pswitch_8
    const-string v0, "uniform"

    return-object v0

    .line 50
    :pswitch_b
    const-string v0, "none"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
