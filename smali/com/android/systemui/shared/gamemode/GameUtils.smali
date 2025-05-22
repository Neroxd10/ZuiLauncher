.class public Lcom/android/systemui/shared/gamemode/GameUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;
    }
.end annotation


# instance fields
.field a:Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;

.field b:Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;

.field c:Landroid/app/IZuiGameAppStateListener;

.field d:Landroid/app/IZuiSystemMessageListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/shared/gamemode/GameUtils$a;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/gamemode/GameUtils$a;-><init>(Lcom/android/systemui/shared/gamemode/GameUtils;)V

    iput-object v0, p0, Lcom/android/systemui/shared/gamemode/GameUtils;->a:Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;

    iput-object v0, p0, Lcom/android/systemui/shared/gamemode/GameUtils;->b:Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;

    new-instance v0, Lcom/android/systemui/shared/gamemode/GameUtils$b;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/gamemode/GameUtils$b;-><init>(Lcom/android/systemui/shared/gamemode/GameUtils;)V

    iput-object v0, p0, Lcom/android/systemui/shared/gamemode/GameUtils;->c:Landroid/app/IZuiGameAppStateListener;

    new-instance v0, Lcom/android/systemui/shared/gamemode/GameUtils$c;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/gamemode/GameUtils$c;-><init>(Lcom/android/systemui/shared/gamemode/GameUtils;)V

    iput-object v0, p0, Lcom/android/systemui/shared/gamemode/GameUtils;->d:Landroid/app/IZuiSystemMessageListener;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Lcom/android/systemui/shared/gamemode/GameUtils;->e(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "getService"

    invoke-static {v0, v4, v3}, Lcom/android/systemui/shared/gamemode/GameUtils;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-static {v0, v1, v3}, Lcom/android/systemui/shared/gamemode/GameUtils;->c(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/shared/gamemode/GameUtils;->e(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    new-array v0, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v0, v5

    const-string v3, "asInterface"

    invoke-static {p1, v3, v0}, Lcom/android/systemui/shared/gamemode/GameUtils;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v5

    invoke-static {p1, v1, v0}, Lcom/android/systemui/shared/gamemode/GameUtils;->c(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/shared/gamemode/GameUtils;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static varargs c(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "Unexpected error while invoking "

    const-string v1, "GameUtils"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v1, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_1

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0
.end method

.method private static varargs d(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "Unexpected error while invoking "

    const-string v1, "GameUtils"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v1, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_1

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error while finding class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "GameUtils"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    return-object v0
.end method

.method private static varargs f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error while finding method "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GameUtils"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    return-object v0
.end method

.method public static getForgroundGameAppPkgName()Ljava/lang/String;
    .locals 4

    const-string v0, "zuimode"

    const-string v1, "android.app.IZuiModeService$Stub"

    invoke-static {v0, v1}, Lcom/android/systemui/shared/gamemode/GameUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getForgroundGameAppPackageName"

    invoke-static {v0, v3, v2}, Lcom/android/systemui/shared/gamemode/GameUtils;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/shared/gamemode/GameUtils;->c(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isForegroundVideoAppFullscreenPlaying()Z
    .locals 4

    const-string v0, "zuimode"

    const-string v1, "android.app.IZuiModeService$Stub"

    invoke-static {v0, v1}, Lcom/android/systemui/shared/gamemode/GameUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isForegroundVideoAppFullscreenPlaying"

    invoke-static {v0, v3, v2}, Lcom/android/systemui/shared/gamemode/GameUtils;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/shared/gamemode/GameUtils;->c(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isGameAppForeground()Z
    .locals 4

    const-string v0, "zuimode"

    const-string v1, "android.app.IZuiModeService$Stub"

    invoke-static {v0, v1}, Lcom/android/systemui/shared/gamemode/GameUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "isGameAppForeground"

    invoke-static {v0, v3, v2}, Lcom/android/systemui/shared/gamemode/GameUtils;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/shared/gamemode/GameUtils;->c(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public registerListener(Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;)Z
    .locals 5

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/systemui/shared/gamemode/GameUtils;->b:Lcom/android/systemui/shared/gamemode/GameUtils$GameUtilsListener;

    :cond_0
    const-string p1, "zuimode"

    const-string v0, "android.app.IZuiModeService$Stub"

    invoke-static {p1, v0}, Lcom/android/systemui/shared/gamemode/GameUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/app/IZuiGameAppStateListener;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "registerZuiGameAppStateListener"

    invoke-static {p1, v2, v1}, Lcom/android/systemui/shared/gamemode/GameUtils;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/shared/gamemode/GameUtils;->c:Landroid/app/IZuiGameAppStateListener;

    aput-object v4, v2, v3

    invoke-static {v1, p1, v2}, Lcom/android/systemui/shared/gamemode/GameUtils;->d(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/app/IZuiSystemMessageListener;

    aput-object v2, v1, v3

    const-string v2, "registerZuiSystemMessageListener"

    invoke-static {p1, v2, v1}, Lcom/android/systemui/shared/gamemode/GameUtils;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/shared/gamemode/GameUtils;->d:Landroid/app/IZuiSystemMessageListener;

    aput-object p0, v0, v3

    invoke-static {v1, p1, v0}, Lcom/android/systemui/shared/gamemode/GameUtils;->d(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
