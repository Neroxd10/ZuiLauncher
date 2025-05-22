.class public Lcom/zui/launcher/appprediction/ComponentKeyMapper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/zui/launcher/appprediction/DynamicItemCache;

.field protected final componentKey:Lcom/zui/launcher/util/ComponentKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/util/ComponentKey;Lcom/zui/launcher/appprediction/DynamicItemCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->componentKey:Lcom/zui/launcher/util/ComponentKey;

    iput-object p3, p0, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->a:Lcom/zui/launcher/appprediction/DynamicItemCache;

    return-void
.end method


# virtual methods
.method public getApp(Lcom/zui/launcher/allapps/AllAppsStore;)Lcom/zui/launcher/ItemInfoWithIcon;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->componentKey:Lcom/zui/launcher/util/ComponentKey;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/allapps/AllAppsStore;->getApp(Lcom/zui/launcher/util/ComponentKey;)Lcom/zui/launcher/AppInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->getComponentClass()Ljava/lang/String;

    move-result-object p1

    const-string v0, "@instantapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->a:Lcom/zui/launcher/appprediction/DynamicItemCache;

    iget-object p0, p0, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->componentKey:Lcom/zui/launcher/util/ComponentKey;

    iget-object p0, p0, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/appprediction/DynamicItemCache;->getInstantApp(Ljava/lang/String;)Lcom/zui/launcher/appprediction/InstantAppItemInfo;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->componentKey:Lcom/zui/launcher/util/ComponentKey;

    instance-of v0, p1, Lcom/zui/launcher/shortcuts/ShortcutKey;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->a:Lcom/zui/launcher/appprediction/DynamicItemCache;

    check-cast p1, Lcom/zui/launcher/shortcuts/ShortcutKey;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/appprediction/DynamicItemCache;->getShortcutInfo(Lcom/zui/launcher/shortcuts/ShortcutKey;)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getComponentClass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->componentKey:Lcom/zui/launcher/util/ComponentKey;

    iget-object p0, p0, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getComponentKey()Lcom/zui/launcher/util/ComponentKey;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->componentKey:Lcom/zui/launcher/util/ComponentKey;

    return-object p0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->componentKey:Lcom/zui/launcher/util/ComponentKey;

    iget-object p0, p0, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->componentKey:Lcom/zui/launcher/util/ComponentKey;

    invoke-virtual {p0}, Lcom/zui/launcher/util/ComponentKey;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
