.class public Lcom/zui/launcher/networksdk/OKHttpUtils$Param;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networksdk/OKHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$Param;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$Param;->b:Ljava/lang/String;

    return-void
.end method
