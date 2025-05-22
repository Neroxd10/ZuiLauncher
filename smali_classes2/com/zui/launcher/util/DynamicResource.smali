.class public Lcom/zui/launcher/util/DynamicResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/ResourceProvider;
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/ResourceProvider;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/ResourceProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/launcher/util/DynamicResource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/android/systemui/plugins/ResourceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/launcher/util/j;->a:Lcom/zui/launcher/util/j;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/launcher/util/DynamicResource;->c:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/DynamicResource;->a:Landroid/content/Context;

    sget-object v0, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;

    const-class v0, Lcom/android/systemui/plugins/ResourceProvider;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/zui/launcher/util/DynamicResource;
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/DynamicResource;

    invoke-direct {v0, p0}, Lcom/zui/launcher/util/DynamicResource;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;
    .locals 1

    sget-object v0, Lcom/zui/launcher/util/DynamicResource;->c:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/util/DynamicResource;

    iget-object v0, p0, Lcom/zui/launcher/util/DynamicResource;->b:Lcom/android/systemui/plugins/ResourceProvider;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getColor(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/zui/launcher/util/DynamicResource;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method public getDimension(I)F
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/zui/launcher/util/DynamicResource;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public getFloat(I)F
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/zui/launcher/util/DynamicResource;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    return p0
.end method

.method public getFraction(I)F
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/FractionRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/zui/launcher/util/DynamicResource;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p0

    return p0
.end method

.method public getInt(I)I
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntegerRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/zui/launcher/util/DynamicResource;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/ResourceProvider;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/util/DynamicResource;->onPluginConnected(Lcom/android/systemui/plugins/ResourceProvider;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/ResourceProvider;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/util/DynamicResource;->b:Lcom/android/systemui/plugins/ResourceProvider;

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/ResourceProvider;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/DynamicResource;->onPluginDisconnected(Lcom/android/systemui/plugins/ResourceProvider;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/ResourceProvider;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/util/DynamicResource;->b:Lcom/android/systemui/plugins/ResourceProvider;

    return-void
.end method
