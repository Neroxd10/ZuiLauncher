.class public Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/share/ShareSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareDrivingRouteQuery"
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;->a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    iput p2, p0, Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;->b:I

    return-void
.end method


# virtual methods
.method public getDrivingMode()I
    .locals 0

    iget p0, p0, Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;->b:I

    return p0
.end method

.method public getShareFromAndTo()Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;->a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    return-object p0
.end method
