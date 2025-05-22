.class public Lcom/zui/quickstep/OverviewCallbacks;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/ResourceBasedOverride;


# static fields
.field private static a:Lcom/zui/quickstep/OverviewCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/zui/quickstep/OverviewCallbacks;
    .locals 2

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    sget-object v0, Lcom/zui/quickstep/OverviewCallbacks;->a:Lcom/zui/quickstep/OverviewCallbacks;

    if-nez v0, :cond_0

    const-class v0, Lcom/zui/quickstep/OverviewCallbacks;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f120555

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/zui/launcher/util/ResourceBasedOverride;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/OverviewCallbacks;

    sput-object p0, Lcom/zui/quickstep/OverviewCallbacks;->a:Lcom/zui/quickstep/OverviewCallbacks;

    :cond_0
    sget-object p0, Lcom/zui/quickstep/OverviewCallbacks;->a:Lcom/zui/quickstep/OverviewCallbacks;

    return-object p0
.end method


# virtual methods
.method public closeAllWindows()V
    .locals 0

    return-void
.end method

.method public onInitOverviewTransition()V
    .locals 0

    return-void
.end method
