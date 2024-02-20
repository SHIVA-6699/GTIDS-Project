.class Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21ReflectionHolder"
.end annotation


# static fields
.field private static sContentInsets:Ljava/lang/reflect/Field;

.field private static sReflectionSucceeded:Z

.field private static sStableInsets:Ljava/lang/reflect/Field;

.field private static sViewAttachInfoField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 2134
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sViewAttachInfoField:Ljava/lang/reflect/Field;

    .line 2135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2136
    const-string v0, "android.view.View$AttachInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2137
    .local v0, "sAttachInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "mStableInsets"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sStableInsets:Ljava/lang/reflect/Field;

    .line 2138
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2139
    const-string v2, "mContentInsets"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sContentInsets:Ljava/lang/reflect/Field;

    .line 2140
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2141
    sput-boolean v1, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sReflectionSucceeded:Z
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 2144
    .end local v0    # "sAttachInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_4a

    .line 2142
    :catch_2d
    move-exception v0

    .line 2143
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get visible insets from AttachInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowInsetsCompat"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2145
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_4a
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2125
    return-void
.end method

.method public static getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .registers 8
    .param p0, "v"    # Landroid/view/View;

    .line 2151
    sget-boolean v0, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sReflectionSucceeded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_6f

    .line 2155
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 2157
    .local v0, "rootView":Landroid/view/View;
    :try_start_10
    sget-object v2, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sViewAttachInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2158
    .local v2, "attachInfo":Ljava/lang/Object;
    if-eqz v2, :cond_50

    .line 2159
    sget-object v3, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sStableInsets:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 2160
    .local v3, "stableInsets":Landroid/graphics/Rect;
    sget-object v4, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sContentInsets:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 2161
    .local v4, "visibleInsets":Landroid/graphics/Rect;
    if-eqz v3, :cond_50

    if-eqz v4, :cond_50

    .line 2162
    new-instance v5, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v5}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>()V

    .line 2163
    invoke-static {v3}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/core/view/WindowInsetsCompat$Builder;->setStableInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v5

    .line 2164
    invoke-static {v4}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v5

    .line 2165
    invoke-virtual {v5}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v5

    .line 2169
    .local v5, "insets":Landroidx/core/view/WindowInsetsCompat;
    invoke-virtual {v5, v5}, Landroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    .line 2170
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/core/view/WindowInsetsCompat;->copyRootViewBounds(Landroid/view/View;)V
    :try_end_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_4f} :catch_51

    .line 2171
    return-object v5

    .line 2176
    .end local v2    # "attachInfo":Ljava/lang/Object;
    .end local v3    # "stableInsets":Landroid/graphics/Rect;
    .end local v4    # "visibleInsets":Landroid/graphics/Rect;
    .end local v5    # "insets":Landroidx/core/view/WindowInsetsCompat;
    :cond_50
    goto :goto_6e

    .line 2174
    :catch_51
    move-exception v2

    .line 2175
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get insets from AttachInfo. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowInsetsCompat"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2177
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :goto_6e
    return-object v1

    .line 2152
    .end local v0    # "rootView":Landroid/view/View;
    :cond_6f
    :goto_6f
    return-object v1
.end method
