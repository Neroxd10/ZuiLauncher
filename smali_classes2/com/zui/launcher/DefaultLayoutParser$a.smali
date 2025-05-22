.class Lcom/zui/launcher/DefaultLayoutParser$a;
.super Lcom/zui/launcher/AutoInstallsLayout$FolderParser;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Lcom/zui/launcher/DefaultLayoutParser;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DefaultLayoutParser;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DefaultLayoutParser$a;->c:Lcom/zui/launcher/DefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;-><init>(Lcom/zui/launcher/AutoInstallsLayout;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const-string v0, "folderItems"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeResourceValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/DefaultLayoutParser$a;->c:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object p1, p1, Lcom/zui/launcher/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    const-string v0, "folder"

    invoke-static {p1, v0}, Lcom/zui/launcher/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p0

    return p0
.end method
