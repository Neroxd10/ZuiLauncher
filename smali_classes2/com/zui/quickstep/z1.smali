.class public final synthetic Lcom/zui/quickstep/z1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

.field public final synthetic b:Landroid/graphics/Matrix;

.field public final synthetic c:[Landroid/graphics/Matrix;

.field public final synthetic d:[Landroid/graphics/Matrix;

.field public final synthetic e:[Landroid/graphics/Matrix;

.field public final synthetic f:[Lcom/zui/quickstep/views/TaskThumbnailView;


# direct methods
.method public synthetic constructor <init>([Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/zui/quickstep/views/TaskThumbnailView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/z1;->a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iput-object p2, p0, Lcom/zui/quickstep/z1;->b:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/zui/quickstep/z1;->c:[Landroid/graphics/Matrix;

    iput-object p4, p0, Lcom/zui/quickstep/z1;->d:[Landroid/graphics/Matrix;

    iput-object p5, p0, Lcom/zui/quickstep/z1;->e:[Landroid/graphics/Matrix;

    iput-object p6, p0, Lcom/zui/quickstep/z1;->f:[Lcom/zui/quickstep/views/TaskThumbnailView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/z1;->a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iget-object v1, p0, Lcom/zui/quickstep/z1;->b:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/zui/quickstep/z1;->c:[Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/zui/quickstep/z1;->d:[Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/zui/quickstep/z1;->e:[Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/zui/quickstep/z1;->f:[Lcom/zui/quickstep/views/TaskThumbnailView;

    invoke-static/range {v0 .. v5}, Lcom/zui/quickstep/TaskViewUtils;->c([Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/zui/quickstep/views/TaskThumbnailView;)V

    return-void
.end method
