.class public Lcom/zui/launcher/uioverrides/DeviceFlag;
.super Lcom/zui/launcher/config/FeatureFlags$DebugFlag;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# static fields
.field public static final NAMESPACE_LAUNCHER:Ljava/lang/String; = "launcher"


# instance fields
.field private final b:Z

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/zui/launcher/uioverrides/DeviceFlag;->getDeviceValue(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/zui/launcher/config/FeatureFlags$DebugFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    iput-boolean p2, p0, Lcom/zui/launcher/uioverrides/DeviceFlag;->b:Z

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/uioverrides/b;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/uioverrides/b;-><init>(Lcom/zui/launcher/uioverrides/DeviceFlag;Landroid/content/Context;)V

    const-string p0, "launcher"

    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method protected static getDeviceValue(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "launcher"

    invoke-static {v0, p0, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public synthetic a(Landroid/content/Context;Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    invoke-virtual {p2}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->key:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->key:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/zui/launcher/uioverrides/DeviceFlag;->b:Z

    invoke-static {p2, v0}, Lcom/zui/launcher/uioverrides/DeviceFlag;->getDeviceValue(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->defaultValue:Z

    invoke-virtual {p0, p1}, Lcom/zui/launcher/uioverrides/DeviceFlag;->initialize(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/DeviceFlag;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public addChangeListener(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/DeviceFlag;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/uioverrides/DeviceFlag;->initialize(Landroid/content/Context;)V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/uioverrides/DeviceFlag;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected appendProps(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-super {p0, p1}, Lcom/zui/launcher/config/FeatureFlags$DebugFlag;->appendProps(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mDefaultValueInCode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zui/launcher/uioverrides/DeviceFlag;->b:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zui/launcher/config/FeatureFlags$DebugFlag;->initialize(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/DeviceFlag;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/DeviceFlag;->c:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/zui/launcher/uioverrides/DeviceFlag;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
