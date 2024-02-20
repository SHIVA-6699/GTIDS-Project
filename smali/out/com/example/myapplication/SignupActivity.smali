.class public Lcom/example/myapplication/SignupActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SignupActivity.java"


# instance fields
.field binding:Lcom/example/myapplication/databinding/ActivitySignupBinding;

.field databaseHelper:Lcom/example/myapplication/DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 19
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/example/myapplication/SignupActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/example/myapplication/databinding/ActivitySignupBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/example/myapplication/databinding/ActivitySignupBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/example/myapplication/SignupActivity;->binding:Lcom/example/myapplication/databinding/ActivitySignupBinding;

    .line 21
    invoke-virtual {v0}, Lcom/example/myapplication/databinding/ActivitySignupBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/example/myapplication/SignupActivity;->setContentView(Landroid/view/View;)V

    .line 23
    new-instance v0, Lcom/example/myapplication/DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/example/myapplication/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/myapplication/SignupActivity;->databaseHelper:Lcom/example/myapplication/DatabaseHelper;

    .line 25
    iget-object v0, p0, Lcom/example/myapplication/SignupActivity;->binding:Lcom/example/myapplication/databinding/ActivitySignupBinding;

    iget-object v0, v0, Lcom/example/myapplication/databinding/ActivitySignupBinding;->signupButton:Landroid/widget/Button;

    new-instance v1, Lcom/example/myapplication/SignupActivity$1;

    invoke-direct {v1, p0}, Lcom/example/myapplication/SignupActivity$1;-><init>(Lcom/example/myapplication/SignupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/example/myapplication/SignupActivity;->binding:Lcom/example/myapplication/databinding/ActivitySignupBinding;

    iget-object v0, v0, Lcom/example/myapplication/databinding/ActivitySignupBinding;->loginRedirectText:Landroid/widget/TextView;

    new-instance v1, Lcom/example/myapplication/SignupActivity$2;

    invoke-direct {v1, p0}, Lcom/example/myapplication/SignupActivity$2;-><init>(Lcom/example/myapplication/SignupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method
