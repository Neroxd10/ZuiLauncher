.class public Lcom/zui/launcher/DefaultLayoutParser;
.super Lcom/zui/launcher/AutoInstallsLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;,
        Lcom/zui/launcher/DefaultLayoutParser$a;,
        Lcom/zui/launcher/DefaultLayoutParser$b;,
        Lcom/zui/launcher/DefaultLayoutParser$ResolveParser;,
        Lcom/zui/launcher/DefaultLayoutParser$UriShortcutParser;,
        Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;
    }
.end annotation


# static fields
.field protected static final ATTR_URI:Ljava/lang/String; = "uri"

.field protected static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field protected static final TAG_RESOLVE:Ljava/lang/String; = "resolve"

.field protected static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V
    .locals 7

    const-string v6, "favorites"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/AutoInstallsLayout;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method e(Landroid/content/res/Resources;)Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
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

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/DefaultLayoutParser$UriShortcutParser;-><init>(Lcom/zui/launcher/DefaultLayoutParser;Landroid/content/res/Resources;)V

    const-string p0, "shortcut"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getFolderElementsMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/zui/launcher/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/DefaultLayoutParser;->e(Landroid/content/res/Resources;)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

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

    new-instance v1, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;

    invoke-direct {v1, p0}, Lcom/zui/launcher/DefaultLayoutParser$AppWidgetParser;-><init>(Lcom/zui/launcher/DefaultLayoutParser;)V

    const-string v2, "appwidget"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zui/launcher/DefaultLayoutParser$UriShortcutParser;

    iget-object v2, p0, Lcom/zui/launcher/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2}, Lcom/zui/launcher/DefaultLayoutParser$UriShortcutParser;-><init>(Lcom/zui/launcher/DefaultLayoutParser;Landroid/content/res/Resources;)V

    const-string v2, "shortcut"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zui/launcher/DefaultLayoutParser$ResolveParser;

    invoke-direct {v1, p0}, Lcom/zui/launcher/DefaultLayoutParser$ResolveParser;-><init>(Lcom/zui/launcher/DefaultLayoutParser;)V

    const-string v2, "resolve"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zui/launcher/DefaultLayoutParser$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/DefaultLayoutParser$a;-><init>(Lcom/zui/launcher/DefaultLayoutParser;)V

    const-string v2, "folder"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zui/launcher/DefaultLayoutParser$b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/DefaultLayoutParser$b;-><init>(Lcom/zui/launcher/DefaultLayoutParser;)V

    const-string v2, "partner-folder"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zui/launcher/AutoInstallsLayout$PendingLeosWidgetParser;

    invoke-direct {v1, p0}, Lcom/zui/launcher/AutoInstallsLayout$PendingLeosWidgetParser;-><init>(Lcom/zui/launcher/AutoInstallsLayout;)V

    const-string p0, "leoswidget"

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected parseContainerAndScreen(Lorg/xmlpull/v1/XmlPullParser;[I)V
    .locals 2

    const/16 p0, -0x64

    const/4 v0, 0x0

    aput p0, p2, v0

    const-string p0, "container"

    invoke-static {p1, p0}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "screen"

    invoke-static {p1, v1}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aput p0, p2, v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aput p1, p2, p0

    :cond_1
    return-void
.end method
