.class public final synthetic Lcom/zui/launcher/touch/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;

.field public final synthetic b:Lcom/zui/launcher/LauncherState;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/touch/AbstractStateChangeTouchController;Lcom/zui/launcher/LauncherState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/touch/c;->a:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;

    iput-object p2, p0, Lcom/zui/launcher/touch/c;->b:Lcom/zui/launcher/LauncherState;

    iput p3, p0, Lcom/zui/launcher/touch/c;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/touch/c;->a:Lcom/zui/launcher/touch/AbstractStateChangeTouchController;

    iget-object v1, p0, Lcom/zui/launcher/touch/c;->b:Lcom/zui/launcher/LauncherState;

    iget p0, p0, Lcom/zui/launcher/touch/c;->c:I

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/touch/AbstractStateChangeTouchController;->p(Lcom/zui/launcher/LauncherState;I)V

    return-void
.end method
