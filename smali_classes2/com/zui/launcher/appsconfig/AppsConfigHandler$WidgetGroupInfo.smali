.class public Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetGroupInfo;
.super Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/appsconfig/AppsConfigHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetGroupInfo"
.end annotation


# instance fields
.field public widgetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V

    const/16 p1, 0x171

    iput p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;->itemType:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetGroupInfo;->widgetList:Ljava/util/ArrayList;

    return-void
.end method
