.class Lcom/android/volley/toolbox/ImageLoader$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/Bitmap;

.field private c:Lcom/android/volley/VolleyError;

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/volley/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/ImageLoader;Lcom/android/volley/Request;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$e;->d:Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$e;->a:Lcom/android/volley/Request;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/android/volley/toolbox/ImageLoader$e;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$e;->d:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic b(Lcom/android/volley/toolbox/ImageLoader$e;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$e;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic c(Lcom/android/volley/toolbox/ImageLoader$e;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$e;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public d(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$e;->d:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()Lcom/android/volley/VolleyError;
    .locals 0

    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$e;->c:Lcom/android/volley/VolleyError;

    return-object p0
.end method

.method public f(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$e;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$e;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$e;->a:Lcom/android/volley/Request;

    invoke-virtual {p0}, Lcom/android/volley/Request;->cancel()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public g(Lcom/android/volley/VolleyError;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$e;->c:Lcom/android/volley/VolleyError;

    return-void
.end method
