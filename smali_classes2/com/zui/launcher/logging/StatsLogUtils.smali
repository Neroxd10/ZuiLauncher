.class public Lcom/zui/launcher/logging/StatsLogUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;,
        Lcom/zui/launcher/logging/StatsLogUtils$LogStateProvider;
    }
.end annotation


# static fields
.field public static final LAUNCHER_STATE_ALLAPPS:I = 0x3

.field public static final LAUNCHER_STATE_BACKGROUND:I = 0x0

.field public static final LAUNCHER_STATE_HOME:I = 0x1

.field public static final LAUNCHER_STATE_OVERVIEW:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLaunchProviderRecursive(Landroid/view/View;)Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v1, 0x5

    :goto_0
    if-eqz p0, :cond_1

    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    instance-of v1, p0, Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;

    return-object p0

    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method
