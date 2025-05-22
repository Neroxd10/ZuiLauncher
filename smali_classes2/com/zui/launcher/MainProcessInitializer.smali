.class public Lcom/zui/launcher/MainProcessInitializer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/ResourceBasedOverride;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/zui/launcher/MainProcessInitializer;

    const v1, 0x7f1204bb

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/zui/launcher/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/MainProcessInitializer;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/MainProcessInitializer;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/logging/FileLog;->setDir(Ljava/io/File;)V

    invoke-static {p1}, Lcom/zui/launcher/config/BaseFlags;->initialize(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/zui/launcher/graphics/IconShape;->init(Landroid/content/Context;)V

    return-void
.end method
