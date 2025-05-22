.class public Lcom/zui/launcher/AutoInstallsLayout$ShortcutParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ShortcutParser"
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field final synthetic b:Lcom/zui/launcher/AutoInstallsLayout;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/AutoInstallsLayout;Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/AutoInstallsLayout$ShortcutParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/AutoInstallsLayout$ShortcutParser;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 9

    const-string v0, "title"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeResourceValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "icon"

    invoke-static {p1, v2, v1}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeResourceValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "AutoInstalls"

    const/4 v4, -0x1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/AutoInstallsLayout$ShortcutParser;->parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    return v4

    :cond_1
    iget-object v5, p0, Lcom/zui/launcher/AutoInstallsLayout$ShortcutParser;->a:Landroid/content/res/Resources;

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_2

    const-string p0, "Ignoring shortcut, can\'t load icon"

    :goto_0
    invoke-static {v3, p0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2
    iget-object v3, p0, Lcom/zui/launcher/AutoInstallsLayout$ShortcutParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v3, v3, Lcom/zui/launcher/AutoInstallsLayout;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/AutoInstallsLayout$ShortcutParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v4, v4, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x1

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/zui/launcher/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IZ)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lcom/zui/launcher/icons/GraphicsUtils;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {v3}, Lcom/zui/launcher/icons/LauncherIcons;->recycle()V

    iget-object v2, p0, Lcom/zui/launcher/AutoInstallsLayout$ShortcutParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v2, v2, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/zui/launcher/AutoInstallsLayout$ShortcutParser;->a:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iconPackage"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zui/launcher/AutoInstallsLayout$ShortcutParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v2, v2, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/zui/launcher/AutoInstallsLayout$ShortcutParser;->a:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "iconResource"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x10200000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/launcher/AutoInstallsLayout$ShortcutParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v1, p0, Lcom/zui/launcher/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v8}, Lcom/zui/launcher/AutoInstallsLayout;->addShortcut(Ljava/lang/String;Landroid/content/Intent;I)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    const-string p0, "Ignoring shortcut"

    goto :goto_0
.end method

.method protected parseIntent(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 2

    const-string p0, "url"

    invoke-static {p1, p0}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-object p1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring shortcut, invalid url: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoInstalls"

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
