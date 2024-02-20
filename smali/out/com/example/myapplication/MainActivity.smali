.class public Lcom/example/myapplication/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field static i:I


# instance fields
.field hour:I

.field hour1:I

.field hour2:I

.field min:I

.field min1:I

.field min2:I

.field sec:I

.field sec1:I

.field sec2:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/example/myapplication/MainActivity;->i:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/myapplication/MainActivity;->hour:I

    .line 16
    iput v0, p0, Lcom/example/myapplication/MainActivity;->min:I

    .line 18
    iput v0, p0, Lcom/example/myapplication/MainActivity;->sec:I

    .line 20
    iput v0, p0, Lcom/example/myapplication/MainActivity;->hour1:I

    .line 21
    iput v0, p0, Lcom/example/myapplication/MainActivity;->min1:I

    .line 23
    iput v0, p0, Lcom/example/myapplication/MainActivity;->sec1:I

    .line 25
    iput v0, p0, Lcom/example/myapplication/MainActivity;->hour2:I

    .line 26
    iput v0, p0, Lcom/example/myapplication/MainActivity;->min2:I

    .line 28
    iput v0, p0, Lcom/example/myapplication/MainActivity;->sec2:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/example/myapplication/MainActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/example/myapplication/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, "i":Landroid/content/Intent;
    const v1, 0x7f0801a0

    invoke-virtual {p0, v1}, Lcom/example/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 41
    .local v1, "skill":Landroid/widget/Button;
    const v2, 0x7f0800ae

    invoke-virtual {p0, v2}, Lcom/example/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 42
    .local v2, "domain":Landroid/widget/Button;
    const v3, 0x7f080071

    invoke-virtual {p0, v3}, Lcom/example/myapplication/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 44
    .local v3, "certification":Landroid/widget/Button;
    new-instance v4, Lcom/example/myapplication/MainActivity$1;

    invoke-direct {v4, p0}, Lcom/example/myapplication/MainActivity$1;-><init>(Lcom/example/myapplication/MainActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v4, Lcom/example/myapplication/MainActivity$2;

    invoke-direct {v4, p0}, Lcom/example/myapplication/MainActivity$2;-><init>(Lcom/example/myapplication/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v4, Lcom/example/myapplication/MainActivity$3;

    invoke-direct {v4, p0}, Lcom/example/myapplication/MainActivity$3;-><init>(Lcom/example/myapplication/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method public updateText1()V
    .registers 2

    .line 138
    new-instance v0, Lcom/example/myapplication/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/example/myapplication/MainActivity$4;-><init>(Lcom/example/myapplication/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/example/myapplication/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public updateText2()V
    .registers 2

    .line 176
    new-instance v0, Lcom/example/myapplication/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/example/myapplication/MainActivity$5;-><init>(Lcom/example/myapplication/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/example/myapplication/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public updateText3()V
    .registers 2

    .line 209
    new-instance v0, Lcom/example/myapplication/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/example/myapplication/MainActivity$6;-><init>(Lcom/example/myapplication/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/example/myapplication/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method
