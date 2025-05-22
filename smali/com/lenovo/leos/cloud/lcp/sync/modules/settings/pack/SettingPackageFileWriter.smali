.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/zip/ZipOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->b:Ljava/util/zip/ZipOutputStream;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingFileUtil;->getPackageFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->b:Ljava/util/zip/ZipOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->b:Ljava/util/zip/ZipOutputStream;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getPackageFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->a:Ljava/lang/String;

    return-object p0
.end method

.method public removePackageFile()V
    .locals 1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public writePackageItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v1, "/"

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v4, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v3, 0x800

    new-array v4, v3, [B

    :goto_0
    invoke-virtual {v0, v4, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_0

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v6, v4, v2, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v0, p0, v2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p0

    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw p0
.end method
