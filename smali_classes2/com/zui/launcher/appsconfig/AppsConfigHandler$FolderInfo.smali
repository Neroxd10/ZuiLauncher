.class public Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;
.super Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/appsconfig/AppsConfigHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderInfo"
.end annotation


# instance fields
.field public appList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public folderType:Ljava/lang/String;

.field public labelList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;->itemType:I

    const-string p1, "normal"

    iput-object p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;->folderType:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;->appList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$FolderInfo;->labelList:Ljava/util/HashMap;

    return-void
.end method
