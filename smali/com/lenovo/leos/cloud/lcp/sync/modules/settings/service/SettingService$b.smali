.class Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader$PackageReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->g(Lorg/json/JSONObject;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetInputStream(Ljava/io/InputStream;)V
    .locals 1

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$b;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p1, v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    return-void
.end method
