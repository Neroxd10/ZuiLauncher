.class Lcom/nostra13/universalimageloader/core/ImageLoader$b;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoader$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$b;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$b;->a:Landroid/graphics/Bitmap;

    return-void
.end method
