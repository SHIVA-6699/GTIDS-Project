.class public Lcom/example/myapplication/skill;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "skill.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 40
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 18
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v1, 0x7f0b0068

    invoke-virtual {v0, v1}, Lcom/example/myapplication/skill;->setContentView(I)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/example/myapplication/skill;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 24
    .local v1, "i":Landroid/content/Intent;
    const v2, 0x7f080093

    invoke-virtual {v0, v2}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 26
    .local v2, "btn":Landroid/widget/Button;
    new-instance v3, Lcom/example/myapplication/skill$1;

    invoke-direct {v3, v0}, Lcom/example/myapplication/skill$1;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v3, 0x7f080047

    invoke-virtual {v0, v3}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 37
    .local v3, "btn1":Landroid/widget/Button;
    new-instance v4, Lcom/example/myapplication/skill$2;

    invoke-direct {v4, v0}, Lcom/example/myapplication/skill$2;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v4, 0x7f080048

    invoke-virtual {v0, v4}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 54
    .local v4, "btn2":Landroid/widget/Button;
    new-instance v5, Lcom/example/myapplication/skill$3;

    invoke-direct {v5, v0}, Lcom/example/myapplication/skill$3;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v5, 0x7f080084

    invoke-virtual {v0, v5}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 71
    .local v5, "btn3":Landroid/widget/Button;
    new-instance v6, Lcom/example/myapplication/skill$4;

    invoke-direct {v6, v0}, Lcom/example/myapplication/skill$4;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v6, 0x7f0800b9

    invoke-virtual {v0, v6}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 89
    .local v6, "btn4":Landroid/widget/Button;
    new-instance v7, Lcom/example/myapplication/skill$5;

    invoke-direct {v7, v0}, Lcom/example/myapplication/skill$5;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v7, 0x7f0800c4

    invoke-virtual {v0, v7}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 107
    .local v7, "btn5":Landroid/widget/Button;
    new-instance v8, Lcom/example/myapplication/skill$6;

    invoke-direct {v8, v0}, Lcom/example/myapplication/skill$6;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v8, 0x7f080151

    invoke-virtual {v0, v8}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 125
    .local v8, "btn6":Landroid/widget/Button;
    new-instance v9, Lcom/example/myapplication/skill$7;

    invoke-direct {v9, v0}, Lcom/example/myapplication/skill$7;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v9, 0x7f080171

    invoke-virtual {v0, v9}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 143
    .local v9, "btn7":Landroid/widget/Button;
    new-instance v10, Lcom/example/myapplication/skill$8;

    invoke-direct {v10, v0}, Lcom/example/myapplication/skill$8;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v10, 0x7f0800ff

    invoke-virtual {v0, v10}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 161
    .local v10, "btn8":Landroid/widget/Button;
    new-instance v11, Lcom/example/myapplication/skill$9;

    invoke-direct {v11, v0}, Lcom/example/myapplication/skill$9;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v11, 0x7f0800e8

    invoke-virtual {v0, v11}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 179
    .local v11, "btn9":Landroid/widget/Button;
    new-instance v12, Lcom/example/myapplication/skill$10;

    invoke-direct {v12, v0}, Lcom/example/myapplication/skill$10;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v12, 0x7f08006a

    invoke-virtual {v0, v12}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 197
    .local v12, "btn10":Landroid/widget/Button;
    new-instance v13, Lcom/example/myapplication/skill$11;

    invoke-direct {v13, v0}, Lcom/example/myapplication/skill$11;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v13, 0x7f0800b7

    invoke-virtual {v0, v13}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 215
    .local v13, "btn11":Landroid/widget/Button;
    new-instance v14, Lcom/example/myapplication/skill$12;

    invoke-direct {v14, v0}, Lcom/example/myapplication/skill$12;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    const v14, 0x7f08005c

    invoke-virtual {v0, v14}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 233
    .local v14, "btn12":Landroid/widget/Button;
    new-instance v15, Lcom/example/myapplication/skill$13;

    invoke-direct {v15, v0}, Lcom/example/myapplication/skill$13;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    const v15, 0x7f0800c9

    invoke-virtual {v0, v15}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 251
    .local v15, "btn13":Landroid/widget/Button;
    move-object/from16 v16, v1

    .end local v1    # "i":Landroid/content/Intent;
    .local v16, "i":Landroid/content/Intent;
    new-instance v1, Lcom/example/myapplication/skill$14;

    invoke-direct {v1, v0}, Lcom/example/myapplication/skill$14;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v15, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 269
    .local v1, "btn14":Landroid/widget/Button;
    move-object/from16 v17, v2

    .end local v2    # "btn":Landroid/widget/Button;
    .local v17, "btn":Landroid/widget/Button;
    new-instance v2, Lcom/example/myapplication/skill$15;

    invoke-direct {v2, v0}, Lcom/example/myapplication/skill$15;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    const v2, 0x7f0800e1

    invoke-virtual {v0, v2}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 287
    .local v2, "btn15":Landroid/widget/Button;
    move-object/from16 v18, v1

    .end local v1    # "btn14":Landroid/widget/Button;
    .local v18, "btn14":Landroid/widget/Button;
    new-instance v1, Lcom/example/myapplication/skill$16;

    invoke-direct {v1, v0}, Lcom/example/myapplication/skill$16;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 305
    .local v1, "btn16":Landroid/widget/Button;
    move-object/from16 v19, v2

    .end local v2    # "btn15":Landroid/widget/Button;
    .local v19, "btn15":Landroid/widget/Button;
    new-instance v2, Lcom/example/myapplication/skill$17;

    invoke-direct {v2, v0}, Lcom/example/myapplication/skill$17;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    const v2, 0x7f0800e4

    invoke-virtual {v0, v2}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 323
    .local v2, "btn17":Landroid/widget/Button;
    move-object/from16 v20, v1

    .end local v1    # "btn16":Landroid/widget/Button;
    .local v20, "btn16":Landroid/widget/Button;
    new-instance v1, Lcom/example/myapplication/skill$18;

    invoke-direct {v1, v0}, Lcom/example/myapplication/skill$18;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    const v1, 0x7f08012e

    invoke-virtual {v0, v1}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 341
    .local v1, "btn18":Landroid/widget/Button;
    move-object/from16 v21, v2

    .end local v2    # "btn17":Landroid/widget/Button;
    .local v21, "btn17":Landroid/widget/Button;
    new-instance v2, Lcom/example/myapplication/skill$19;

    invoke-direct {v2, v0}, Lcom/example/myapplication/skill$19;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    const v2, 0x7f080086

    invoke-virtual {v0, v2}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 359
    .local v2, "btn19":Landroid/widget/Button;
    move-object/from16 v22, v1

    .end local v1    # "btn18":Landroid/widget/Button;
    .local v22, "btn18":Landroid/widget/Button;
    new-instance v1, Lcom/example/myapplication/skill$20;

    invoke-direct {v1, v0}, Lcom/example/myapplication/skill$20;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    const v1, 0x7f0801a8

    invoke-virtual {v0, v1}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 377
    .local v1, "btn20":Landroid/widget/Button;
    move-object/from16 v23, v2

    .end local v2    # "btn19":Landroid/widget/Button;
    .local v23, "btn19":Landroid/widget/Button;
    new-instance v2, Lcom/example/myapplication/skill$21;

    invoke-direct {v2, v0}, Lcom/example/myapplication/skill$21;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    const v2, 0x7f0800c5

    invoke-virtual {v0, v2}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 395
    .local v2, "btn21":Landroid/widget/Button;
    move-object/from16 v24, v1

    .end local v1    # "btn20":Landroid/widget/Button;
    .local v24, "btn20":Landroid/widget/Button;
    new-instance v1, Lcom/example/myapplication/skill$22;

    invoke-direct {v1, v0}, Lcom/example/myapplication/skill$22;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 413
    .local v1, "btn22":Landroid/widget/Button;
    move-object/from16 v25, v2

    .end local v2    # "btn21":Landroid/widget/Button;
    .local v25, "btn21":Landroid/widget/Button;
    new-instance v2, Lcom/example/myapplication/skill$23;

    invoke-direct {v2, v0}, Lcom/example/myapplication/skill$23;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    const v2, 0x7f08007d

    invoke-virtual {v0, v2}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 431
    .local v2, "btn23":Landroid/widget/Button;
    move-object/from16 v26, v1

    .end local v1    # "btn22":Landroid/widget/Button;
    .local v26, "btn22":Landroid/widget/Button;
    new-instance v1, Lcom/example/myapplication/skill$24;

    invoke-direct {v1, v0}, Lcom/example/myapplication/skill$24;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    const v1, 0x7f080203

    invoke-virtual {v0, v1}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 449
    .local v1, "btn24":Landroid/widget/Button;
    move-object/from16 v27, v2

    .end local v2    # "btn23":Landroid/widget/Button;
    .local v27, "btn23":Landroid/widget/Button;
    new-instance v2, Lcom/example/myapplication/skill$25;

    invoke-direct {v2, v0}, Lcom/example/myapplication/skill$25;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    const v2, 0x7f08017c

    invoke-virtual {v0, v2}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 467
    .local v2, "btn25":Landroid/widget/Button;
    move-object/from16 v28, v1

    .end local v1    # "btn24":Landroid/widget/Button;
    .local v28, "btn24":Landroid/widget/Button;
    new-instance v1, Lcom/example/myapplication/skill$26;

    invoke-direct {v1, v0}, Lcom/example/myapplication/skill$26;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    const v1, 0x7f0800eb

    invoke-virtual {v0, v1}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 485
    .local v1, "btn26":Landroid/widget/Button;
    move-object/from16 v29, v2

    .end local v2    # "btn25":Landroid/widget/Button;
    .local v29, "btn25":Landroid/widget/Button;
    new-instance v2, Lcom/example/myapplication/skill$27;

    invoke-direct {v2, v0}, Lcom/example/myapplication/skill$27;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    const v2, 0x7f08015d

    invoke-virtual {v0, v2}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 503
    .local v2, "btn27":Landroid/widget/Button;
    move-object/from16 v30, v1

    .end local v1    # "btn26":Landroid/widget/Button;
    .local v30, "btn26":Landroid/widget/Button;
    new-instance v1, Lcom/example/myapplication/skill$28;

    invoke-direct {v1, v0}, Lcom/example/myapplication/skill$28;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 521
    .local v1, "btn28":Landroid/widget/Button;
    move-object/from16 v31, v2

    .end local v2    # "btn27":Landroid/widget/Button;
    .local v31, "btn27":Landroid/widget/Button;
    new-instance v2, Lcom/example/myapplication/skill$29;

    invoke-direct {v2, v0}, Lcom/example/myapplication/skill$29;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    const v2, 0x7f080088

    invoke-virtual {v0, v2}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 539
    .local v2, "btn29":Landroid/widget/Button;
    move-object/from16 v32, v1

    .end local v1    # "btn28":Landroid/widget/Button;
    .local v32, "btn28":Landroid/widget/Button;
    new-instance v1, Lcom/example/myapplication/skill$30;

    invoke-direct {v1, v0}, Lcom/example/myapplication/skill$30;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    const v1, 0x7f0801a9

    invoke-virtual {v0, v1}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 557
    .local v1, "btn30":Landroid/widget/Button;
    move-object/from16 v33, v2

    .end local v2    # "btn29":Landroid/widget/Button;
    .local v33, "btn29":Landroid/widget/Button;
    new-instance v2, Lcom/example/myapplication/skill$31;

    invoke-direct {v2, v0}, Lcom/example/myapplication/skill$31;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    const v2, 0x7f0801ad

    invoke-virtual {v0, v2}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 575
    .local v2, "btn31":Landroid/widget/Button;
    move-object/from16 v34, v1

    .end local v1    # "btn30":Landroid/widget/Button;
    .local v34, "btn30":Landroid/widget/Button;
    new-instance v1, Lcom/example/myapplication/skill$32;

    invoke-direct {v1, v0}, Lcom/example/myapplication/skill$32;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    const v1, 0x7f080202

    invoke-virtual {v0, v1}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 593
    .local v1, "btn32":Landroid/widget/Button;
    move-object/from16 v35, v2

    .end local v2    # "btn31":Landroid/widget/Button;
    .local v35, "btn31":Landroid/widget/Button;
    new-instance v2, Lcom/example/myapplication/skill$33;

    invoke-direct {v2, v0}, Lcom/example/myapplication/skill$33;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    const v2, 0x7f08020d

    invoke-virtual {v0, v2}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 611
    .local v2, "btn33":Landroid/widget/Button;
    move-object/from16 v36, v1

    .end local v1    # "btn32":Landroid/widget/Button;
    .local v36, "btn32":Landroid/widget/Button;
    new-instance v1, Lcom/example/myapplication/skill$34;

    invoke-direct {v1, v0}, Lcom/example/myapplication/skill$34;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    const v1, 0x7f08020c

    invoke-virtual {v0, v1}, Lcom/example/myapplication/skill;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 629
    .local v1, "btn34":Landroid/widget/Button;
    move-object/from16 v37, v2

    .end local v2    # "btn33":Landroid/widget/Button;
    .local v37, "btn33":Landroid/widget/Button;
    new-instance v2, Lcom/example/myapplication/skill$35;

    invoke-direct {v2, v0}, Lcom/example/myapplication/skill$35;-><init>(Lcom/example/myapplication/skill;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    return-void
.end method
