.class Lcom/example/myapplication/skill$5;
.super Ljava/lang/Object;
.source "skill.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/myapplication/skill;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field difference:J

.field startTime:J

.field final synthetic this$0:Lcom/example/myapplication/skill;


# direct methods
.method constructor <init>(Lcom/example/myapplication/skill;)V
    .registers 6
    .param p1, "this$0"    # Lcom/example/myapplication/skill;

    .line 89
    iput-object p1, p0, Lcom/example/myapplication/skill$5;->this$0:Lcom/example/myapplication/skill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/myapplication/skill$5;->count:I

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/example/myapplication/skill$5;->startTime:J

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/example/myapplication/skill$5;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/myapplication/skill$5;->difference:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "i":Landroid/content/Intent;
    iget v1, p0, Lcom/example/myapplication/skill$5;->count:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/example/myapplication/skill$5;->count:I

    .line 97
    iget-object v1, p0, Lcom/example/myapplication/skill$5;->this$0:Lcom/example/myapplication/skill;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clicked on Desktop Publishing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/example/myapplication/skill$5;->count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 98
    iget-object v1, p0, Lcom/example/myapplication/skill$5;->this$0:Lcom/example/myapplication/skill;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time spent on Desktop Publishing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/example/myapplication/skill$5;->difference:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 99
    const-string v1, "https://courseware.cutm.ac.in/courses/digital-publishing-2/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/example/myapplication/skill$5;->this$0:Lcom/example/myapplication/skill;

    invoke-virtual {v1, v0}, Lcom/example/myapplication/skill;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method
