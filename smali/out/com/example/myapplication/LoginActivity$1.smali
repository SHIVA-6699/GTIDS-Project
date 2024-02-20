.class Lcom/example/myapplication/LoginActivity$1;
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

    .line 26
    iput-object p1, p0, Lcom/example/myapplication/LoginActivity$1;->this$0:Lcom/example/myapplication/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/example/myapplication/LoginActivity$1;->this$0:Lcom/example/myapplication/LoginActivity;

    iget-object v0, v0, Lcom/example/myapplication/LoginActivity;->binding:Lcom/example/myapplication/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/example/myapplication/databinding/ActivityLoginBinding;->loginEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "email":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/myapplication/LoginActivity$1;->this$0:Lcom/example/myapplication/LoginActivity;

    iget-object v1, v1, Lcom/example/myapplication/LoginActivity;->binding:Lcom/example/myapplication/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/example/myapplication/databinding/ActivityLoginBinding;->loginPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "password":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_69

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_69

    .line 35
    :cond_2c
    iget-object v2, p0, Lcom/example/myapplication/LoginActivity$1;->this$0:Lcom/example/myapplication/LoginActivity;

    iget-object v2, v2, Lcom/example/myapplication/LoginActivity;->databaseHelper:Lcom/example/myapplication/DatabaseHelper;

    invoke-virtual {v2, v0, v1}, Lcom/example/myapplication/DatabaseHelper;->checkEmailPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 37
    .local v2, "checkCredentials":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5d

    .line 38
    iget-object v3, p0, Lcom/example/myapplication/LoginActivity$1;->this$0:Lcom/example/myapplication/LoginActivity;

    const-string v5, "login successfully"

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 39
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/example/myapplication/LoginActivity$1;->this$0:Lcom/example/myapplication/LoginActivity;

    invoke-virtual {v4}, Lcom/example/myapplication/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/example/myapplication/MainActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/example/myapplication/LoginActivity$1;->this$0:Lcom/example/myapplication/LoginActivity;

    invoke-virtual {v4, v3}, Lcom/example/myapplication/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 41
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_74

    .line 42
    :cond_5d
    iget-object v3, p0, Lcom/example/myapplication/LoginActivity$1;->this$0:Lcom/example/myapplication/LoginActivity;

    const-string v5, "Invalid credentials"

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_74

    .line 33
    .end local v2    # "checkCredentials":Ljava/lang/Boolean;
    :cond_69
    :goto_69
    iget-object v2, p0, Lcom/example/myapplication/LoginActivity$1;->this$0:Lcom/example/myapplication/LoginActivity;

    const-string v3, "all fields are mandatory"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 45
    :goto_74
    return-void
.end method
