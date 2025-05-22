.class public Lcom/zui/launcher/provider/ImportDataTask;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/provider/ImportDataTask$b;,
        Lcom/zui/launcher/provider/ImportDataTask$a;
    }
.end annotation


# static fields
.field public static final KEY_DATA_IMPORT_SRC_AUTHORITY:Ljava/lang/String; = "data_import_src_authority"

.field public static final KEY_DATA_IMPORT_SRC_PKG:Ljava/lang/String; = "data_import_src_pkg"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/net/Uri;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/provider/ImportDataTask;->a:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "favorites"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/provider/ImportDataTask;->b:Landroid/net/Uri;

    return-void
.end method

.method static synthetic a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/provider/ImportDataTask;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private c()V
    .locals 56

    move-object/from16 v0, p0

    const-string v1, "iconResource"

    const-string v2, "iconPackage"

    const-string v3, "icon"

    const-string v4, "rank"

    const-string v5, "spanY"

    const-string v6, "spanX"

    const-string v7, "cellY"

    const-string v8, "cellX"

    const-string v9, "screen"

    const-string v10, "appWidgetProvider"

    const-string v11, "itemType"

    const-string v12, "container"

    const-string v13, "title"

    const-string v14, "intent"

    const-string v15, "_id"

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/zui/launcher/provider/ImportDataTask;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v1

    move-object/from16 v17, v2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/zui/launcher/provider/ImportDataTask;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->isQsbOnFirstScreen(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v18, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/zui/launcher/provider/ImportDataTask;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    iget-object v2, v0, Lcom/zui/launcher/provider/ImportDataTask;->b:Landroid/net/Uri;

    const/16 v22, 0x0

    move-object/from16 v26, v4

    new-array v4, v3, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v1, v4, v19

    const/16 v25, 0x0

    const-string v23, "profileId = ? AND container = -100 AND cellY = 0 AND screen = (SELECT MIN(screen) FROM favorites WHERE container = -100)"

    move-object/from16 v21, v2

    move-object/from16 v24, v4

    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    :cond_1
    move-object/from16 v26, v4

    const/4 v4, 0x0

    :cond_2
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v27, v2

    iget-object v2, v0, Lcom/zui/launcher/provider/ImportDataTask;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    iget-object v2, v0, Lcom/zui/launcher/provider/ImportDataTask;->b:Landroid/net/Uri;

    const/16 v30, 0x0

    move-object/from16 v21, v3

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v31, "profileId = ?"

    const-string v33, "container , screen"

    move-object/from16 v29, v2

    move-object/from16 v32, v0

    invoke-virtual/range {v28 .. v33}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_2
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v22, v13

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move/from16 v23, v3

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v24, v12

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v25, v11

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v28, v9

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v29, v8

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v30, v7

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v31, v6

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v32, v5

    move-object/from16 v5, v26

    move-object/from16 v26, v15

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v33, v5

    move-object/from16 v5, v18

    move/from16 v18, v15

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v34, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v5

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move/from16 v35, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v14

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v36, v15

    new-instance v15, Landroid/util/SparseBooleanArray;

    invoke-direct {v15}, Landroid/util/SparseBooleanArray;-><init>()V

    move/from16 v37, v14

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    move/from16 v38, v5

    const/4 v5, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v41
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v42, v2

    const-string v2, "com.zui.launcher.settings"

    move-object/from16 v43, v2

    const-string v2, "ImportDataTask"

    if-eqz v41, :cond_13

    :try_start_3
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v41, v10

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v44, v0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v45, v3

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    move/from16 v51, v5

    const/16 v5, -0x65

    move/from16 v52, v6

    if-eq v3, v5, :cond_8

    const/16 v5, -0x64

    if-eq v3, v5, :cond_4

    invoke-virtual {v15, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "Skipping item %d, type %d not in a valid folder %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v19, 0x0

    aput-object v10, v6, v19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v10, 0x1

    aput-object v0, v6, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v2, v0}, Lcom/zui/launcher/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    move-object/from16 v6, p0

    move/from16 v54, v4

    goto/16 :goto_5

    :cond_4
    if-gez v46, :cond_5

    const-string v3, "Skipping item %d, type %d not on a valid screen %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v5, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :goto_4
    move-object/from16 v10, v41

    move/from16 v2, v42

    move/from16 v0, v44

    move/from16 v3, v45

    move/from16 v5, v51

    move/from16 v6, v52

    goto/16 :goto_2

    :cond_5
    if-nez v40, :cond_6

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    :cond_6
    move-object/from16 v5, v40

    if-eqz v4, :cond_7

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v48, v48, 0x1

    const/16 v46, 0x0

    :cond_7
    move-object/from16 v6, p0

    move/from16 v54, v4

    iget v4, v6, Lcom/zui/launcher/provider/ImportDataTask;->d:I

    move-object/from16 v40, v5

    add-int v5, v47, v49

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v6, Lcom/zui/launcher/provider/ImportDataTask;->d:I

    iget v4, v6, Lcom/zui/launcher/provider/ImportDataTask;->e:I

    add-int v5, v48, v50

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v6, Lcom/zui/launcher/provider/ImportDataTask;->e:I

    goto :goto_5

    :cond_8
    move-object/from16 v6, p0

    move/from16 v54, v4

    iget v4, v6, Lcom/zui/launcher/provider/ImportDataTask;->c:I

    add-int/lit8 v5, v46, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v6, Lcom/zui/launcher/provider/ImportDataTask;->c:I

    :goto_5
    if-eqz v0, :cond_c

    const/4 v4, 0x1

    if-eq v0, v4, :cond_c

    const/4 v4, 0x2

    if-eq v0, v4, :cond_b

    const/4 v5, 0x4

    if-eq v0, v5, :cond_a

    const/16 v5, 0x8

    if-eq v0, v5, :cond_9

    const-string v3, "Skipping item %d, not a valid type %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v4, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/launcher/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v55, v33

    move/from16 v53, v38

    move-object/from16 v38, v41

    const/4 v5, 0x0

    goto/16 :goto_a

    :cond_9
    move-object/from16 v5, v41

    move/from16 v4, v42

    move/from16 v41, v0

    goto :goto_7

    :cond_a
    const-string v4, "restored"

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v41

    invoke-virtual {v14, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v55, v33

    move/from16 v53, v38

    const/4 v4, 0x0

    goto :goto_6

    :cond_b
    move-object/from16 v5, v41

    const/4 v4, 0x1

    invoke-virtual {v15, v10, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object/from16 v55, v33

    move/from16 v53, v38

    :goto_6
    const/16 v33, 0x1

    move-object/from16 v38, v5

    goto/16 :goto_9

    :cond_c
    move-object/from16 v5, v41

    move/from16 v41, v0

    move/from16 v4, v42

    :goto_7
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v42, v4

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/PackageManagerHelper;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_d

    move/from16 v53, v38

    const/16 v41, 0x0

    move-object/from16 v38, v5

    move-object/from16 v5, v36

    goto :goto_8

    :cond_d
    move/from16 v4, v38

    move-object/from16 v38, v5

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v53, v4

    move-object/from16 v4, v16

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v4

    move/from16 v5, v37

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v37, v5

    move-object/from16 v5, v36

    invoke-virtual {v14, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    move-object/from16 v36, v5

    move/from16 v4, v35

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    move/from16 v35, v4

    move-object/from16 v4, v17

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    move-object/from16 v17, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v34

    invoke-virtual {v14, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v4, v18

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move-object/from16 v34, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v18, v4

    move-object/from16 v4, v33

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "restored"

    move-object/from16 v55, v4

    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v4, v34

    move/from16 v0, v41

    move-object/from16 v34, v5

    :goto_9
    const/16 v5, -0x65

    if-ne v3, v5, :cond_10

    if-nez v4, :cond_e

    const-string v0, "Skipping item %d, null intent on hotseat"

    move/from16 v3, v33

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/launcher/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    move-object/from16 v10, v38

    move/from16 v2, v42

    move/from16 v0, v44

    move/from16 v3, v45

    move/from16 v5, v51

    move/from16 v6, v52

    move/from16 v38, v53

    move/from16 v4, v54

    move-object/from16 v33, v55

    goto/16 :goto_2

    :cond_e
    const/4 v5, 0x0

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_f
    invoke-static {v4}, Lcom/zui/launcher/provider/ImportDataTask;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v21

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_10
    move-object/from16 v4, v21

    const/4 v5, 0x0

    :goto_b
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v10, v26

    invoke-virtual {v14, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v25

    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v5, v24

    invoke-virtual {v14, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v25, v2

    move-object/from16 v2, v28

    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v28, v2

    move-object/from16 v2, v29

    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v29, v2

    move-object/from16 v2, v30

    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v30, v2

    move-object/from16 v2, v31

    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v31, v2

    move-object/from16 v2, v32

    invoke-virtual {v14, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v32, v2

    move/from16 v0, v23

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v23, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/zui/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v22, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez v3, :cond_11

    add-int/lit8 v39, v39, 0x1

    :cond_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xf

    if-lt v2, v3, :cond_12

    iget-object v2, v6, Lcom/zui/launcher/provider/ImportDataTask;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v3, v43

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_12
    move-object/from16 v27, v0

    move-object/from16 v21, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v10

    goto/16 :goto_a

    :cond_13
    move-object/from16 v6, p0

    move-object/from16 v4, v21

    move-object/from16 v0, v27

    move-object/from16 v3, v43

    if-eqz v1, :cond_14

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v7, v39

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " items imported from external source"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/launcher/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    if-lt v7, v1, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v6, Lcom/zui/launcher/provider/ImportDataTask;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_15
    iget-object v1, v6, Lcom/zui/launcher/provider/ImportDataTask;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/launcher/model/GridSizeMigrationTask;->removeBrokenHotseatItems(Landroid/content/Context;)Lcom/zui/launcher/util/IntSparseArrayMap;

    move-result-object v1

    iget-object v2, v6, Lcom/zui/launcher/provider/ImportDataTask;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v7, v2, :cond_16

    new-instance v7, Lcom/zui/launcher/provider/ImportDataTask$b;

    const/4 v8, 0x1

    add-int/lit8 v24, v5, 0x1

    move-object/from16 v20, v7

    move-object/from16 v21, v4

    move-object/from16 v22, v1

    move-object/from16 v23, v0

    move/from16 v25, v2

    invoke-direct/range {v20 .. v25}, Lcom/zui/launcher/provider/ImportDataTask$b;-><init>(Ljava/util/HashSet;Lcom/zui/launcher/util/IntSparseArrayMap;Ljava/util/ArrayList;II)V

    new-instance v2, Lcom/zui/launcher/provider/ImportDataTask$a;

    iget-object v4, v6, Lcom/zui/launcher/provider/ImportDataTask;->a:Landroid/content/Context;

    invoke-direct {v2, v4, v7}, Lcom/zui/launcher/provider/ImportDataTask$a;-><init>(Landroid/content/Context;Lcom/zui/launcher/AutoInstallsLayout$LayoutParserCallback;)V

    new-instance v4, Lcom/zui/launcher/util/IntArray;

    invoke-direct {v4}, Lcom/zui/launcher/util/IntArray;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Lcom/zui/launcher/AutoInstallsLayout;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;Lcom/zui/launcher/util/IntArray;)I

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    add-int/2addr v1, v4

    iput v1, v6, Lcom/zui/launcher/provider/ImportDataTask;->c:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, v6, Lcom/zui/launcher/provider/ImportDataTask;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    :cond_16
    return-void

    :cond_17
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Insufficient data"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_18

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_18
    :goto_c
    throw v2
.end method

.method public static performImportIfPossible(Landroid/content/Context;)Z
    .locals 7

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "data_import_src_pkg"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data_import_src_authority"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "get_empty_db_flag"

    invoke-static {v0, v1}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return v6

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v4, v6}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    return v6

    :cond_3
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {p0, v1, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    :cond_4
    new-instance v0, Lcom/zui/launcher/provider/ImportDataTask;

    invoke-direct {v0, p0, v2}, Lcom/zui/launcher/provider/ImportDataTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zui/launcher/provider/ImportDataTask;->importWorkspace()Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v6
.end method


# virtual methods
.method public importWorkspace()Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Importing DB from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/provider/ImportDataTask;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImportDataTask"

    invoke-static {v1, v0}, Lcom/zui/launcher/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/provider/ImportDataTask;->e:I

    iput v0, p0, Lcom/zui/launcher/provider/ImportDataTask;->d:I

    iput v0, p0, Lcom/zui/launcher/provider/ImportDataTask;->c:I

    invoke-direct {p0}, Lcom/zui/launcher/provider/ImportDataTask;->c()V

    iget-object v0, p0, Lcom/zui/launcher/provider/ImportDataTask;->a:Landroid/content/Context;

    iget v1, p0, Lcom/zui/launcher/provider/ImportDataTask;->d:I

    iget v2, p0, Lcom/zui/launcher/provider/ImportDataTask;->e:I

    iget v3, p0, Lcom/zui/launcher/provider/ImportDataTask;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/zui/launcher/model/GridSizeMigrationTask;->markForMigration(Landroid/content/Context;III)V

    iget-object p0, p0, Lcom/zui/launcher/provider/ImportDataTask;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "clear_empty_db_flag"

    invoke-static {p0, v0}, Lcom/zui/launcher/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    const/4 p0, 0x1

    return p0
.end method
