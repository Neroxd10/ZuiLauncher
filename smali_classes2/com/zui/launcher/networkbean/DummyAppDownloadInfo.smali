.class public Lcom/zui/launcher/networkbean/DummyAppDownloadInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/networkbean/DummyAppDownloadInfo$DownloadData;
    }
.end annotation


# instance fields
.field private data:Lcom/zui/launcher/networkbean/DummyAppDownloadInfo$DownloadData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/zui/launcher/networkbean/DummyAppDownloadInfo$DownloadData;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/DummyAppDownloadInfo;->data:Lcom/zui/launcher/networkbean/DummyAppDownloadInfo$DownloadData;

    return-object p0
.end method

.method public setData(Lcom/zui/launcher/networkbean/DummyAppDownloadInfo$DownloadData;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/DummyAppDownloadInfo;->data:Lcom/zui/launcher/networkbean/DummyAppDownloadInfo$DownloadData;

    return-void
.end method
