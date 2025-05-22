.class public Lcom/lenovo/lsf/lenovoid/userauth/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/a/a;->a()Lcom/lenovo/lsf/lenovoid/a/a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.lenovo.lsf.account"

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    array-length v3, p0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v6, p0, v4

    add-int/lit8 v7, v5, 0x1

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    if-eqz v0, :cond_2

    array-length p0, v0

    if-lez p0, :cond_2

    aget-object p0, v0, v2

    return-object p0

    :cond_2
    return-object v1

    :cond_3
    throw v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v2, p2

    const-string v1, "USS-0195"

    const-string v3, "SSOSingleUserAuth"

    const/4 v7, 0x0

    if-nez p3, :cond_8

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncGetStData realmid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",flag="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lsf/lenovoid/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.lenovo.lsf.account"

    invoke-static {v0, v4}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v9, :cond_0

    const-string v0, "account == null"

    :goto_0
    :try_start_1
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "source"

    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/lenovoid/c/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "androidPackageName"

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "androidApplicationName"

    invoke-virtual {v11, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "get_st_no_from_catche"

    invoke-virtual {v11, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v12, v0

    check-cast v12, Landroid/app/Activity;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v8 .. v14}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    invoke-interface {v2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    :goto_1
    check-cast v2, Landroid/os/Bundle;

    goto :goto_2

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    const-wide/16 v14, 0x78

    if-ge v2, v4, :cond_2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    move-object/from16 v10, p1

    move-wide v4, v14

    move-object v14, v2

    invoke-virtual/range {v8 .. v14}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v6}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    move-object/from16 v10, p1

    move-wide v4, v14

    move-object v14, v2

    invoke-virtual/range {v8 .. v14}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v6}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :goto_2
    if-nez v2, :cond_3

    const-string v0, "getAuthToken result == null"

    goto/16 :goto_0

    :cond_3
    :try_start_4
    const-string v4, "intent"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    if-eqz v4, :cond_5

    const/high16 v1, 0x10000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/lenovo/lsf/lenovoid/userauth/p;->b()Lcom/lenovo/lsf/lenovoid/userauth/p;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_4
    throw v7

    :cond_5
    const-string v0, "authtoken"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "errorCode"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncGetStData error code === "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "USS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object v1, v0

    goto :goto_4

    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v4, "syncGetStData st === "

    if-eqz v2, :cond_7

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncGetStData exception === "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v1, v7

    :goto_4
    return-object v1

    :cond_8
    move-object/from16 v5, p1

    new-instance v8, Lcom/lenovo/lsf/lenovoid/userauth/l;

    move-object v1, v8

    move/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/lsf/lenovoid/userauth/l;-><init>(ZLandroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-object v7
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;ZLandroid/os/Bundle;)V
    .locals 7

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/userauth/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p0, p1, p2, p4}, Lcom/lenovo/lsf/lenovoid/userauth/e;->d(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    const/4 p0, 0x0

    const-string p1, "USS-0x0305"

    invoke-interface {p2, p0, p1}, Lcom/lenovo/lsf/lenovoid/OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v6, Lcom/lenovo/lsf/lenovoid/userauth/b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/lsf/lenovoid/userauth/b;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Landroid/accounts/AccountManagerFuture;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const-string p2, "[sdk parseBuddleResult] AuthenticatorException:"

    const-string p3, "SSOSingleUserAuth"

    const-string v0, "[sdk parseBuddleResult] ==AccountManagerCallback=="

    invoke-static {p3, v0}, Lcom/lenovo/lsf/lenovoid/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-eqz p0, :cond_1

    const-string v1, "errorCode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sdk parseBuddleResult] errorCode:********** "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_0
    const-string v1, "authtoken"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_1
    new-instance p0, Landroid/accounts/AuthenticatorException;

    invoke-direct {p0}, Landroid/accounts/AuthenticatorException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sdk parseBuddleResult] IOException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    const-string v1, "USS-0x1000"

    goto :goto_3

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "USS-0x0000"

    goto :goto_3

    :catch_3
    const-string p0, "[sdk parseBuddleResult] android.accounts.OperationCanceledException"

    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "USS-0x0001"

    :goto_3
    if-eqz p1, :cond_3

    invoke-interface {p1, v0, v1}, Lcom/lenovo/lsf/lenovoid/OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic c(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/lenovo/lsf/lenovoid/userauth/e;->d(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)V

    return-void
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/lsf/lenovoid/userauth/c;

    invoke-direct {v0, p0, p2}, Lcom/lenovo/lsf/lenovoid/userauth/c;-><init>(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/OnAuthenListener;)V

    invoke-static {p0, p1, v1, v0, p3}, Lcom/lenovo/lsf/lenovoid/userauth/e;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/lenovo/lsf/lenovoid/OnAuthenListener;Landroid/os/Bundle;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "USS-0x0305"

    instance-of p3, p0, Landroid/app/Activity;

    if-eqz p3, :cond_1

    check-cast p0, Landroid/app/Activity;

    new-instance p3, Lcom/lenovo/lsf/lenovoid/userauth/d;

    invoke-direct {p3, p2, v1, p1}, Lcom/lenovo/lsf/lenovoid/userauth/d;-><init>(Lcom/lenovo/lsf/lenovoid/OnAuthenListener;ZLjava/lang/String;)V

    invoke-virtual {p0, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2, v1, p1}, Lcom/lenovo/lsf/lenovoid/OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
