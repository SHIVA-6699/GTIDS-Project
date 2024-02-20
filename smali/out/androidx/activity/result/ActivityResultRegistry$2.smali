.class Landroidx/activity/result/ActivityResultRegistry$2;
.super Landroidx/activity/result/ActivityResultLauncher;
.source "ActivityResultRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/ActivityResultLauncher<",
        "TI;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/activity/result/ActivityResultRegistry;

.field final synthetic val$contract:Landroidx/activity/result/contract/ActivityResultContract;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;ILandroidx/activity/result/contract/ActivityResultContract;)V
    .registers 5
    .param p1, "this$0"    # Landroidx/activity/result/ActivityResultRegistry;

    .line 162
    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$2;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$2;->val$key:Ljava/lang/String;

    iput p3, p0, Landroidx/activity/result/ActivityResultRegistry$2;->val$requestCode:I

    iput-object p4, p0, Landroidx/activity/result/ActivityResultRegistry$2;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    invoke-direct {p0}, Landroidx/activity/result/ActivityResultLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method public getContract()Landroidx/activity/result/contract/ActivityResultContract;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;*>;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$2;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    return-object v0
.end method

.method public launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    .registers 7
    .param p2, "options"    # Landroidx/core/app/ActivityOptionsCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Landroidx/core/app/ActivityOptionsCompat;",
            ")V"
        }
    .end annotation

    .line 165
    .local p1, "input":Ljava/lang/Object;, "TI;"
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$2;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object v0, v0, Landroidx/activity/result/ActivityResultRegistry;->mLaunchedKeys:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$2;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object v0, v0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToRc:Ljava/util/Map;

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$2;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 167
    .local v0, "innerCode":Ljava/lang/Integer;
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$2;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_20

    :cond_1e
    iget v2, p0, Landroidx/activity/result/ActivityResultRegistry$2;->val$requestCode:I

    :goto_20
    iget-object v3, p0, Landroidx/activity/result/ActivityResultRegistry$2;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    invoke-virtual {v1, v2, v3, p1, p2}, Landroidx/activity/result/ActivityResultRegistry;->onLaunch(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V

    .line 168
    return-void
.end method

.method public unregister()V
    .registers 3

    .line 172
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$2;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->unregister(Ljava/lang/String;)V

    .line 173
    return-void
.end method
