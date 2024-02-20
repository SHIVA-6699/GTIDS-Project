.class Landroidx/core/view/DisplayCompat$Api23Impl;
.super Ljava/lang/Object;
.source "DisplayCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMode(Landroid/content/Context;Landroid/view/Display;)Landroidx/core/view/DisplayCompat$ModeCompat;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "display"    # Landroid/view/Display;

    .line 237
    invoke-virtual {p1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 238
    .local v0, "currentMode":Landroid/view/Display$Mode;
    invoke-static {p0, p1}, Landroidx/core/view/DisplayCompat;->getCurrentDisplaySizeFromWorkarounds(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v1

    .line 241
    .local v1, "workaroundSize":Landroid/graphics/Point;
    if-eqz v1, :cond_17

    invoke-static {v0, v1}, Landroidx/core/view/DisplayCompat$Api23Impl;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_17

    .line 243
    :cond_11
    new-instance v2, Landroidx/core/view/DisplayCompat$ModeCompat;

    invoke-direct {v2, v0, v1}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Landroid/graphics/Point;)V

    goto :goto_1d

    .line 242
    :cond_17
    :goto_17
    new-instance v2, Landroidx/core/view/DisplayCompat$ModeCompat;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Z)V

    .line 241
    :goto_1d
    return-object v2
.end method

.method public static getSupportedModes(Landroid/content/Context;Landroid/view/Display;)[Landroidx/core/view/DisplayCompat$ModeCompat;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "display"    # Landroid/view/Display;

    .line 250
    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    .line 251
    .local v0, "supportedModes":[Landroid/view/Display$Mode;
    array-length v1, v0

    new-array v1, v1, [Landroidx/core/view/DisplayCompat$ModeCompat;

    .line 253
    .local v1, "supportedModesCompat":[Landroidx/core/view/DisplayCompat$ModeCompat;
    invoke-virtual {p1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v2

    .line 254
    .local v2, "currentMode":Landroid/view/Display$Mode;
    invoke-static {p0, p1}, Landroidx/core/view/DisplayCompat;->getCurrentDisplaySizeFromWorkarounds(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v3

    .line 257
    .local v3, "workaroundSize":Landroid/graphics/Point;
    if-eqz v3, :cond_39

    invoke-static {v2, v3}, Landroidx/core/view/DisplayCompat$Api23Impl;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/graphics/Point;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_39

    .line 265
    :cond_18
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    array-length v5, v0

    if-ge v4, v5, :cond_4f

    .line 267
    aget-object v5, v0, v4

    invoke-static {v5, v2}, Landroidx/core/view/DisplayCompat$Api23Impl;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 268
    new-instance v5, Landroidx/core/view/DisplayCompat$ModeCompat;

    aget-object v6, v0, v4

    invoke-direct {v5, v6, v3}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Landroid/graphics/Point;)V

    goto :goto_34

    .line 269
    :cond_2c
    new-instance v5, Landroidx/core/view/DisplayCompat$ModeCompat;

    aget-object v6, v0, v4

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Z)V

    :goto_34
    aput-object v5, v1, v4

    .line 265
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 259
    .end local v4    # "i":I
    :cond_39
    :goto_39
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3a
    array-length v5, v0

    if-ge v4, v5, :cond_4f

    .line 260
    aget-object v5, v0, v4

    invoke-static {v5, v2}, Landroidx/core/view/DisplayCompat$Api23Impl;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    move-result v5

    .line 261
    .local v5, "isNative":Z
    new-instance v6, Landroidx/core/view/DisplayCompat$ModeCompat;

    aget-object v7, v0, v4

    invoke-direct {v6, v7, v5}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Z)V

    aput-object v6, v1, v4

    .line 259
    .end local v5    # "isNative":Z
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 272
    .end local v4    # "i":I
    :cond_4f
    return-object v1
.end method

.method static isCurrentModeTheLargestMode(Landroid/view/Display;)Z
    .registers 6
    .param p0, "display"    # Landroid/view/Display;

    .line 276
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 277
    .local v0, "currentMode":Landroid/view/Display$Mode;
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v1

    .line 278
    .local v1, "supportedModes":[Landroid/view/Display$Mode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v3, v1

    if-ge v2, v3, :cond_2a

    .line 279
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    if-lt v3, v4, :cond_28

    .line 280
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    if-ge v3, v4, :cond_25

    goto :goto_28

    .line 278
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 281
    :cond_28
    :goto_28
    const/4 v3, 0x0

    return v3

    .line 284
    .end local v2    # "i":I
    :cond_2a
    const/4 v2, 0x1

    return v2
.end method

.method static physicalSizeEquals(Landroid/view/Display$Mode;Landroid/graphics/Point;)Z
    .registers 4
    .param p0, "mode"    # Landroid/view/Display$Mode;
    .param p1, "size"    # Landroid/graphics/Point;

    .line 292
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-eq v0, v1, :cond_20

    .line 293
    :cond_10
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_22

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 292
    :goto_23
    return v0
.end method

.method static physicalSizeEquals(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z
    .registers 4
    .param p0, "mode"    # Landroid/view/Display$Mode;
    .param p1, "otherMode"    # Landroid/view/Display$Mode;

    .line 301
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 302
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 301
    :goto_17
    return v0
.end method
