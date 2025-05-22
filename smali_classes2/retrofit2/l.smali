.class final Lretrofit2/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/l$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:Lokhttp3/HttpUrl;

.field final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lokhttp3/Headers;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final f:Lokhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:[Lretrofit2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lretrofit2/i<",
            "*>;"
        }
    .end annotation
.end field

.field final k:Z


# direct methods
.method constructor <init>(Lretrofit2/l$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lretrofit2/l$a;->b:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lretrofit2/l;->a:Ljava/lang/reflect/Method;

    iget-object v0, p1, Lretrofit2/l$a;->a:Lretrofit2/Retrofit;

    iget-object v0, v0, Lretrofit2/Retrofit;->c:Lokhttp3/HttpUrl;

    iput-object v0, p0, Lretrofit2/l;->b:Lokhttp3/HttpUrl;

    iget-object v0, p1, Lretrofit2/l$a;->n:Ljava/lang/String;

    iput-object v0, p0, Lretrofit2/l;->c:Ljava/lang/String;

    iget-object v0, p1, Lretrofit2/l$a;->r:Ljava/lang/String;

    iput-object v0, p0, Lretrofit2/l;->d:Ljava/lang/String;

    iget-object v0, p1, Lretrofit2/l$a;->s:Lokhttp3/Headers;

    iput-object v0, p0, Lretrofit2/l;->e:Lokhttp3/Headers;

    iget-object v0, p1, Lretrofit2/l$a;->t:Lokhttp3/MediaType;

    iput-object v0, p0, Lretrofit2/l;->f:Lokhttp3/MediaType;

    iget-boolean v0, p1, Lretrofit2/l$a;->o:Z

    iput-boolean v0, p0, Lretrofit2/l;->g:Z

    iget-boolean v0, p1, Lretrofit2/l$a;->p:Z

    iput-boolean v0, p0, Lretrofit2/l;->h:Z

    iget-boolean v0, p1, Lretrofit2/l$a;->q:Z

    iput-boolean v0, p0, Lretrofit2/l;->i:Z

    iget-object v0, p1, Lretrofit2/l$a;->v:[Lretrofit2/i;

    iput-object v0, p0, Lretrofit2/l;->j:[Lretrofit2/i;

    iget-boolean p1, p1, Lretrofit2/l$a;->w:Z

    iput-boolean p1, p0, Lretrofit2/l;->k:Z

    return-void
.end method

.method static b(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)Lretrofit2/l;
    .locals 1

    new-instance v0, Lretrofit2/l$a;

    invoke-direct {v0, p0, p1}, Lretrofit2/l$a;-><init>(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)V

    invoke-virtual {v0}, Lretrofit2/l$a;->b()Lretrofit2/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a([Ljava/lang/Object;)Lokhttp3/Request;
    .locals 12

    iget-object v0, p0, Lretrofit2/l;->j:[Lretrofit2/i;

    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_2

    new-instance v2, Lretrofit2/k;

    iget-object v4, p0, Lretrofit2/l;->c:Ljava/lang/String;

    iget-object v5, p0, Lretrofit2/l;->b:Lokhttp3/HttpUrl;

    iget-object v6, p0, Lretrofit2/l;->d:Ljava/lang/String;

    iget-object v7, p0, Lretrofit2/l;->e:Lokhttp3/Headers;

    iget-object v8, p0, Lretrofit2/l;->f:Lokhttp3/MediaType;

    iget-boolean v9, p0, Lretrofit2/l;->g:Z

    iget-boolean v10, p0, Lretrofit2/l;->h:Z

    iget-boolean v11, p0, Lretrofit2/l;->i:Z

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lretrofit2/k;-><init>(Ljava/lang/String;Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/MediaType;ZZZ)V

    iget-boolean v3, p0, Lretrofit2/l;->k:Z

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p1, v4

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v5, v0, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v2, v6}, Lretrofit2/i;->a(Lretrofit2/k;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lretrofit2/k;->k()Lokhttp3/Request$Builder;

    move-result-object p1

    const-class v0, Lretrofit2/Invocation;

    new-instance v1, Lretrofit2/Invocation;

    iget-object p0, p0, Lretrofit2/l;->a:Ljava/lang/reflect/Method;

    invoke-direct {v1, p0, v3}, Lretrofit2/Invocation;-><init>(Ljava/lang/reflect/Method;Ljava/util/List;)V

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument count ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") doesn\'t match expected count ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
