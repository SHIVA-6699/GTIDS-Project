.class Lcom/example/myapplication/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/myapplication/MainActivity;->updateText2()V
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

    .line 176
    iput-object p1, p0, Lcom/example/myapplication/MainActivity$5;->this$0:Lcom/example/myapplication/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 183
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$5;->this$0:Lcom/example/myapplication/MainActivity;

    iget v0, v0, Lcom/example/myapplication/MainActivity;->sec1:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_10

    .line 185
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$5;->this$0:Lcom/example/myapplication/MainActivity;

    iget v1, v0, Lcom/example/myapplication/MainActivity;->sec1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/example/myapplication/MainActivity;->sec1:I

    .line 187
    :cond_10
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$5;->this$0:Lcom/example/myapplication/MainActivity;

    iget v0, v0, Lcom/example/myapplication/MainActivity;->sec1:I

    const/16 v1, 0x3b

    const/4 v2, 0x0

    if-ne v0, v1, :cond_25

    .line 188
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$5;->this$0:Lcom/example/myapplication/MainActivity;

    iget v3, v0, Lcom/example/myapplication/MainActivity;->min1:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/example/myapplication/MainActivity;->min1:I

    .line 189
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$5;->this$0:Lcom/example/myapplication/MainActivity;

    iput v2, v0, Lcom/example/myapplication/MainActivity;->sec1:I

    .line 191
    :cond_25
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$5;->this$0:Lcom/example/myapplication/MainActivity;

    iget v0, v0, Lcom/example/myapplication/MainActivity;->min1:I

    if-le v0, v1, :cond_3b

    .line 192
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$5;->this$0:Lcom/example/myapplication/MainActivity;

    iget v1, v0, Lcom/example/myapplication/MainActivity;->hour1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/example/myapplication/MainActivity;->hour1:I

    .line 193
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$5;->this$0:Lcom/example/myapplication/MainActivity;

    iput v2, v0, Lcom/example/myapplication/MainActivity;->min1:I

    .line 194
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$5;->this$0:Lcom/example/myapplication/MainActivity;

    iput v2, v0, Lcom/example/myapplication/MainActivity;->sec1:I

    .line 196
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/example/myapplication/MainActivity$5;->this$0:Lcom/example/myapplication/MainActivity;

    iget v1, v1, Lcom/example/myapplication/MainActivity;->hour1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/example/myapplication/MainActivity$5;->this$0:Lcom/example/myapplication/MainActivity;

    iget v3, v3, Lcom/example/myapplication/MainActivity;->min1:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/example/myapplication/MainActivity$5;->this$0:Lcom/example/myapplication/MainActivity;

    iget v1, v1, Lcom/example/myapplication/MainActivity;->sec1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/myapplication/MainActivity$5;->this$0:Lcom/example/myapplication/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Domain Time :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 200
    return-void
.end method
