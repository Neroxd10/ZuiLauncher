.class public Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;
.super Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/appsconfig/AppsConfigHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaseData"
.end annotation


# instance fields
.field public itemType:I

.field public mustShow:Z

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseInfo;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;->spanX:I

    iput p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;->spanY:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseData;->mustShow:Z

    return-void
.end method
