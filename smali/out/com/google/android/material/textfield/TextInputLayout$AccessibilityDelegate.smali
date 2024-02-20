.class public Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field private final layout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 2
    .param p1, "layout"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 4403
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 4404
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4405
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 22
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 4410
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-super/range {p0 .. p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 4411
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 4412
    .local v2, "editText":Landroid/widget/EditText;
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    .line 4413
    .local v3, "inputText":Ljava/lang/CharSequence;
    :goto_15
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    .line 4414
    .local v4, "hintText":Ljava/lang/CharSequence;
    iget-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v5

    .line 4415
    .local v5, "errorText":Ljava/lang/CharSequence;
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getPlaceholderText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 4416
    .local v6, "placeholderText":Ljava/lang/CharSequence;
    iget-object v7, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterMaxLength()I

    move-result v7

    .line 4417
    .local v7, "maxCharLimit":I
    iget-object v8, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterOverflowDescription()Ljava/lang/CharSequence;

    move-result-object v8

    .line 4418
    .local v8, "counterOverflowDesc":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x1

    xor-int/2addr v9, v10

    .line 4419
    .local v9, "showingText":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/2addr v11, v10

    .line 4420
    .local v11, "hasHint":Z
    iget-object v12, v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v12}, Lcom/google/android/material/textfield/TextInputLayout;->isHintExpanded()Z

    move-result v12

    xor-int/2addr v12, v10

    .line 4421
    .local v12, "isHintCollapsed":Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    xor-int/2addr v13, v10

    .line 4422
    .local v13, "showingError":Z
    if-nez v13, :cond_55

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_53

    goto :goto_55

    :cond_53
    const/4 v15, 0x0

    goto :goto_56

    :cond_55
    :goto_55
    move v15, v10

    .line 4424
    .local v15, "contentInvalid":Z
    :goto_56
    if-eqz v11, :cond_5d

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_5f

    :cond_5d
    const-string v16, ""

    :goto_5f
    move-object/from16 v17, v16

    .line 4426
    .local v17, "hint":Ljava/lang/String;
    const-string v10, ", "

    if-eqz v9, :cond_6b

    .line 4427
    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v14, v17

    goto :goto_9a

    .line 4428
    :cond_6b
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_93

    .line 4429
    move-object/from16 v14, v17

    .end local v17    # "hint":Ljava/lang/String;
    .local v14, "hint":Ljava/lang/String;
    invoke-virtual {v1, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 4430
    if-eqz v12, :cond_9a

    if-eqz v6, :cond_9a

    .line 4431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9a

    .line 4433
    .end local v14    # "hint":Ljava/lang/String;
    .restart local v17    # "hint":Ljava/lang/String;
    :cond_93
    move-object/from16 v14, v17

    .end local v17    # "hint":Ljava/lang/String;
    .restart local v14    # "hint":Ljava/lang/String;
    if-eqz v6, :cond_9a

    .line 4434
    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 4437
    :cond_9a
    :goto_9a
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 4438
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v17, v4

    .end local v4    # "hintText":Ljava/lang/CharSequence;
    .local v17, "hintText":Ljava/lang/CharSequence;
    const/16 v4, 0x1a

    if-lt v0, v4, :cond_ac

    .line 4439
    invoke-virtual {v1, v14}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_c8

    .line 4443
    :cond_ac
    if-eqz v9, :cond_c4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c5

    :cond_c4
    move-object v0, v14

    .line 4444
    .local v0, "text":Ljava/lang/String;
    :goto_c5
    invoke-virtual {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 4446
    .end local v0    # "text":Ljava/lang/String;
    :goto_c8
    if-nez v9, :cond_cc

    const/4 v10, 0x1

    goto :goto_cd

    :cond_cc
    const/4 v10, 0x0

    :goto_cd
    invoke-virtual {v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setShowingHintText(Z)V

    goto :goto_d3

    .line 4437
    .end local v17    # "hintText":Ljava/lang/CharSequence;
    .restart local v4    # "hintText":Ljava/lang/CharSequence;
    :cond_d1
    move-object/from16 v17, v4

    .line 4450
    .end local v4    # "hintText":Ljava/lang/CharSequence;
    .restart local v17    # "hintText":Ljava/lang/CharSequence;
    :goto_d3
    if-eqz v3, :cond_dd

    .line 4451
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v7, :cond_dd

    move v0, v7

    goto :goto_de

    :cond_dd
    const/4 v0, -0x1

    .line 4450
    :goto_de
    invoke-virtual {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMaxTextLength(I)V

    .line 4453
    if-eqz v15, :cond_eb

    .line 4454
    if-eqz v13, :cond_e7

    move-object v0, v5

    goto :goto_e8

    :cond_e7
    move-object v0, v8

    :goto_e8
    invoke-virtual {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setError(Ljava/lang/CharSequence;)V

    .line 4457
    :cond_eb
    if-eqz v2, :cond_f2

    .line 4458
    sget v0, Lcom/google/android/material/R$id;->textinput_helper_text:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLabelFor(I)V

    .line 4460
    :cond_f2
    return-void
.end method
