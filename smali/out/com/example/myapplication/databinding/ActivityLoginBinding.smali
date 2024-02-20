.class public final Lcom/example/myapplication/databinding/ActivityLoginBinding;
.super Ljava/lang/Object;
.source "ActivityLoginBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final loginButton:Landroid/widget/Button;

.field public final loginEmail:Landroid/widget/EditText;

.field public final loginPassword:Landroid/widget/EditText;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final signupRedirectText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .registers 6
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "loginButton"    # Landroid/widget/Button;
    .param p3, "loginEmail"    # Landroid/widget/EditText;
    .param p4, "loginPassword"    # Landroid/widget/EditText;
    .param p5, "signupRedirectText"    # Landroid/widget/TextView;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/example/myapplication/databinding/ActivityLoginBinding;->rootView:Landroid/widget/LinearLayout;

    .line 40
    iput-object p2, p0, Lcom/example/myapplication/databinding/ActivityLoginBinding;->loginButton:Landroid/widget/Button;

    .line 41
    iput-object p3, p0, Lcom/example/myapplication/databinding/ActivityLoginBinding;->loginEmail:Landroid/widget/EditText;

    .line 42
    iput-object p4, p0, Lcom/example/myapplication/databinding/ActivityLoginBinding;->loginPassword:Landroid/widget/EditText;

    .line 43
    iput-object p5, p0, Lcom/example/myapplication/databinding/ActivityLoginBinding;->signupRedirectText:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/myapplication/databinding/ActivityLoginBinding;
    .registers 13
    .param p0, "rootView"    # Landroid/view/View;

    .line 73
    const v0, 0x7f08010a

    .line 74
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 75
    .local v1, "loginButton":Landroid/widget/Button;
    if-eqz v1, :cond_40

    .line 79
    const v0, 0x7f08010b

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    .line 81
    .local v8, "loginEmail":Landroid/widget/EditText;
    if-eqz v8, :cond_3f

    .line 85
    const v0, 0x7f08010c

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    .line 87
    .local v9, "loginPassword":Landroid/widget/EditText;
    if-eqz v9, :cond_3e

    .line 91
    const v0, 0x7f08019a

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 93
    .local v10, "signupRedirectText":Landroid/widget/TextView;
    if-eqz v10, :cond_3d

    .line 97
    new-instance v11, Lcom/example/myapplication/databinding/ActivityLoginBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v11

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/example/myapplication/databinding/ActivityLoginBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-object v11

    .line 94
    :cond_3d
    goto :goto_41

    .line 88
    .end local v10    # "signupRedirectText":Landroid/widget/TextView;
    :cond_3e
    goto :goto_41

    .line 82
    .end local v9    # "loginPassword":Landroid/widget/EditText;
    :cond_3f
    goto :goto_41

    .line 76
    .end local v8    # "loginEmail":Landroid/widget/EditText;
    :cond_40
    nop

    .line 100
    .end local v1    # "loginButton":Landroid/widget/Button;
    :goto_41
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/myapplication/databinding/ActivityLoginBinding;
    .registers 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/myapplication/databinding/ActivityLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/myapplication/databinding/ActivityLoginBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/myapplication/databinding/ActivityLoginBinding;
    .registers 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 60
    const v0, 0x7f0b001c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_d

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_d
    invoke-static {v0}, Lcom/example/myapplication/databinding/ActivityLoginBinding;->bind(Landroid/view/View;)Lcom/example/myapplication/databinding/ActivityLoginBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/example/myapplication/databinding/ActivityLoginBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/example/myapplication/databinding/ActivityLoginBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
