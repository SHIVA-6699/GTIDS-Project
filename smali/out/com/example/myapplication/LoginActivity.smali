.class public Lcom/example/myapplication/LoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoginActivity.java"


# instance fields
.field binding:Lcom/example/myapplication/databinding/ActivityLoginBinding;

.field databaseHelper:Lcom/example/myapplication/DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 20
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/example/myapplication/LoginActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/example/myapplication/databinding/ActivityLoginBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/example/myapplication/databinding/ActivityLoginBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/example/myapplication/LoginActivity;->binding:Lcom/example/myapplication/databinding/ActivityLoginBinding;

    .line 22
    invoke-virtual {v0}, Lcom/example/myapplication/databinding/ActivityLoginBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/example/myapplication/LoginActivity;->setContentView(Landroid/view/View;)V

    .line 24
    new-instance v0, Lcom/example/myapplication/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/example/myapplication/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/myapplication/LoginActivity;->databaseHelper:Lcom/example/myapplication/DatabaseHelper;

    .line 26
    iget-object v0, p0, Lcom/example/myapplication/LoginActivity;->binding:Lcom/example/myapplication/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/example/myapplication/databinding/ActivityLoginBinding;->loginButton:Landroid/widget/Button;

    new-instance v1, Lcom/example/myapplication/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/example/myapplication/LoginActivity$1;-><init>(Lcom/example/myapplication/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/example/myapplication/LoginActivity;->binding:Lcom/example/myapplication/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/example/myapplication/databinding/ActivityLoginBinding;->signupRedirectText:Landroid/widget/TextView;

    new-instance v1, Lcom/example/myapplication/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/example/myapplication/LoginActivity$2;-><init>(Lcom/example/myapplication/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method
