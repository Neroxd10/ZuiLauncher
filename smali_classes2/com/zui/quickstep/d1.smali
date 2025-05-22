.class public final synthetic Lcom/zui/quickstep/d1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/SystemUiProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/SystemUiProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/d1;->a:Lcom/zui/quickstep/SystemUiProxy;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/d1;->a:Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/zui/quickstep/SystemUiProxy;->h()V

    return-void
.end method
