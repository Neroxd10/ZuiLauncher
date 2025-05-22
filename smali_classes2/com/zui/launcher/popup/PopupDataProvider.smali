.class public Lcom/zui/launcher/popup/PopupDataProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/notification/NotificationListener$NotificationsChangedListener;
.implements Lcom/zui/launcher/dot/ZuiDotDataListener$ZuiDotDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;
    }
.end annotation


# instance fields
.field private final a:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/util/function/Predicate<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/zui/launcher/Launcher;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/zui/launcher/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            "Lcom/zui/launcher/dot/DotInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zui/launcher/util/ShortcutUserKey;",
            "Lcom/zui/launcher/dot/DotInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/Launcher;",
            "Landroidx/core/util/Consumer<",
            "Ljava/util/function/Predicate<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->d:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->f:Ljava/util/List;

    sget-object v0, Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;->INSTANCE:Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;

    iput-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->g:Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->h:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->i:Ljava/util/List;

    iput-object p2, p0, Lcom/zui/launcher/popup/PopupDataProvider;->a:Landroidx/core/util/Consumer;

    iput-object p1, p0, Lcom/zui/launcher/popup/PopupDataProvider;->b:Lcom/zui/launcher/Launcher;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 23

    const-string v1, "badge"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v3, Lcom/zui/launcher/dot/ZuiDotConstant$ZuiDotSettingValue;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "pkg_name_c"

    const-string v9, "show_sub_icon"

    filled-new-array {v0, v9}, [Ljava/lang/String;

    move-result-object v4

    move-object/from16 v15, p0

    iget-object v2, v15, Lcom/zui/launcher/popup/PopupDataProvider;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x1

    const/4 v10, 0x0

    const/16 v19, 0x0

    move-object v2, v8

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "app_package_name in ( "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_0

    move/from16 v7, v18

    goto :goto_1

    :cond_0
    move v7, v10

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v14, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, " ? ,"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-interface {v5, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v3, v18

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v5, v3

    :goto_2
    move-object/from16 v3, v19

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v3, v19

    goto :goto_4

    :cond_2
    move v3, v10

    move-object/from16 v0, v19

    move-object v5, v0

    :goto_3
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v6, v5

    move-object v5, v0

    move v0, v3

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v2, v19

    move-object v3, v2

    :goto_4
    move-object v5, v3

    :goto_5
    :try_start_5
    const-string v4, "getRedDot read Settings failed e="

    invoke-static {v1, v4, v0}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v6, v5

    move v0, v10

    move-object v5, v3

    :goto_6
    :try_start_6
    sget-object v3, Lcom/zui/launcher/dot/ZuiDotConstant;->REDHOT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_9

    :try_start_7
    const-string v3, "app_package_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "app_class_name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "app_badge_count"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "app_shortcut_custom_id"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "user_id"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    :goto_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_5

    const-string v8, "appName==null"

    invoke-static {v1, v8}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_5
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-lez v7, :cond_6

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    :cond_6
    move v11, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v3

    const-string v3, "getRedDot appName="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";badgeCounts="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";shortcutnameId="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..class: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "...userId: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/util/Debug;->saveBadgeLog(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_8

    :cond_7
    move/from16 v3, v18

    :goto_8
    move-object/from16 v10, p0

    move/from16 v21, v11

    move-object/from16 v11, p1

    move-object/from16 v22, v14

    move v14, v3

    move v15, v9

    move-object/from16 v16, v8

    move/from16 v17, v21

    invoke-direct/range {v10 .. v17}, Lcom/zui/launcher/popup/PopupDataProvider;->o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v15, p0

    move/from16 v3, v20

    move/from16 v10, v21

    move-object/from16 v14, v22

    goto/16 :goto_7

    :cond_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_d

    :catch_5
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_b

    :cond_9
    move-object/from16 v19, v2

    :goto_9
    if-eqz v19, :cond_a

    :goto_a
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_d

    :catch_6
    move-exception v0

    :goto_b
    :try_start_8
    const-string v2, "getRedDot e="

    invoke-static {v1, v2, v0}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v19, :cond_a

    goto :goto_a

    :cond_a
    :goto_c
    const-string v0, "getWeixinRedDot end"

    invoke-static {v1, v0}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_d
    if-eqz v19, :cond_b

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    :catchall_3
    move-exception v0

    move-object/from16 v19, v2

    :goto_e
    if-eqz v19, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0
.end method

.method private b(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/dot/DotInfo;
    .locals 1

    instance-of v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/zui/launcher/AppInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/AppInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zui/launcher/AppInfo;

    invoke-static {p1}, Lcom/zui/launcher/util/ShortcutUserKey;->fromAppInfo(Lcom/zui/launcher/AppInfo;)Lcom/zui/launcher/util/ShortcutUserKey;

    move-result-object p1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-static {p1}, Lcom/zui/launcher/util/ShortcutUserKey;->fromShortcutInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Lcom/zui/launcher/util/ShortcutUserKey;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/dot/DotInfo;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/util/ShortcutUserKey;->resetClassName()V

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->h:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/zui/launcher/dot/DotInfo;

    :cond_2
    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;[Ljava/lang/String;Lcom/zui/launcher/notification/NotificationKeyData;)Z
    .locals 1

    iget-object v0, p2, Lcom/zui/launcher/notification/NotificationKeyData;->shortcutId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p2, Lcom/zui/launcher/notification/NotificationKeyData;->personKeysFromNotification:[Ljava/lang/String;

    array-length p2, p0

    if-eqz p2, :cond_1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    instance-of p0, p0, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;

    return p0
.end method

.method static synthetic e(Ljava/util/HashMap;Lcom/zui/launcher/model/WidgetItem;)V
    .locals 3

    new-instance v0, Lcom/zui/launcher/util/ComponentKey;

    iget-object v1, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic f(Ljava/util/HashMap;Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)V
    .locals 1

    check-cast p1, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;

    iget-object p1, p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    new-instance v0, Lcom/zui/launcher/popup/k;

    invoke-direct {v0, p0}, Lcom/zui/launcher/popup/k;-><init>(Ljava/util/HashMap;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic g(Ljava/util/HashMap;Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/model/WidgetItem;
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/ComponentKey;

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p1}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/model/WidgetItem;

    return-object p0
.end method

.method public static getNotificationsForItem(Lcom/zui/launcher/ItemInfo;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0    # Lcom/zui/launcher/ItemInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/ItemInfo;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/notification/NotificationKeyData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/zui/launcher/notification/NotificationKeyData;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/zui/launcher/util/ShortcutUtil;->getShortcutIdIfPinnedShortcut(Lcom/zui/launcher/ItemInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/util/ShortcutUtil;->getPersonKeysIfPinnedShortcut(Lcom/zui/launcher/ItemInfo;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/zui/launcher/popup/n;

    invoke-direct {v1, v0, p0}, Lcom/zui/launcher/popup/n;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/zui/launcher/util/PackageUserKey;Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Z
    .locals 1

    instance-of v0, p1, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    iget-object p1, p1, Lcom/zui/launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic i(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Ljava/util/stream/Stream;
    .locals 0

    check-cast p0, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;

    iget-object p0, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/zui/launcher/util/PackageUserKey;Lcom/zui/launcher/model/WidgetItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic k(Ljava/util/HashMap;Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)V
    .locals 1

    check-cast p1, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;

    iget-object p1, p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    new-instance v0, Lcom/zui/launcher/popup/h;

    invoke-direct {v0, p0}, Lcom/zui/launcher/popup/h;-><init>(Ljava/util/HashMap;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic l(Ljava/util/HashMap;Lcom/zui/launcher/util/ComponentKey;)Lcom/zui/launcher/model/WidgetItem;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/model/WidgetItem;

    return-object p0
.end method

.method static synthetic m(Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    instance-of p0, p0, Lcom/zui/launcher/widget/model/WidgetsListContentEntry;

    return p0
.end method

.method static synthetic n(Ljava/util/HashMap;Lcom/zui/launcher/model/WidgetItem;)V
    .locals 3

    new-instance v0, Lcom/zui/launcher/util/ComponentKey;

    iget-object v1, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object p1

    int-to-long v0, p7

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/compat/UserManagerCompat;->getUserForIdentifier(J)Landroid/os/UserHandle;

    move-result-object p1

    const/4 p7, 0x0

    if-eqz p3, :cond_1

    const-string v0, "null"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p6, Lcom/zui/launcher/util/ShortcutUserKey;

    invoke-direct {p6, p2, p7, p1, p3}, Lcom/zui/launcher/util/ShortcutUserKey;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupDataProvider;->h:Ljava/util/Map;

    invoke-interface {p1, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/dot/DotInfo;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p3, Lcom/zui/launcher/util/ShortcutUserKey;

    invoke-direct {p3, p2, p6, p1, p7}, Lcom/zui/launcher/util/ShortcutUserKey;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupDataProvider;->h:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/dot/DotInfo;

    move-object p6, p3

    :goto_1
    if-nez p1, :cond_2

    new-instance p1, Lcom/zui/launcher/dot/DotInfo;

    invoke-direct {p1, p4, p5}, Lcom/zui/launcher/dot/DotInfo;-><init>(ZI)V

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->h:Ljava/util/Map;

    invoke-interface {p0, p6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1, p5}, Lcom/zui/launcher/dot/DotInfo;->setZuiDotCount(I)V

    invoke-virtual {p1, p4}, Lcom/zui/launcher/dot/DotInfo;->setZuiDotShow(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " key: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " value: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/launcher/dot/DotInfo;->getShorcutBageInfoString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "badge"

    invoke-static {p1, p0}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private p(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            "Lcom/zui/launcher/dot/DotInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->g:Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {p0, p1}, Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;->trimNotifications(Ljava/util/Map;)V

    return-void
.end method

.method private q(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->a:Landroidx/core/util/Consumer;

    invoke-interface {v0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->g:Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {p0, p1}, Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;->onNotificationDotsUpdated(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static removeRedHot(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "badge"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    :try_start_0
    sget-object p1, Lcom/zui/launcher/dot/ZuiDotConstant;->REDHOT_CONTENT_URI:Landroid/net/Uri;

    const-string v3, " app_package_name = ?"

    invoke-virtual {p0, p1, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "removeRedHot e="

    invoke-static {v0, p1, p0}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "removeRedHot ret="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static removeRedHot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "badge"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    :try_start_0
    sget-object p1, Lcom/zui/launcher/dot/ZuiDotConstant;->REDHOT_CONTENT_URI:Landroid/net/Uri;

    const-string p2, " app_package_name = ? and app_class_name = ? "

    invoke-virtual {p0, p1, p2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "removeRedHot e="

    invoke-static {v0, p1, p0}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "removeRedHot ret="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelNotification(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/zui/launcher/notification/NotificationListener;->getInstanceIfConnected()Lcom/zui/launcher/notification/NotificationListener;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/notification/NotificationListener;->cancelNotificationFromLauncher(Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PopupDataProvider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tmPackageUserToDotInfos:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->d:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAllWidgets()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->e:Ljava/util/List;

    return-object p0
.end method

.method public getDotInfoForItem(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/dot/DotInfo;
    .locals 2
    .param p1    # Lcom/zui/launcher/ItemInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->b:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isZuiDotShown(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/popup/PopupDataProvider;->b(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/dot/DotInfo;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/zui/launcher/util/ShortcutUtil;->supportsShortcuts(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/zui/launcher/util/PackageUserKey;->fromItemInfo(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/util/PackageUserKey;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/dot/DotInfo;

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/launcher/popup/PopupDataProvider;->getNotificationsForItem(Lcom/zui/launcher/ItemInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public getNotificationKeysForItem(Lcom/zui/launcher/ItemInfo;)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/launcher/notification/NotificationKeyData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zui/launcher/popup/PopupDataProvider;->getDotInfoForItem(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/dot/DotInfo;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zui/launcher/popup/PopupDataProvider;->getNotificationsForItem(Lcom/zui/launcher/ItemInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRecommendedWidgets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/popup/PopupDataProvider;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/popup/j;->a:Lcom/zui/launcher/popup/j;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/popup/l;

    invoke-direct {v2, v0}, Lcom/zui/launcher/popup/l;-><init>(Ljava/util/HashMap;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/zui/launcher/popup/i;

    invoke-direct {v1, v0}, Lcom/zui/launcher/popup/i;-><init>(Ljava/util/HashMap;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/popup/d;->a:Lcom/zui/launcher/popup/d;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getShortcutCountForItem(Lcom/zui/launcher/ItemInfo;)I
    .locals 3

    invoke-static {p1}, Lcom/zui/launcher/util/ShortcutUtil;->supportsDeepShortcuts(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->c:Ljava/util/HashMap;

    new-instance v2, Lcom/zui/launcher/util/ComponentKey;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v0, p1}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getWidgetsForPackageUser(Lcom/zui/launcher/util/PackageUserKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/zui/launcher/popup/f;

    invoke-direct {v0, p1}, Lcom/zui/launcher/popup/f;-><init>(Lcom/zui/launcher/util/PackageUserKey;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/popup/p;->a:Lcom/zui/launcher/popup/p;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/zui/launcher/popup/o;

    invoke-direct {v0, p1}, Lcom/zui/launcher/popup/o;-><init>(Lcom/zui/launcher/util/PackageUserKey;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getZuiDotData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/zui/launcher/dot/DotInfo;
    .locals 2

    invoke-static {p1}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object p1

    int-to-long v0, p5

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p1

    const/4 p5, 0x0

    if-eqz p3, :cond_1

    const-string v0, "null"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/zui/launcher/util/ShortcutUserKey;

    invoke-direct {p4, p2, p5, p1, p3}, Lcom/zui/launcher/util/ShortcutUserKey;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->h:Ljava/util/Map;

    invoke-interface {p0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p3, Lcom/zui/launcher/util/ShortcutUserKey;

    invoke-direct {p3, p2, p4, p1, p5}, Lcom/zui/launcher/util/ShortcutUserKey;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupDataProvider;->h:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/dot/DotInfo;

    if-nez p1, :cond_2

    invoke-virtual {p3}, Lcom/zui/launcher/util/ShortcutUserKey;->resetClassName()V

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->h:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    check-cast p0, Lcom/zui/launcher/dot/DotInfo;

    goto :goto_2

    :cond_2
    move-object p0, p1

    :goto_2
    return-object p0
.end method

.method public getZuiRecommendedWidgets()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->i:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->i:Ljava/util/List;

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/pm/UserCache;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/pm/UserCache;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zui/launcher/pm/UserCache;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/zui/launcher/popup/PopupDataProvider;->i:Ljava/util/List;

    new-instance v6, Lcom/zui/launcher/util/ComponentKey;

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {v6, v4, v1}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/popup/PopupDataProvider;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/popup/e;->a:Lcom/zui/launcher/popup/e;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/popup/m;

    invoke-direct {v2, v0}, Lcom/zui/launcher/popup/m;-><init>(Ljava/util/HashMap;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/zui/launcher/popup/g;

    invoke-direct {v1, v0}, Lcom/zui/launcher/popup/g;-><init>(Ljava/util/HashMap;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/popup/d;->a:Lcom/zui/launcher/popup/d;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public onNotificationFullRefresh(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zui/launcher/popup/PopupDataProvider;->d:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/zui/launcher/popup/PopupDataProvider;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    invoke-static {v1}, Lcom/zui/launcher/util/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/zui/launcher/util/PackageUserKey;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/popup/PopupDataProvider;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/dot/DotInfo;

    if-nez v3, :cond_1

    new-instance v3, Lcom/zui/launcher/dot/DotInfo;

    invoke-direct {v3}, Lcom/zui/launcher/dot/DotInfo;-><init>()V

    iget-object v4, p0, Lcom/zui/launcher/popup/PopupDataProvider;->d:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v1}, Lcom/zui/launcher/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/zui/launcher/notification/NotificationKeyData;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/zui/launcher/dot/DotInfo;->addOrUpdateNotificationKey(Lcom/zui/launcher/notification/NotificationKeyData;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/popup/PopupDataProvider;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/util/PackageUserKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/dot/DotInfo;

    iget-object v3, p0, Lcom/zui/launcher/popup/PopupDataProvider;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/dot/DotInfo;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/zui/launcher/dot/DotInfo;->getNotificationCount()I

    move-result v2

    invoke-virtual {v3}, Lcom/zui/launcher/dot/DotInfo;->getNotificationCount()I

    move-result v4

    if-eq v2, v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Lcom/zui/launcher/popup/h0;

    invoke-direct {p1, v0}, Lcom/zui/launcher/popup/h0;-><init>(Ljava/util/HashMap;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/popup/PopupDataProvider;->q(Ljava/util/function/Predicate;)V

    :cond_6
    invoke-direct {p0, v0}, Lcom/zui/launcher/popup/PopupDataProvider;->p(Ljava/util/Map;)V

    return-void
.end method

.method public onNotificationPosted(Lcom/zui/launcher/util/PackageUserKey;Lcom/zui/launcher/notification/NotificationKeyData;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/dot/DotInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/dot/DotInfo;

    invoke-direct {v0}, Lcom/zui/launcher/dot/DotInfo;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/popup/PopupDataProvider;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/zui/launcher/dot/DotInfo;->addOrUpdateNotificationKey(Lcom/zui/launcher/notification/NotificationKeyData;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/zui/launcher/popup/u;

    invoke-direct {p2, p1}, Lcom/zui/launcher/popup/u;-><init>(Lcom/zui/launcher/util/PackageUserKey;)V

    invoke-direct {p0, p2}, Lcom/zui/launcher/popup/PopupDataProvider;->q(Ljava/util/function/Predicate;)V

    :cond_1
    return-void
.end method

.method public onNotificationRemoved(Lcom/zui/launcher/util/PackageUserKey;Lcom/zui/launcher/notification/NotificationKeyData;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/dot/DotInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/zui/launcher/dot/DotInfo;->removeNotificationKey(Lcom/zui/launcher/notification/NotificationKeyData;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/popup/PopupDataProvider;->d:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/zui/launcher/popup/u;

    invoke-direct {p2, p1}, Lcom/zui/launcher/popup/u;-><init>(Lcom/zui/launcher/util/PackageUserKey;)V

    invoke-direct {p0, p2}, Lcom/zui/launcher/popup/PopupDataProvider;->q(Ljava/util/function/Predicate;)V

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupDataProvider;->d:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/zui/launcher/popup/PopupDataProvider;->p(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public onZuiDotClear()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/dot/DotInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/zui/launcher/dot/DotInfo;->setZuiDotCount(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearNum info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/util/Debug;->saveNotificationLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->b:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/Launcher;->updateZuiDots(Ljava/util/Set;)V

    return-void
.end method

.method public onZuiDotDataChanged()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->b:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/Launcher;->updateZuiDots(Ljava/util/Set;)V

    return-void
.end method

.method public queryZuiDotData()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->b:Lcom/zui/launcher/Launcher;

    invoke-direct {p0, v0}, Lcom/zui/launcher/popup/PopupDataProvider;->a(Landroid/content/Context;)V

    return-void
.end method

.method public setAllWidgets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/popup/PopupDataProvider;->e:Ljava/util/List;

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->g:Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {p0}, Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;->onWidgetsBound()V

    return-void
.end method

.method public setChangeListener(Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;->INSTANCE:Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/popup/PopupDataProvider;->g:Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;

    return-void
.end method

.method public setDeepShortcutMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/zui/launcher/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/popup/PopupDataProvider;->c:Ljava/util/HashMap;

    return-void
.end method

.method public setRecommendedWidgets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/popup/PopupDataProvider;->f:Ljava/util/List;

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupDataProvider;->g:Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {p0}, Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;->onRecommendedWidgetsBound()V

    return-void
.end method
