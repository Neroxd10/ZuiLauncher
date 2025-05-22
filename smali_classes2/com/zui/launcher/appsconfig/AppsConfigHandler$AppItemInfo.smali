.class public Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;
.super Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/appsconfig/AppsConfigHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppItemInfo"
.end annotation


# instance fields
.field public beActive:Z

.field public componentName:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public iconPackage:Ljava/lang/String;

.field public iconResource:Ljava/lang/String;

.field public intent:Ljava/lang/String;

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/appsconfig/AppsConfigHandler$BaseInfo;-><init>(Lcom/zui/launcher/appsconfig/AppsConfigHandler;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigHandler$AppItemInfo;->key:Ljava/lang/String;

    return-void
.end method
