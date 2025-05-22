.class Lcom/android/volley/toolbox/NetworkImageView$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/NetworkImageView$a;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/toolbox/NetworkImageView$a;

.field private final synthetic b:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/NetworkImageView$a;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$a$a;->a:Lcom/android/volley/toolbox/NetworkImageView$a;

    iput-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$a$a;->b:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$a$a;->a:Lcom/android/volley/toolbox/NetworkImageView$a;

    iget-object p0, p0, Lcom/android/volley/toolbox/NetworkImageView$a$a;->b:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/volley/toolbox/NetworkImageView$a;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    return-void
.end method
