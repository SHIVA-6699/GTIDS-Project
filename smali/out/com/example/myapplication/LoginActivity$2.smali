.class Lcom/example/myapplication/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/myapplication/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/myapplication/LoginActivity;


# direct methods
.method constructor <init>(Lcom/example/myapplication/LoginActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/myapplication/LoginActivity;

    .line 47
    iput-object p1, p0, Lcom/example/myapplication/LoginActivity$2;->this$0:Lcom/example/myapplication/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 50
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/myapplication/LoginActivity$2;->this$0:Lcom/example/myapplication/LoginActivity;

    const-class v2, Lcom/example/myapplication/SignupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/myapplication/LoginActivity$2;->this$0:Lcom/example/myapplication/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/example/myapplication/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method
