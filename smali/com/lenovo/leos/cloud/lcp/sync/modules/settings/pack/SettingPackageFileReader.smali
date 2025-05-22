.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader$PackageReaderCallback;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/zip/ZipInputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->b:Ljava/util/zip/ZipInputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->b:Ljava/util/zip/ZipInputStream;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_0
    return-void
.end method

.method public getPackageFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->a:Ljava/lang/String;

    return-object p0
.end method

.method public readPackageItem(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader$PackageReaderCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->b:Ljava/util/zip/ZipInputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->b:Ljava/util/zip/ZipInputStream;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->b:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->b:Ljava/util/zip/ZipInputStream;

    invoke-interface {p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader$PackageReaderCallback;->onGetInputStream(Ljava/io/InputStream;)V

    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->b:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->b:Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V

    return-void
.end method

.method public removePackageFile()V
    .locals 1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method
