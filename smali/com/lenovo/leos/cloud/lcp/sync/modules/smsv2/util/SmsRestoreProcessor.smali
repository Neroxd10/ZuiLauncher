.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->SMS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    iget-object v4, v4, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->SMS_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->clear()V

    throw v0

    :cond_2
    :goto_3
    return-void
.end method

.method static b(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor$Callback;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor$Callback;->isCancelled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Ljava/lang/String;I)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .locals 3

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;-><init>()V

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setAddress(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setDate(J)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setType(I)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setRead(I)V

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setThreadId(I)V

    const-string p0, "sms restore temp message, pls delete."

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->setBody(Ljava/lang/String;)V

    return-object v0
.end method

.method static d(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor$Callback;II)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor$Callback;->progress(II)V

    :cond_0
    return-void
.end method

.method public static processAfterRestore(Ljava/util/Set;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor$Callback;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor$Callback;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;-><init>()V

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    move v5, v3

    move v6, v5

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor$Callback;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_5

    :cond_2
    const/16 v7, 0x3e8

    invoke-interface {v2, v7, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->queryConversation(II)Ljava/util/List;

    move-result-object v7

    if-eqz v0, :cond_9

    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;

    invoke-virtual {v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->getThreadId()I

    move-result v11

    invoke-virtual {v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->getThreadDate()J

    move-result-wide v13

    invoke-virtual {v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->getSmsDate()J

    move-result-wide v15

    cmp-long v10, v13, v15

    if-eqz v10, :cond_3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor$Callback;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v11, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor;->c(Ljava/lang/String;I)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    move-result-object v10

    invoke-interface {v2, v7, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->buildInsertSms2Opertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    const/16 v11, 0x32

    if-lt v10, v11, :cond_5

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor;->a(Ljava/util/List;)V

    add-int/lit8 v6, v6, 0x32

    invoke-static {v1, v6, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor;->d(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor$Callback;II)V

    goto :goto_2

    :cond_7
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor$Callback;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_a

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor;->a(Ljava/util/List;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v1, v6, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor;->d(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsRestoreProcessor$Callback;II)V

    goto :goto_4

    :cond_9
    move v8, v3

    :cond_a
    :goto_4
    add-int/2addr v5, v8

    if-gtz v8, :cond_1

    :goto_5
    return-void
.end method
