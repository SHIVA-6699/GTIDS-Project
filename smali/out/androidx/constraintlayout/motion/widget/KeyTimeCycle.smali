.class public Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "KeyTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;
    }
.end annotation


# static fields
.field public static final KEY_TYPE:I = 0x3

.field static final NAME:Ljava/lang/String; = "KeyTimeCycle"

.field public static final SHAPE_BOUNCE:I = 0x6

.field public static final SHAPE_COS_WAVE:I = 0x5

.field public static final SHAPE_REVERSE_SAW_WAVE:I = 0x4

.field public static final SHAPE_SAW_WAVE:I = 0x3

.field public static final SHAPE_SIN_WAVE:I = 0x0

.field public static final SHAPE_SQUARE_WAVE:I = 0x1

.field public static final SHAPE_TRIANGLE_WAVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyTimeCycle"

.field public static final WAVE_OFFSET:Ljava/lang/String; = "waveOffset"

.field public static final WAVE_PERIOD:Ljava/lang/String; = "wavePeriod"

.field public static final WAVE_SHAPE:Ljava/lang/String; = "waveShape"


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mCustomWaveShape:Ljava/lang/String;

.field private mElevation:F

.field private mProgress:F

.field private mRotation:F

.field private mRotationX:F

.field private mRotationY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransitionEasing:Ljava/lang/String;

.field private mTransitionPathRotate:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private mTranslationZ:F

.field private mWaveOffset:F

.field private mWavePeriod:F

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    .line 58
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    .line 59
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    .line 60
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    .line 61
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    .line 62
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    .line 63
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    .line 64
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    .line 65
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    .line 66
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    .line 67
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    .line 68
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    .line 69
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    .line 72
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mType:I

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    .line 79
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    return v0
.end method

.method static synthetic access$002(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    return p1
.end method

.method static synthetic access$100(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    return v0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    return v0
.end method

.method static synthetic access$1002(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    return p1
.end method

.method static synthetic access$102(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    return p1
.end method

.method static synthetic access$1102(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    return v0
.end method

.method static synthetic access$1202(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    return p1
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    return v0
.end method

.method static synthetic access$1302(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    return p1
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    return v0
.end method

.method static synthetic access$1402(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    return p1
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    return v0
.end method

.method static synthetic access$1502(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    return p1
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    return v0
.end method

.method static synthetic access$1602(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    return p1
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    return v0
.end method

.method static synthetic access$1702(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    return p1
.end method

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    return v0
.end method

.method static synthetic access$202(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    return p1
.end method

.method static synthetic access$300(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    return v0
.end method

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;I)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # I

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    return p1
.end method

.method static synthetic access$402(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    return v0
.end method

.method static synthetic access$502(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;I)I
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # I

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    return p1
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    return v0
.end method

.method static synthetic access$602(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    return p1
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    return v0
.end method

.method static synthetic access$702(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    return p1
.end method

.method static synthetic access$800(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    return v0
.end method

.method static synthetic access$802(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    return p1
.end method

.method static synthetic access$900(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 42
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    return v0
.end method

.method static synthetic access$902(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    .param p1, "x1"    # F

    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    return p1
.end method


# virtual methods
.method public addTimeValues(Ljava/util/HashMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewTimeCycle;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p1, "splines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/motion/utils/ViewTimeCycle;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    .line 192
    .local v2, "splineSet":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    if-nez v2, :cond_1d

    .line 193
    goto :goto_8

    .line 195
    :cond_1d
    const-string v3, "CUSTOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_49

    .line 196
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "cKey":Ljava/lang/String;
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 198
    .local v4, "cValue":Landroidx/constraintlayout/widget/ConstraintAttribute;
    if-eqz v4, :cond_8

    .line 199
    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v9, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v10, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move-object v7, v4

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;FIF)V

    goto :goto_8

    .line 203
    .end local v3    # "cKey":Ljava/lang/String;
    .end local v4    # "cValue":Landroidx/constraintlayout/widget/ConstraintAttribute;
    :cond_49
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_210

    :cond_50
    goto/16 :goto_cf

    :sswitch_52
    const-string v3, "alpha"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v5, 0x0

    goto/16 :goto_d0

    :sswitch_5d
    const-string v3, "transitionPathRotate"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v5, 0x5

    goto/16 :goto_d0

    :sswitch_68
    const-string v3, "elevation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    goto :goto_d0

    :sswitch_71
    const-string v3, "rotation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v5, 0x2

    goto :goto_d0

    :sswitch_7b
    const-string v3, "scaleY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v5, 0x7

    goto :goto_d0

    :sswitch_85
    const-string v3, "scaleX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v5, 0x6

    goto :goto_d0

    :sswitch_8f
    const-string v3, "progress"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/16 v5, 0xb

    goto :goto_d0

    :sswitch_9a
    const-string v3, "translationZ"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/16 v5, 0xa

    goto :goto_d0

    :sswitch_a5
    const-string v3, "translationY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/16 v5, 0x9

    goto :goto_d0

    :sswitch_b0
    const-string v3, "translationX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/16 v5, 0x8

    goto :goto_d0

    :sswitch_bb
    const-string v3, "rotationY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v5, 0x4

    goto :goto_d0

    :sswitch_c5
    const-string v3, "rotationX"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const/4 v5, 0x3

    goto :goto_d0

    :goto_cf
    const/4 v5, -0x1

    :goto_d0
    packed-switch v5, :pswitch_data_242

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNKNOWN addValues \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyTimeCycles"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20d

    .line 260
    :pswitch_f3
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20d

    .line 261
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/16 :goto_20d

    .line 255
    :pswitch_10b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20d

    .line 256
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/16 :goto_20d

    .line 250
    :pswitch_123
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20d

    .line 251
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/16 :goto_20d

    .line 245
    :pswitch_13b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20d

    .line 246
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/16 :goto_20d

    .line 240
    :pswitch_153
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20d

    .line 241
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/16 :goto_20d

    .line 235
    :pswitch_16b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20d

    .line 236
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/16 :goto_20d

    .line 230
    :pswitch_183
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20d

    .line 231
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto/16 :goto_20d

    .line 225
    :pswitch_19b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20d

    .line 226
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto :goto_20d

    .line 220
    :pswitch_1b2
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20d

    .line 221
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto :goto_20d

    .line 215
    :pswitch_1c9
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20d

    .line 216
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto :goto_20d

    .line 210
    :pswitch_1e0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20d

    .line 211
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    goto :goto_20d

    .line 205
    :pswitch_1f7
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_20d

    .line 206
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    .line 267
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "splineSet":Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    :cond_20d
    :goto_20d
    goto/16 :goto_8

    .line 268
    :cond_20f
    return-void

    :sswitch_data_210
    .sparse-switch
        -0x4a771f66 -> :sswitch_c5
        -0x4a771f65 -> :sswitch_bb
        -0x490b9c39 -> :sswitch_b0
        -0x490b9c38 -> :sswitch_a5
        -0x490b9c37 -> :sswitch_9a
        -0x3bab3dd3 -> :sswitch_8f
        -0x3621dfb2 -> :sswitch_85
        -0x3621dfb1 -> :sswitch_7b
        -0x266f082 -> :sswitch_71
        -0x42d1a3 -> :sswitch_68
        0x2382115 -> :sswitch_5d
        0x589b15e -> :sswitch_52
    .end sparse-switch

    :pswitch_data_242
    .packed-switch 0x0
        :pswitch_1f7
        :pswitch_1e0
        :pswitch_1c9
        :pswitch_1b2
        :pswitch_19b
        :pswitch_183
        :pswitch_16b
        :pswitch_153
        :pswitch_13b
        :pswitch_123
        :pswitch_10b
        :pswitch_f3
    .end packed-switch
.end method

.method public addValues(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p1, "splines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/motion/utils/ViewSpline;>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " KeyTimeCycles do not support SplineSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Landroidx/constraintlayout/motion/widget/Key;
    .registers 2

    .line 494
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    return-object v0
.end method

.method public copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;
    .registers 4
    .param p1, "src"    # Landroidx/constraintlayout/motion/widget/Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 471
    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    .line 472
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 473
    .local v0, "k":Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    .line 474
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    .line 475
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    .line 476
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    .line 477
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    .line 478
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    .line 479
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    .line 480
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    .line 481
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    .line 482
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    .line 483
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    .line 484
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    .line 485
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    .line 486
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    .line 487
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    .line 488
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    .line 489
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    .line 490
    return-object p0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "attributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    .line 94
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 97
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    .line 100
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_27
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_34

    .line 103
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_34
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_41

    .line 106
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_41
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 109
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_4e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 112
    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_5b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_68

    .line 115
    const-string v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_68
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_75

    .line 118
    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_75
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_82

    .line 121
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_82
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 124
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_8f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 127
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_9c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_d1

    .line 130
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ae
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_ae

    .line 134
    :cond_d1
    return-void
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 83
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;Landroid/content/res/TypedArray;)V

    .line 85
    return-void
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interpolation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p1, "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 138
    return-void

    .line 140
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_19

    .line 141
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_19
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 144
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "elevation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_2c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 147
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_3f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_52

    .line 150
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_52
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_65

    .line 153
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_65
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_78

    .line 156
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_78
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 159
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_8b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9e

    .line 162
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationZ"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_9e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 165
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transitionPathRotate"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_b1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 168
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_c4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d7

    .line 171
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_d7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_ea

    .line 174
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_ea
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_125

    .line 177
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_fc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_125

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_fc

    .line 181
    :cond_125
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x7

    sparse-switch v0, :sswitch_data_154

    :cond_8
    goto/16 :goto_c5

    :sswitch_a
    const-string v0, "waveShape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x10

    goto/16 :goto_c6

    :sswitch_16
    const-string v0, "curveFit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_c6

    :sswitch_21
    const-string v0, "wavePeriod"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    goto/16 :goto_c6

    :sswitch_2d
    const-string v0, "waveOffset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xf

    goto/16 :goto_c6

    :sswitch_39
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto/16 :goto_c6

    :sswitch_44
    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto/16 :goto_c6

    :sswitch_50
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto/16 :goto_c6

    :sswitch_5b
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto/16 :goto_c6

    :sswitch_66
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_c6

    :sswitch_71
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_c6

    :sswitch_7b
    const-string v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd

    goto :goto_c6

    :sswitch_86
    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc

    goto :goto_c6

    :sswitch_91
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto :goto_c6

    :sswitch_9c
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_c6

    :sswitch_a6
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_c6

    :sswitch_b0
    const-string v0, "transitionEasing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    goto :goto_c6

    :sswitch_bb
    const-string v0, "motionProgress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_c6

    :goto_c5
    const/4 v0, -0x1

    :goto_c6
    packed-switch v0, :pswitch_data_19a

    goto/16 :goto_152

    .line 322
    :pswitch_cb
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_d7

    .line 323
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    goto/16 :goto_152

    .line 325
    :cond_d7
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    .line 326
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    goto/16 :goto_152

    .line 319
    :pswitch_e1
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    .line 320
    goto/16 :goto_152

    .line 316
    :pswitch_e9
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    .line 317
    goto :goto_152

    .line 313
    :pswitch_f0
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    .line 314
    goto :goto_152

    .line 310
    :pswitch_f7
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    .line 311
    goto :goto_152

    .line 307
    :pswitch_fe
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    .line 308
    goto :goto_152

    .line 304
    :pswitch_105
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    .line 305
    goto :goto_152

    .line 301
    :pswitch_10c
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    .line 302
    goto :goto_152

    .line 298
    :pswitch_113
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    .line 299
    goto :goto_152

    .line 295
    :pswitch_11a
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    .line 296
    goto :goto_152

    .line 292
    :pswitch_121
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    .line 293
    goto :goto_152

    .line 289
    :pswitch_128
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    .line 290
    goto :goto_152

    .line 286
    :pswitch_12f
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    .line 287
    goto :goto_152

    .line 283
    :pswitch_136
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    .line 284
    goto :goto_152

    .line 280
    :pswitch_13d
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    .line 281
    goto :goto_152

    .line 277
    :pswitch_144
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    .line 278
    goto :goto_152

    .line 274
    :pswitch_14b
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    .line 275
    nop

    .line 331
    :goto_152
    return-void

    nop

    :sswitch_data_154
    .sparse-switch
        -0x72062ffd -> :sswitch_bb
        -0x6c0d7d20 -> :sswitch_b0
        -0x4a771f66 -> :sswitch_a6
        -0x4a771f65 -> :sswitch_9c
        -0x490b9c39 -> :sswitch_91
        -0x490b9c38 -> :sswitch_86
        -0x490b9c37 -> :sswitch_7b
        -0x3621dfb2 -> :sswitch_71
        -0x3621dfb1 -> :sswitch_66
        -0x266f082 -> :sswitch_5b
        -0x42d1a3 -> :sswitch_50
        0x2382115 -> :sswitch_44
        0x589b15e -> :sswitch_39
        0x94e04ec -> :sswitch_2d
        0xafa161a -> :sswitch_21
        0x2283b8a2 -> :sswitch_16
        0x5b5cc028 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_19a
    .packed-switch 0x0
        :pswitch_14b
        :pswitch_144
        :pswitch_13d
        :pswitch_136
        :pswitch_12f
        :pswitch_128
        :pswitch_121
        :pswitch_11a
        :pswitch_113
        :pswitch_10c
        :pswitch_105
        :pswitch_fe
        :pswitch_f7
        :pswitch_f0
        :pswitch_e9
        :pswitch_e1
        :pswitch_cb
    .end packed-switch
.end method
