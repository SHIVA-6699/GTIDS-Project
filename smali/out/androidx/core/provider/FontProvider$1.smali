.class Landroidx/core/provider/FontProvider$1;
.super Ljava/lang/Object;
.source "FontProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 196
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroidx/core/provider/FontProvider$1;->compare([B[B)I

    move-result p1

    return p1
.end method

.method public compare([B[B)I
    .registers 6
    .param p1, "l"    # [B
    .param p2, "r"    # [B

    .line 199
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_8

    .line 200
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    return v0

    .line 202
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v1, p1

    if-ge v0, v1, :cond_1b

    .line 203
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_18

    .line 204
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    sub-int/2addr v1, v2

    return v1

    .line 202
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 207
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method
