.class public final Landroidx/core/os/ConfigurationCompat;
.super Ljava/lang/Object;
.source "ConfigurationCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;
    .registers 2
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .line 41
    nop

    .line 42
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method
