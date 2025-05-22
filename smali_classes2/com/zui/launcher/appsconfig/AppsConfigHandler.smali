.class public Lcom/zui/launcher/appsconfig/AppsConfigHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source ""

# interfaces
.implements Lcom/zui/launcher/appsconfig/AppsConfigConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotspotInfo;,
        Lcom/zui/launcher/appsconfig/AppsConfigHandler$OtherInfo;,
        Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;,
        Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetGroupInfo;,
        Lcom/zui/launcher/appsconfig/AppsConfigHandler$LeosWidgetInfo;,
        Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;,
        Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppInfo;,
        Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;,
        Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;,
        Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;,
        Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;,
        Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseInfo;
    }
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;

.field private d:Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

.field private e:Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;

.field private f:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

.field private g:Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetGroupInfo;

.field private h:Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;

.field private i:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

.field private j:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->d:Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

    iput-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->e:Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;

    iput-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->f:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    iput-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->g:Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetGroupInfo;

    iput-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->h:Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;

    iput-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->i:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    iput-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->j:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    iput p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->k:I

    iput p2, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->l:I

    return-void
.end method

.method private a(Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;)V
    .locals 8

    iget v0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->endScreen:I

    iget v1, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->endCellX:I

    iget v2, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->endCellY:I

    if-ltz v0, :cond_2

    if-ltz v1, :cond_2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->screen:I

    iget v4, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->cellX:I

    iget v5, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->cellY:I

    iget v6, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->k:I

    iget v7, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->l:I

    invoke-static {v3, v4, v5, v6, v7}, Lcom/zui/launcher/appsconfig/AppsConfigUtil;->getPositionIndex(IIIII)I

    move-result v3

    iget v4, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->k:I

    iget v5, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->l:I

    invoke-static {v0, v1, v2, v4, v5}, Lcom/zui/launcher/appsconfig/AppsConfigUtil;->getPositionIndex(IIIII)I

    move-result v0

    iget v1, p2, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->screen:I

    iget v2, p2, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->cellX:I

    iget v4, p2, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->cellY:I

    iget v5, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->k:I

    iget p0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->l:I

    invoke-static {v1, v2, v4, v5, p0}, Lcom/zui/launcher/appsconfig/AppsConfigUtil;->getPositionIndex(IIIII)I

    move-result p0

    if-le v0, v3, :cond_2

    if-le v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget p0, p2, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->screen:I

    iput p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->endScreen:I

    iget p0, p2, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->cellX:I

    iput p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->endCellX:I

    iget p0, p2, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->cellY:I

    iput p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->endCellY:I

    return-void
.end method

.method private b(Lorg/xml/sax/Attributes;I)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppInfo;

    invoke-direct {v0, p0, p2}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppInfo;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;I)V

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->d(Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;Lorg/xml/sax/Attributes;)V

    iget-object p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->f:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->e:Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;

    if-ne p1, p2, :cond_0

    iget-object p1, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;->appList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->h:Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->q(Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;)V

    :goto_0
    return-void
.end method

.method private c(Lorg/xml/sax/Attributes;)V
    .locals 4

    new-instance v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;

    invoke-direct {v0, p0}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V

    const-string v1, "component"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;->componentName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;->componentName:Ljava/lang/String;

    :cond_0
    const-string v1, "intent"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;->intent:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;->intent:Ljava/lang/String;

    :cond_1
    const-string v1, "title"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseInfo;->title:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseInfo;->title:Ljava/lang/String;

    :cond_2
    const-string v1, "icon_package"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;->iconPackage:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;->iconPackage:Ljava/lang/String;

    :cond_3
    const-string v1, "icon_resource"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;->iconResource:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;->iconResource:Ljava/lang/String;

    :cond_4
    const-string v1, "icon"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;->icon:Ljava/lang/String;

    const-string v1, "be_active"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;->beActive:Z

    :cond_5
    const-string v1, "key"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;->key:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;->key:Ljava/lang/String;

    :cond_6
    iget-object p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->e:Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;

    instance-of v1, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppInfo;

    if-eqz v1, :cond_7

    check-cast p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppInfo;

    iget-object p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppInfo;->itemList:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->f:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    if-eqz v1, :cond_8

    if-ne v1, p1, :cond_8

    iget-object p0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->h:Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;

    instance-of p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppInfo;

    if-eqz p1, :cond_8

    check-cast p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppInfo;

    iget-object p0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppInfo;->itemList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_8
    :goto_1
    return-void
.end method

.method private d(Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;Lorg/xml/sax/Attributes;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "must_show"

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;->mustShow:Z

    const-string p0, "title"

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseInfo;->title:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseInfo;->title:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method private e(Ljava/lang/String;Lorg/xml/sax/Attributes;)Z
    .locals 3

    const-string v0, "app"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, v1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->b(Lorg/xml/sax/Attributes;I)V

    return v2

    :cond_0
    const-string v0, "shortcut"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, v2}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->b(Lorg/xml/sax/Attributes;I)V

    return v2

    :cond_1
    const-string v0, "widget"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->n(Lorg/xml/sax/Attributes;)V

    return v2

    :cond_2
    const-string v0, "folder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->g(Lorg/xml/sax/Attributes;)V

    return v2

    :cond_3
    const-string v0, "widget_group"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->o(Lorg/xml/sax/Attributes;)V

    return v2

    :cond_4
    const-string v0, "label"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p2}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->h(Lorg/xml/sax/Attributes;)V

    return v2

    :cond_5
    const-string v0, "leos_widget"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, p2}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->i(Lorg/xml/sax/Attributes;)V

    return v2

    :cond_6
    return v1
.end method

.method private f(Ljava/lang/String;Lorg/xml/sax/Attributes;)Z
    .locals 2

    const-string v0, "hot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;

    invoke-direct {p1, p0}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V

    iput-object p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->c:Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;

    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->d:Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

    return v1

    :cond_0
    const-string v0, "dock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

    const/16 p2, -0x65

    invoke-direct {p1, p0, p2}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;I)V

    iput-object p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->a:Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

    goto :goto_0

    :cond_1
    const-string v0, "workspace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->p(Lorg/xml/sax/Attributes;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private g(Lorg/xml/sax/Attributes;)V
    .locals 4

    new-instance v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    invoke-direct {v0, p0}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V

    const-string v1, "folder_type"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;->folderType:Ljava/lang/String;

    :cond_0
    iget-object v1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;->folderType:Ljava/lang/String;

    const-string v2, "more"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "normal"

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->i:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    if-eqz v1, :cond_1

    iput-object v2, v1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;->folderType:Ljava/lang/String;

    :cond_1
    iput-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->i:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;->folderType:Ljava/lang/String;

    const-string v3, "game"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->j:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    if-eqz v1, :cond_3

    iput-object v2, v1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;->folderType:Ljava/lang/String;

    :cond_3
    iput-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->j:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    :cond_4
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->d(Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->q(Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;)V

    iput-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->f:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    return-void
.end method

.method private h(Lorg/xml/sax/Attributes;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->f:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "countrycode"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    const-string v3, "value"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->f:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    iget-object p0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;->labelList:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private i(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$LeosWidgetInfo;

    invoke-direct {v0, p0}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$LeosWidgetInfo;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->m(Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;Lorg/xml/sax/Attributes;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "title"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseInfo;->title:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseInfo;->title:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, v0}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->r(Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;)V

    return-void
.end method

.method private j(Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;Lorg/xml/sax/Attributes;)Z
    .locals 2

    :try_start_0
    const-string p0, "end_screen"

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->endScreen:I

    :cond_0
    const-string p0, "end_cell_x"

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->endCellX:I

    :cond_1
    const-string p0, "end_cell_y"

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->endCellY:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "-------load-----error ====> "

    invoke-static {p1, p0}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private k(Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;Lorg/xml/sax/Attributes;)Z
    .locals 2

    :try_start_0
    const-string p0, "screen"

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->screen:I

    :cond_0
    const-string p0, "cell_x"

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->cellX:I

    :cond_1
    const-string p0, "cell_y"

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->cellY:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "-------load-----error ====> "

    invoke-static {p1, p0}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private l(Ljava/lang/String;Lorg/xml/sax/Attributes;)Z
    .locals 2

    const-string v0, "other"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$OtherInfo;

    invoke-direct {p1, p0}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$OtherInfo;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->q(Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;)V

    return v1

    :cond_0
    const-string v0, "hotspot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotspotInfo;

    invoke-direct {p1, p0}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotspotInfo;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V

    goto :goto_0

    :cond_1
    const-string v0, "item"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->c(Lorg/xml/sax/Attributes;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private m(Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;Lorg/xml/sax/Attributes;)Z
    .locals 2

    const-string p0, "provider"

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;->provider:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;->provider:Ljava/lang/String;

    :cond_0
    :try_start_0
    const-string p0, "span_x"

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;->spanX:I

    :cond_1
    const-string p0, "span_y"

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;->spanY:I

    :cond_2
    const-string p0, "need_config"

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;->needConfig:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "-------load-----error ====> "

    invoke-static {p1, p0}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private n(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;

    invoke-direct {v0, p0}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->m(Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;Lorg/xml/sax/Attributes;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "preview"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;->preview:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->d(Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->r(Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;)V

    return-void
.end method

.method private o(Lorg/xml/sax/Attributes;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetGroupInfo;

    invoke-direct {v0, p0}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetGroupInfo;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->d(Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->q(Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;)V

    iput-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->g:Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetGroupInfo;

    return-void
.end method

.method private p(Lorg/xml/sax/Attributes;)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

    const/16 v1, -0x64

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;I)V

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->k(Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;Lorg/xml/sax/Attributes;)Z

    move-result v1

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->j(Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;Lorg/xml/sax/Attributes;)Z

    move-result p1

    and-int/2addr p1, v1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->d:Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

    iget-object p0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private q(Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->d:Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->container:I

    const/16 v1, -0x65

    if-eq v0, v1, :cond_0

    const/16 v1, -0x14d

    if-ne v0, v1, :cond_1

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotspotInfo;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$OtherInfo;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetGroupInfo;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->d:Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

    iget-object v0, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->e:Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;

    return-void
.end method

.method private r(Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->g:Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetGroupInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->e:Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;

    if-ne v0, v1, :cond_0

    iget-object p0, v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetGroupInfo;->widgetList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->q(Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->b:Ljava/util/ArrayList;

    new-instance p2, Lcom/zui/launcher/appsconfig/AppsConfigUtil$ContainerInfoComparator;

    iget v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->k:I

    iget v1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->l:I

    invoke-direct {p2, v0, v1}, Lcom/zui/launcher/appsconfig/AppsConfigUtil$ContainerInfoComparator;-><init>(II)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

    iget-object v1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->b:Ljava/util/ArrayList;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->a(Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

    const p2, 0x7fffffff

    iput p2, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->endScreen:I

    iput p2, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->endCellX:I

    iput p2, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->endCellY:I

    iput-object p3, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->i:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    iput-object p3, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->j:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    iput-object p3, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->f:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    iput-object p3, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->e:Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;

    iput-object p3, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->d:Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

    iput-object p3, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->h:Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;

    goto :goto_1

    :cond_1
    const-string p1, "folder"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object p3, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->f:Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;

    iput-object p3, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->h:Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;

    goto :goto_2

    :cond_2
    const-string p1, "widget_group"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    iput-object p3, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->g:Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetGroupInfo;

    :cond_3
    :goto_2
    return-void
.end method

.method public getDockInfo()Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->a:Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

    return-object p0
.end method

.method public getHotInfo()Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->c:Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;

    return-object p0
.end method

.method public getWorkList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    invoke-direct {p0, p2, p4}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->f(Ljava/lang/String;Lorg/xml/sax/Attributes;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2, p4}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->e(Ljava/lang/String;Lorg/xml/sax/Attributes;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2, p4}, Lcom/zui/launcher/appsconfig/AppsConfigHandler;->l(Ljava/lang/String;Lorg/xml/sax/Attributes;)Z

    return-void
.end method
