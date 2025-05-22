.class public Lcom/zui/launcher/AutoInstallsLayout$PendingLeosWidgetParser;
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
    name = "PendingLeosWidgetParser"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/AutoInstallsLayout;


# direct methods
.method protected constructor <init>(Lcom/zui/launcher/AutoInstallsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingLeosWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 5

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "className"

    invoke-static {p1, v1}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "AutoInstalls"

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseAndAdd leosWidget: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingLeosWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v2, v2, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    const-string v3, "spanX"

    invoke-static {p1, v3}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingLeosWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v2, v2, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    const-string v3, "spanY"

    invoke-static {p1, v3}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingLeosWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object p1, p1, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "itemType"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/AutoInstallsLayout$PendingLeosWidgetParser;->verifyAndInsert(Landroid/content/ComponentName;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "Skipping invalid <appwidget> with no component"

    invoke-static {v3, p0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method protected verifyAndInsert(Landroid/content/ComponentName;)I
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingLeosWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v0, v0, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingLeosWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v0, v0, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingLeosWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v0, p1, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    iget-object p1, p1, Lcom/zui/launcher/AutoInstallsLayout;->mCallback:Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {p1}, Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/zui/launcher/AutoInstallsLayout$PendingLeosWidgetParser;->a:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object p1, p0, Lcom/zui/launcher/AutoInstallsLayout;->mCallback:Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;

    iget-object v0, p0, Lcom/zui/launcher/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p0, p0, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    invoke-interface {p1, v0, p0}, Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result p0

    const-string p1, "AutoInstalls"

    if-gez p0, :cond_0

    const-string p0, "verifyAndInsert leosWidget  failed"

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "verifyAndInsert leosWidget  ok  insertedId"

    invoke-static {p1, v0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method
