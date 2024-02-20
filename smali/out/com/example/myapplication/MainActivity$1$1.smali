.class Lcom/example/myapplication/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/myapplication/MainActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/myapplication/MainActivity$1;


# direct methods
.method constructor <init>(Lcom/example/myapplication/MainActivity$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/example/myapplication/MainActivity$1;

    .line 49
    iput-object p1, p0, Lcom/example/myapplication/MainActivity$1$1;->this$1:Lcom/example/myapplication/MainActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "j":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1b

    .line 56
    :try_start_5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 57
    iget-object v1, p0, Lcom/example/myapplication/MainActivity$1$1;->this$1:Lcom/example/myapplication/MainActivity$1;

    iget-object v1, v1, Lcom/example/myapplication/MainActivity$1;->this$0:Lcom/example/myapplication/MainActivity;

    invoke-virtual {v1}, Lcom/example/myapplication/MainActivity;->updateText3()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_13} :catch_16

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    :catch_16
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1c

    .line 65
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1b
    nop

    .line 66
    :goto_1c
    return-void
.end method
