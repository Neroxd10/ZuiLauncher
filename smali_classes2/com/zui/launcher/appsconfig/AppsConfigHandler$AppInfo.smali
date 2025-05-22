.class public Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppInfo;
.super Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/appsconfig/AppsConfigHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppInfo"
.end annotation


# instance fields
.field public itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V

    iput p2, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;->itemType:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppInfo;->itemList:Ljava/util/ArrayList;

    return-void
.end method
