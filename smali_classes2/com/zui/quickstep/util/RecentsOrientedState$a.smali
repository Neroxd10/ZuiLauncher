.class Lcom/zui/quickstep/util/RecentsOrientedState$a;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/util/RecentsOrientedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/util/RecentsOrientedState;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/util/RecentsOrientedState;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/util/RecentsOrientedState$a;->a:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/RecentsOrientedState$a;->a:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-static {p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->a(Lcom/zui/quickstep/util/RecentsOrientedState;)V

    return-void
.end method
