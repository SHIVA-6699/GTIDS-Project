.class public final Lcom/example/myapplication/databinding/ActivitySignupBinding;
.super Ljava/lang/Object;
.source "ActivitySignupBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final loginRedirectText:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/ScrollView;

.field public final signupButton:Landroid/widget/Button;

.field public final signupConfirm:Landroid/widget/EditText;

.field public final signupEmail:Landroid/widget/EditText;

.field public final signupPassword:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 7
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "loginRedirectText"    # Landroid/widget/TextView;
    .param p3, "signupButton"    # Landroid/widget/Button;
    .param p4, "signupConfirm"    # Landroid/widget/EditText;
    .param p5, "signupEmail"    # Landroid/widget/EditText;
    .param p6, "signupPassword"    # Landroid/widget/EditText;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/example/myapplication/databinding/ActivitySignupBinding;->rootView:Landroid/widget/ScrollView;

    .line 43
    iput-object p2, p0, Lcom/example/myapplication/databinding/ActivitySignupBinding;->loginRedirectText:Landroid/widget/TextView;

    .line 44
    iput-object p3, p0, Lcom/example/myapplication/databinding/ActivitySignupBinding;->signupButton:Landroid/widget/Button;

    .line 45
    iput-object p4, p0, Lcom/example/myapplication/databinding/ActivitySignupBinding;->signupConfirm:Landroid/widget/EditText;

    .line 46
    iput-object p5, p0, Lcom/example/myapplication/databinding/ActivitySignupBinding;->signupEmail:Landroid/widget/EditText;

    .line 47
    iput-object p6, p0, Lcom/example/myapplication/databinding/ActivitySignupBinding;->signupPassword:Landroid/widget/EditText;

    .line 48
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/myapplication/databinding/ActivitySignupBinding;
    .registers 15
    .param p0, "rootView"    # Landroid/view/View;

    .line 77
    const v0, 0x7f080109

    .line 78
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    .local v1, "loginRedirectText":Landroid/widget/TextView;
    if-eqz v1, :cond_4e

    .line 83
    const v0, 0x7f08019b

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    .line 85
    .local v9, "signupButton":Landroid/widget/Button;
    if-eqz v9, :cond_4d

    .line 89
    const v0, 0x7f08019c

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/EditText;

    .line 91
    .local v10, "signupConfirm":Landroid/widget/EditText;
    if-eqz v10, :cond_4c

    .line 95
    const v0, 0x7f08019d

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/EditText;

    .line 97
    .local v11, "signupEmail":Landroid/widget/EditText;
    if-eqz v11, :cond_4b

    .line 101
    const v0, 0x7f08019e

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/EditText;

    .line 103
    .local v12, "signupPassword":Landroid/widget/EditText;
    if-eqz v12, :cond_4a

    .line 107
    new-instance v13, Lcom/example/myapplication/databinding/ActivitySignupBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v13

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/example/myapplication/databinding/ActivitySignupBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    return-object v13

    .line 104
    :cond_4a
    goto :goto_4f

    .line 98
    .end local v12    # "signupPassword":Landroid/widget/EditText;
    :cond_4b
    goto :goto_4f

    .line 92
    .end local v11    # "signupEmail":Landroid/widget/EditText;
    :cond_4c
    goto :goto_4f

    .line 86
    .end local v10    # "signupConfirm":Landroid/widget/EditText;
    :cond_4d
    goto :goto_4f

    .line 80
    .end local v9    # "signupButton":Landroid/widget/Button;
    :cond_4e
    nop

    .line 110
    .end local v1    # "loginRedirectText":Landroid/widget/TextView;
    :goto_4f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/myapplication/databinding/ActivitySignupBinding;
    .registers 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/example/myapplication/databinding/ActivitySignupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/myapplication/databinding/ActivitySignupBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/myapplication/databinding/ActivitySignupBinding;
    .registers 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 64
    const v0, 0x7f0b001e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_d

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_d
    invoke-static {v0}, Lcom/example/myapplication/databinding/ActivitySignupBinding;->bind(Landroid/view/View;)Lcom/example/myapplication/databinding/ActivitySignupBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/example/myapplication/databinding/ActivitySignupBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/example/myapplication/databinding/ActivitySignupBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
