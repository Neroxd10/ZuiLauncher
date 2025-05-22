.class public Lcom/zui/launcher/logging/StatsLogManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/ResourceBasedOverride;


# instance fields
.field protected mStateProvider:Lcom/zui/launcher/logging/StatsLogUtils$LogStateProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/zui/launcher/logging/StatsLogUtils$LogStateProvider;)Lcom/zui/launcher/logging/StatsLogManager;
    .locals 2

    const-class v0, Lcom/zui/launcher/logging/StatsLogManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f120634

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/zui/launcher/util/ResourceBasedOverride;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/logging/StatsLogManager;

    iput-object p1, p0, Lcom/zui/launcher/logging/StatsLogManager;->mStateProvider:Lcom/zui/launcher/logging/StatsLogUtils$LogStateProvider;

    invoke-virtual {p0}, Lcom/zui/launcher/logging/StatsLogManager;->verify()V

    return-object p0
.end method


# virtual methods
.method public logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public logTaskLaunch(Landroid/view/View;Lcom/zui/launcher/util/ComponentKey;)V
    .locals 0

    return-void
.end method

.method public verify()V
    .locals 0

    return-void
.end method
