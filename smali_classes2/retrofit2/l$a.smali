.class final Lretrofit2/l$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final x:Ljava/util/regex/Pattern;

.field private static final y:Ljava/util/regex/Pattern;


# instance fields
.field final a:Lretrofit2/Retrofit;

.field final b:Ljava/lang/reflect/Method;

.field final c:[Ljava/lang/annotation/Annotation;

.field final d:[[Ljava/lang/annotation/Annotation;

.field final e:[Ljava/lang/reflect/Type;

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field o:Z

.field p:Z

.field q:Z

.field r:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field s:Lokhttp3/Headers;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field t:Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field v:[Lretrofit2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lretrofit2/i<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/l$a;->x:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/l$a;->y:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    iput-object p2, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/l$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/l$a;->e:[Ljava/lang/reflect/Type;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/l$a;->d:[[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    const-class p0, Ljava/lang/Byte;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    const-class p0, Ljava/lang/Character;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    const-class p0, Ljava/lang/Double;

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    const-class p0, Ljava/lang/Float;

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    const-class p0, Ljava/lang/Integer;

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    const-class p0, Ljava/lang/Long;

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class p0, Ljava/lang/Short;

    :cond_7
    return-object p0
.end method

.method private c([Ljava/lang/String;)Lokhttp3/Headers;
    .locals 8

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    if-eq v5, v6, :cond_1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-static {v4}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    iput-object v5, p0, Lretrofit2/l$a;->t:Lokhttp3/MediaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v4, v0, v2

    const-string v1, "Malformed content type: %s"

    invoke-static {p0, p1, v1, v0}, Lretrofit2/o;->n(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    invoke-virtual {v0, v6, v4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p1, v7, [Ljava/lang/Object;

    aput-object v4, p1, v2

    const-string v0, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    invoke-static {p0, v0, p1}, Lretrofit2/o;->m(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lretrofit2/l$a;->n:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iput-object p1, p0, Lretrofit2/l$a;->n:Ljava/lang/String;

    iput-boolean p3, p0, Lretrofit2/l$a;->o:Z

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x3f

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v2

    if-ge p1, p3, :cond_2

    add-int/2addr p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lretrofit2/l$a;->x:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    invoke-static {p0, p1, p2}, Lretrofit2/o;->m(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    iput-object p2, p0, Lretrofit2/l$a;->r:Ljava/lang/String;

    invoke-static {p2}, Lretrofit2/l$a;->h(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/l$a;->u:Ljava/util/Set;

    return-void

    :cond_3
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v1

    aput-object p1, p2, v2

    const-string p1, "Only one HTTP method is allowed. Found: %s and %s."

    invoke-static {p0, p1, p2}, Lretrofit2/o;->m(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private e(Ljava/lang/annotation/Annotation;)V
    .locals 4

    instance-of v0, p1, Lretrofit2/http/DELETE;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lretrofit2/http/DELETE;

    invoke-interface {p1}, Lretrofit2/http/DELETE;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DELETE"

    :goto_0
    invoke-direct {p0, v0, p1, v1}, Lretrofit2/l$a;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lretrofit2/http/GET;

    if-eqz v0, :cond_1

    check-cast p1, Lretrofit2/http/GET;

    invoke-interface {p1}, Lretrofit2/http/GET;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lretrofit2/http/HEAD;

    if-eqz v0, :cond_2

    check-cast p1, Lretrofit2/http/HEAD;

    invoke-interface {p1}, Lretrofit2/http/HEAD;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HEAD"

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lretrofit2/http/PATCH;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    check-cast p1, Lretrofit2/http/PATCH;

    invoke-interface {p1}, Lretrofit2/http/PATCH;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PATCH"

    :goto_1
    invoke-direct {p0, v0, p1, v2}, Lretrofit2/l$a;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_3
    instance-of v0, p1, Lretrofit2/http/POST;

    if-eqz v0, :cond_4

    check-cast p1, Lretrofit2/http/POST;

    invoke-interface {p1}, Lretrofit2/http/POST;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "POST"

    goto :goto_1

    :cond_4
    instance-of v0, p1, Lretrofit2/http/PUT;

    if-eqz v0, :cond_5

    check-cast p1, Lretrofit2/http/PUT;

    invoke-interface {p1}, Lretrofit2/http/PUT;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PUT"

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lretrofit2/http/OPTIONS;

    if-eqz v0, :cond_6

    check-cast p1, Lretrofit2/http/OPTIONS;

    invoke-interface {p1}, Lretrofit2/http/OPTIONS;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPTIONS"

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lretrofit2/http/HTTP;

    if-eqz v0, :cond_7

    check-cast p1, Lretrofit2/http/HTTP;

    invoke-interface {p1}, Lretrofit2/http/HTTP;->method()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lretrofit2/http/HTTP;->path()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lretrofit2/http/HTTP;->hasBody()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lretrofit2/l$a;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_7
    instance-of v0, p1, Lretrofit2/http/Headers;

    if-eqz v0, :cond_9

    check-cast p1, Lretrofit2/http/Headers;

    invoke-interface {p1}, Lretrofit2/http/Headers;->value()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lretrofit2/l$a;->c([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/l$a;->s:Lokhttp3/Headers;

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "@Headers annotation is empty."

    invoke-static {p0, v0, p1}, Lretrofit2/o;->m(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_9
    instance-of v0, p1, Lretrofit2/http/Multipart;

    const-string v3, "Only one encoding annotation is allowed."

    if-eqz v0, :cond_b

    iget-boolean p1, p0, Lretrofit2/l$a;->p:Z

    if-nez p1, :cond_a

    iput-boolean v2, p0, Lretrofit2/l$a;->q:Z

    goto :goto_2

    :cond_a
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, p1}, Lretrofit2/o;->m(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_b
    instance-of p1, p1, Lretrofit2/http/FormUrlEncoded;

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lretrofit2/l$a;->q:Z

    if-nez p1, :cond_c

    iput-boolean v2, p0, Lretrofit2/l$a;->p:Z

    goto :goto_2

    :cond_c
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, p1}, Lretrofit2/o;->m(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_d
    :goto_2
    return-void
.end method

.method private f(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Z)Lretrofit2/i;
    .locals 6
    .param p3    # [Ljava/lang/annotation/Annotation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Z)",
            "Lretrofit2/i<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    array-length v2, p3

    move-object v4, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v5, p3, v3

    invoke-direct {p0, p1, p2, p3, v5}, Lretrofit2/l$a;->g(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/i;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    move-object v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Multiple Retrofit annotations found, only one allowed."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    move-object v4, v0

    :cond_3
    if-nez v4, :cond_5

    if-eqz p4, :cond_4

    :try_start_0
    invoke-static {p2}, Lretrofit2/o;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lkotlin/coroutines/Continuation;

    if-ne p2, p3, :cond_4

    const/4 p2, 0x1

    iput-boolean p2, p0, Lretrofit2/l$a;->w:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_4
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "No Retrofit annotation found."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_5
    return-object v4
.end method

.method private g(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/i;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/i<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-class v0, Ljava/lang/String;

    const-class v1, Lokhttp3/MultipartBody$Part;

    instance-of v2, p4, Lretrofit2/http/Url;

    const-string v3, "@Path parameters may not be used with @Url."

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    invoke-direct {p0, p1, p2}, Lretrofit2/l$a;->j(ILjava/lang/reflect/Type;)V

    iget-boolean p3, p0, Lretrofit2/l$a;->m:Z

    if-nez p3, :cond_7

    iget-boolean p3, p0, Lretrofit2/l$a;->i:Z

    if-nez p3, :cond_6

    iget-boolean p3, p0, Lretrofit2/l$a;->j:Z

    if-nez p3, :cond_5

    iget-boolean p3, p0, Lretrofit2/l$a;->k:Z

    if-nez p3, :cond_4

    iget-boolean p3, p0, Lretrofit2/l$a;->l:Z

    if-nez p3, :cond_3

    iget-object p3, p0, Lretrofit2/l$a;->r:Ljava/lang/String;

    if-nez p3, :cond_2

    iput-boolean v4, p0, Lretrofit2/l$a;->m:Z

    const-class p3, Lokhttp3/HttpUrl;

    if-eq p2, p3, :cond_1

    if-eq p2, v0, :cond_1

    const-class p3, Ljava/net/URI;

    if-eq p2, p3, :cond_1

    instance-of p3, p2, Ljava/lang/Class;

    if-eqz p3, :cond_0

    const-string p3, "android.net.Uri"

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    new-instance p2, Lretrofit2/i$p;

    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {p2, p0, p1}, Lretrofit2/i$p;-><init>(Ljava/lang/reflect/Method;I)V

    return-object p2

    :cond_2
    iget-object p2, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v4, [Ljava/lang/Object;

    iget-object p0, p0, Lretrofit2/l$a;->n:Ljava/lang/String;

    aput-object p0, p3, v5

    const-string p0, "@Url cannot be used with @%s URL"

    invoke-static {p2, p1, p0, p3}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_3
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "A @Url parameter must not come after a @QueryMap."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_4
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "A @Url parameter must not come after a @QueryName."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_5
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "A @Url parameter must not come after a @Query."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_6
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, v3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_7
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "Multiple @Url method annotations found."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_8
    instance-of v2, p4, Lretrofit2/http/Path;

    if-eqz v2, :cond_e

    invoke-direct {p0, p1, p2}, Lretrofit2/l$a;->j(ILjava/lang/reflect/Type;)V

    iget-boolean v0, p0, Lretrofit2/l$a;->j:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lretrofit2/l$a;->k:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lretrofit2/l$a;->l:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lretrofit2/l$a;->m:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lretrofit2/l$a;->r:Ljava/lang/String;

    if-eqz v0, :cond_9

    iput-boolean v4, p0, Lretrofit2/l$a;->i:Z

    check-cast p4, Lretrofit2/http/Path;

    invoke-interface {p4}, Lretrofit2/http/Path;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lretrofit2/l$a;->i(ILjava/lang/String;)V

    iget-object v0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {v0, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v4

    new-instance p2, Lretrofit2/i$k;

    iget-object v1, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    invoke-interface {p4}, Lretrofit2/http/Path;->encoded()Z

    move-result v5

    move-object v0, p2

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lretrofit2/i$k;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;Lretrofit2/Converter;Z)V

    return-object p2

    :cond_9
    iget-object p2, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v4, [Ljava/lang/Object;

    iget-object p0, p0, Lretrofit2/l$a;->n:Ljava/lang/String;

    aput-object p0, p3, v5

    const-string p0, "@Path can only be used with relative url on @%s"

    invoke-static {p2, p1, p0, p3}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_a
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, v3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_b
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "A @Path parameter must not come after a @QueryMap."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_c
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "A @Path parameter must not come after a @QueryName."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_d
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "A @Path parameter must not come after a @Query."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_e
    instance-of v2, p4, Lretrofit2/http/Query;

    const-string v3, "<String>)"

    const-string v6, " must include generic type (e.g., "

    if-eqz v2, :cond_12

    invoke-direct {p0, p1, p2}, Lretrofit2/l$a;->j(ILjava/lang/reflect/Type;)V

    check-cast p4, Lretrofit2/http/Query;

    invoke-interface {p4}, Lretrofit2/http/Query;->value()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4}, Lretrofit2/http/Query;->encoded()Z

    move-result p4

    invoke-static {p2}, Lretrofit2/o;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    iput-boolean v4, p0, Lretrofit2/l$a;->j:Z

    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_10

    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_f

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, p2}, Lretrofit2/o;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {p0, p1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p0

    new-instance p1, Lretrofit2/i$l;

    invoke-direct {p1, v0, p0, p4}, Lretrofit2/i$l;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {p1}, Lretrofit2/i;->c()Lretrofit2/i;

    move-result-object p0

    return-object p0

    :cond_f
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_10
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/l$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iget-object p0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {p0, p1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p0

    new-instance p1, Lretrofit2/i$l;

    invoke-direct {p1, v0, p0, p4}, Lretrofit2/i$l;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {p1}, Lretrofit2/i;->b()Lretrofit2/i;

    move-result-object p0

    return-object p0

    :cond_11
    iget-object p0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {p0, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p0

    new-instance p1, Lretrofit2/i$l;

    invoke-direct {p1, v0, p0, p4}, Lretrofit2/i$l;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    return-object p1

    :cond_12
    instance-of v2, p4, Lretrofit2/http/QueryName;

    if-eqz v2, :cond_16

    invoke-direct {p0, p1, p2}, Lretrofit2/l$a;->j(ILjava/lang/reflect/Type;)V

    check-cast p4, Lretrofit2/http/QueryName;

    invoke-interface {p4}, Lretrofit2/http/QueryName;->encoded()Z

    move-result p4

    invoke-static {p2}, Lretrofit2/o;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-boolean v4, p0, Lretrofit2/l$a;->k:Z

    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_14

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_13

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, p2}, Lretrofit2/o;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {p0, p1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p0

    new-instance p1, Lretrofit2/i$n;

    invoke-direct {p1, p0, p4}, Lretrofit2/i$n;-><init>(Lretrofit2/Converter;Z)V

    invoke-virtual {p1}, Lretrofit2/i;->c()Lretrofit2/i;

    move-result-object p0

    return-object p0

    :cond_13
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/l$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iget-object p0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {p0, p1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p0

    new-instance p1, Lretrofit2/i$n;

    invoke-direct {p1, p0, p4}, Lretrofit2/i$n;-><init>(Lretrofit2/Converter;Z)V

    invoke-virtual {p1}, Lretrofit2/i;->b()Lretrofit2/i;

    move-result-object p0

    return-object p0

    :cond_15
    iget-object p0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {p0, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p0

    new-instance p1, Lretrofit2/i$n;

    invoke-direct {p1, p0, p4}, Lretrofit2/i$n;-><init>(Lretrofit2/Converter;Z)V

    return-object p1

    :cond_16
    instance-of v2, p4, Lretrofit2/http/QueryMap;

    const-string v7, "Map must include generic types (e.g., Map<String, String>)"

    if-eqz v2, :cond_1a

    invoke-direct {p0, p1, p2}, Lretrofit2/l$a;->j(ILjava/lang/reflect/Type;)V

    invoke-static {p2}, Lretrofit2/o;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    iput-boolean v4, p0, Lretrofit2/l$a;->l:Z

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-class v2, Ljava/util/Map;

    invoke-static {p2, v1, v2}, Lretrofit2/o;->i(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_18

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, p2}, Lretrofit2/o;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    if-ne v0, v1, :cond_17

    invoke-static {v4, p2}, Lretrofit2/o;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    iget-object v0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {v0, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p2

    new-instance p3, Lretrofit2/i$m;

    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    check-cast p4, Lretrofit2/http/QueryMap;

    invoke-interface {p4}, Lretrofit2/http/QueryMap;->encoded()Z

    move-result p4

    invoke-direct {p3, p0, p1, p2, p4}, Lretrofit2/i$m;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;Z)V

    return-object p3

    :cond_17
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@QueryMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_18
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, v7, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_19
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@QueryMap parameter type must be Map."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1a
    instance-of v2, p4, Lretrofit2/http/Header;

    if-eqz v2, :cond_1e

    invoke-direct {p0, p1, p2}, Lretrofit2/l$a;->j(ILjava/lang/reflect/Type;)V

    check-cast p4, Lretrofit2/http/Header;

    invoke-interface {p4}, Lretrofit2/http/Header;->value()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, Lretrofit2/o;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1c

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1b

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, p2}, Lretrofit2/o;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {p0, p1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p0

    new-instance p1, Lretrofit2/i$f;

    invoke-direct {p1, p4, p0}, Lretrofit2/i$f;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    invoke-virtual {p1}, Lretrofit2/i;->c()Lretrofit2/i;

    move-result-object p0

    return-object p0

    :cond_1b
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/l$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iget-object p0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {p0, p1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p0

    new-instance p1, Lretrofit2/i$f;

    invoke-direct {p1, p4, p0}, Lretrofit2/i$f;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    invoke-virtual {p1}, Lretrofit2/i;->b()Lretrofit2/i;

    move-result-object p0

    return-object p0

    :cond_1d
    iget-object p0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {p0, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p0

    new-instance p1, Lretrofit2/i$f;

    invoke-direct {p1, p4, p0}, Lretrofit2/i$f;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    return-object p1

    :cond_1e
    instance-of v2, p4, Lretrofit2/http/HeaderMap;

    if-eqz v2, :cond_23

    const-class p4, Lokhttp3/Headers;

    if-ne p2, p4, :cond_1f

    new-instance p2, Lretrofit2/i$h;

    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {p2, p0, p1}, Lretrofit2/i$h;-><init>(Ljava/lang/reflect/Method;I)V

    return-object p2

    :cond_1f
    invoke-direct {p0, p1, p2}, Lretrofit2/l$a;->j(ILjava/lang/reflect/Type;)V

    invoke-static {p2}, Lretrofit2/o;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p4

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-class v1, Ljava/util/Map;

    invoke-static {p2, p4, v1}, Lretrofit2/o;->i(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    instance-of p4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p4, :cond_21

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, p2}, Lretrofit2/o;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p4

    if-ne v0, p4, :cond_20

    invoke-static {v4, p2}, Lretrofit2/o;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    iget-object p4, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {p4, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p2

    new-instance p3, Lretrofit2/i$g;

    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {p3, p0, p1, p2}, Lretrofit2/i$g;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;)V

    return-object p3

    :cond_20
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@HeaderMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_21
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, v7, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_22
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@HeaderMap parameter type must be Map."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_23
    instance-of v2, p4, Lretrofit2/http/Field;

    if-eqz v2, :cond_28

    invoke-direct {p0, p1, p2}, Lretrofit2/l$a;->j(ILjava/lang/reflect/Type;)V

    iget-boolean v0, p0, Lretrofit2/l$a;->p:Z

    if-eqz v0, :cond_27

    check-cast p4, Lretrofit2/http/Field;

    invoke-interface {p4}, Lretrofit2/http/Field;->value()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4}, Lretrofit2/http/Field;->encoded()Z

    move-result p4

    iput-boolean v4, p0, Lretrofit2/l$a;->f:Z

    invoke-static {p2}, Lretrofit2/o;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_25

    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_24

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, p2}, Lretrofit2/o;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {p0, p1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p0

    new-instance p1, Lretrofit2/i$d;

    invoke-direct {p1, v0, p0, p4}, Lretrofit2/i$d;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {p1}, Lretrofit2/i;->c()Lretrofit2/i;

    move-result-object p0

    return-object p0

    :cond_24
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_25
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/l$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iget-object p0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {p0, p1, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p0

    new-instance p1, Lretrofit2/i$d;

    invoke-direct {p1, v0, p0, p4}, Lretrofit2/i$d;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {p1}, Lretrofit2/i;->b()Lretrofit2/i;

    move-result-object p0

    return-object p0

    :cond_26
    iget-object p0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {p0, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p0

    new-instance p1, Lretrofit2/i$d;

    invoke-direct {p1, v0, p0, p4}, Lretrofit2/i$d;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    return-object p1

    :cond_27
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@Field parameters can only be used with form encoding."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_28
    instance-of v2, p4, Lretrofit2/http/FieldMap;

    if-eqz v2, :cond_2d

    invoke-direct {p0, p1, p2}, Lretrofit2/l$a;->j(ILjava/lang/reflect/Type;)V

    iget-boolean v1, p0, Lretrofit2/l$a;->p:Z

    if-eqz v1, :cond_2c

    invoke-static {p2}, Lretrofit2/o;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-class v2, Ljava/util/Map;

    invoke-static {p2, v1, v2}, Lretrofit2/o;->i(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2a

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, p2}, Lretrofit2/o;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    if-ne v0, v1, :cond_29

    invoke-static {v4, p2}, Lretrofit2/o;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    iget-object v0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {v0, p2, p3}, Lretrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p2

    iput-boolean v4, p0, Lretrofit2/l$a;->f:Z

    new-instance p3, Lretrofit2/i$e;

    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    check-cast p4, Lretrofit2/http/FieldMap;

    invoke-interface {p4}, Lretrofit2/http/FieldMap;->encoded()Z

    move-result p4

    invoke-direct {p3, p0, p1, p2, p4}, Lretrofit2/i$e;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;Z)V

    return-object p3

    :cond_29
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@FieldMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2a
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, v7, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2b
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@FieldMap parameter type must be Map."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2c
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@FieldMap parameters can only be used with form encoding."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2d
    instance-of v2, p4, Lretrofit2/http/Part;

    if-eqz v2, :cond_3c

    invoke-direct {p0, p1, p2}, Lretrofit2/l$a;->j(ILjava/lang/reflect/Type;)V

    iget-boolean v0, p0, Lretrofit2/l$a;->q:Z

    if-eqz v0, :cond_3b

    check-cast p4, Lretrofit2/http/Part;

    iput-boolean v4, p0, Lretrofit2/l$a;->g:Z

    invoke-interface {p4}, Lretrofit2/http/Part;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lretrofit2/o;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_34

    const-class p3, Ljava/lang/Iterable;

    invoke-virtual {p3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    const-string p4, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz p3, :cond_30

    instance-of p3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_2f

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, p2}, Lretrofit2/o;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Lretrofit2/o;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2e

    sget-object p0, Lretrofit2/i$o;->a:Lretrofit2/i$o;

    invoke-virtual {p0}, Lretrofit2/i;->c()Lretrofit2/i;

    move-result-object p0

    return-object p0

    :cond_2e
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p4, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2f
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_30
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_31

    sget-object p0, Lretrofit2/i$o;->a:Lretrofit2/i$o;

    invoke-virtual {p0}, Lretrofit2/i;->b()Lretrofit2/i;

    move-result-object p0

    return-object p0

    :cond_31
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p4, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_32
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_33

    sget-object p0, Lretrofit2/i$o;->a:Lretrofit2/i$o;

    return-object p0

    :cond_33
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p4, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_34
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "Content-Disposition"

    aput-object v8, v7, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "form-data; name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    const/4 v0, 0x2

    const-string v4, "Content-Transfer-Encoding"

    aput-object v4, v7, v0

    const/4 v0, 0x3

    invoke-interface {p4}, Lretrofit2/http/Part;->encoding()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v7, v0

    invoke-static {v7}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object p4

    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v4, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v0, :cond_37

    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_36

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, p2}, Lretrofit2/o;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Lretrofit2/o;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    iget-object v1, p0, Lretrofit2/l$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, p2, p3, v1}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p2

    new-instance p3, Lretrofit2/i$i;

    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {p3, p0, p1, p4, p2}, Lretrofit2/i$i;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    invoke-virtual {p3}, Lretrofit2/i;->c()Lretrofit2/i;

    move-result-object p0

    return-object p0

    :cond_35
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, v4, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_36
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_37
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lretrofit2/l$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    iget-object v1, p0, Lretrofit2/l$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, p2, p3, v1}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p2

    new-instance p3, Lretrofit2/i$i;

    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {p3, p0, p1, p4, p2}, Lretrofit2/i$i;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    invoke-virtual {p3}, Lretrofit2/i;->b()Lretrofit2/i;

    move-result-object p0

    return-object p0

    :cond_38
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, v4, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_39
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    iget-object v1, p0, Lretrofit2/l$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, p2, p3, v1}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p2

    new-instance p3, Lretrofit2/i$i;

    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {p3, p0, p1, p4, p2}, Lretrofit2/i$i;-><init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/Converter;)V

    return-object p3

    :cond_3a
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, v4, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_3b
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@Part parameters can only be used with multipart encoding."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_3c
    instance-of v2, p4, Lretrofit2/http/PartMap;

    if-eqz v2, :cond_42

    invoke-direct {p0, p1, p2}, Lretrofit2/l$a;->j(ILjava/lang/reflect/Type;)V

    iget-boolean v2, p0, Lretrofit2/l$a;->q:Z

    if-eqz v2, :cond_41

    iput-boolean v4, p0, Lretrofit2/l$a;->g:Z

    invoke-static {p2}, Lretrofit2/o;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_40

    const-class v3, Ljava/util/Map;

    invoke-static {p2, v2, v3}, Lretrofit2/o;->i(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3f

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, p2}, Lretrofit2/o;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v2

    if-ne v0, v2, :cond_3e

    invoke-static {v4, p2}, Lretrofit2/o;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Lretrofit2/o;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    iget-object v1, p0, Lretrofit2/l$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, p2, p3, v1}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p2

    check-cast p4, Lretrofit2/http/PartMap;

    new-instance p3, Lretrofit2/i$j;

    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    invoke-interface {p4}, Lretrofit2/http/PartMap;->encoding()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p0, p1, p2, p4}, Lretrofit2/i$j;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;Ljava/lang/String;)V

    return-object p3

    :cond_3d
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_3e
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@PartMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_3f
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, v7, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_40
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@PartMap parameter type must be Map."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_41
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@PartMap parameters can only be used with multipart encoding."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_42
    instance-of v0, p4, Lretrofit2/http/Body;

    if-eqz v0, :cond_45

    invoke-direct {p0, p1, p2}, Lretrofit2/l$a;->j(ILjava/lang/reflect/Type;)V

    iget-boolean p4, p0, Lretrofit2/l$a;->p:Z

    if-nez p4, :cond_44

    iget-boolean p4, p0, Lretrofit2/l$a;->q:Z

    if-nez p4, :cond_44

    iget-boolean p4, p0, Lretrofit2/l$a;->h:Z

    if-nez p4, :cond_43

    :try_start_0
    iget-object p4, p0, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    iget-object v0, p0, Lretrofit2/l$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p4, p2, p3, v0}, Lretrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v4, p0, Lretrofit2/l$a;->h:Z

    new-instance p3, Lretrofit2/i$c;

    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    invoke-direct {p3, p0, p1, p2}, Lretrofit2/i$c;-><init>(Ljava/lang/reflect/Method;ILretrofit2/Converter;)V

    return-object p3

    :catch_0
    move-exception p3

    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p4, v4, [Ljava/lang/Object;

    aput-object p2, p4, v5

    const-string p2, "Unable to create @Body converter for %s"

    invoke-static {p0, p3, p1, p2, p4}, Lretrofit2/o;->p(Ljava/lang/reflect/Method;Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_43
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "Multiple @Body method annotations found."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_44
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "@Body parameters cannot be used with form or multi-part encoding."

    invoke-static {p0, p1, p3, p2}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_45
    instance-of p3, p4, Lretrofit2/http/Tag;

    if-eqz p3, :cond_49

    invoke-direct {p0, p1, p2}, Lretrofit2/l$a;->j(ILjava/lang/reflect/Type;)V

    invoke-static {p2}, Lretrofit2/o;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    add-int/lit8 p3, p1, -0x1

    :goto_1
    if-ltz p3, :cond_48

    iget-object p4, p0, Lretrofit2/l$a;->v:[Lretrofit2/i;

    aget-object p4, p4, p3

    instance-of v0, p4, Lretrofit2/i$q;

    if-eqz v0, :cond_47

    check-cast p4, Lretrofit2/i$q;

    iget-object p4, p4, Lretrofit2/i$q;->a:Ljava/lang/Class;

    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_46

    goto :goto_2

    :cond_46
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@Tag type "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is duplicate of parameter #"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p3, v4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and would always overwrite its value."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_47
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_48
    new-instance p0, Lretrofit2/i$q;

    invoke-direct {p0, p2}, Lretrofit2/i$q;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_49
    const/4 p0, 0x0

    return-object p0
.end method

.method static h(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lretrofit2/l$a;->x:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private i(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lretrofit2/l$a;->y:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lretrofit2/l$a;->u:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lretrofit2/l$a;->r:Ljava/lang/String;

    aput-object p0, v3, v2

    aput-object p2, v3, v1

    const-string p0, "URL \"%s\" does not contain \"{%s}\"."

    invoke-static {v0, p1, p0, v3}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v3, Lretrofit2/l$a;->x:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string p2, "@Path parameter name must match %s. Found: %s"

    invoke-static {p0, p1, p2, v0}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private j(ILjava/lang/reflect/Type;)V
    .locals 2

    invoke-static {p2}, Lretrofit2/o;->j(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Parameter type must not include a type variable or wildcard: %s"

    invoke-static {p0, p1, p2, v0}, Lretrofit2/o;->o(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method b()Lretrofit2/l;
    .locals 8

    iget-object v0, p0, Lretrofit2/l$a;->c:[Ljava/lang/annotation/Annotation;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lretrofit2/l$a;->e(Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lretrofit2/l$a;->n:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lretrofit2/l$a;->o:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lretrofit2/l$a;->q:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lretrofit2/l$a;->p:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-static {p0, v1, v0}, Lretrofit2/o;->m(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-static {p0, v1, v0}, Lretrofit2/o;->m(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    iget-object v0, p0, Lretrofit2/l$a;->d:[[Ljava/lang/annotation/Annotation;

    array-length v0, v0

    new-array v1, v0, [Lretrofit2/i;

    iput-object v1, p0, Lretrofit2/l$a;->v:[Lretrofit2/i;

    add-int/lit8 v1, v0, -0x1

    move v3, v2

    :goto_2
    const/4 v4, 0x1

    if-ge v3, v0, :cond_5

    iget-object v5, p0, Lretrofit2/l$a;->v:[Lretrofit2/i;

    iget-object v6, p0, Lretrofit2/l$a;->e:[Ljava/lang/reflect/Type;

    aget-object v6, v6, v3

    iget-object v7, p0, Lretrofit2/l$a;->d:[[Ljava/lang/annotation/Annotation;

    aget-object v7, v7, v3

    if-ne v3, v1, :cond_4

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    invoke-direct {p0, v3, v6, v7, v4}, Lretrofit2/l$a;->f(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Z)Lretrofit2/i;

    move-result-object v4

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lretrofit2/l$a;->r:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lretrofit2/l$a;->m:Z

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object p0, p0, Lretrofit2/l$a;->n:Ljava/lang/String;

    aput-object p0, v1, v2

    const-string p0, "Missing either @%s URL or @Url parameter."

    invoke-static {v0, p0, v1}, Lretrofit2/o;->m(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_7
    :goto_4
    iget-boolean v0, p0, Lretrofit2/l$a;->p:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lretrofit2/l$a;->q:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lretrofit2/l$a;->o:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lretrofit2/l$a;->h:Z

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Non-body HTTP method cannot contain @Body."

    invoke-static {p0, v1, v0}, Lretrofit2/o;->m(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_9
    :goto_5
    iget-boolean v0, p0, Lretrofit2/l$a;->p:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lretrofit2/l$a;->f:Z

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Form-encoded method must contain at least one @Field."

    invoke-static {p0, v1, v0}, Lretrofit2/o;->m(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_b
    :goto_6
    iget-boolean v0, p0, Lretrofit2/l$a;->q:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lretrofit2/l$a;->g:Z

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multipart method must contain at least one @Part."

    invoke-static {p0, v1, v0}, Lretrofit2/o;->m(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_d
    :goto_7
    new-instance v0, Lretrofit2/l;

    invoke-direct {v0, p0}, Lretrofit2/l;-><init>(Lretrofit2/l$a;)V

    return-object v0

    :cond_e
    iget-object p0, p0, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    invoke-static {p0, v1, v0}, Lretrofit2/o;->m(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
