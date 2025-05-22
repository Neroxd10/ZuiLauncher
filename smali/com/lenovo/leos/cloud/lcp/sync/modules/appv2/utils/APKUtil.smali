.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/APKUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 7

    const-string v0, "APKUtil"

    const-string v1, "android.content.res.AssetManager"

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "addAssetPath"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p1, 0x3

    new-array v1, p1, [Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const-class v4, Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v2, p1, v6

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    aput-object v2, p1, v3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    aput-object p0, p1, v5

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "InstantiationException"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/exception/ApkParseException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/exception/ApkParseException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    const-string p1, "InvocationTargetException"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/exception/ApkParseException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/exception/ApkParseException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_2
    move-exception p0

    const-string p1, "IllegalAccessException"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/exception/ApkParseException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/exception/ApkParseException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_3
    move-exception p0

    const-string p1, "IllegalArgumentException"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/exception/ApkParseException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/exception/ApkParseException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_4
    move-exception p0

    const-string p1, "NoSuchMethodException"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/exception/ApkParseException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/exception/ApkParseException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_5
    move-exception p0

    const-string p1, "SecurityException"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/exception/ApkParseException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/exception/ApkParseException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_6
    move-exception p0

    const-string p1, "ClassNotFoundException"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/exception/ApkParseException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/exception/ApkParseException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
