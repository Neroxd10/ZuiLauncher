.class public Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;
    }
.end annotation


# instance fields
.field private appInfo:Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppInfo()Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean;->appInfo:Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;

    return-object p0
.end method

.method public setAppInfo(Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean;->appInfo:Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;

    return-void
.end method
