.class Lcom/android/volley/Request$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/Request;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:J


# direct methods
.method constructor <init>(Lcom/android/volley/Request;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/Request$a;->a:Lcom/android/volley/Request;

    iput-object p2, p0, Lcom/android/volley/Request$a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/volley/Request$a;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/volley/Request$a;->a:Lcom/android/volley/Request;

    invoke-static {v0}, Lcom/android/volley/Request;->access$1(Lcom/android/volley/Request;)Lcom/android/volley/VolleyLog$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/Request$a;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/volley/Request$a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/volley/VolleyLog$a;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/volley/Request$a;->a:Lcom/android/volley/Request;

    invoke-static {v0}, Lcom/android/volley/Request;->access$1(Lcom/android/volley/Request;)Lcom/android/volley/VolleyLog$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/volley/VolleyLog$a;->b(Ljava/lang/String;)V

    return-void
.end method
