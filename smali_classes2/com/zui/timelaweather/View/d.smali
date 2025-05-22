.class public final synthetic Lcom/zui/timelaweather/View/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/timelaweather/View/LenovoViewClock4x2New;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/timelaweather/View/d;->a:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/timelaweather/View/d;->a:Lcom/zui/timelaweather/View/LenovoViewClock4x2New;

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/LenovoViewClock4x2New;->f(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
