.class Lcom/zui/quickstep/TaskThumbnailCache$a;
.super Lcom/zui/quickstep/util/CancellableTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/TaskThumbnailCache;->f(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;)Lcom/zui/quickstep/util/CancellableTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/quickstep/util/CancellableTask<",
        "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

.field final synthetic c:Z

.field final synthetic d:Ljava/util/function/Consumer;

.field final synthetic e:Lcom/zui/quickstep/TaskThumbnailCache;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/TaskThumbnailCache;Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/TaskThumbnailCache$a;->e:Lcom/zui/quickstep/TaskThumbnailCache;

    iput-object p2, p0, Lcom/zui/quickstep/TaskThumbnailCache$a;->b:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iput-boolean p3, p0, Lcom/zui/quickstep/TaskThumbnailCache$a;->c:Z

    iput-object p4, p0, Lcom/zui/quickstep/TaskThumbnailCache$a;->d:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/zui/quickstep/util/CancellableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/TaskThumbnailCache$a;->b:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-boolean p0, p0, Lcom/zui/quickstep/TaskThumbnailCache$a;->c:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getTaskThumbnail(IZ)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p0

    return-object p0
.end method

.method public c(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/TaskThumbnailCache$a;->e:Lcom/zui/quickstep/TaskThumbnailCache;

    invoke-static {v0}, Lcom/zui/quickstep/TaskThumbnailCache;->b(Lcom/zui/quickstep/TaskThumbnailCache;)Lcom/zui/quickstep/util/TaskKeyLruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/TaskThumbnailCache$a;->b:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1, p1}, Lcom/zui/quickstep/util/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/zui/quickstep/TaskThumbnailCache$a;->d:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic getResultOnBg()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskThumbnailCache$a;->b()Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/TaskThumbnailCache$a;->c(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method
