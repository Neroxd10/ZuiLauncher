.class public final synthetic Lcom/zui/launcher/globalsearch/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/globalsearch/AMapLocationUtills;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/globalsearch/AMapLocationUtills;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/a;->a:Lcom/zui/launcher/globalsearch/AMapLocationUtills;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/a;->a:Lcom/zui/launcher/globalsearch/AMapLocationUtills;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/a;->b:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->c(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V

    return-void
.end method
