.class Lcom/zui/launcher/provider/ImportDataTask$a;
.super Lcom/zui/launcher/DefaultLayoutParser;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/provider/ImportDataTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v5, v0, Lcom/zui/launcher/InvariantDeviceProfile;->defaultLayoutId:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    return-void
.end method


# virtual methods
.method protected getLayoutElementsMap()Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/zui/launcher/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;

    invoke-direct {v1, p0}, Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lcom/zui/launcher/DefaultLayoutParser;)V

    const-string v2, "favorite"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zui/launcher/DefaultLayoutParser$UriShortcutParser;

    iget-object v2, p0, Lcom/zui/launcher/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2}, Lcom/zui/launcher/DefaultLayoutParser$UriShortcutParser;-><init>(Lcom/zui/launcher/DefaultLayoutParser;Landroid/content/res/Resources;)V

    const-string v2, "shortcut"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zui/launcher/DefaultLayoutParser$ResolveParser;

    invoke-direct {v1, p0}, Lcom/zui/launcher/DefaultLayoutParser$ResolveParser;-><init>(Lcom/zui/launcher/DefaultLayoutParser;)V

    const-string p0, "resolve"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
