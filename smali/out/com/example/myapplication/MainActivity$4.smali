.class Lcom/example/myapplication/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/myapplication/MainActivity;->updateText1()V
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

    .line 138
    iput-object p1, p0, Lcom/example/myapplication/MainActivity$4;->this$0:Lcom/example/myapplication/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$4;->this$0:Lcom/example/myapplication/MainActivity;

    iget v0, v0, Lcom/example/myapplication/MainActivity;->sec:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_10

    .line 147
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$4;->this$0:Lcom/example/myapplication/MainActivity;

    iget v1, v0, Lcom/example/myapplication/MainActivity;->sec:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/example/myapplication/MainActivity;->sec:I

    .line 149
    :cond_10
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$4;->this$0:Lcom/example/myapplication/MainActivity;

    iget v0, v0, Lcom/example/myapplication/MainActivity;->sec:I

    const/16 v1, 0x3b

    const/4 v2, 0x0

    if-ne v0, v1, :cond_25

    .line 150
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$4;->this$0:Lcom/example/myapplication/MainActivity;

    iget v3, v0, Lcom/example/myapplication/MainActivity;->min:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/example/myapplication/MainActivity;->min:I

    .line 151
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$4;->this$0:Lcom/example/myapplication/MainActivity;

    iput v2, v0, Lcom/example/myapplication/MainActivity;->sec:I

    .line 153
    :cond_25
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$4;->this$0:Lcom/example/myapplication/MainActivity;

    iget v0, v0, Lcom/example/myapplication/MainActivity;->min:I

    if-le v0, v1, :cond_3b

    .line 154
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$4;->this$0:Lcom/example/myapplication/MainActivity;

    iget v1, v0, Lcom/example/myapplication/MainActivity;->hour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/example/myapplication/MainActivity;->hour:I

    .line 155
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$4;->this$0:Lcom/example/myapplication/MainActivity;

    iput v2, v0, Lcom/example/myapplication/MainActivity;->min:I

    .line 156
    iget-object v0, p0, Lcom/example/myapplication/MainActivity$4;->this$0:Lcom/example/myapplication/MainActivity;

    iput v2, v0, Lcom/example/myapplication/MainActivity;->sec:I

    .line 158
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/example/myapplication/MainActivity$4;->this$0:Lcom/example/myapplication/MainActivity;

    iget v1, v1, Lcom/example/myapplication/MainActivity;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/example/myapplication/MainActivity$4;->this$0:Lcom/example/myapplication/MainActivity;

    iget v2, v2, Lcom/example/myapplication/MainActivity;->min:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/example/myapplication/MainActivity$4;->this$0:Lcom/example/myapplication/MainActivity;

    iget v1, v1, Lcom/example/myapplication/MainActivity;->sec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    return-void
.end method
