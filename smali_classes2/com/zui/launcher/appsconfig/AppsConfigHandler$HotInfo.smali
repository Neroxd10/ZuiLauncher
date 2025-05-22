.class public Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;
.super Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/appsconfig/AppsConfigHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HotInfo"
.end annotation


# instance fields
.field public cursorIndex:I


# direct methods
.method public constructor <init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V
    .locals 1

    const/16 v0, -0x14d

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;->cursorIndex:I

    iput p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;->cursorIndex:I

    return-void
.end method


# virtual methods
.method public isEOF()Z
    .locals 1

    iget v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;->cursorIndex:I

    iget-object p0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->dataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public readBaseData()Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->dataList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;->cursorIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;

    iget v1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;->cursorIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;->cursorIndex:I

    return-object v0
.end method

.method public resetCursorIndex()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;->cursorIndex:I

    return-void
.end method

.method public rollback()V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;->cursorIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$HotInfo;->cursorIndex:I

    return-void
.end method
