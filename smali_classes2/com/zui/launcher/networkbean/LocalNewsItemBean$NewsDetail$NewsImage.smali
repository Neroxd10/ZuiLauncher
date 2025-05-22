.class public Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewsImage"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;->this$1:Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;->url:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/LocalNewsItemBean$NewsDetail$NewsImage;->url:Ljava/lang/String;

    return-void
.end method
