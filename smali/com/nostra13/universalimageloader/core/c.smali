.class final Lcom/nostra13/universalimageloader/core/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field final d:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field final e:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field final f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field final g:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

.field final h:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/c;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/c;->d:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iput-object p5, p0, Lcom/nostra13/universalimageloader/core/c;->e:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iput-object p6, p0, Lcom/nostra13/universalimageloader/core/c;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iput-object p7, p0, Lcom/nostra13/universalimageloader/core/c;->g:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    iput-object p8, p0, Lcom/nostra13/universalimageloader/core/c;->h:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/c;->b:Ljava/lang/String;

    return-void
.end method
