.class public Lcom/zui/fss/api/FileMeta;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected mExtraMeta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFileKey:Ljava/lang/String;

.field protected mFileName:Ljava/lang/String;

.field protected mFilePath:Ljava/lang/String;

.field protected mMd5:Ljava/lang/String;

.field protected mSize:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/fss/api/FileMeta;->mFileKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/fss/api/FileMeta;->mMd5:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/fss/api/FileMeta;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/fss/api/FileMeta;->mFilePath:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/zui/fss/api/FileMeta;->mSize:J

    iput-object v0, p0, Lcom/zui/fss/api/FileMeta;->mExtraMeta:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getExtraMeta()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/fss/api/FileMeta;->mExtraMeta:Ljava/util/Map;

    return-object p0
.end method

.method public getFileKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/fss/api/FileMeta;->mFileKey:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/fss/api/FileMeta;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/fss/api/FileMeta;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/fss/api/FileMeta;->mMd5:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/zui/fss/api/FileMeta;->mSize:J

    return-wide v0
.end method
