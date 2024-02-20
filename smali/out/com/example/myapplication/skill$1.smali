.class Lcom/example/myapplication/skill$1;
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
.field final synthetic this$0:Lcom/example/myapplication/skill;


# direct methods
.method constructor <init>(Lcom/example/myapplication/skill;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/myapplication/skill;

    .line 26
    iput-object p1, p0, Lcom/example/myapplication/skill$1;->this$0:Lcom/example/myapplication/skill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "https://courseware.cutm.ac.in/categories-courses/skill-courses/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 31
    iget-object v1, p0, Lcom/example/myapplication/skill$1;->this$0:Lcom/example/myapplication/skill;

    invoke-virtual {v1, v0}, Lcom/example/myapplication/skill;->startActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method
