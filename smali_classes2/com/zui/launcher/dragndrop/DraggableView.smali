.class public interface abstract Lcom/zui/launcher/dragndrop/DraggableView;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DRAGGABLE_ICON:I = 0x0

.field public static final DRAGGABLE_WIDGET:I = 0x1


# direct methods
.method public static synthetic a()V
    .locals 0

    return-void
.end method

.method public static synthetic b(I)I
    .locals 0

    return p0
.end method

.method public static ofType(I)Lcom/zui/launcher/dragndrop/DraggableView;
    .locals 1

    new-instance v0, Lcom/zui/launcher/dragndrop/i;

    invoke-direct {v0, p0}, Lcom/zui/launcher/dragndrop/i;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getSourceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/zui/launcher/dragndrop/DraggableView;->getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public abstract getViewType()I
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public prepareDrawDragView()Lcom/zui/launcher/util/SafeCloseable;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lcom/zui/launcher/dragndrop/h;->a:Lcom/zui/launcher/dragndrop/h;

    return-object p0
.end method
