.class public Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;
.super Landroidx/constraintlayout/core/state/helpers/ChainReference;
.source "VerticalChainReference.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .registers 3
    .param p1, "state"    # Landroidx/constraintlayout/core/state/State;

    .line 26
    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/state/helpers/ChainReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    .line 27
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 7

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "first":Landroidx/constraintlayout/core/state/ConstraintReference;
    const/4 v1, 0x0

    .line 32
    .local v1, "previous":Landroidx/constraintlayout/core/state/ConstraintReference;
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 33
    .local v3, "key":Ljava/lang/Object;
    iget-object v4, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    .line 34
    .local v4, "reference":Landroidx/constraintlayout/core/state/ConstraintReference;
    invoke-virtual {v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->clearVertical()Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 35
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "reference":Landroidx/constraintlayout/core/state/ConstraintReference;
    goto :goto_8

    .line 37
    :cond_1c
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 38
    .restart local v3    # "key":Ljava/lang/Object;
    iget-object v4, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    .line 39
    .restart local v4    # "reference":Landroidx/constraintlayout/core/state/ConstraintReference;
    if-nez v0, :cond_4e

    .line 40
    move-object v0, v4

    .line 41
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mTopToTop:Ljava/lang/Object;

    if-eqz v5, :cond_3f

    .line 42
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mTopToTop:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_4e

    .line 43
    :cond_3f
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mTopToBottom:Ljava/lang/Object;

    if-eqz v5, :cond_49

    .line 44
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mTopToBottom:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_4e

    .line 46
    :cond_49
    sget-object v5, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 49
    :cond_4e
    :goto_4e
    if-eqz v1, :cond_5e

    .line 50
    invoke-virtual {v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 51
    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 53
    :cond_5e
    move-object v1, v4

    .line 54
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "reference":Landroidx/constraintlayout/core/state/ConstraintReference;
    goto :goto_22

    .line 56
    :cond_60
    if-eqz v1, :cond_7b

    .line 57
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBottomToTop:Ljava/lang/Object;

    if-eqz v2, :cond_6c

    .line 58
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBottomToTop:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_7b

    .line 59
    :cond_6c
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBottomToBottom:Ljava/lang/Object;

    if-eqz v2, :cond_76

    .line 60
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBottomToBottom:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_7b

    .line 62
    :cond_76
    sget-object v2, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 66
    :cond_7b
    :goto_7b
    if-nez v0, :cond_7e

    .line 67
    return-void

    .line 70
    :cond_7e
    iget v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBias:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_8b

    .line 71
    iget v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBias:F

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->verticalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 74
    :cond_8b
    sget-object v2, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Chain:[I

    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mStyle:Landroidx/constraintlayout/core/state/State$Chain;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/state/State$Chain;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_aa

    goto :goto_a8

    .line 82
    :pswitch_99
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->setVerticalChainStyle(I)V

    goto :goto_a8

    .line 79
    :pswitch_9e
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->setVerticalChainStyle(I)V

    .line 80
    goto :goto_a8

    .line 76
    :pswitch_a3
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->setVerticalChainStyle(I)V

    .line 77
    nop

    .line 85
    :goto_a8
    return-void

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_9e
        :pswitch_99
    .end packed-switch
.end method
