.class public Lcom/zui/launcher/util/ContentWriter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/ContentWriter$CommitParams;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ContentValues;

.field private final b:Landroid/content/Context;

.field private c:Lcom/zui/launcher/util/ContentWriter$CommitParams;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/ContentWriter;->a:Landroid/content/ContentValues;

    iput-object p2, p0, Lcom/zui/launcher/util/ContentWriter;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/util/ContentWriter;-><init>(Landroid/content/ContentValues;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/util/ContentWriter$CommitParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/ContentWriter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/launcher/util/ContentWriter;->c:Lcom/zui/launcher/util/ContentWriter$CommitParams;

    return-void
.end method


# virtual methods
.method public commit()I
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/util/ContentWriter;->c:Lcom/zui/launcher/util/ContentWriter$CommitParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/util/ContentWriter;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/util/ContentWriter;->c:Lcom/zui/launcher/util/ContentWriter$CommitParams;

    iget-object v1, v1, Lcom/zui/launcher/util/ContentWriter$CommitParams;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/zui/launcher/util/ContentWriter;->b:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/zui/launcher/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v2

    iget-object p0, p0, Lcom/zui/launcher/util/ContentWriter;->c:Lcom/zui/launcher/util/ContentWriter$CommitParams;

    iget-object v3, p0, Lcom/zui/launcher/util/ContentWriter$CommitParams;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/util/ContentWriter$CommitParams;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getValues(Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 2

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertNonUiThread()V

    iget-object v0, p0, Lcom/zui/launcher/util/ContentWriter;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/util/ContentWriter;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/zui/launcher/util/ContentWriter;->e:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/icons/cache/BaseIconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/util/ContentWriter;->a:Landroid/content/ContentValues;

    iget-object v0, p0, Lcom/zui/launcher/util/ContentWriter;->d:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/zui/launcher/icons/GraphicsUtils;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/util/ContentWriter;->d:Landroid/graphics/Bitmap;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/util/ContentWriter;->a:Landroid/content/ContentValues;

    return-object p0
.end method

.method public put(Ljava/lang/String;Landroid/content/Intent;)Lcom/zui/launcher/util/ContentWriter;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/util/ContentWriter;->a:Landroid/content/ContentValues;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/zui/launcher/util/ContentWriter;
    .locals 2

    sget-object v0, Lcom/zui/launcher/pm/UserCache;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/launcher/util/ContentWriter;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/pm/UserCache;

    invoke-virtual {v0, p2}, Lcom/zui/launcher/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/zui/launcher/util/ContentWriter;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/ContentWriter;->a:Landroid/content/ContentValues;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/ContentWriter;->a:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Long;)Lcom/zui/launcher/util/ContentWriter;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/ContentWriter;->a:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/util/ContentWriter;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/ContentWriter;->a:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public putIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Lcom/zui/launcher/util/ContentWriter;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/util/ContentWriter;->d:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/zui/launcher/util/ContentWriter;->e:Landroid/os/UserHandle;

    return-object p0
.end method
