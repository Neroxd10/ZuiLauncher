.class public Lcom/zui/launcher/AutoInstallsLayout$FolderParser;
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
    name = "FolderParser"
.end annotation


# instance fields
.field private final a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/zui/launcher/AutoInstallsLayout$TagParser;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/zui/launcher/AutoInstallsLayout;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/AutoInstallsLayout;)V
    .locals 1

    invoke-virtual {p1}, Lcom/zui/launcher/AutoInstallsLayout;->getFolderElementsMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;-><init>(Lcom/zui/launcher/AutoInstallsLayout;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/AutoInstallsLayout;Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/zui/launcher/AutoInstallsLayout$TagParser;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->a:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 12

    const-string v0, "title"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/zui/launcher/AutoInstallsLayout;->getAttributeResourceValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v3, v3, Lcom/zui/launcher/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v2, v2, Lcom/zui/launcher/AutoInstallsLayout;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1203bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v3, v3, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v0, v0, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "itemType"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v0, v0, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "spanX"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v0, v0, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "spanY"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v4, v0, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    iget-object v0, v0, Lcom/zui/launcher/AutoInstallsLayout;->mCallback:Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {v0}, Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "_id"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v4, v0, Lcom/zui/launcher/AutoInstallsLayout;->mCallback:Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;

    iget-object v5, v0, Lcom/zui/launcher/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, v0, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    invoke-interface {v4, v5, v0}, Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v0

    const/4 v4, -0x1

    if-gez v0, :cond_1

    const-string p0, "AutoInstalls"

    const-string p1, "Unable to add folder"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    iget-object v6, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v6, v6, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    new-instance v6, Lcom/zui/launcher/util/IntArray;

    invoke-direct {v6}, Lcom/zui/launcher/util/IntArray;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    move v8, v1

    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x3

    const-string v11, "container"

    if-ne v9, v10, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result p1

    if-ge p1, v2, :cond_5

    invoke-static {v0}, Lcom/zui/launcher/LauncherSettings$Favorites;->getContentUri(I)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v2}, Lcom/zui/launcher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object p1, p1, Lcom/zui/launcher/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v7, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v8, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/zui/launcher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p1, v7, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result p1

    if-ne p1, v3, :cond_4

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v5, p1, v11}, Lcom/zui/launcher/AutoInstallsLayout;->b(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "screen"

    invoke-static {v5, p1, v0}, Lcom/zui/launcher/AutoInstallsLayout;->b(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "cellX"

    invoke-static {v5, p1, v0}, Lcom/zui/launcher/AutoInstallsLayout;->b(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "cellY"

    invoke-static {v5, p1, v0}, Lcom/zui/launcher/AutoInstallsLayout;->b(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v0

    iget-object p0, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object p0, p0, Lcom/zui/launcher/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "favorites"

    invoke-virtual {p0, v3, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move v0, v4

    :cond_5
    :goto_2
    return v0

    :cond_6
    :goto_3
    if-eq v9, v2, :cond_7

    goto :goto_1

    :cond_7
    iget-object v9, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v9, v9, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    iget-object v9, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v9, v9, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->b:Lcom/zui/launcher/AutoInstallsLayout;

    iget-object v9, v9, Lcom/zui/launcher/AutoInstallsLayout;->g:Landroid/content/ContentValues;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "rank"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, p0, Lcom/zui/launcher/AutoInstallsLayout$FolderParser;->a:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zui/launcher/AutoInstallsLayout$TagParser;

    if-eqz v9, :cond_8

    invoke-interface {v9, p1}, Lcom/zui/launcher/AutoInstallsLayout$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v9

    if-ltz v9, :cond_2

    invoke-virtual {v6, v9}, Lcom/zui/launcher/util/IntArray;->add(I)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid folder item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
