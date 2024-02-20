.class public final Landroidx/core/os/PersistableBundleKt;
.super Ljava/lang/Object;
.source "PersistableBundle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a=\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0007\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "persistableBundleOf",
        "Landroid/os/PersistableBundle;",
        "pairs",
        "",
        "Lkotlin/Pair;",
        "",
        "",
        "([Lkotlin/Pair;)Landroid/os/PersistableBundle;",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final varargs persistableBundleOf([Lkotlin/Pair;)Landroid/os/PersistableBundle;
    .registers 12
    .param p0, "pairs"    # [Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/PersistableBundle;"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Landroid/os/PersistableBundle;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(I)V

    move-object v1, v0

    .local v1, "$this$persistableBundleOf_u24lambda_u2d0":Landroid/os/PersistableBundle;
    const/4 v2, 0x0

    .line 32
    .local v2, "$i$a$-apply-PersistableBundleKt$persistableBundleOf$1":I
    array-length v3, p0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_121

    aget-object v5, p0, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    .line 33
    .local v5, "value":Ljava/lang/Object;
    nop

    .line 34
    if-nez v5, :cond_27

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 37
    :cond_27
    instance-of v7, v5, Ljava/lang/Boolean;

    if-eqz v7, :cond_37

    .line 38
    nop

    .line 39
    move-object v7, v5

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_f

    .line 44
    :cond_37
    instance-of v7, v5, Ljava/lang/Double;

    if-eqz v7, :cond_46

    move-object v7, v5

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_f

    .line 45
    :cond_46
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_55

    move-object v7, v5

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_f

    .line 46
    :cond_55
    instance-of v7, v5, Ljava/lang/Long;

    if-eqz v7, :cond_64

    move-object v7, v5

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_f

    .line 49
    :cond_64
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_6f

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 52
    :cond_6f
    instance-of v7, v5, [Z

    if-eqz v7, :cond_7b

    .line 53
    nop

    .line 54
    move-object v7, v5

    check-cast v7, [Z

    invoke-virtual {v1, v6, v7}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_f

    .line 59
    :cond_7b
    instance-of v7, v5, [D

    if-eqz v7, :cond_86

    move-object v7, v5

    check-cast v7, [D

    invoke-virtual {v1, v6, v7}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_f

    .line 60
    :cond_86
    instance-of v7, v5, [I

    if-eqz v7, :cond_92

    move-object v7, v5

    check-cast v7, [I

    invoke-virtual {v1, v6, v7}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_f

    .line 61
    :cond_92
    instance-of v7, v5, [J

    if-eqz v7, :cond_9e

    move-object v7, v5

    check-cast v7, [J

    invoke-virtual {v1, v6, v7}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_f

    .line 64
    :cond_9e
    instance-of v7, v5, [Ljava/lang/Object;

    const/16 v8, 0x22

    const-string v9, " for key \""

    if-eqz v7, :cond_f4

    .line 65
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 67
    .local v7, "componentType":Ljava/lang/Class;
    const-class v10, Ljava/lang/String;

    .line 68
    invoke-virtual {v10, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_cb

    .line 69
    if-eqz v5, :cond_c3

    move-object v8, v5

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v1, v6, v8}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_c3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_cb
    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "valueType":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal value array type "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    .end local v0    # "valueType":Ljava/lang/String;
    .end local v7    # "componentType":Ljava/lang/Class;
    :cond_f4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0    # "valueType":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal value type "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    .end local v0    # "valueType":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "key":Ljava/lang/String;
    :cond_121
    nop

    .line 31
    .end local v1    # "$this$persistableBundleOf_u24lambda_u2d0":Landroid/os/PersistableBundle;
    .end local v2    # "$i$a$-apply-PersistableBundleKt$persistableBundleOf$1":I
    nop

    .line 86
    return-object v0
.end method
