.class public final synthetic Lcom/zui/launcher/folder/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/folder/PreviewBackground;

.field public final synthetic b:Lcom/zui/launcher/CellLayout;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/folder/PreviewBackground;Lcom/zui/launcher/CellLayout;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/folder/d;->a:Lcom/zui/launcher/folder/PreviewBackground;

    iput-object p2, p0, Lcom/zui/launcher/folder/d;->b:Lcom/zui/launcher/CellLayout;

    iput p3, p0, Lcom/zui/launcher/folder/d;->c:I

    iput p4, p0, Lcom/zui/launcher/folder/d;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/folder/d;->a:Lcom/zui/launcher/folder/PreviewBackground;

    iget-object v1, p0, Lcom/zui/launcher/folder/d;->b:Lcom/zui/launcher/CellLayout;

    iget v2, p0, Lcom/zui/launcher/folder/d;->c:I

    iget p0, p0, Lcom/zui/launcher/folder/d;->d:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/zui/launcher/folder/PreviewBackground;->x(Lcom/zui/launcher/CellLayout;II)V

    return-void
.end method
