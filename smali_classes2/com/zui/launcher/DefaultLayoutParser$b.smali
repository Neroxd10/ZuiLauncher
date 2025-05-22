.class Lcom/zui/launcher/DefaultLayoutParser$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/DefaultLayoutParser;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DefaultLayoutParser;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DefaultLayoutParser$b;->a:Lcom/zui/launcher/DefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3

    iget-object p1, p0, Lcom/zui/launcher/DefaultLayoutParser$b;->a:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object p1, p1, Lcom/zui/launcher/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Lcom/zui/launcher/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/zui/launcher/Partner;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "partner_folder"

    const-string v2, "xml"

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    const-string v1, "folder"

    invoke-static {p1, v1}, Lcom/zui/launcher/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    new-instance v1, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;

    iget-object p0, p0, Lcom/zui/launcher/DefaultLayoutParser$b;->a:Lcom/zui/launcher/DefaultLayoutParser;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/DefaultLayoutParser;->e(Landroid/content/res/Resources;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;-><init>(Lcom/zui/launcher/AutoInstallsLayout;Landroid/util/ArrayMap;)V

    invoke-virtual {v1, p1}, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
