.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CycleType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyCycle"

.field public static final S_ALPHA:Ljava/lang/String; = "alpha"

.field public static final S_CURVE_FIT:Ljava/lang/String; = "curveFit"

.field public static final S_CUSTOM_WAVE_SHAPE:Ljava/lang/String; = "customWave"

.field public static final S_EASING:Ljava/lang/String; = "easing"

.field public static final S_ELEVATION:Ljava/lang/String; = "elevation"

.field public static final S_PATH_ROTATE:Ljava/lang/String; = "pathRotate"

.field public static final S_PIVOT_X:Ljava/lang/String; = "pivotX"

.field public static final S_PIVOT_Y:Ljava/lang/String; = "pivotY"

.field public static final S_PROGRESS:Ljava/lang/String; = "progress"

.field public static final S_ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final S_ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final S_ROTATION_Z:Ljava/lang/String; = "rotationZ"

.field public static final S_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final S_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final S_TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final S_TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field public static final S_TRANSLATION_Z:Ljava/lang/String; = "translationZ"

.field public static final S_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final S_WAVE_OFFSET:Ljava/lang/String; = "offset"

.field public static final S_WAVE_PERIOD:Ljava/lang/String; = "period"

.field public static final S_WAVE_PHASE:Ljava/lang/String; = "phase"

.field public static final S_WAVE_SHAPE:Ljava/lang/String; = "waveShape"

.field public static final TYPE_ALPHA:I = 0x193

.field public static final TYPE_CURVE_FIT:I = 0x191

.field public static final TYPE_CUSTOM_WAVE_SHAPE:I = 0x1a6

.field public static final TYPE_EASING:I = 0x1a4

.field public static final TYPE_ELEVATION:I = 0x133

.field public static final TYPE_PATH_ROTATE:I = 0x1a0

.field public static final TYPE_PIVOT_X:I = 0x139

.field public static final TYPE_PIVOT_Y:I = 0x13a

.field public static final TYPE_PROGRESS:I = 0x13b

.field public static final TYPE_ROTATION_X:I = 0x134

.field public static final TYPE_ROTATION_Y:I = 0x135

.field public static final TYPE_ROTATION_Z:I = 0x136

.field public static final TYPE_SCALE_X:I = 0x137

.field public static final TYPE_SCALE_Y:I = 0x138

.field public static final TYPE_TRANSLATION_X:I = 0x130

.field public static final TYPE_TRANSLATION_Y:I = 0x131

.field public static final TYPE_TRANSLATION_Z:I = 0x132

.field public static final TYPE_VISIBILITY:I = 0x192

.field public static final TYPE_WAVE_OFFSET:I = 0x1a8

.field public static final TYPE_WAVE_PERIOD:I = 0x1a7

.field public static final TYPE_WAVE_PHASE:I = 0x1a9

.field public static final TYPE_WAVE_SHAPE:I = 0x1a5


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 271
    const-string v0, "curveFit"

    const-string v1, "visibility"

    const-string v2, "alpha"

    const-string v3, "translationX"

    const-string v4, "translationY"

    const-string v5, "translationZ"

    const-string v6, "elevation"

    const-string v7, "rotationX"

    const-string v8, "rotationY"

    const-string v9, "rotationZ"

    const-string v10, "scaleX"

    const-string v11, "scaleY"

    const-string v12, "pivotX"

    const-string v13, "pivotY"

    const-string v14, "progress"

    const-string v15, "pathRotate"

    const-string v16, "easing"

    const-string v17, "waveShape"

    const-string v18, "customWave"

    const-string v19, "period"

    const-string v20, "offset"

    const-string v21, "phase"

    filled-new-array/range {v0 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;->KEY_WORDS:[Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_ee

    :cond_8
    goto/16 :goto_b8

    :sswitch_a
    const-string v0, "visibility"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_b9

    :sswitch_15
    const-string v0, "pathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    goto/16 :goto_b9

    :sswitch_21
    const-string v0, "curveFit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto/16 :goto_b9

    :sswitch_2c
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto/16 :goto_b9

    :sswitch_37
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto/16 :goto_b9

    :sswitch_43
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    goto/16 :goto_b9

    :sswitch_4f
    const-string v0, "pivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc

    goto :goto_b9

    :sswitch_5a
    const-string v0, "pivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto :goto_b9

    :sswitch_65
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd

    goto :goto_b9

    :sswitch_70
    const-string v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_b9

    :sswitch_7a
    const-string v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_b9

    :sswitch_84
    const-string v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_b9

    :sswitch_8e
    const-string v0, "rotationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_b9

    :sswitch_99
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto :goto_b9

    :sswitch_a3
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_b9

    :sswitch_ad
    const-string v0, "easing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xf

    goto :goto_b9

    :goto_b8
    move v0, v1

    :goto_b9
    packed-switch v0, :pswitch_data_130

    .line 339
    return v1

    .line 337
    :pswitch_bd
    const/16 v0, 0x1a4

    return v0

    .line 335
    :pswitch_c0
    const/16 v0, 0x1a0

    return v0

    .line 333
    :pswitch_c3
    const/16 v0, 0x13b

    return v0

    .line 331
    :pswitch_c6
    const/16 v0, 0x13a

    return v0

    .line 329
    :pswitch_c9
    const/16 v0, 0x139

    return v0

    .line 327
    :pswitch_cc
    const/16 v0, 0x138

    return v0

    .line 325
    :pswitch_cf
    const/16 v0, 0x137

    return v0

    .line 323
    :pswitch_d2
    const/16 v0, 0x136

    return v0

    .line 321
    :pswitch_d5
    const/16 v0, 0x135

    return v0

    .line 319
    :pswitch_d8
    const/16 v0, 0x134

    return v0

    .line 317
    :pswitch_db
    const/16 v0, 0x132

    return v0

    .line 315
    :pswitch_de
    const/16 v0, 0x131

    return v0

    .line 313
    :pswitch_e1
    const/16 v0, 0x130

    return v0

    .line 311
    :pswitch_e4
    const/16 v0, 0x193

    return v0

    .line 309
    :pswitch_e7
    const/16 v0, 0x192

    return v0

    .line 307
    :pswitch_ea
    const/16 v0, 0x191

    return v0

    nop

    :sswitch_data_ee
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_ad
        -0x4a771f66 -> :sswitch_a3
        -0x4a771f65 -> :sswitch_99
        -0x4a771f64 -> :sswitch_8e
        -0x490b9c39 -> :sswitch_84
        -0x490b9c38 -> :sswitch_7a
        -0x490b9c37 -> :sswitch_70
        -0x3bab3dd3 -> :sswitch_65
        -0x3ae243aa -> :sswitch_5a
        -0x3ae243a9 -> :sswitch_4f
        -0x3621dfb2 -> :sswitch_43
        -0x3621dfb1 -> :sswitch_37
        0x589b15e -> :sswitch_2c
        0x2283b8a2 -> :sswitch_21
        0x2fdfbde0 -> :sswitch_15
        0x73b66312 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_ea
        :pswitch_e7
        :pswitch_e4
        :pswitch_e1
        :pswitch_de
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
        :pswitch_d2
        :pswitch_cf
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2
    .param p0, "name"    # I

    .line 343
    sparse-switch p0, :sswitch_data_c

    .line 371
    const/4 v0, -0x1

    return v0

    .line 365
    :sswitch_5
    const/4 v0, 0x4

    return v0

    .line 369
    :sswitch_7
    const/16 v0, 0x8

    return v0

    .line 347
    :sswitch_a
    const/4 v0, 0x2

    return v0

    :sswitch_data_c
    .sparse-switch
        0x64 -> :sswitch_a
        0x65 -> :sswitch_7
        0x130 -> :sswitch_5
        0x131 -> :sswitch_5
        0x132 -> :sswitch_5
        0x133 -> :sswitch_5
        0x134 -> :sswitch_5
        0x135 -> :sswitch_5
        0x136 -> :sswitch_5
        0x137 -> :sswitch_5
        0x138 -> :sswitch_5
        0x139 -> :sswitch_5
        0x13a -> :sswitch_5
        0x13b -> :sswitch_5
        0x191 -> :sswitch_a
        0x192 -> :sswitch_a
        0x193 -> :sswitch_5
        0x1a0 -> :sswitch_5
        0x1a4 -> :sswitch_7
        0x1a5 -> :sswitch_7
        0x1a7 -> :sswitch_5
        0x1a8 -> :sswitch_5
        0x1a9 -> :sswitch_5
    .end sparse-switch
.end method
