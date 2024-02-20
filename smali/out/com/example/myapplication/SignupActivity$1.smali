.class Lcom/example/myapplication/SignupActivity$1;
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

    .line 25
    iput-object p1, p0, Lcom/example/myapplication/SignupActivity$1;->this$0:Lcom/example/myapplication/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/example/myapplication/SignupActivity$1;->this$0:Lcom/example/myapplication/SignupActivity;

    iget-object v0, v0, Lcom/example/myapplication/SignupActivity;->binding:Lcom/example/myapplication/databinding/ActivitySignupBinding;

    iget-object v0, v0, Lcom/example/myapplication/databinding/ActivitySignupBinding;->signupEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "email":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/myapplication/SignupActivity$1;->this$0:Lcom/example/myapplication/SignupActivity;

    iget-object v1, v1, Lcom/example/myapplication/SignupActivity;->binding:Lcom/example/myapplication/databinding/ActivitySignupBinding;

    iget-object v1, v1, Lcom/example/myapplication/databinding/ActivitySignupBinding;->signupPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "password":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/myapplication/SignupActivity$1;->this$0:Lcom/example/myapplication/SignupActivity;

    iget-object v2, v2, Lcom/example/myapplication/SignupActivity;->binding:Lcom/example/myapplication/databinding/ActivitySignupBinding;

    iget-object v2, v2, Lcom/example/myapplication/databinding/ActivitySignupBinding;->signupConfirm:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "confirmPassword":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_a9

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a9

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_a9

    .line 35
    :cond_40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 36
    iget-object v3, p0, Lcom/example/myapplication/SignupActivity$1;->this$0:Lcom/example/myapplication/SignupActivity;

    iget-object v3, v3, Lcom/example/myapplication/SignupActivity;->databaseHelper:Lcom/example/myapplication/DatabaseHelper;

    invoke-virtual {v3, v0}, Lcom/example/myapplication/DatabaseHelper;->checkEmail(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 38
    .local v3, "checkUserEmail":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_91

    .line 39
    iget-object v4, p0, Lcom/example/myapplication/SignupActivity$1;->this$0:Lcom/example/myapplication/SignupActivity;

    iget-object v4, v4, Lcom/example/myapplication/SignupActivity;->databaseHelper:Lcom/example/myapplication/DatabaseHelper;

    invoke-virtual {v4, v0, v1}, Lcom/example/myapplication/DatabaseHelper;->insertData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 41
    .local v4, "insert":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_85

    .line 42
    iget-object v6, p0, Lcom/example/myapplication/SignupActivity$1;->this$0:Lcom/example/myapplication/SignupActivity;

    const-string v7, "Signup Successfully"

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 43
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/example/myapplication/SignupActivity$1;->this$0:Lcom/example/myapplication/SignupActivity;

    invoke-virtual {v6}, Lcom/example/myapplication/SignupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/example/myapplication/LoginActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/example/myapplication/SignupActivity$1;->this$0:Lcom/example/myapplication/SignupActivity;

    invoke-virtual {v6, v5}, Lcom/example/myapplication/SignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    .end local v5    # "intent":Landroid/content/Intent;
    goto :goto_90

    .line 46
    :cond_85
    iget-object v6, p0, Lcom/example/myapplication/SignupActivity$1;->this$0:Lcom/example/myapplication/SignupActivity;

    const-string v7, "Signup Failed"

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 48
    .end local v4    # "insert":Ljava/lang/Boolean;
    :goto_90
    goto :goto_9c

    .line 49
    :cond_91
    iget-object v4, p0, Lcom/example/myapplication/SignupActivity$1;->this$0:Lcom/example/myapplication/SignupActivity;

    const-string v6, "user already exists,please login"

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 51
    .end local v3    # "checkUserEmail":Ljava/lang/Boolean;
    :goto_9c
    goto :goto_b4

    .line 52
    :cond_9d
    iget-object v3, p0, Lcom/example/myapplication/SignupActivity$1;->this$0:Lcom/example/myapplication/SignupActivity;

    const-string v4, "Invalid password"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_b4

    .line 33
    :cond_a9
    :goto_a9
    iget-object v3, p0, Lcom/example/myapplication/SignupActivity$1;->this$0:Lcom/example/myapplication/SignupActivity;

    const-string v4, "all fields are mandatary"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 55
    :goto_b4
    return-void
.end method
