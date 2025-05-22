.class public Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;
.super Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/appsconfig/AppsConfigHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContainerInfo"
.end annotation


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:I

.field public dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;",
            ">;"
        }
    .end annotation
.end field

.field public endCellX:I

.field public endCellY:I

.field public endScreen:I

.field public screen:I


# direct methods
.method public constructor <init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseInfo;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->endScreen:I

    iput p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->endCellX:I

    iput p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->endCellY:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->dataList:Ljava/util/ArrayList;

    iput p2, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->container:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->dataList:Ljava/util/ArrayList;

    return-void
.end method
