.class Lcom/zui/launcher/globalsearch/HotWordDownLoad$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/HotWordDownLoad;->loadHotWordData(Lcom/zui/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;

.field final synthetic b:Lcom/zui/launcher/globalsearch/HotWordDownLoad;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$a;->b:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$a;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-ltz v0, :cond_0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$a;->b:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    const-string v1, "firstInterval"

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->getInterval(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    if-lt v0, v1, :cond_1

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$a;->b:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    const-string v1, "twoInterval"

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->getInterval(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_1
    const/16 v1, 0x12

    if-lt v0, v2, :cond_2

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$a;->b:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    const-string v1, "threeInterval"

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->getInterval(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_2
    if-lt v0, v1, :cond_3

    const/16 v1, 0x18

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$a;->b:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    const-string v1, "fourInterval"

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->getInterval(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$a;->b:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$a;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->hotWordDownLoad(Ljava/lang/String;Lcom/zui/launcher/Launcher;)V

    :cond_3
    return-void
.end method
