.class final Lretrofit2/f$b;
.super Lretrofit2/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/f<",
        "TResponseT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lretrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/CallAdapter<",
            "TResponseT;",
            "Lretrofit2/Call<",
            "TResponseT;>;>;"
        }
    .end annotation
.end field

.field private final e:Z


# direct methods
.method constructor <init>(Lretrofit2/l;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/l;",
            "Lokhttp3/Call$Factory;",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;",
            "Lretrofit2/CallAdapter<",
            "TResponseT;",
            "Lretrofit2/Call<",
            "TResponseT;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lretrofit2/f;-><init>(Lretrofit2/l;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    iput-object p4, p0, Lretrofit2/f$b;->d:Lretrofit2/CallAdapter;

    iput-boolean p5, p0, Lretrofit2/f$b;->e:Z

    return-void
.end method


# virtual methods
.method protected c(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lretrofit2/f$b;->d:Lretrofit2/CallAdapter;

    invoke-interface {v0, p1}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lretrofit2/Call;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    check-cast p2, Lkotlin/coroutines/Continuation;

    :try_start_0
    iget-boolean p0, p0, Lretrofit2/f$b;->e:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lretrofit2/KotlinExtensions;->awaitNullable(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lretrofit2/KotlinExtensions;->await(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, p2}, Lretrofit2/KotlinExtensions;->suspendAndThrow(Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
