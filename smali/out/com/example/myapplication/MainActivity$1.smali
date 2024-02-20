.class Lcom/example/myapplication/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/myapplication/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/myapplication/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/myapplication/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/myapplication/MainActivity;

    .line 44
    iput-object p1, p0, Lcom/example/myapplication/MainActivity$1;->this$0:Lcom/example/myapplication/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 47
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/myapplication/MainActivity$1;->this$0:Lcom/example/myapplication/MainActivity;

    invoke-virtual {v1}, Lcom/example/myapplication/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/myapplication/skill;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/myapplication/MainActivity$1;->this$0:Lcom/example/myapplication/MainActivity;

    invoke-virtual {v1, v0}, Lcom/example/myapplication/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/example/myapplication/MainActivity$1$1;

    invoke-direct {v2, p0}, Lcom/example/myapplication/MainActivity$1$1;-><init>(Lcom/example/myapplication/MainActivity$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 68
    return-void
.end method
