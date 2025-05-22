.class final Lcom/amap/api/col/l3s/fr$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/fr;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/fr;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/fr;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fr$1;->a:Lcom/amap/api/col/l3s/fr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr$1;->a:Lcom/amap/api/col/l3s/fr;

    sget-object v1, Lcom/autonavi/amap/mapcore/AMapEngineUtils;->LOGO_CUSTOM_ICON_DAY_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3s/fr;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr$1;->a:Lcom/amap/api/col/l3s/fr;

    sget-object v1, Lcom/autonavi/amap/mapcore/AMapEngineUtils;->LOGO_CUSTOM_ICON_NIGHT_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3s/fr;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr$1;->a:Lcom/amap/api/col/l3s/fr;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fr;->a(Lcom/amap/api/col/l3s/fr;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "amap_web_logo"

    const-string v3, "md5_day"

    const-string v4, ""

    invoke-static {v0, v1, v3, v4}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr$1;->a:Lcom/amap/api/col/l3s/fr;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fr;->b(Lcom/amap/api/col/l3s/fr;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v5, "md5_night"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr$1;->a:Lcom/amap/api/col/l3s/fr;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fr;->c(Lcom/amap/api/col/l3s/fr;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/amap/mapcore/AMapEngineUtils;->LOGO_CUSTOM_ICON_DAY_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/col/l3s/jc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/amap/api/col/l3s/fr$1;->a:Lcom/amap/api/col/l3s/fr;

    invoke-static {v6}, Lcom/amap/api/col/l3s/fr;->a(Lcom/amap/api/col/l3s/fr;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1, v3, v0}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/autonavi/amap/mapcore/AMapEngineUtils;->LOGO_CUSTOM_ICON_NIGHT_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/col/l3s/jc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/amap/api/col/l3s/fr$1;->a:Lcom/amap/api/col/l3s/fr;

    invoke-static {v3}, Lcom/amap/api/col/l3s/fr;->a(Lcom/amap/api/col/l3s/fr;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v5, v0}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/fr$1;->a:Lcom/amap/api/col/l3s/fr;

    invoke-virtual {p0, v2}, Lcom/amap/api/col/l3s/fr;->d(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/fr$1;->a:Lcom/amap/api/col/l3s/fr;

    invoke-static {v0}, Lcom/amap/api/col/l3s/fr;->a(Lcom/amap/api/col/l3s/fr;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "0b718b5f291b09d2b62be725dfb977b3"

    invoke-static {v0, v1, v3, v2}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/fr$1;->a:Lcom/amap/api/col/l3s/fr;

    invoke-static {p0}, Lcom/amap/api/col/l3s/fr;->a(Lcom/amap/api/col/l3s/fr;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "4b1405462a5c910de0e0723ffd96c018"

    invoke-static {p0, v1, v5, v0}, Lcom/amap/api/col/l3s/en;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
