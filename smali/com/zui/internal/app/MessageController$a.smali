.class Lcom/zui/internal/app/MessageController$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/MessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/internal/app/MessageController;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/MessageController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/MessageController$a;->a:Lcom/zui/internal/app/MessageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/zui/internal/app/MessageController$a;->a:Lcom/zui/internal/app/MessageController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/internal/app/MessageController;->setEditorErrorMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
