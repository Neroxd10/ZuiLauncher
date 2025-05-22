.class Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader$PackageReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->h(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetInputStream(Ljava/io/InputStream;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->setWallpaper(Ljava/io/InputStream;)V

    return-void
.end method
