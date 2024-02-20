.class Lcom/example/myapplication/MainActivity$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/myapplication/MainActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/myapplication/MainActivity$2;


# direct methods
.method constructor <init>(Lcom/example/myapplication/MainActivity$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/example/myapplication/MainActivity$2;

    .line 76
    iput-object p1, p0, Lcom/example/myapplication/MainActivity$2$1;->this$1:Lcom/example/myapplication/MainActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "j":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1a

    .line 83
    :try_start_4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 84
    iget-object v1, p0, Lcom/example/myapplication/MainActivity$2$1;->this$1:Lcom/example/myapplication/MainActivity$2;

    iget-object v1, v1, Lcom/example/myapplication/MainActivity$2;->this$0:Lcom/example/myapplication/MainActivity;

    invoke-virtual {v1}, Lcom/example/myapplication/MainActivity;->updateText2()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_12} :catch_15

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :catch_15
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1b

    .line 91
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1a
    nop

    .line 92
    :goto_1b
    return-void
.end method
