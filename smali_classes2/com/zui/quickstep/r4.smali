.class public final synthetic Lcom/zui/quickstep/r4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/TaskThumbnailView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/TaskThumbnailView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/r4;->a:Lcom/zui/quickstep/views/TaskThumbnailView;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/r4;->a:Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskThumbnailView;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
