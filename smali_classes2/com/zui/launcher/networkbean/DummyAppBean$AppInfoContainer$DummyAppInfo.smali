.class public Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DummyAppInfo"
.end annotation


# instance fields
.field private icon:Landroid/graphics/Bitmap;

.field private iconAddr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iconaddr"
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apppack"
    .end annotation
.end field

.field final synthetic this$1:Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appname"
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appversion"
    .end annotation
.end field

.field private versioncode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appversioncode"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->this$1:Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->icon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getIconAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->iconAddr:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->version:Ljava/lang/String;

    return-object p0
.end method

.method public getVersioncode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->versioncode:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->icon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIconAddr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->iconAddr:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->version:Ljava/lang/String;

    return-void
.end method

.method public setVersioncode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->versioncode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\npackageName -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nversioncode -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/networkbean/DummyAppBean$AppInfoContainer$DummyAppInfo;->getVersioncode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
