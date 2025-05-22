.class public final synthetic Lcom/zui/launcher/dragndrop/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/dragndrop/DraggableView;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/dragndrop/i;->a:I

    return-void
.end method


# virtual methods
.method public final getViewType()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/dragndrop/i;->a:I

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/DraggableView;->b(I)I

    move-result p0

    return p0
.end method
