.class public Lcom/zui/launcher/Utilities$SearchKeyWord;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchKeyWord"
.end annotation


# instance fields
.field public id:J

.field public keyword:Ljava/lang/String;

.field public searchTime:J

.field public usageCount:I


# direct methods
.method public constructor <init>(JLjava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/zui/launcher/Utilities$SearchKeyWord;->id:J

    iput-object p3, p0, Lcom/zui/launcher/Utilities$SearchKeyWord;->keyword:Ljava/lang/String;

    iput-wide p4, p0, Lcom/zui/launcher/Utilities$SearchKeyWord;->searchTime:J

    iput p6, p0, Lcom/zui/launcher/Utilities$SearchKeyWord;->usageCount:I

    return-void
.end method
