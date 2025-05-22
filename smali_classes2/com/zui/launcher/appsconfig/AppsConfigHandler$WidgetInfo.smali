.class public Lcom/zui/launcher/appsconfig/AppsConfigHandler$WidgetInfo;
.super Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/appsconfig/AppsConfigHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetInfo"
.end annotation


# instance fields
.field public needConfig:I

.field public preview:Ljava/lang/String;

.field public provider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;->itemType:I

    return-void
.end method
