.class public final synthetic Lcom/zui/launcher/c3;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/c3;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/zui/launcher/c3;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/c3;->a:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/zui/launcher/c3;->b:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/zui/launcher/Workspace;->u0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
