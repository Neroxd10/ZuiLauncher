.class public Lzui/util/ReflectMethod;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lzui/util/ReflectClass;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lzui/util/ReflectMethod;->a:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    iget-object p2, p0, Lzui/util/ReflectMethod;->a:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lzui/util/ReflectMethod;->b:[Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p0, p0, Lzui/util/ReflectMethod;->a:Ljava/lang/reflect/Method;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p2, p0, Lzui/util/ReflectMethod;->a:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lzui/util/ReflectMethod;->b:[Ljava/lang/Object;

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public varargs setInvokeParams([Ljava/lang/Object;)Lzui/util/ReflectMethod;
    .locals 0

    iput-object p1, p0, Lzui/util/ReflectMethod;->b:[Ljava/lang/Object;

    return-object p0
.end method
