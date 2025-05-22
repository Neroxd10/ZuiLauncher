.class final Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy$a;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->a()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy$a;->b:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    return-void
.end method
