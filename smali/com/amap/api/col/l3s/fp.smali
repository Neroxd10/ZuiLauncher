.class public final Lcom/amap/api/col/l3s/fp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/fp$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3s/fp$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/fp;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fp;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fp;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/amap/api/col/l3s/fp;->b:Z

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/amap/api/col/l3s/fp;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/amap/api/col/l3s/fp;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3s/fp$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3}, Lcom/amap/api/col/l3s/fp$a;->a(Lcom/amap/api/col/l3s/fp$a;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {v3}, Lcom/amap/api/col/l3s/fp$a;->a(Lcom/amap/api/col/l3s/fp$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v5, 0x0

    :try_start_3
    invoke-static {v3}, Lcom/amap/api/col/l3s/fp$a;->b(Lcom/amap/api/col/l3s/fp$a;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Lcom/amap/api/col/l3s/fp$a;->c(Lcom/amap/api/col/l3s/fp$a;)[Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_4
    invoke-static {v3}, Lcom/amap/api/col/l3s/fp$a;->c(Lcom/amap/api/col/l3s/fp$a;)[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_5

    invoke-static {v3}, Lcom/amap/api/col/l3s/fp$a;->c(Lcom/amap/api/col/l3s/fp$a;)[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/Class;

    move v6, v0

    :goto_1
    invoke-static {v3}, Lcom/amap/api/col/l3s/fp$a;->c(Lcom/amap/api/col/l3s/fp$a;)[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_4

    invoke-static {v3}, Lcom/amap/api/col/l3s/fp$a;->c(Lcom/amap/api/col/l3s/fp$a;)[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_3

    invoke-static {v3}, Lcom/amap/api/col/l3s/fp$a;->c(Lcom/amap/api/col/l3s/fp$a;)[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v0

    aput-object v7, v5, v6

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lcom/amap/api/col/l3s/fp$a;->b(Lcom/amap/api/col/l3s/fp$a;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {v3}, Lcom/amap/api/col/l3s/fp$a;->a(Lcom/amap/api/col/l3s/fp$a;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Lcom/amap/api/col/l3s/fp$a;->d(Lcom/amap/api/col/l3s/fp$a;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/l3s/fp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final varargs declared-synchronized a(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    new-instance v1, Lcom/amap/api/col/l3s/fp$a;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0, p2}, Lcom/amap/api/col/l3s/fp$a;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fp;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    :try_start_1
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/fp;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
