.class public final Lcom/amap/api/col/l3s/dn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/dn$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private c:Lcom/amap/api/col/l3s/dm;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/amap/api/col/l3s/dn$a;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3s/dn$a;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dn;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/l3s/dn;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/l3s/dn;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/dn;->h:I

    iput-object p1, p0, Lcom/amap/api/col/l3s/dn;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/dn;->g:Lcom/amap/api/col/l3s/dn$a;

    iput p3, p0, Lcom/amap/api/col/l3s/dn;->h:I

    iget-object p2, p0, Lcom/amap/api/col/l3s/dn;->c:Lcom/amap/api/col/l3s/dm;

    const-string v1, ""

    if-nez p2, :cond_1

    new-instance p2, Lcom/amap/api/col/l3s/dm;

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p2, p1, v1, v0}, Lcom/amap/api/col/l3s/dm;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/dn;->c:Lcom/amap/api/col/l3s/dm;

    :cond_1
    iget-object p2, p0, Lcom/amap/api/col/l3s/dn;->c:Lcom/amap/api/col/l3s/dm;

    invoke-virtual {p2, p4}, Lcom/amap/api/col/l3s/dm;->b(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p4, :cond_2

    move-object p4, v1

    :cond_2
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".amapstyle"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/col/l3s/dn;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/dn;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dn;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/l3s/dn;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/l3s/dn;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/dn;->h:I

    iput-object p1, p0, Lcom/amap/api/col/l3s/dn;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/dn;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object p2, p0, Lcom/amap/api/col/l3s/dn;->c:Lcom/amap/api/col/l3s/dm;

    if-nez p2, :cond_0

    new-instance p2, Lcom/amap/api/col/l3s/dm;

    const-string v0, ""

    invoke-direct {p2, p1, v0}, Lcom/amap/api/col/l3s/dm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amap/api/col/l3s/dn;->c:Lcom/amap/api/col/l3s/dm;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dn;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/l3s/dn;->c:Lcom/amap/api/col/l3s/dm;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/amap/api/col/l3s/dn;->c:Lcom/amap/api/col/l3s/dm;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/dn;->c:Lcom/amap/api/col/l3s/dm;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3s/dm;->c(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/l3s/dn;->f:Ljava/lang/String;

    return-void
.end method

.method public final run()V
    .locals 10

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getNetWorkEnable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/dn;->c:Lcom/amap/api/col/l3s/dm;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/col/l3s/dn;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/col/l3s/dn;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "lastModified"

    const-string v4, "amap_style_config"

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    :try_start_1
    iget-object v6, p0, Lcom/amap/api/col/l3s/dn;->a:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v9, "String"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string v9, "Integer"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v8, v0

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_2
    const-string v9, "Boolean"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v8, v0

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    :cond_3
    const-string v9, "Float"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v8, v0

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_0

    :cond_4
    const-string v9, "Long"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v0

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0

    :cond_5
    move-object v6, v5

    :goto_0
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_6

    if-eq v6, v0, :cond_6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_6
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3s/dn;->c:Lcom/amap/api/col/l3s/dm;

    invoke-virtual {v0, v6}, Lcom/amap/api/col/l3s/dm;->d(Ljava/lang/String;)V

    :cond_7
    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3s/dn;->e:Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amap/api/col/l3s/dn;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContents(Ljava/lang/String;)[B

    move-result-object v5

    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/l3s/dn;->g:Lcom/amap/api/col/l3s/dn$a;

    if-eqz v0, :cond_9

    if-eqz v5, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/l3s/dn;->g:Lcom/amap/api/col/l3s/dn$a;

    iget v6, p0, Lcom/amap/api/col/l3s/dn;->h:I

    invoke-interface {v0, v5, v6}, Lcom/amap/api/col/l3s/dn$a;->a([BI)V

    :cond_9
    iget-object v0, p0, Lcom/amap/api/col/l3s/dn;->c:Lcom/amap/api/col/l3s/dm;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/im;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/dm$a;

    if-eqz v0, :cond_f

    iget-object v6, v0, Lcom/amap/api/col/l3s/dm$a;->a:[B

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/amap/api/col/l3s/dn;->g:Lcom/amap/api/col/l3s/dn$a;

    if-eqz v6, :cond_a

    iget-object v6, v0, Lcom/amap/api/col/l3s/dm$a;->a:[B

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/amap/api/col/l3s/dn;->g:Lcom/amap/api/col/l3s/dn$a;

    iget-object v6, v0, Lcom/amap/api/col/l3s/dm$a;->a:[B

    iget v7, p0, Lcom/amap/api/col/l3s/dn;->h:I

    invoke-interface {v5, v6, v7}, Lcom/amap/api/col/l3s/dn$a;->b([BI)V

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/amap/api/col/l3s/dn;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/amap/api/col/l3s/dn;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v6, p0, Lcom/amap/api/col/l3s/dn;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v6}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v6

    iget-object v7, v0, Lcom/amap/api/col/l3s/dm$a;->a:[B

    invoke-interface {v5, v6, v7}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setCustomMapStyle(Z[B)V

    :cond_b
    :goto_2
    iget-object v5, v0, Lcom/amap/api/col/l3s/dm$a;->a:[B

    if-eqz v1, :cond_d

    if-nez v5, :cond_c

    goto :goto_3

    :cond_c
    iget-object v6, p0, Lcom/amap/api/col/l3s/dn;->e:Ljava/lang/String;

    if-eqz v6, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/amap/api/col/l3s/dn;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/autonavi/base/amap/mapcore/FileUtil;->saveFileContents(Ljava/lang/String;[B)V

    :cond_d
    :goto_3
    iget-object v0, v0, Lcom/amap/api/col/l3s/dm$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_f

    if-nez v0, :cond_e

    goto :goto_4

    :cond_e
    iget-object v5, p0, Lcom/amap/api/col/l3s/dn;->a:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v1, v0}, Lcom/amap/api/col/l3s/eu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    :goto_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/dn;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3s/ex;->f()Lcom/amap/api/col/l3s/je;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3s/ka;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/je;)Lcom/amap/api/col/l3s/ka;

    iget-object v0, p0, Lcom/amap/api/col/l3s/dn;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/amap/api/col/l3s/dn;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p0, v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_10
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "CustomStyleTask"

    const-string v1, "download customStyle"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
