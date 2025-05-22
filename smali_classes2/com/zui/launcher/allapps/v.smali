.class public final synthetic Lcom/zui/launcher/allapps/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/allapps/WorkPausedCard;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/allapps/WorkPausedCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/v;->a:Lcom/zui/launcher/allapps/WorkPausedCard;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/v;->a:Lcom/zui/launcher/allapps/WorkPausedCard;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/WorkPausedCard;->a()V

    return-void
.end method
