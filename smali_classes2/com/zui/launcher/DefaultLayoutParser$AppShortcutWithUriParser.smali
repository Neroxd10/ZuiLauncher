.class public Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;
.super Lcom/zui/launcher/AutoInstallsLayout$AppShortcutParser;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppShortcutWithUriParser"
.end annotation


# instance fields
.field final synthetic b:Lcom/zui/launcher/DefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/DefaultLayoutParser;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/zui/launcher/AutoInstallsLayout$AppShortcutParser;-><init>(Lcom/zui/launcher/AutoInstallsLayout;)V

    return-void
.end method

.method private a(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    :goto_0
    if-ge v3, v0, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object v5, v5, Lcom/zui/launcher/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    if-eqz v4, :cond_0

    return-object v2

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "DefaultLayoutParser"

    const-string v0, "Unable to get info about resolve results"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_2
    return-object v4
.end method

.method private b(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected invalidPackageOrClass(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 6

    const-string v0, "uri"

    invoke-static {p1, v0}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "DefaultLayoutParser"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const-string p0, "Skipping invalid <favorite> with no component or uri"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object v3, v3, Lcom/zui/launcher/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x10000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v5, p0, Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object v5, v5, Lcom/zui/launcher/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;->b(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v4}, Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;->a(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No preference or single system activity found for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object p1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object v1, v1, Lcom/zui/launcher/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/launcher/DefaultLayoutParser$AppShortcutWithUriParser;->b:Lcom/zui/launcher/DefaultLayoutParser;

    iget-object v2, p0, Lcom/zui/launcher/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/zui/launcher/AutoInstallsLayout;->addShortcut(Ljava/lang/String;Landroid/content/Intent;I)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add meta-favorite: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", e->"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public bridge synthetic parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/AutoInstallsLayout$AppShortcutParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p0

    return p0
.end method
