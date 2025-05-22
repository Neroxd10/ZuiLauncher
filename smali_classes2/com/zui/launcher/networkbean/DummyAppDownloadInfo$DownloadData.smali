.class public Lcom/zui/launcher/networkbean/DummyAppDownloadInfo$DownloadData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networkbean/DummyAppDownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadData"
.end annotation


# instance fields
.field private downurl:Ljava/lang/String;

.field final synthetic this$0:Lcom/zui/launcher/networkbean/DummyAppDownloadInfo;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/networkbean/DummyAppDownloadInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/DummyAppDownloadInfo$DownloadData;->this$0:Lcom/zui/launcher/networkbean/DummyAppDownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownurl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/DummyAppDownloadInfo$DownloadData;->downurl:Ljava/lang/String;

    return-object p0
.end method

.method public setDownurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/DummyAppDownloadInfo$DownloadData;->downurl:Ljava/lang/String;

    return-void
.end method
