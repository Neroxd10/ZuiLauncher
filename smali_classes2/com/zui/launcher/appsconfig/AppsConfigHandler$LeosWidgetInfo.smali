.class public Lcom/zui/launcher/appsconfig/AppsConfigHandler$LeosWidgetInfo;
.super Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/appsconfig/AppsConfigHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LeosWidgetInfo"
.end annotation


# direct methods
.method public constructor <init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V

    const/4 p1, 0x7

    iput p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;->itemType:I

    return-void
.end method
