.class public final Landroidx/core/view/LayoutInflaterCompat;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LayoutInflaterCompatHC"

.field private static sCheckedField:Z

.field private static sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method private static forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .registers 8
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .line 72
    sget-boolean v0, Landroidx/core/view/LayoutInflaterCompat;->sCheckedField:Z

    const-string v1, "; inflation may have unexpected results."

    const-string v2, "LayoutInflaterCompatHC"

    if-nez v0, :cond_3a

    .line 74
    const/4 v0, 0x1

    :try_start_9
    const-class v3, Landroid/view/LayoutInflater;

    const-string v4, "mFactory2"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_16} :catch_17

    .line 80
    goto :goto_38

    .line 76
    :catch_17
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/view/LayoutInflater;

    .line 78
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :goto_38
    sput-boolean v0, Landroidx/core/view/LayoutInflaterCompat;->sCheckedField:Z

    .line 83
    :cond_3a
    sget-object v0, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_5d

    .line 85
    :try_start_3e
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_3e .. :try_end_41} :catch_42

    .line 89
    goto :goto_5d

    .line 86
    :catch_42
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_5d
    :goto_5d
    return-void
.end method

.method public static getFactory(Landroid/view/LayoutInflater;)Landroidx/core/view/LayoutInflaterFactory;
    .registers 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 171
    .local v0, "factory":Landroid/view/LayoutInflater$Factory;
    instance-of v1, v0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    if-eqz v1, :cond_e

    .line 172
    move-object v1, v0

    check-cast v1, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    iget-object v1, v1, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Landroidx/core/view/LayoutInflaterFactory;

    return-object v1

    .line 174
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public static setFactory(Landroid/view/LayoutInflater;Landroidx/core/view/LayoutInflaterFactory;)V
    .registers 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "factory"    # Landroidx/core/view/LayoutInflaterFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    nop

    .line 113
    if-eqz p1, :cond_9

    new-instance v0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    invoke-direct {v0, p1}, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;-><init>(Landroidx/core/view/LayoutInflaterFactory;)V

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 129
    return-void
.end method

.method public static setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .registers 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .line 140
    invoke-virtual {p0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 142
    nop

    .line 153
    return-void
.end method
