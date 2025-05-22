.class public Lcom/zui/launcher/AutoInstallsLayout$PendingWidgetParser;
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
    name = "PendingWidgetParser"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/AutoInstallsLayout;


# direct methods
.method protected constructor <init>(Lcom/zui/launcher/AutoInstallsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 6

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "className"

    invoke-static {p1, v1}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v2, v2, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    const-string v3, "spanX"

    invoke-static {p1, v3}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v2, v2, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    const-string v3, "spanY"

    invoke-static {p1, v3}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v2, v2, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "itemType"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lcom/zui/launcher/AutoInstallsLayout$PendingWidgetParser;->verifyAndInsert(Landroid/content/ComponentName;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :cond_2
    :goto_1
    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "extra"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "key"

    invoke-static {p1, v4}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-static {p1, v5}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Widget extras must have a key and value"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Widgets can contain only extras"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    const-string p0, "AutoInstalls"

    const-string p1, "Skipping invalid <appwidget> with no component"

    invoke-static {p0, p1}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method protected verifyAndInsert(Landroid/content/ComponentName;Landroid/os/Bundle;)I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v0, v0, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "appWidgetProvider"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object p1, p1, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "restored"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v0, p1, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    iget-object p1, p1, Lcom/zui/launcher/AutoInstallsLayout;->mCallback:Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {p1}, Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object p1, p1, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "intent"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object p1, p0, Lcom/zui/launcher/AutoInstallsLayout;->mCallback:Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;

    iget-object p2, p0, Lcom/zui/launcher/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p0, p0, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    invoke-interface {p1, p2, p0}, Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result p0

    if-gez p0, :cond_1

    const/4 p0, -0x1

    :cond_1
    return p0
.end method
