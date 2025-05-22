.class public final synthetic Lcom/zui/launcher/icons/cache/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/icons/cache/BaseIconCache;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/icons/cache/BaseIconCache;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/cache/b;->a:Lcom/zui/launcher/icons/cache/BaseIconCache;

    iput p2, p0, Lcom/zui/launcher/icons/cache/b;->b:I

    iput p3, p0, Lcom/zui/launcher/icons/cache/b;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/b;->a:Lcom/zui/launcher/icons/cache/BaseIconCache;

    iget v1, p0, Lcom/zui/launcher/icons/cache/b;->b:I

    iget p0, p0, Lcom/zui/launcher/icons/cache/b;->c:I

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/icons/cache/BaseIconCache;->e(II)V

    return-void
.end method
