.class public Lcom/zui/launcher/networkbean/NewsAccessTokenBean$AccessTokenData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networkbean/NewsAccessTokenBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessTokenData"
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field final synthetic this$0:Lcom/zui/launcher/networkbean/NewsAccessTokenBean;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/networkbean/NewsAccessTokenBean;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/NewsAccessTokenBean$AccessTokenData;->this$0:Lcom/zui/launcher/networkbean/NewsAccessTokenBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/NewsAccessTokenBean$AccessTokenData;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/NewsAccessTokenBean$AccessTokenData;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/NewsAccessTokenBean$AccessTokenData;->accessToken:Ljava/lang/String;

    return-object p0
.end method
