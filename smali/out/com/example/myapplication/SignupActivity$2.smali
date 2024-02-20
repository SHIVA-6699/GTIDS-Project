.class Lcom/example/myapplication/SignupActivity$2;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/myapplication/SignupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/myapplication/SignupActivity;


# direct methods
.method constructor <init>(Lcom/example/myapplication/SignupActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/myapplication/SignupActivity;

    .line 57
    iput-object p1, p0, Lcom/example/myapplication/SignupActivity$2;->this$0:Lcom/example/myapplication/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 60
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/myapplication/SignupActivity$2;->this$0:Lcom/example/myapplication/SignupActivity;

    invoke-virtual {v1}, Lcom/example/myapplication/SignupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/myapplication/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/myapplication/SignupActivity$2;->this$0:Lcom/example/myapplication/SignupActivity;

    invoke-virtual {v1, v0}, Lcom/example/myapplication/SignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method
