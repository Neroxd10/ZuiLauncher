.class Lcom/android/volley/toolbox/ImageLoader$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/ImageLoader;->makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/toolbox/ImageLoader;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$c;->a:Lcom/android/volley/toolbox/ImageLoader;

    iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$c;->a:Lcom/android/volley/toolbox/ImageLoader;

    iget-object p0, p0, Lcom/android/volley/toolbox/ImageLoader$c;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/volley/toolbox/ImageLoader;->onGetImageError(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    return-void
.end method
